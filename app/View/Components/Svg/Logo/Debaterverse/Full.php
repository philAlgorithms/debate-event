<?php

namespace App\View\Components\Svg\Logo\Debaterverse;

use Illuminate\View\Component;

class Full extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.svg.logo.debaterverse.full');
    }
}
