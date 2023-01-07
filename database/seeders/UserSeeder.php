<?php

namespace Database\Seeders;

use App\Models\OldUser;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Artisan;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    { 
       $admin_details = [
            "name" => "admin",
            "email" => "team@anydc.xyz",
            "password" => bcrypt("Debate+Writing")
        ];
        $admin = User::create($admin_details);
        $admin->assignRole('admin');
    }
}
