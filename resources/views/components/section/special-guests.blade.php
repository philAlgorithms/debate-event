<section id="special-guests" class="special-guests mt-5">
    <div class="container position-relative">
        <div class="row text-center text-white">
            <h1 class="display-3">Special Guests</h1>
        </div>
        <x-to-be-announced />
        <div class="row d-flex justify-content-center d-none">
            {{-- @for ($i=0; $i<12; $i++)
            <div class="col-6 col-xs-6 col-sm-6 col-md-4 col-xl-3 px-1 mt-2 guest">
                <x-card.guest.special :index=$i />
            </div>
            @endfor --}}
        </div>
    </div> 
</section>
