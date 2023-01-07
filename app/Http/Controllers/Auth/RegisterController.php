<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class RegisterController extends BaseController
{
    public function __invoke(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'role' => ['required', 'numeric', 'exists:debate_roles,id'],
            'school' => ['nullable', 'string', 'max:255'],
            'partner_name' => ['nullable', 'string', 'max:255', 'required_with:partner_email'],
            'partner_email' => ['nullable', 'string', 'email', 'max:255', 'required_with:partner_name'],
            'partner_role' => ['nullable', 'numeric', 'exists:debate_roles,id', 'required_with:partner_name,partner_email'],
            'partner_school' => ['nullable', 'string', 'max:255'],
        ]);
// return $request->all();
        if($validator->fails())
            return $this->sendError($validator->errors(), [], 302);

        $possible_partner = User::firstWhere('email', request('partner_email'));
        $partner_is_registered = !is_null($possible_partner);
        $user_wants_partner = !is_null(request('partner_email'));

        if($user_wants_partner and $partner_is_registered and !is_null($possible_partner->partner)){
            return $this->sendError([
                'partner_email' => $possible_partner->name." has already partnered with someone else",
                ],[], 302
            );
        }
        
        $user = User::create([
            'name' => request('name'),
            'email' => request('email'),
            'debate_role_id' => request('role'),
            'school' => request('school')
        ]);

        $user->assignRole('participant');

        if($user_wants_partner and $partner_is_registered)
        {
            // Attach to partner
            $user->update(['partner_id' => $possible_partner->id]);
        }

        if($user_wants_partner and !$partner_is_registered)
        {
            $partner = User::create([
                'name' => $validator->validated()['partner_name'],
                'email' =>  $validator->validated()['partner_email'],
                'debate_role_id' =>  $validator->validated()['partner_role'],
                'school' => request('partner_school')
            ]);

            $user->update(['partner_id' => $partner->id]);
            $partner->assignRole('participant');
        }

        // Auth::guard('web')->login($user);

        return $this->sendResponse($user, "Registration successful", 201);
    }
}
