<?php

namespace App\Filament\Resources\PendaftaranSidangResource\Pages;

use App\Filament\Resources\PendaftaranSidangResource;
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
