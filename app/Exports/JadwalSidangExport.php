<?php

namespace App\Exports;

use App\Models\JadwalSidang;
use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class JadwalSidangExport implements FromCollection, WithHeadings, WithMapping
{
    public function collection()
    {
        $user = Auth::user();

        if ($user->hasRole('super_admin')) {
            return JadwalSidang::all();
        }

        // Admin fakultas hanya akan export data dari pendaftaran di fakultasnya
        return JadwalSidang::whereHas('pendaftaranSidang', function ($query) use ($user) {
            $query->where('fakultas_id', $user->fakultas_id);
        })->get();
    }

    public function headings(): array
    {
        return [
            'Nama Mahasiswa',
            'NIM',
            'Jenis Sidang',
            'Tanggal',
            'Waktu Mulai',
            'Waktu Selesai',
            'Ruangan',
            'Penguji 1',
            'Penguji 2',
        ];
    }

    public function map($jadwal): array
    {
        return [
            $jadwal->pendaftaranSidang->mahasiswa->user->name,
            $jadwal->pendaftaranSidang->mahasiswa->nim,
            ucwords(str_replace('_', ' ', $jadwal->pendaftaranSidang->jenis_sidang)),
            $jadwal->tanggal_sidang,
            $jadwal->waktu_mulai,
            $jadwal->waktu_selesai,
            $jadwal->ruangan->nama_ruangan,
            $jadwal->penguji1->user->name,
            $jadwal->penguji2->user->name,
        ];
    }
}
