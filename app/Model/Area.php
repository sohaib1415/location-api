<?php

namespace App\Model;
use App\Model\Town;
use App\Model\Location;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    public function Town()
    {
        return $this->belongsTo(Town::class);
    }
    public function Location()
    {
        return $this->hasMany(Location::class);
    }
}
