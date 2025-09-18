<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo; // <-- Tambahkan ini

class Dosen extends Model
{
    use HasFactory;

    // Tambahkan 'fillable' untuk keamanan mass-assignment
    protected $fillable = [
        'user_id',
        'fakultas_id',
        'nip',
        'gelar_depan',
        'gelar_belakang',
    ];

    /**
     * Mendefinisikan relasi bahwa Dosen ini milik satu User.
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Mendefinisikan relasi bahwa Dosen ini milik satu Fakultas.
     */
    public function fakultas(): BelongsTo
    {
        return $this->belongsTo(Fakultas::class);
    }
}
