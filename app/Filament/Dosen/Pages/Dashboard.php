<?php

namespace App\Filament\Dosen\Pages;

use App\Filament\Dosen\Widgets\JadwalDosenWidget;
use App\Filament\Dosen\Widgets\MahasiswaBimbinganWidget;
use Filament\Pages\Dashboard as BasePage;

class Dashboard extends BasePage
{
    public function getWidgets(): array
    {
        return [
            // Daftarkan widget di sini
            JadwalDosenWidget::class,
            MahasiswaBimbinganWidget::class,
        ];
    }
}
