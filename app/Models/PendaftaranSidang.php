<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class PendaftaranSidang extends Model
{
    use HasFactory;

    // Nama tabel harus eksplisit jika tidak jamak
    protected $table = 'pendaftaran_sidang';

    protected $fillable = [
        'mahasiswa_id',
        'fakultas_id',
        'jenis_sidang',
        'judul',
        'berkas_utama',
        'berkas_pendukung',
        'status',
        'catatan_admin',
    ];

    public function mahasiswa(): BelongsTo
    {
        return $this->belongsTo(Mahasiswa::class);
    }

    public function fakultas(): BelongsTo
    {
        return $this->belongsTo(Fakultas::class);
    }

    public function jadwalSidang(): HasOne
    {
        return $this->hasOne(JadwalSidang::class);
    }
}
