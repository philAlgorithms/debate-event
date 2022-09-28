<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RegisterController extends BaseController
{
    public function __invoke(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        ]);

        if($validator->fails())
            return $this->sendError($validator->errors(), [], 302);

        $user = User::create([
            'name' => request('name'),
            'email' => request('email'),
        ]);

        $user->assignRole('participant');

        // Auth::guard('web')->login($user);

        return $this->sendResponse($user, "Registration successful", 201);
    }
}
