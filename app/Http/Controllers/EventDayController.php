<?php

namespace App\Http\Controllers;

use App\Models\EventDay;
use App\Http\Requests\StoreEventDayRequest;
use App\Http\Requests\UpdateEventDayRequest;
use App\Http\Resources\EventDayResource;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class EventDayController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): AnonymousResourceCollection
    {
        $days = EventDay::query()
        ->with(['activities'])
        ->get();

        return EventDayResource::collection(
            $days
        );
    }
}
