<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pendaftaran_sidang', function (Blueprint $table) {
            $table->id();
            $table->foreignId('mahasiswa_id')->constrained('mahasiswas');
            $table->foreignId('fakultas_id')->constrained('fakultas');
            $table->enum('jenis_sidang', ['seminar_proposal', 'seminar_hasil', 'munaqasah']);
            $table->text('judul');
            $table->string('berkas_utama');
            $table->string('berkas_pendukung')->nullable();
            $table->enum('status', ['diajukan', 'diverifikasi', 'dijadwalkan', 'selesai', 'ditolak']);
            $table->text('catatan_admin')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pendaftaran_sidangs');
    }
};
