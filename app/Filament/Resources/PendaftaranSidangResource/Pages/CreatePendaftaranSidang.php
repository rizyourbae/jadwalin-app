<?php

namespace App\Filament\Resources\PendaftaranSidangResource\Pages;

use App\Filament\Resources\PendaftaranSidangResource;
use App\Models\Mahasiswa;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreatePendaftaranSidang extends CreateRecord
{
    protected static string $resource = PendaftaranSidangResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $mahasiswa = Mahasiswa::find($data['mahasiswa_id']);

        if ($mahasiswa) {
            $data['fakultas_id'] = $mahasiswa->fakultas_id;
        }

        return $data;
    }
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Mendaftarkan Sidang Terbaru');
    }
    protected static ?string $title = 'Tambah Sidang Baru';
}
