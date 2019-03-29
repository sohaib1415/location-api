<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Area::class, function (Faker $faker) {
    return [
        'town_id'       => function(){
            return App\Model\Town::all()->random();
        },
        'title'         => $faker->word,
        'description'   => $faker->paragraph,
    ];
});
