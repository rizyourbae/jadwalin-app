<?php

namespace App\Exports;

use App\Models\JadwalSidang;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Concerns\FromView;

class JadwalSidangPdfExport implements FromView
{
    /**
     * Method ini akan mengambil data dan mengirimkannya ke file Blade
     * untuk dirender menjadi PDF.
     */
    public function view(): View
    {
        $user = Auth::user();
        $query = JadwalSidang::query();
        $fakultas = "Semua Fakultas"; // Default untuk Super Admin

        // Jika user bukan Super Admin, filter data berdasarkan fakultasnya
        if (!$user->hasRole('super_admin')) {
            $fakultasId = $user->fakultas_id;
            $query->whereHas('pendaftaranSidang', function ($q) use ($fakultasId) {
                $q->where('fakultas_id', $fakultasId);
            });
            $fakultas = $user->fakultas->nama_fakultas;
        }

        // Kirim data ke view 'exports.jadwal-sidang'
        return view('exports.jadwal-sidang', [
            'jadwals' => $query->get(),
            'fakultas' => $fakultas
        ]);
    }
}
