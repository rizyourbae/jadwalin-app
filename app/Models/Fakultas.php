<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany; // <-- Tambahkan ini


class Fakultas extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama_fakultas',
        'kode_fakultas',
    ];

    /**
     * Fakultas memiliki banyak Dosen.
     */
    public function dosens(): HasMany
    {
        return $this->hasMany(Dosen::class);
    }

    /**
     * Fakultas memiliki banyak Mahasiswa.
     */
    public function mahasiswas(): HasMany
    {
        return $this->hasMany(Mahasiswa::class);
    }
}
