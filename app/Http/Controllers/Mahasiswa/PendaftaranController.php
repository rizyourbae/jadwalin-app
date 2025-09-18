<?php

namespace App\Http\Controllers\Mahasiswa;

use App\Http\Controllers\Controller;
use App\Models\PendaftaranSidang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PendaftaranController extends Controller
{
    /**
     * Menampilkan form pendaftaran sidang.
     */
    public function create()
    {
        $mahasiswa = Auth::user()->mahasiswa;
        $pendaftaranTerakhir = $mahasiswa->pendaftaranSidang()->latest()->first();

        $jenisSidangSelanjutnya = '';

        if (!$pendaftaranTerakhir) {
            $jenisSidangSelanjutnya = 'seminar_proposal';
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_proposal' && $pendaftaranTerakhir->status === 'selesai') {
            $jenisSidangSelanjutnya = 'seminar_hasil';
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_hasil' && $pendaftaranTerakhir->status === 'selesai') {
            $jenisSidangSelanjutnya = 'munaqasah';
        } else {
            // Jika pendaftaran terakhir belum selesai, redirect kembali
            return redirect()->route('mahasiswa.dashboard')->with('error', 'Anda masih memiliki pendaftaran yang sedang diproses.');
        }

        return view('mahasiswa.form_pendaftaran', [
            'jenis_sidang' => $jenisSidangSelanjutnya
        ]);
    }

    /**
     * Menyimpan data pendaftaran baru.
     */
    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required|string|max:255',
            'berkas_utama' => 'required|file|mimes:pdf|max:2048', // Wajib PDF, maks 2MB
        ]);

        $mahasiswa = Auth::user()->mahasiswa;

        // Simpan file yang di-upload
        $path = $request->file('berkas_utama')->store('public/berkas_sidang');

        PendaftaranSidang::create([
            'mahasiswa_id' => $mahasiswa->id,
            'fakultas_id' => $mahasiswa->fakultas_id,
            'jenis_sidang' => $request->jenis_sidang,
            'judul' => $request->judul,
            'berkas_utama' => $path,
            'status' => 'diajukan', // Status awal selalu 'diajukan'
        ]);

        return redirect()->route('mahasiswa.dashboard')->with('success', 'Pendaftaran berhasil diajukan!');
    }
}
