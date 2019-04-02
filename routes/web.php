<?php

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

Route::get('/home', 'HomeController@index')->name('home');
Route::resource('/towns', 'TownController');
Route::resource('/areas', 'AreaController');
Route::resource('/location', 'LocationController');
Route::get('/addtown','HomeController@createTown')->name('add-town');
Route::post('/addtown','HomeController@storeTown')->name('add-town');
Route::get('/addarea','HomeController@createTown')->name('add-area');
Route::post('/addarea','HomeController@storeTown')->name('add-area');
Route::get('/addtown','HomeController@createTown')->name('add-town');
Route::post('/addtown','HomeController@storeTown')->name('add-town');
