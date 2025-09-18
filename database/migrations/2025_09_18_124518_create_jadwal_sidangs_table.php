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
        Schema::create('jadwal_sidangs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('pendaftaran_sidang_id')->constrained('pendaftaran_sidang');
            $table->foreignId('ruangan_id')->constrained('ruangans');
            $table->date('tanggal_sidang');
            $table->time('waktu_mulai');
            $table->time('waktu_selesai');
            // Penguji merujuk ke tabel dosens
            $table->foreignId('penguji1_id')->constrained('dosens');
            $table->foreignId('penguji2_id')->constrained('dosens');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jadwal_sidangs');
    }
};
