<?php

namespace Database\Seeders;

use App\Models\Dosen;
use App\Models\Fakultas;
use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class DosenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // 1. Ambil atau buat role 'dosen'
        $dosenRole = Role::firstOrCreate(['name' => 'dosen']);

        // 2. Ambil semua fakultas yang ada
        $fakultas = Fakultas::all();

        // 3. Looping untuk setiap fakultas
        foreach ($fakultas as $fak) {

            // 4. Buat 5 user dan data dosen untuk setiap fakultas
            User::factory()->count(5)->create([
                'role' => 'dosen', // Mengisi kolom role custom kita
            ])->each(function ($user) use ($dosenRole, $fak) {
                // Beri role 'dosen' via Spatie
                $user->assignRole($dosenRole);

                // Buat data dosen yang terhubung dengan user dan fakultas
                Dosen::create([
                    'user_id' => $user->id,
                    'fakultas_id' => $fak->id,
                    'nip' => fake()->unique()->numerify('198#######201#####'), // Generate NIP palsu yang unik
                    'gelar_depan' => fake()->randomElement(['Dr.', 'Prof. Dr.', null]),
                    'gelar_belakang' => fake()->randomElement([', M.Pd.', ', M.Kom.', ', M.Ag.']),
                ]);
            });
        }
    }
}
