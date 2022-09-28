<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class RegisterControllerTest extends TestCase
{
    use RefreshDatabase;
    /**
     * @test
     */
    public function itCreatesUser()
    {
        $name = "Edith Ogbuagu";
        $email = "edith@example.com";

        $response = $this->post("/register", [
                "name" => $name,
                "email" => $email
        ]);

        $response->dump();

        $response->assertStatus(201);
    }

    /**
     * @test
     */
    public function itChecksForExistingEmail()
    {
        $user1 = User::factory()->create();
        $email2 = $user1->email;

        $response = $this->post("/register", [
                "name" => "John Doe",
                "email" => $email2
        ]);

        $response->dump();

        $response->assertStatus(302);

        $this->assertTrue(!$response->json('success'));
        $this->assertEquals($response->json('message')['email'][0], "The email has already been taken.");
    }
}
