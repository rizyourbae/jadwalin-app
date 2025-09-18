<?php

namespace App\Filament\Resources\JadwalSidangResource\Pages;

use App\Filament\Resources\JadwalSidangResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditJadwalSidang extends EditRecord
{
    protected static string $resource = JadwalSidangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
