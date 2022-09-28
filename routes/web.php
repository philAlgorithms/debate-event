<?php

use App\Http\Controllers\Auth\RegisterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [\App\Http\Controllers\AppController::class, 'index']);
Route::post('/register', RegisterController::class);

Route::get('/test', function () {
    return view('test');
});
