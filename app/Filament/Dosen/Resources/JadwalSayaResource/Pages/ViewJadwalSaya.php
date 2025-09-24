<?php

namespace App\Filament\Dosen\Resources\JadwalSayaResource\Pages;

use App\Filament\Dosen\Resources\JadwalSayaResource;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Grid;
use Illuminate\Support\Str;

class ViewJadwalSaya extends ViewRecord
{
    protected static string $resource = JadwalSayaResource::class;

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('Informasi Mahasiswa & Pengajuan')
                    ->icon('heroicon-o-user-circle')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('pendaftaranSidang.mahasiswa.user.name')
                                ->label('Nama Mahasiswa'),
                            TextEntry::make('pendaftaranSidang.mahasiswa.nim')
                                ->label('NIM'),
                            TextEntry::make('pendaftaranSidang.jenis_sidang')
                                ->label('Jenis Sidang')
                                ->badge()
                                ->formatStateUsing(fn(string $state): string => Str::title(str_replace('_', ' ', $state)))
                                // 2. Memberikan warna berbeda berdasarkan isinya
                                ->color(fn(string $state): string => match ($state) {
                                    'seminar_proposal' => 'info',
                                    'seminar_hasil' => 'warning',
                                    'munaqasah' => 'success',
                                    default => 'gray',
                                }),
                            TextEntry::make('pendaftaranSidang.status')
                                ->label('Status Pengajuan')
                                ->badge()
                                ->colors([
                                    'primary' => 'diajukan',
                                    'warning' => 'diverifikasi',
                                    'success' => fn($state) => in_array($state, ['dijadwalkan', 'selesai']),
                                    'danger' => 'ditolak',
                                ]),
                            TextEntry::make('pendaftaranSidang.judul')
                                ->label('Judul')
                                ->columnSpanFull(),
                        ]),
                    ]),
                Section::make('Detail Jadwal Pelaksanaan')
                    ->icon('heroicon-o-calendar-days')
                    ->schema([
                        Grid::make(3)->schema([
                            TextEntry::make('tanggal_sidang')
                                ->label('Tanggal Sidang')
                                ->date('l, d F Y'),
                            TextEntry::make('waktu_mulai')
                                ->label('Waktu Mulai')
                                ->time('H:i'),
                            TextEntry::make('ruangan.nama_ruangan')
                                ->label('Ruangan'),
                        ]),
                    ]),
                Section::make('Dosen Pembimbing') // <-- Ganti judulnya agar lebih umum
                    ->icon('heroicon-o-academic-cap')
                    ->schema([
                        Grid::make(2)->schema([
                            // Data Pembimbing
                            TextEntry::make('pendaftaranSidang.mahasiswa.pembimbing1.user.name')
                                ->label('Dosen Pembimbing 1'),
                            TextEntry::make('pendaftaranSidang.mahasiswa.pembimbing2.user.name')
                                ->label('Dosen Pembimbing 2'),
                        ])
                    ]),
                Section::make('Tim Penguji')
                    ->icon('heroicon-o-academic-cap')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('penguji1.user.name')
                                ->label('Dosen Penguji 1'),
                            TextEntry::make('penguji2.user.name')
                                ->label('Dosen Penguji 2'),
                        ])
                    ]),
            ]);
    }
}
