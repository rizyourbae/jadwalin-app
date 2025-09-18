<?php

namespace App\Http\Controllers\Mahasiswa;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function __invoke(Request $request)
    {
        // Ambil data user yang sedang login
        $user = Auth::user();
        $pendaftaranSidang = collect();  // Siapkan array kosong sebagai default

        // Ambil data pendaftaran sidang milik mahasiswa ini
        if ($user->mahasiswa) {
            $pendaftaranSidang = $user->mahasiswa->pendaftaranSidang()->latest()->get();
        }

        return view('mahasiswa.dashboard', [
            'user' => $user,
            'pendaftaran' => $pendaftaranSidang
        ]);
    }
}
