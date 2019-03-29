<?php

namespace App\Model;
use App\Model\Area;

use Illuminate\Database\Eloquent\Model;

class Town extends Model
{
    public function Areas()
    {
        return $this->hasMany(Area::class);
    }
}
