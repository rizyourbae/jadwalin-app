<?php

namespace App\Filament\Resources\JadwalSidangResource\Pages;

use App\Filament\Resources\JadwalSidangResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditJadwalSidang extends EditRecord
{
    protected static string $resource = JadwalSidangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected static ?string $title = 'Edit Jadwal Sidang';
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Merubah Jadwal Sidang');
    }
}
