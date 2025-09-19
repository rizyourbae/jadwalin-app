<?php

namespace App\Filament\Mahasiswa\Resources\PendaftaranSidangResource\Pages;

use App\Filament\Mahasiswa\Resources\PendaftaranSidangResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPendaftaranSidangs extends ListRecords
{
    protected static string $resource = PendaftaranSidangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
