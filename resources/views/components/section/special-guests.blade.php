<section id="special-guests" class="special-guests mt-5">
    <div class="container">
        <div class="row text-center text-white">
            <h1 class="display-3">Special Guests</h1>
	</div>
	<div class="row d-flex justify-content-center">
        @for ($i=0; $i<16; $i++)
        <div class="col-6 col-md-3 col-lg-3 px-1 guest">
            <x-card.guest.special />
        </div>
        @endfor
	</div>
    </div> 
</section>
