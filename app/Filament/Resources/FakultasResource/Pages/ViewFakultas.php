<?php

namespace App\Filament\Resources\FakultasResource\Pages;

use App\Filament\Resources\FakultasResource;
use Filament\Resources\Pages\ViewRecord;
use Filament\Infolists\Infolist;
use Filament\Infolists\Components\Section;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Grid;

class ViewFakultas extends ViewRecord
{
    protected static string $resource = FakultasResource::class;

    public function infolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->schema([
                Section::make('Detail Fakultas')
                    ->icon('heroicon-o-building-library')
                    ->schema([
                        Grid::make(2)->schema([
                            TextEntry::make('nama_fakultas')
                                ->label('Nama Fakultas'),
                            TextEntry::make('kode_fakultas')
                                ->label('Kode Fakultas'),
                        ]),
                    ]),
            ]);
    }
}
