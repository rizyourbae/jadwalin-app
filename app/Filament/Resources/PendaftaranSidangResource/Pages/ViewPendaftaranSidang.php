<?php

namespace App\Filament\Resources\PendaftaranSidangResource\Pages;

use App\Filament\Resources\PendaftaranSidangResource;
use App\Models\PendaftaranSidang;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Grid;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ViewPendaftaranSidang extends ViewRecord
{
    protected static string $resource = PendaftaranSidangResource::class;

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('Detail Pengajuan Sidang')
                    ->icon('heroicon-o-document-text')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('mahasiswa.user.name')->label('Nama Mahasiswa'),
                            TextEntry::make('mahasiswa.nim')->label('NIM'),

                            TextEntry::make('jenis_sidang')
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

                            TextEntry::make('status')
                                ->badge()
                                ->colors([
                                    'primary' => 'diajukan',
                                    'warning' => 'diverifikasi',
                                    'success' => fn($state) => in_array($state, ['dijadwalkan', 'selesai']),
                                    'danger' => 'ditolak',
                                ]),

                            TextEntry::make('judul')
                                ->label('Judul Proposal/Skripsi')
                                ->columnSpanFull(),

                            TextEntry::make('berkas_utama')
                                ->label('File Utama')
                                ->formatStateUsing(fn() => 'Unduh Dokumen')
                                ->badge()
                                ->color('info')
                                ->icon('heroicon-o-arrow-down-tray')
                                ->url(fn(PendaftaranSidang $record): ?string => $record->berkas_utama ? Storage::url($record->berkas_utama) : null)
                                ->openUrlInNewTab()
                                ->visible(fn(PendaftaranSidang $record): bool => !empty($record->berkas_utama)),

                            TextEntry::make('catatan_admin')
                                ->label('Catatan dari Admin')
                                ->columnSpanFull(),
                        ]),
                    ]),
            ]);
    }
}
