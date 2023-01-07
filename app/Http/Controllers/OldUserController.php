<?php

namespace App\Http\Controllers;

use App\Models\OldUser;
use App\Http\Requests\StoreOldUserRequest;
use App\Http\Requests\UpdateOldUserRequest;

class OldUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreOldUserRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreOldUserRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\OldUser  $oldUser
     * @return \Illuminate\Http\Response
     */
    public function show(OldUser $oldUser)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\OldUser  $oldUser
     * @return \Illuminate\Http\Response
     */
    public function edit(OldUser $oldUser)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateOldUserRequest  $request
     * @param  \App\Models\OldUser  $oldUser
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateOldUserRequest $request, OldUser $oldUser)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\OldUser  $oldUser
     * @return \Illuminate\Http\Response
     */
    public function destroy(OldUser $oldUser)
    {
        //
    }
}
