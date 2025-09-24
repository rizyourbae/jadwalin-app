<?php

namespace App\Filament\Dosen\Widgets;

use App\Models\JadwalSidang;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Builder;

class JadwalDosenWidget extends BaseWidget
{
    protected static ?string $heading = 'Jadwal Menguji & Membimbing';
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(function () {
                $dosenId = Auth::user()->dosen->id;

                return JadwalSidang::query()
                    ->where(function (Builder $query) use ($dosenId) {
                        // Di mana dosen adalah penguji 1 atau penguji 2
                        $query->where('penguji1_id', $dosenId)
                            ->orWhere('penguji2_id', $dosenId);
                    })
                    ->orWhereHas('pendaftaranSidang.mahasiswa', function (Builder $query) use ($dosenId) {
                        // ATAU di mana dosen adalah pembimbing 1 atau pembimbing 2 dari mahasiswa yang bersangkutan
                        $query->where('pembimbing1_id', $dosenId)
                            ->orWhere('pembimbing2_id', $dosenId);
                    })
                    ->latest('tanggal_sidang');
            })
            ->columns([
                TextColumn::make('pendaftaranSidang.mahasiswa.user.name')
                    ->label('Nama Mahasiswa'),
                TextColumn::make('tanggal_sidang')
                    ->label('Tanggal')
                    ->date('l, d M Y'),
                TextColumn::make('waktu_mulai')
                    ->label('Waktu')
                    ->time('H:i'),
                TextColumn::make('ruangan.nama_ruangan')
                    ->label('Ruangan'),
            ]);
    }
}
