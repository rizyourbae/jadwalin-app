<?php

namespace App\Filament\Resources\PendaftaranSidangResource\Pages;

use App\Filament\Resources\PendaftaranSidangResource;
use App\Models\Mahasiswa;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditPendaftaranSidang extends EditRecord
{
    protected static string $resource = PendaftaranSidangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
    protected function mutateFormDataBeforeSave(array $data): array
    {
        $mahasiswa = Mahasiswa::find($data['mahasiswa_id']);

        if ($mahasiswa) {
            $data['fakultas_id'] = $mahasiswa->fakultas_id;
        }

        return $data;
    }
    protected static ?string $title = 'Edit Data Sidang';
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Merubah Data Sidang');
    }
}
