<section id="meet" class="meet">
    <div class="container position-relative">
        <div class="row flex-column justify-content-center align-items-center text-white text-center meet--register">
            <div class="card bg-purple-500 participants-card mh-100 rounded-lg mb-4">
                <div class="card-body px-0">
                    <h1 class="card-title">{{ \App\Models\User::role('participant')->count() }}</h1>
                    <p>people have registered</p>
                </div>
            </div>
            <x-button.perspective text="Register Here" toggleTarget="#registerModal" />
        </div>
        <div class="row ribbons w-100">
            <img src="/images/ribbons/Vector 35.svg" class="ribbon ribbon-1" />
            <img src="/images/ribbons/Vector 31.svg" class="ribbon ribbon-2" />
            <img src="/images/ribbons/Vector 28.svg" class="ribbon ribbon-3" />
            <img src="/images/ribbons/Vector 33.svg" class="ribbon ribbon-4" />
            <img src="/images/ribbons/Vector 34.svg" class="ribbon ribbon-5" />
            <img src="/images/ribbons/Vector 32.svg" class="ribbon ribbon-6" />
            <img src="/images/ribbons/Vector 42.svg" class="ribbon ribbon-7" />
            <img src="/images/ribbons/Vector 39.svg" class="ribbon ribbon-8" />
            <img src="/images/ribbons/Vector 41.svg" class="ribbon ribbon-9" />
            <img src="/images/ribbons/Vector 43.svg" class="ribbon ribbon-10" />
            <img src="/images/ribbons/Vector 37.svg" class="ribbon ribbon-11" />
            <img src="/images/ribbons/Vector 38.svg" class="ribbon ribbon-12" />
            <img src="/images/ribbons/Vector 36.svg" class="ribbon ribbon-13" />
            <img src="/images/ribbons/Vector 40.svg" class="ribbon ribbon-14" />
        </div>
    </div>
    <x-modal.register /> 
</section>
