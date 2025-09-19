<?php

namespace App\Filament\Resources\MahasiswaResource\Pages;

use App\Filament\Resources\MahasiswaResource;
use App\Models\User;
use Filament\Resources\Pages\CreateRecord;

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

        return $data;
    }
}
