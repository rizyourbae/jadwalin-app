<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Mahasiswa extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'fakultas_id',
        'nim',
        'judul_skripsi',
        'pembimbing1_id',
        'pembimbing2_id',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function fakultas(): BelongsTo
    {
        return $this->belongsTo(Fakultas::class);
    }

    public function pembimbing1(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'pembimbing1_id');
    }

    public function pembimbing2(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'pembimbing2_id');
    }

    /**
     * TAMBAHKAN METHOD RELASI INI
     */
    public function pendaftaranSidang(): HasMany
    {
        return $this->hasMany(PendaftaranSidang::class);
    }
}
