<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Mahasiswa\DashboardController;
use App\Http\Controllers\Mahasiswa\PendaftaranController;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth'])->group(function () {
    // Rute khusus untuk dashboard mahasiswa
    Route::get('/mahasiswa/dashboard', DashboardController::class)->name('mahasiswa.dashboard');
     // Route untuk menampilkan form pendaftaran
    Route::get('/mahasiswa/pendaftaran/create', [PendaftaranController::class, 'create'])->name('mahasiswa.pendaftaran.create');
    // Route untuk memproses data dari form
    Route::post('/mahasiswa/pendaftaran', [PendaftaranController::class, 'store'])->name('mahasiswa.pendaftaran.store');
});
