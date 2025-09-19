<?php

namespace App\Filament\Resources\JadwalSidangResource\Pages;

use App\Filament\Resources\JadwalSidangResource;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

class CreateJadwalSidang extends CreateRecord
{
    protected static string $resource = JadwalSidangResource::class;
    public ?int $pendaftaran_id = null;

    public function mount(): void
    {
        // Ambil pendaftaran_id dari query string URL
        $this->pendaftaran_id = request()->query('pendaftaran_id');

        // Isi form 'pendaftaran_sidang_id' dengan nilai dari URL
        $this->form->fill([
            'pendaftaran_sidang_id' => $this->pendaftaran_id,
        ]);
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Menambahkan Jadwal Sidang');
    }
    protected static ?string $title = 'Buat Jadwal Sidang';
}
