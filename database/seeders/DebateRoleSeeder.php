<?php

namespace Database\Seeders;

use App\Models\DebateRole;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DebateRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            'Debater',
            'Adjudictor',
            'Observer'
        ];

        foreach($roles as $role)
        {
            DebateRole::create(['name' => $role]);
        }
    }
}