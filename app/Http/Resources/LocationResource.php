<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class LocationResource extends JsonResource
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
            'number'        =>  $this->number,
            'letter'        =>  $this->letter,
            'longitude'     =>  $this->longitude,
            'latitude'      =>  $this->latitude,
            'description'   =>  $this->description,
            'area'          =>  $this->area->title,
        ];
    }
}
