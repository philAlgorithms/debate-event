<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getCsv()
    {
        $participants = User::role('participant')->select(['name', 'email'])->get()->toArray();

        $filename = 'storage/app/participants.csv';

        // openfile for writing
        $f = fopen($filename, 'w');
        file_put_contents($filename, "");

        if($f === false)
        {
            die('Error opening file {$filename}');
        }

        fputcsv($f, ['name', 'email']);
        foreach ($participants as $participant)
        {
            fputcsv($f, $participant);
        }

        fclose($f);

        return $filename;
    }
}
