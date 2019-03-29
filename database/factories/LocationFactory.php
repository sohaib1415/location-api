<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Location::class, function (Faker $faker) {
    return [
        'area_id'       => function(){
            return App\Model\Area::all()->random();
        },
        'number'        => $faker->randomDigitNotNull,
        'longitude'     => $faker->word,
        'latitude'      => $faker->word,
        'letter'        => $faker->paragraph,
        'description'   => $faker->paragraph,
    ];
});
