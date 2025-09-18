<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class JadwalSidang extends Model
{
    use HasFactory;

    protected $table = 'jadwal_sidangs';

    protected $fillable = [
        'pendaftaran_sidang_id',
        'ruangan_id',
        'tanggal_sidang',
        'waktu_mulai',
        'waktu_selesai',
        'penguji1_id',
        'penguji2_id',
    ];

    public function pendaftaranSidang(): BelongsTo
    {
        return $this->belongsTo(PendaftaranSidang::class);
    }

    public function ruangan(): BelongsTo
    {
        return $this->belongsTo(Ruangan::class);
    }

    public function penguji1(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'penguji1_id');
    }

    public function penguji2(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'penguji2_id');
    }
}
