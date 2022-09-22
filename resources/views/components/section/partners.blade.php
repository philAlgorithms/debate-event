<section id="partners" class="partners my-5">
    <div class="container position-relative">
        <div class="row text-center text-white mb-3">
            <h1 class="display-3">Event Partners</h1>
        </div>
        <div class="row text-center partners--logos">
            @for ($i=0; $i<4; $i++)
            <div class="col-3 px-1 mt-2">
                <x-column.partner :index=$i />
            </div>
            @endfor
        </div>
        <div class="row text-center partners--logos my-5">
            <x-button.perspective text="Become a Partner" />
        </div>
    </div> 
</section>