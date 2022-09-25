<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\EventDay;

class EventDaySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $schedule = [
            [
                "color" => "cyan",
                "date" => Carbon::parse('2022-12-04'),
                "activities" => [
                    "Arrival",
                    "Meet and Greet",
                    "Games Night"
                ]
            ],
            [
                "color" => "green-500",
                "date" => Carbon::parse('2022-12-05'),
                "activities" => [
                    "Opening Ceremony",
                    "Debate Day 1",
                    "Comedy Night"
                ]
            ],
            [
                "color" => "yellow",
                "date" => Carbon::parse('2022-12-06'),
                "activities" => [
                    "Debate Day 2",
                    "Mini Concert",
                    "Outdoor Movie Night"
                ]
            ],
            [
                "color" => "purple",
                "date" => Carbon::parse('2022-12-07'),
                "activities" => [
                    "Debate Day 3",
                    "Agbaya Hangout 2.0",
                    "Dance/Breaks Night"
                ]
            ],
            [
                "color" => "green-500",
                "date" => Carbon::parse('2022-12-08'),
                "activities" => [
                    "Debate Day 4 (Quater finals & semi finals)",
                    "Mini Excursion",
                    "Talent Show"
                ]
            ],
            [
                "color" => "purple",
                "date" => Carbon::parse('2022-12-09'),
                "activities" => [
                    "Debate Grand Finale",
                    "National Youth Confrence"
                ]
            ],
            [
                "color" => "cyan",
                "date" => Carbon::parse('2022-12-10'),
                "activities" => [
                    "Departure"
                ]
            ],
	];

	foreach($schedule as $day)
	{
	    $eventDay = EventDay::create([
		"color" => $day['color'],
		"date" => $day['date']
	    ]);

	    foreach($day['activities'] as $activity)
	    {
		$eventDay->activities()->create([
		    "title" => $activity
		]);
	    }
	}
    }
}
