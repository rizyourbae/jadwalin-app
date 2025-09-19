<?php

namespace App\Filament\Pages;

use Filament\Facades\Filament;
use Filament\Forms\Form;
use Filament\Pages\Auth\Login as BaseLogin;
use Illuminate\Validation\ValidationException;

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

        // Tambahkan syarat: role BUKAN mahasiswa
        $credentials['role'] = function ($query) {
            $query->where('role', '!=', 'mahasiswa');
        };

        return $credentials;
    }
}
