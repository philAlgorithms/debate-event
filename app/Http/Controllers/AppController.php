<?php

namespace App\Http\Controllers;

use App\Models\EventDay;
use App\Http\Requests\StoreEventDayRequest;
use App\Http\Requests\UpdateEventDayRequest;
use App\Http\Resources\EventDayResource;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class AppController extends Controller
{
    
    public function index()
    {
        $event_days = EventDay::query()
        ->with(['activities'])
        ->get();

	    return view('index', compact(['event_days']));
    }

    public function admin()
    {
        // $event_days = EventDay::query()
        // ->with(['activities'])
        // ->get();

	    return view('admin');
    }
}
