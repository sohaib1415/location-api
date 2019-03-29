<?php

namespace App\Http\Resources\Town;

use Illuminate\Http\Resources\Json\JsonResource;

class TownResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name'      => $this->title,
            'details'   => $this->description,
            'href'      => 
            [
                'areas' => route('areas.index',$this->id)
            ]
        ];
    }
}
