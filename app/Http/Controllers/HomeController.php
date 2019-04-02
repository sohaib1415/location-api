<?php

namespace App\Http\Controllers;

use App\Model\Town;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function createTown()
{
    return view('createTown');
}
    public function storeTown(Request $request)
    {
       // dd($request);
        //$formdata = Input::all();

//print_r($formdata);


        return view('home');
    }
}
