<x-layout.main>
    <x-navigation.navbar />
    <section id="partners" class="partners my-5">
        <div class="container position-relative px-5">
            <div class="row flex-col justify-content-center text-white p-1 p-sm-3">
                <h2 class="text-center register-title">Login</h2>
                <form>
                    <label for="name" class="col-form-label text-start">Email</label>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" id="email" placeholder="Enter email" aria-label="Email" aria-describedby="email-addon">
                        <span class="input-group-text" id="email-addon">&#64;</span>
                        <div id="invalidEmail" class="invalid-feedback"></div>
                    </div>
                    <label for="name" class="col-form-label text-start">Password</label>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" id="password" placeholder="Password" aria-label="Full name" aria-describedby="password-addon">
                        <span class="input-group-text" id="name-addon"><i class="fas fa-lock text-white"></i></span>
                        <div id="invalidName" class="invalid-feedback"></div>
                    </div>
                    <div class="text-center text-white mt-4">
                        <button type="button" id="login" class="btn btn-purple mb-3 px-4 py-1 text-white">Login</button>
                        <button type="button" id="login--spinning" class="btn btn-purple mb-3 px-4 py-1 text-white d-none">
                            <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                            <span>Please wait...</span>
                        </button>
                    </div>

                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
    <x-navigation.footer />
</x-layout.main>
