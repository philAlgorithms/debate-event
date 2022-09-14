<section id="special-guests" class="special-guests mt-5">
    <div class="container">
        <div class="row text-center text-white">
            <h1 class="display-3">Special Guests</h1>
        </div>
        <div class="row justify-content-cente mx-auto">
            @for ($i=0; $i<16; $i++)
            <div class="col-xxl-3 col-md-4 col-lg-3 px-1 mt-2 guest">
                <x-card.guest.special :index=$i />
            </div>
            @endfor
        </div>
    </div> 
</section>
