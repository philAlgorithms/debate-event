<?php

namespace App\View\Components\Section;

use Illuminate\View\Component;

class Schedule extends Component
{
    public $eventDays;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($eventDays)
    {
        $this->eventDays = $eventDays;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.section.schedule');
    }
}
