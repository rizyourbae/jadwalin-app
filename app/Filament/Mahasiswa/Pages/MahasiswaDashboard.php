<?php

namespace App\Filament\Mahasiswa\Pages;

use Filament\Pages\Page;
use Illuminate\Support\Facades\Auth;

class MahasiswaDashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static string $view = 'filament.mahasiswa.pages.mahasiswa-dashboard';
    protected static ?string $title = 'Dashboard';

    public $user;
    public $pendaftaran;

    public function mount(): void
    {
        $this->user = Auth::user();
        $this->pendaftaran = collect();
        if ($this->user->mahasiswa) {
            $this->pendaftaran = $this->user->mahasiswa->pendaftaranSidang()->latest()->get();
        }
    }
}
