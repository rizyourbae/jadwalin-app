<?php

namespace App\Filament\Resources\DosenResource\Pages;

use App\Filament\Resources\DosenResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist; // <-- Tambahkan ini
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Grid;

class ViewDosen extends ViewRecord
{
    protected static string $resource = DosenResource::class;

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('Informasi Akun & Kepegawaian')
                    ->icon('heroicon-o-user-circle')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('user.name')
                                ->label('Nama Lengkap'),
                            TextEntry::make('user.email')
                                ->label('Email Login'),
                            TextEntry::make('nip')
                                ->label('NIP'),
                            TextEntry::make('fakultas.nama_fakultas')
                                ->label('Fakultas'),
                        ]),
                    ]),
                Section::make('Gelar Akademik')
                    ->icon('heroicon-o-academic-cap')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('gelar_depan')
                                ->label('Gelar Depan'),
                            TextEntry::make('gelar_belakang')
                                ->label('Gelar Belakang'),
                        ])
                    ]),
            ]);
    }
}
