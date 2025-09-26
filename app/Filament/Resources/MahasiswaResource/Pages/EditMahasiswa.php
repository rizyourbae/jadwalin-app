<?php

namespace App\Filament\Resources\MahasiswaResource\Pages;

use App\Filament\Resources\MahasiswaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;

class EditMahasiswa extends EditRecord
{
    protected static string $resource = MahasiswaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
    protected static ?string $title = 'Edit Data Mahasiswa';
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function mutateFormDataBeforeSave(array $data): array
    {
        if (!empty($data['pembimbing2_external'])) {
            // Jika field eksternal DIISI, maka field internal WAJIB dikosongkan (null)
            $data['pembimbing2_id'] = null;
        } else {
            // Jika field eksternal KOSONG, maka field eksternal WAJIB dikosongkan (null)
            $data['pembimbing2_external'] = null;
        }

        return $data;
    }

    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Merubah Data Mahasiswa');
    }
}
