<?php

namespace App\Filament\Resources\MahasiswaResource\Pages;

use App\Filament\Resources\MahasiswaResource;
use App\Models\User;
use App\Models\Mahasiswa;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;
use Illuminate\Database\Eloquent\Model;

class CreateMahasiswa extends CreateRecord
{
    protected static string $resource = MahasiswaResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'role' => 'mahasiswa', // Atur role custom kita
            'fakultas_id' => $data['fakultas_id'],
        ]);

        $user->assignRole('mahasiswa'); // Beri role via Spatie

        $data['user_id'] = $user->id;

        if (isset($data['pembimbing2_id']) && $data['pembimbing2_id'] === 'lainnya') {
            $data['pembimbing2_id'] = null;
        }
        dd($data);


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
            ->body('Berhasil Menambahkan Mahasiswa Baru');
    }
    protected static ?string $title = 'Buat Akun Untuk Mahasiswa';
}
