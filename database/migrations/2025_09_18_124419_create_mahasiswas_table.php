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
        Schema::create('mahasiswas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
            $table->foreignId('fakultas_id')->constrained('fakultas');
            $table->string('nim', 15)->unique();
            $table->text('judul_skripsi')->nullable();
            // Pembimbing merujuk ke tabel dosens
            $table->foreignId('pembimbing1_id')->nullable()->constrained('dosens');
            $table->foreignId('pembimbing2_id')->nullable()->constrained('dosens');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mahasiswas');
    }
};
