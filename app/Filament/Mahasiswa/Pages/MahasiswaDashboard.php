<?php

namespace App\Filament\Mahasiswa\Pages;

use Filament\Pages\Page;
use Illuminate\Support\Facades\Auth;
use App\Filament\Mahasiswa\Resources\PendaftaranSidangResource;
use Filament\Actions\Action; // <-- Tambahkan ini

class MahasiswaDashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-home';
    protected static string $view = 'filament.mahasiswa.pages.mahasiswa-dashboard';
    protected static ?string $title = 'Dashboard';

    public $user;
    public $mahasiswa;
    public $pendaftaran;
    public ?string $tahapSelanjutnya = null;
    public bool $bisaMendaftar = false;

    public function mount(): void
    {
        $this->user = Auth::user();
        $this->mahasiswa = $this->user->mahasiswa;
        $this->pendaftaran = collect();

        if ($this->mahasiswa) {
            $this->pendaftaran = $this->mahasiswa
                ->pendaftaranSidang()
                ->latest()
                ->get();
            $this->pendaftaran = $this->mahasiswa->pendaftaranSidang()
                ->with('jadwalSidang') // <-- UBAH DI SINI
                ->latest()
                ->get();

            $this->tentukanTahapSelanjutnya();
        }
    }

    protected function tentukanTahapSelanjutnya(): void
    {
        $pendaftaranTerakhir = $this->pendaftaran->first();

        if (!$pendaftaranTerakhir) {
            $this->tahapSelanjutnya = 'Seminar Proposal';
            $this->bisaMendaftar = true;
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_proposal' && $pendaftaranTerakhir->status === 'selesai') {
            $this->tahapSelanjutnya = 'Seminar Hasil';
            $this->bisaMendaftar = true;
        } elseif ($pendaftaranTerakhir->jenis_sidang === 'seminar_hasil' && $pendaftaranTerakhir->status === 'selesai') {
            $this->tahapSelanjutnya = 'Sidang Munaqasah';
            $this->bisaMendaftar = true;
        }
    }

    // Ini adalah method untuk membuat tombol di header halaman
    protected function getHeaderActions(): array
    {
        return [
            Action::make('daftarSidang')
                ->label('Daftar ' . $this->tahapSelanjutnya)
                // Ganti URL ke route resource Filament yang baru
                ->url(PendaftaranSidangResource::getUrl('create'))
                ->visible($this->bisaMendaftar),
        ];
    }
}
