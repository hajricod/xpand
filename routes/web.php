<?php

use App\Http\Controllers\admin\ApplicantsController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\FilesController;
use App\Http\Controllers\Admin\JobsController;
use App\Http\Controllers\ApplicantsController as ClientApplicantsController;
use App\Http\Controllers\JobsController as ClientJobsController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::prefix('admin')->middleware('auth')->group(function () {

    Route::resource('/jobs', JobsController::class);
    Route::resource('/applicants', ApplicantsController::class);
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/download/{dir}/{file}', [FilesController::class, 'downloadFile'])->name('download');
    

    // data
    // Route::get('/footerLinks/{id?}', [FooterController::class, 'footerLinks'])->name('footer_links');
    // Route::get('/headerSublinks/{id?}', [HeaderController::class, 'headerSublinks'])->name('header_links');
    
});

Route::resource('/applicants', ClientApplicantsController::class)->middleware('auth');

Route::resource('/jobs', ClientJobsController::class);
