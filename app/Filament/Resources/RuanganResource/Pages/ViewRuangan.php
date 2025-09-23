<?php

namespace App\Filament\Resources\RuanganResource\Pages;

use App\Filament\Resources\RuanganResource;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Grid;

class ViewRuangan extends ViewRecord
{
    protected static string $resource = RuanganResource::class;

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('Detail Ruangan')
                    ->icon('heroicon-o-building-office-2')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('nama_ruangan')
                                ->label('Nama Ruangan'),
                            TextEntry::make('kode_ruangan')
                                ->label('Kode Ruangan'),
                            TextEntry::make('fakultas.nama_fakultas')
                                ->label('Fakultas'),
                            TextEntry::make('kapasitas'),
                        ]),
                    ]),
            ]);
    }
}
