<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getCsv()
    {
        $participants = User::role('participant')->select(['name', 'email'])->get()->toArray();

        $filename = 'participants.csv';

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

        header('Content-Description: File Transfer');
	header('Content-Disposition: attachment; filename='.basename($filename));
	header('Expires: 0');
	header('Cache-Control: must-revalidate');
	header('Pragma: public');
	header('Content-Length: ' . filesize($filename));
	header("Content-Type: text/csv");
	readfile($filename);
    }
}
