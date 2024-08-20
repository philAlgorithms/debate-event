<!-- Modal -->
<div class="modal modal-register fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content bg-dark rounded-4 border-blue">

		<div class="modal-body">
			<div class="row flex-row text-white justify-content-end text-white px-3">
				<button type="button" class="btn-close text-white" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="row flex-col justify-content-center text-white p-1 p-sm-3">
				<h2 class="text-center register-title">Register For ANYDC</h2>
				<form>
					<label for="name" class="col-form-label text-start">Full Name*</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="name" placeholder="Enter full name" aria-label="Full name" aria-describedby="email-addon">
						<span class="input-group-text" id="name-addon"><i class="fas fa-user text-white"></i></span>
						<div id="invalidName" class="invalid-feedback"></div>
					</div>

					<label for="name" class="col-form-label text-start">Email*</label>
					<div class="input-group mb-3">
						<input type="email" class="form-control" id="email" placeholder="Enter email" aria-label="Email" aria-describedby="email-addon">
						<span class="input-group-text" id="email-addon">&#64;</span>
						<div id="invalidEmail" class="invalid-feedback"></div>
					</div>

					<label for="name" class="col-form-label text-start">Role*</label>
					<div class="input-group mb-3">
						<select class="form-control" id="role">
						@foreach (\App\Models\DebateRole::all() as $i=>$role)
							<option value="{{ $role->id }}" {{ $i===0 ? 'selected' : '' }}>{{ $role->name }}</option>
						@endforeach
						</select>
					</div>
					<label for="school" class="col-form-label text-start">Institution (Optional)</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="school" placeholder="Enter Institution" aria-label="Full school" aria-describedby="email-addon">
						<span class="input-group-text" id="school-addon"><i class="fas fa-bank text-white"></i></span>
						<div id="invalidSchool" class="invalid-feedback"></div>
					</div>
					{{-- PARTNER START --}}
					<label for="name" class="col-form-label text-start">Partner's full name (Optional)</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="partner_name" placeholder="Enter partner's full name" aria-label="Full name" aria-describedby="email-addon">
						<span class="input-group-text" id="name-addon"><i class="fas fa-user text-white"></i></span>
						<div id="invalidName" class="invalid-feedback"></div>
					</div>

					<label for="name" class="col-form-label text-start">Partner's email</label>
					<div class="input-group mb-3">
						<input type="email" class="form-control" id="partner_email" placeholder="Partner's nter email" aria-label="Email" aria-describedby="email-addon">
						<span class="input-group-text" id="email-addon">&#64;</span>
						<div id="invalidEmail" class="invalid-feedback"></div>
					</div>

					<label for="name" class="col-form-label text-start">Partner's role</label>
					<div class="input-group mb-3">
						<select class="form-control" id="partner_role">
						@foreach (\App\Models\DebateRole::all() as $i=>$role)
							<option value="{{ $role->id }}" {{ $i===0 ? 'selected' : '' }}>{{ $role->name }}</option>
						@endforeach
						</select>
					</div>
					<label for="partner_school" class="col-form-label text-start">Partner's Institution (Optional)</label>
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="partner_school" placeholder="Enter Institution" aria-label="Partner School" aria-describedby="partner-school-addon">
						<span class="input-group-text" id="partner-school-addon"><i class="fas fa-bank text-white"></i></span>
						<div id="invalidPartnerSchool" class="invalid-feedback"></div>
					</div>
					{{-- PARTNER END --}}
					<div class="text-center text-white mt-4">
						<button type="button" id="register" class="btn btn-purple mb-3 px-4 py-1 text-white">Register</button>
						<button type="button" id="register--spinning" class="btn btn-purple mb-3 px-4 py-1 text-white d-none">
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
