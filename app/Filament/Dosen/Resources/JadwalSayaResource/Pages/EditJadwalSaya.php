<?php

namespace App\Filament\Dosen\Resources\JadwalSayaResource\Pages;

use App\Filament\Dosen\Resources\JadwalSayaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditJadwalSaya extends EditRecord
{
    protected static string $resource = JadwalSayaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
