<section id="partners" class="partners my-5">
    <div class="container position-relative">
        <div class="row sponsor mb-5 mx-auto">
            <div class="col">
                <div class="card bg-gray-700 rounded-pill w-md-90">
                    <div class="card-body">
                        <div class="d-sm-flex flex-row sponsor--text justify-content-center text-center">
                            <span class="mx-auto mx-sm-0 me-sm-3">Powered by</span>
                            <div class="logo mx-auto mx-sm-0"><x-svg.logo.debaterverse.full /></div>
                            <span class="d-flex d-none flex-row justify-content-center align-items-center"><div class="logo me-1"><x-svg.logo.stale /></div>{{' '}}DEBATERVERSE</span>
                        </div>
                    
                    </div>
                </div>
            </div>
        </div>
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