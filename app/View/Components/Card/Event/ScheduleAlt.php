<?php

namespace App\View\Components\Card\Event;

use Illuminate\View\Component;

class ScheduleAlt extends Component
{
    public $month;
    public $day;
    public $activities;
    public $color;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(string $month, string $day, array $activities, string $color)
    {
        $this->month = $month;
        $this->day = $day;
        $this->activities = $activities;
        $this->color = $color;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.card.event.schedule-alt');
    }
}
