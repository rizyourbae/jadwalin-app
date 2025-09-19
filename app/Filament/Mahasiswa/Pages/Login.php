<?php

namespace App\Filament\Mahasiswa\Pages;

use Filament\Facades\Filament;
use Filament\Forms\Form;
use Filament\Pages\Auth\Login as BaseLogin;

class Login extends BaseLogin
{
    public function form(Form $form): Form
    {
        return $form
            ->schema([
                $this->getEmailFormComponent(),
                $this->getPasswordFormComponent(),
                $this->getRememberFormComponent(),
            ])
            ->statePath('data');
    }

    protected function getCredentialsFromFormData(array $data): array
    {
        $credentials = parent::getCredentialsFromFormData($data);

        // Tambahkan syarat WAJIB: role HARUS mahasiswa
        $credentials['role'] = 'mahasiswa';

        return $credentials;
    }
}
