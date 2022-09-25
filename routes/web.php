<?php

use Illuminate\Support\Facades\Route;

Route::get('/', [\App\Http\Controllers\AppController::class, 'index']);

Route::get('/test', function () {
    return view('test');
});
