<?php

namespace Database\Seeders;

use App\Models\OldUser;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class OldUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Populate users from old db file
        $path = resource_path('sql/users.sql');

        DB::unprepared(
            file_get_contents($path)
        );

        // Move current users to old users
        foreach(User::all() as $user)
        {
            OldUser::create([
                "name" => $user->name,
                "email" => $user->email,
                "created_at" => $user->created_at,
                "updated_at" => $user->updated_at,
            ]);
        }
    }
}
