<?php

namespace Tests\Feature;

use App\Models\DebateRole;
use App\Models\User;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class RegisterControllerTest extends TestCase
{
    use DatabaseTransactions;
    /**
     * @test
     */
    public function itCreatesUser()
    {
        $name = "Edith Ogbuagu";
        $email = "edith@example.com";
        $school = "UNN";
        $role = DebateRole::first();

        $response = $this->post("/register", [
                "name" => $name,
                "email" => $email,
                "role" => $role->id,
                "school" => $school,
        ]);

        $response->dump();

        $response->assertStatus(201);
        $this->assertEquals($school, $response['data']['school']);
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

        // $response->dump();

        $response->assertStatus(302);

        $this->assertTrue(!$response->json('success'));
        $this->assertEquals($response->json('message')['email'][0], "The email has already been taken.");
    }

    /**
     * @test
     */
    public function itRegistersWithAPartner()
    {
        $name = "Edith Ogbuagu";
        $email = "edith@example.com";
        $role = DebateRole::first();
        $partner_name = "Raymond Onwuoku";
        $partner_email = "raymondonwuoku@gmail.com";
        $partner_role = DebateRole::firstWhere('name', 'Observer');

        $response = $this->post("/register", [
                "name" => $name,
                "email" => $email,
                "role" => $role->id,
                'partner_email' => $partner_email,
                "partner_name" => $partner_name,
                "partner_role" => $partner_role->id
        ]);
        $user = User::firstWhere('email', $email);
        // $response->dump();

        $response->assertStatus(201);
        $this->assertNotNull($user->partner);
        $this->assertEquals($partner_email, $user->partner->email);
    }

    /**
     * @test
     */
    public function itDoesNotRegisterWithAlreadyPairedPartner()
    {
        $partner = User::factory()->create();
        $partner2 = User::factory()->create([
            'partner_id' => $partner->id
        ]);
        $name = "Edith Ogbuagu";
        $email = "edith@example.com";
        $role = DebateRole::first();

        $response = $this->post("/register", [
                "name" => $name,
                "email" => $email,
                "role" => $role->id,
                'partner_email' => $partner->email,
                "partner_name" => $partner->name,
                "partner_role" => $role->id
        ]);

        $response->dump();

        $response->assertStatus(302);
        $this->assertEquals($partner->name." has already partnered with someone else", $response['message']['partner_email']);
    }
}
