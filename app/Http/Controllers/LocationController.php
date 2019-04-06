<?php

namespace App\Http\Controllers;

use App\Model\Location;
use App\Http\Resources\LocationResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class LocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Location::all();
    }
    public function findLocation(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'number'=>'required|numeric',
            'area_id'=>'numeric',
            'letter'=>'string',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }
        $get_location   =   Location::where('area_id',$request->area_id)->where('number', $request->number)->first();
        //dd($get_location);
        if (!isset($get_location)) {
            return response()->json(['error' => "no data found"], 404);
        }
        else
            return new LocationResource($get_location);

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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'number'=>'required|numeric',
            // 'description'=>'string'

        ]);

        if ($validator->fails()) {

            return response()->json(['error' => $validator->errors()], 401);
        }
        //dd($request);

        try{
            DB::beginTransaction();

            $town_model             =   new Location();
            $town_model->area_id    =   $request->area_id;
            $town_model->number     =   $request->number;
            $town_model->letter     =   $request->letter;
            $town_model->longitude  =   $request->longitude;
            $town_model->latitude   =   $request->latitude;
            if(isset($request->description))
            $town_model->description=$request->description;
            $town_model->save();
            DB::commit();
            return redirect('home')->with('status', 'Location is successfully added!');;
        }
        catch(\Exception $e){
            //dd();
            DB::rollback();
            return response()->json($e,500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function show(Location $location)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function edit(Location $location)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Location $location)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function destroy(Location $location)
    {
        //
    }
}
