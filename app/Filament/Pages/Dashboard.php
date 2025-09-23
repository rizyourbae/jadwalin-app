<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\StatsOverviewWidget;
use App\Filament\Widgets\PerluVerifikasiWidget;
use App\Filament\Widgets\SiapDijadwalkanWidget;
use Filament\Pages\Dashboard as BasePage;

class Dashboard extends BasePage
{
    // Widget yang akan tampil di bagian atas (full-width)
    public function getHeaderWidgets(): array
    {
        return [
            StatsOverviewWidget::class,
        ];
    }

    // Widget yang akan tampil di bagian utama
    public function getWidgets(): array
    {
        return [
            PerluVerifikasiWidget::class,
            SiapDijadwalkanWidget::class,
        ];
    }

    // Method ini akan menata widget menjadi 2 kolom
    public function getWidgetsColumns(): int | array
    {
        return 2;
    }
}
