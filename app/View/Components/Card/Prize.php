<?php

namespace App\View\Components\Card;

use Illuminate\View\Component;

class Prize extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $image;

    public function __construct(string $image)
    {
        $this->image = $image;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.card.prize');
    }
}
