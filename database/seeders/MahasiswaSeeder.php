<?php

namespace Database\Seeders;

use App\Models\Dosen;
use App\Models\Fakultas;
use App\Models\Mahasiswa;
use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class MahasiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // 1. Ambil atau buat role 'mahasiswa'
        $mahasiswaRole = Role::firstOrCreate(['name' => 'mahasiswa']);

        // 2. Ambil semua fakultas yang ada
        $fakultas = Fakultas::all();

        // 3. Looping untuk setiap fakultas
        foreach ($fakultas as $fak) {

            // Ambil ID dosen dari fakultas ini untuk dijadikan pembimbing
            $dosenIds = Dosen::where('fakultas_id', $fak->id)->pluck('id');

            // 4. Buat 10 user dan data mahasiswa untuk fakultas ini
            User::factory()->count(10)->create([
                'role' => 'mahasiswa', // Mengisi kolom role custom kita
                'fakultas_id' => $fak->id, // Mengisi fakultas_id di tabel user
            ])->each(function ($user) use ($mahasiswaRole, $fak, $dosenIds) {
                // Beri role 'mahasiswa' via Spatie
                $user->assignRole($mahasiswaRole);

                // Buat data mahasiswa yang terhubung dengan user dan fakultas
                Mahasiswa::create([
                    'user_id' => $user->id,
                    'fakultas_id' => $fak->id,
                    'nim' => fake()->unique()->numerify('21#######'), // Generate NIM palsu yang unik
                    'pembimbing1_id' => $dosenIds->count() > 0 ? $dosenIds->random() : null,
                    'pembimbing2_id' => $dosenIds->count() > 1 ? $dosenIds->random() : null,
                ]);
            });
        }
    }
}
