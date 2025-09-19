<?php

namespace App\Filament\Mahasiswa\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use App\Models\PendaftaranSidang;
use Illuminate\Support\Facades\Auth;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Str;

class RiwayatSidangWidget extends BaseWidget
{
    protected static ?string $heading = 'Status Pendaftaran Sidang';

    protected static ?string $icon = 'heroicon-o-academic-cap';
    protected int | string | array $columnSpan = 'full';
    public function table(Table $table): Table
    {
        return $table
            ->query(
                PendaftaranSidang::query()
                    ->where('mahasiswa_id', Auth::user()->mahasiswa->id)
                    ->latest()
            )
            ->columns([
                TextColumn::make('jenis_sidang')
                    ->label('Jenis Sidang')
                    ->formatStateUsing(fn(string $state): string => Str::title(str_replace('_', ' ', $state)))
                    ->searchable(),
                TextColumn::make('status')
                    ->badge()
                    ->colors([
                        'gray' => 'diajukan',
                        'warning' => 'diverifikasi',
                        'info' => 'dijadwalkan',
                        'success' => 'selesai',
                        'danger' => 'ditolak',
                    ]),
                TextColumn::make('jadwalSidang.tanggal_sidang')
                    ->label('Tanggal')
                    ->date('l, d F Y')
                    ->icon('heroicon-o-calendar-days') // <-- TAMBAHKAN INI
                    ->iconPosition('before'),
                TextColumn::make('jadwalSidang.waktu_mulai')
                    ->label('Waktu')
                    ->formatStateUsing(fn($record) => $record->jadwalSidang ? \Carbon\Carbon::parse($record->jadwalSidang->waktu_mulai)->format('H:i') . ' - ' . \Carbon\Carbon::parse($record->jadwalSidang->waktu_selesai)->format('H:i') : '-'),
                TextColumn::make('jadwalSidang.ruangan.nama_ruangan')->label('Ruangan'),
            ]);
    }
}
