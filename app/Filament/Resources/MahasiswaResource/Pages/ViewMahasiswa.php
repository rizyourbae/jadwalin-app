<?php

namespace App\Filament\Resources\MahasiswaResource\Pages;

use App\Filament\Resources\MahasiswaResource;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Grid;

class ViewMahasiswa extends ViewRecord
{
    protected static string $resource = MahasiswaResource::class;

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('Informasi Akun & Akademik')
                    ->icon('heroicon-o-user-circle')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('user.name')
                                ->label('Nama Lengkap'),
                            TextEntry::make('user.email')
                                ->label('Email Login'),
                            TextEntry::make('nim')
                                ->label('NIM'),
                            TextEntry::make('fakultas.nama_fakultas')
                                ->label('Fakultas'),
                        ]),
                    ]),
                Section::make('Informasi Pembimbing & Skripsi')
                    ->icon('heroicon-o-academic-cap')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('pembimbing1.user.name')
                                ->label('Dosen Pembimbing 1'),
                            TextEntry::make('pembimbing2.user.name')
                                ->label('Dosen Pembimbing 2')
                                ->visible(fn($record) => filled($record->pembimbing2_id)),
                            TextEntry::make('pembimbing2_external')
                                ->label('Dosen Pembimbing 2')
                                // Tambahkan '(Eksternal)' agar lebih jelas
                                ->formatStateUsing(fn($state) => $state ? $state . ' (Dosen Eksternal)' : '-')
                                ->visible(fn($record) => filled($record->pembimbing2_external)),
                        ]),
                        TextEntry::make('judul_skripsi')
                            ->label('Judul Skripsi')
                            ->columnSpanFull(),
                    ]),
            ]);
    }
}
