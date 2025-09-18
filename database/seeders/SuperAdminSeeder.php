<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class SuperAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Buat atau cari user super admin
        $user = User::firstOrCreate(
            ['email' => 'superadmin@uinsi.ac.id'],
            [
                'name' => 'Super Admin',
                'password' => bcrypt('password'), // Ganti 'password' dengan password yang aman
                'role' => 'superadmin', // Kolom custom kita, tetap kita isi
            ]
        );

        // Buat atau cari role 'super_admin'
        $role = Role::firstOrCreate(['name' => 'super_admin']);

        // Berikan semua permission ke role super_admin (best practice untuk super admin)
        $permissions = Permission::pluck('id', 'id')->all();
        $role->syncPermissions($permissions);

        // Berikan role 'super_admin' ke user
        $user->assignRole($role);
    }
}
