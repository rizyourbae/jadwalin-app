<?php

namespace App\Filament\Resources\PendaftaranSidangResource\Pages;

use App\Filament\Resources\PendaftaranSidangResource;
use App\Models\Mahasiswa;
use Filament\Resources\Pages\CreateRecord;

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
}
