<?php

namespace App\Filament\Widgets;

use App\Models\Dosen;
use App\Models\Mahasiswa;
use App\Models\PendaftaranSidang;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\Auth;

class StatsOverviewWidget extends BaseWidget
{
    protected static ?int $sort = 1;
    protected function getStats(): array
    {
        $user = Auth::user();

        // Jika user adalah super admin, jangan filter berdasarkan fakultas
        if ($user->hasRole('super_admin')) {
            $dosenQuery = Dosen::query();
            $mahasiswaQuery = Mahasiswa::query();
            $pendaftaranQuery = PendaftaranSidang::query();
        } else {
            // Jika admin fakultas atau dosen, filter berdasarkan fakultas_id mereka
            $fakultasId = $user->fakultas_id;
            $dosenQuery = Dosen::query()->where('fakultas_id', $fakultasId);
            $mahasiswaQuery = Mahasiswa::query()->where('fakultas_id', $fakultasId);
            $pendaftaranQuery = PendaftaranSidang::query()->where('fakultas_id', $fakultasId);
        }

        return [
            Stat::make('Total Dosen', $dosenQuery->count())
                ->description('Jumlah dosen di fakultas Anda')
                ->icon('heroicon-o-academic-cap')
                ->color('success'),
            Stat::make('Total Mahasiswa', $mahasiswaQuery->count())
                ->description('Jumlah mahasiswa di fakultas Anda')
                ->icon('heroicon-o-user-group')
                ->color('info'),
            Stat::make('Pendaftaran Diajukan', $pendaftaranQuery->where('status', 'diajukan')->count())
                ->description('Pendaftaran perlu verifikasi')
                ->icon('heroicon-o-document-arrow-up')
                ->color('warning'),
        ];
    }
}
