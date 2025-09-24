<?php

namespace App\Filament\Dosen\Resources\BimbinganResource\Pages;

use App\Filament\Dosen\Resources\BimbinganResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Grid;

class ViewBimbingan extends ViewRecord
{
    protected static string $resource = BimbinganResource::class;

    public function infolist(Infolist $infolist): Infolist
    {
        // Ini adalah Infolist yang sama persis dengan yang kita buat untuk Admin
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
                                ->label('Dosen Pembimbing 2'),
                        ]),
                        TextEntry::make('judul_skripsi')
                            ->label('Judul Skripsi')
                            ->columnSpanFull(),
                    ]),
            ]);
    }
}
