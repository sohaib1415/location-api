<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Town::class, function (Faker $faker) {
    return [
        'title'         => $faker->word,
        'description'   => $faker->paragraph,
    ];
});
