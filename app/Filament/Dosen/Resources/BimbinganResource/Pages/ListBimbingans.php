<?php

namespace App\Filament\Dosen\Resources\BimbinganResource\Pages;

use App\Filament\Dosen\Resources\BimbinganResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBimbingans extends ListRecords
{
    protected static string $resource = BimbinganResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
