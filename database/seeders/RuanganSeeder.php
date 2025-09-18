<?php

namespace Database\Seeders;

use App\Models\Fakultas;
use App\Models\Ruangan;
use Illuminate\Database\Seeder;

class RuanganSeeder extends Seeder
{
    public function run(): void
    {
        $fakultas = Fakultas::all();
        foreach ($fakultas as $fak) {
            Ruangan::firstOrCreate(
                ['kode_ruangan' => $fak->kode_fakultas . '-S01'],
                ['fakultas_id' => $fak->id, 'nama_ruangan' => 'Ruang Sidang 1', 'kapasitas' => 15]
            );
            Ruangan::firstOrCreate(
                ['kode_ruangan' => $fak->kode_fakultas . '-S02'],
                ['fakultas_id' => $fak->id, 'nama_ruangan' => 'Ruang Sidang 2', 'kapasitas' => 15]
            );
        }
    }
}
