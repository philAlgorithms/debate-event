<?php

use App\Http\Controllers\Auth\RegisterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [\App\Http\Controllers\AppController::class, 'index']);
Route::post('/register', RegisterController::class);
Route::get('/admin', [\App\Http\Controllers\AppController::class, 'admin']);
Route::get('/get-csv', [\App\Http\Controllers\UserController::class, 'getCsv']);

Route::get('/test', function () {
    return view('test');
});
