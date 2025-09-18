<?php

namespace Database\Seeders;

use App\Models\Fakultas;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FakultasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Fakultas::firstOrCreate(
            ['kode_fakultas' => 'FTIK'],
            ['nama_fakultas' => 'Fakultas Tarbiyah dan Ilmu Keguruan']
        );

        Fakultas::firstOrCreate(
            ['kode_fakultas' => 'FUAD'],
            ['nama_fakultas' => 'Fakultas Ushuluddin, Adab, dan Dakwah']
        );

        Fakultas::firstOrCreate(
            ['kode_fakultas' => 'FASYA'],
            ['nama_fakultas' => 'Fakultas Syariah']
        );

        Fakultas::firstOrCreate(
            ['kode_fakultas' => 'FEBI'],
            ['nama_fakultas' => 'Fakultas Ekonomi dan Bisnis Islam']
        );
    }
}
