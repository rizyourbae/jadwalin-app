<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;

class DosenTestUserSeeder extends Seeder
{
    public function run(): void
    {
        // Buat user baru untuk testing
        $user = User::firstOrCreate(
            ['email' => 'dosen.test@uinsi.ac.id'],
            [
                'name' => 'Dosen Penguji',
                'password' => bcrypt('password'),
                'role' => 'dosen',
            ]
        );

        // Beri dia role 'dosen'
        $user->assignRole('dosen');
    }
}
