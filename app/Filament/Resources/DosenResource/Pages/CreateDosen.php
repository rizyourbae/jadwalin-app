<?php

namespace App\Filament\Resources\DosenResource\Pages;

use App\Filament\Resources\DosenResource;
use App\Models\User; // <-- Tambahkan ini
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

class CreateDosen extends CreateRecord
{
    protected static string $resource = DosenResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Menambahkan Dosen Baru');
    }
    protected static ?string $title = 'Buat Akun Untuk Dosen';

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        // 1. Buat data user dari input form
        $userData = [
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'role' => 'dosen',
            'fakultas_id' => $data['fakultas_id'],
        ];

        // 2. Simpan user baru ke database
        $user = User::create($userData);

        // 3. Berikan role 'dosen' via Spatie
        $user->assignRole('dosen');

        // 4. Masukkan ID user baru ke dalam data yang akan disimpan ke tabel dosens
        $data['user_id'] = $user->id;

        return $data;
    }
}
