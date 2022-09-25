<?php

namespace App\Http\Controllers;

use App\Models\EventDay;
use App\Http\Requests\StoreEventDayRequest;
use App\Http\Requests\UpdateEventDayRequest;
use App\Http\Resources\EventDayResource;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class AppController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $event_days = EventDay::query()
        ->with(['activities'])
        ->get();
/*
        $event_days = json_decode(EventDayResource::collection(
            $days
	)->toJson());*/
//return $event_days;
	return view('index', compact(['event_days']));
    }
}
