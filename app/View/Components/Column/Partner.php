<?php

namespace App\View\Components\Column;

use Illuminate\View\Component;

class Partner extends Component
{
    public $image;
    /**
     * Create a new component instance.
     *
     * @return void
     */
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
        return view('components.column.partner');
    }
}
