<?php

namespace App\Http\Controllers;

use App\Http\Resources\{OldUserResource, UserResource};
use App\Models\OldUser;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getUsersCsv()
    {
        $participants = UserResource::collection(User::role('participant')->get())->toArray(request());

        $filename = 'participants.csv';
        downloadFile($filename, $participants);
    }
    public function getOldUsersCsv()
    {
        $participants = OldUserResource::collection(OldUser::all())->toArray(request());

        $filename = 'old-participants.csv';
        downloadFile($filename, $participants);
    }
}
