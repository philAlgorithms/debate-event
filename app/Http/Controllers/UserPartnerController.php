<?php

namespace App\Http\Controllers;

use App\Models\UserPartner;
use App\Http\Requests\StoreUserPartnerRequest;
use App\Http\Requests\UpdateUserPartnerRequest;

class UserPartnerController extends Controller
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
     * @param  \App\Http\Requests\StoreUserPartnerRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUserPartnerRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserPartner  $userPartner
     * @return \Illuminate\Http\Response
     */
    public function show(UserPartner $userPartner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserPartner  $userPartner
     * @return \Illuminate\Http\Response
     */
    public function edit(UserPartner $userPartner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateUserPartnerRequest  $request
     * @param  \App\Models\UserPartner  $userPartner
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUserPartnerRequest $request, UserPartner $userPartner)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserPartner  $userPartner
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserPartner $userPartner)
    {
        //
    }
}
