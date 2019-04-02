<?php

namespace App\Model;
use App\Model\Area;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    public function Area()
    {
        return $this->belongsTo(Area::class);
    }
}
