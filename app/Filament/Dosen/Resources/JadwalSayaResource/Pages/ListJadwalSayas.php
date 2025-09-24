<?php

namespace App\Filament\Dosen\Resources\JadwalSayaResource\Pages;

use App\Filament\Dosen\Resources\JadwalSayaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListJadwalSayas extends ListRecords
{
    protected static string $resource = JadwalSayaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
