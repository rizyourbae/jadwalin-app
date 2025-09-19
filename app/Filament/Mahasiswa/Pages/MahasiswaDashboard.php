<?php

namespace App\Filament\Mahasiswa\Pages;

use Filament\Pages\Page;
use Illuminate\Support\Facades\Auth;
use App\Filament\Mahasiswa\Resources\PendaftaranSidangResource;
use Filament\Actions\Action;
use App\Filament\Mahasiswa\Widgets\RiwayatSidangWidget;
use Filament\Infolists\Infolist;
use Filament\Infolists\Concerns\InteractsWithInfolists;
use Filament\Infolists\Contracts\HasInfolists;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\Section as InfolistSection;
use Filament\Infolists\Components\Grid as InfolistGrid;

class MahasiswaDashboard extends Page implements HasInfolists
{
    use InteractsWithInfolists;
    protected static ?string $navigationIcon = 'heroicon-o-user';
    protected static string $view = 'filament.mahasiswa.pages.mahasiswa-dashboard';
    protected static ?string $title = 'Riwayat Diri';

    protected function getHeaderWidgets(): array
    {
        return [
            RiwayatSidangWidget::class,
        ];
    }

    // Method untuk mendefinisikan Infolist profil
    public function mahasiswaInfolist(Infolist $infolist): Infolist
    {
        return $infolist
            ->record(Auth::user()->mahasiswa)
            ->schema([
                InfolistSection::make('Profil Mahasiswa')
                    ->icon('heroicon-o-user-circle')
                    ->schema([
                        InfolistGrid::make(2)
                            ->schema([
                                TextEntry::make('user.name')->label('Nama Lengkap'),
                                TextEntry::make('nim')->label('NIM'),
                                TextEntry::make('fakultas.nama_fakultas')->label('Fakultas'),
                                TextEntry::make('user.email')->label('Email'),
                                TextEntry::make('pembimbing1.user.name')->label('Dosen Pembimbing 1'),
                                TextEntry::make('pembimbing2.user.name')->label('Dosen Pembimbing 2'),
                            ])
                    ])
            ]);
    }

    // Ini adalah method untuk membuat tombol di header halaman
    protected function getHeaderActions(): array
    {
        $mahasiswa = Auth::user()->mahasiswa;
        $pendaftaranTerakhir = $mahasiswa?->pendaftaranSidang()->latest()->first();

        $tahapSelanjutnya = null;
        $bisaMendaftar = false;

        if (!$pendaftaranTerakhir) {
            $tahapSelanjutnya = 'Seminar Proposal';
            $bisaMendaftar = true;
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_proposal' && $pendaftaranTerakhir->status === 'selesai') {
            $tahapSelanjutnya = 'Seminar Hasil';
            $bisaMendaftar = true;
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_hasil' && $pendaftaranTerakhir->status === 'selesai') {
            $tahapSelanjutnya = 'Sidang Munaqasah';
            $bisaMendaftar = true;
        }

        return [
            Action::make('daftarSidang')
                ->label('Daftar ' . $tahapSelanjutnya)
                ->url(PendaftaranSidangResource::getUrl('create'))
                ->visible($bisaMendaftar),
        ];
    }
}
