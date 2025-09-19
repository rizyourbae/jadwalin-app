<?php

namespace App\Filament\Resources\JadwalSidangResource\Pages;

use App\Filament\Resources\JadwalSidangResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListJadwalSidangs extends ListRecords
{
    protected static string $resource = JadwalSidangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()
                ->label('Tambah Jadwal Sidang')
                ->icon('bi-calendar-plus-fill'),
        ];
    }
}
