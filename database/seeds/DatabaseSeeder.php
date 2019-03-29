<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory(App\Model\Town::class,10)->create();
        factory(App\Model\Area::class,20)->create();
        factory(App\Model\Location::class,40)->create();
    }
}
