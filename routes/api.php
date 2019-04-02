<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'towns'], function () {
    Route::apiResource('/{towns}/areas', 'AreaController');
    Route::group(['prefix' => 'areas'], function () {

    });
});
//Route::apiResource('/location', 'LocationController');
Route::get('/findArea', 'AreaController@getTownAreas');
Route::get('/findLocation', 'LocationController@findLocation');


