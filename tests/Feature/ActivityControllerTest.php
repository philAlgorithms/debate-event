<?php

namespace Tests\Feature;

use App\Models\Activity;
use App\Models\EventDay;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ActivityControllerTest extends TestCase
{
    use RefreshDatabase;
    /**
     * @test
     */
    public function itGetsActivityAndDate()
    {
        $day = EventDay::factory()->create();
        $activity = Activity::factory()->for($day)->create();

        $response = $this->get('/api/activities');

        $response->dump();

        $response->assertOk();
    }
}
