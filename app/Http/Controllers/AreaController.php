<?php

namespace App\Http\Controllers;

use App\Model\Town;
use App\Model\Area;
use App\Http\Resources\AreaCollection;
use App\Http\Resources\AreaResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class AreaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Town $town)
    {
        return new AreaCollection(Area::all());
        dd($town);
        return new $town->areas;
    }
    public function getTownAreas(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'town_id'=>'required|numeric',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }
        $get_town   =   Town::find($request->town_id);
        $get_Area   =   $get_town->areas();
        echo count($get_town);
        dd();
        if($get_Area)
           // if(count($get_Area)>1)
                return new AreaResource($get_Area);
        else
            return response()->json(['error' => "no area found"], 401);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('areas\create');
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
            'title'=>'required|string',
            // 'description'=>'string'

        ]);

        if ($validator->fails()) {

            return response()->json(['error' => $validator->errors()], 401);
        }
        //dd($request);

        try{
            DB::beginTransaction();

            $town_model =   new Area();
            $town_model->town_id =   $request->town_id;
            $town_model->title =   $request->title;
            if(isset($request->description))
            $town_model->description=$request->description;
            $town_model->save();
            DB::commit();
            return redirect('home')->with('status', 'Area is successfully added!');;
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
     * @param  \App\Model\Area  $area
     * @return \Illuminate\Http\Response
     */
    public function show(Area $area)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Area  $area
     * @return \Illuminate\Http\Response
     */
    public function edit(Area $area)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Area  $area
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Area $area)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Area  $area
     * @return \Illuminate\Http\Response
     */
    public function destroy(Area $area)
    {
        //
    }
}
