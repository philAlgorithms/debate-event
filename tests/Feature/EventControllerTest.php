<?php

namespace Tests\Feature;

use App\Models\Activity;
use App\Models\EventDay;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class EventControllerTest extends TestCase
{
    use RefreshDatabase;
    /**
     * @test
     */
    public function itGetsActivityAndDate()
    {
        $day = EventDay::factory()->create();
        $activity = Activity::factory(3)->for($day)->create();

        $response = $this->get('/api/event-days');

        $response->dump();

        $response->assertOk();
    }
}
