<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Spatie\Permission\Models\Role;
use Tests\TestCase;

class UserControllerTest extends TestCase
{
    use RefreshDatabase;
    /**
     * @test
     */
    public function itCreatesCsvFile()
    {
        $users = User::factory(50)->create();
        $role = Role::findByName('participant');

        $role->users()->attach($users);

        $response = $this->get("/get-csv");

        $response->dump();

        $response->assertOk();
    }
}
