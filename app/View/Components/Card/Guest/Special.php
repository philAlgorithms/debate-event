<?php

namespace App\View\Components\Card\Guest;

use Illuminate\View\Component;

class Special extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $index;

    public function __construct($index)
    {
        $this->index = $index;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.card.guest.special');
    }
}
