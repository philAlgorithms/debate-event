<?php

namespace App\View\Components\Button;

use Illuminate\View\Component;

class Perspective extends Component
{
    public $text;
    public $toggle;
    public $toggleTarget;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($text, string $toggle="modal", string $toggleTarget="")
    {
        $this->text = $text;
        $this->toggle = $toggle;
        $this->toggleTarget = $toggleTarget;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.button.perspective');
    }
}
