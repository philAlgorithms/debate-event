<?php

use App\Http\Controllers\AppController;
use App\Http\Controllers\Auth\{LoginController, RegisterController};
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

Route::get('/', [AppController::class, 'index']);
Route::get('/login', [AppController::class, 'login'])->name('login');

Route::post('/register', RegisterController::class);
Route::post('/login', LoginController::class);

Route::middleware(['role:admin'])->group(function(){
    Route::get('/admin', [AppController::class, 'admin']);
    Route::get('/get-csv', [UserController::class, 'getCsv']);

    Route::get('/test', function () {
        return view('test');
    });
});

Route::get('/signout', function(){
	Auth::logout();
	Session::flush();
	return redirect()->to('/');
});
