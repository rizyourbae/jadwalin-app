<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Ruangan extends Model
{
    use HasFactory;

    protected $fillable = [
        'fakultas_id',
        'nama_ruangan',
        'kode_ruangan',
        'kapasitas',
    ];

    public function fakultas(): BelongsTo
    {
        return $this->belongsTo(Fakultas::class);
    }
}
