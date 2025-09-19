<?php

namespace App\Filament\Mahasiswa\Resources\PendaftaranSidangResource\Pages;

use App\Filament\Mahasiswa\Resources\PendaftaranSidangResource;
use Illuminate\Support\Facades\Auth;
use Filament\Resources\Pages\CreateRecord;

class CreatePendaftaranSidang extends CreateRecord
{
    protected static string $resource = PendaftaranSidangResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $mahasiswa = Auth::user()->mahasiswa;
        $pendaftaranTerakhir = $mahasiswa->pendaftaranSidang()->latest()->first();

        // Logika penentuan jenis sidang
        if (!$pendaftaranTerakhir) {
            $data['jenis_sidang'] = 'seminar_proposal';
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_proposal' && $pendaftaranTerakhir->status === 'selesai') {
            $data['jenis_sidang'] = 'seminar_hasil';
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_hasil' && $pendaftaranTerakhir->status === 'selesai') {
            $data['jenis_sidang'] = 'munaqasah';
        }

        // Isi data otomatis
        $data['mahasiswa_id'] = $mahasiswa->id;
        $data['fakultas_id'] = $mahasiswa->fakultas_id;
        $data['status'] = 'diajukan';

        return $data;
    }
}
