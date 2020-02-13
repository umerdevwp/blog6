<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(App\Post::class, function (Faker $faker) {
    return [
        'post_title' => $faker->text(30),
        'post_excerpt' => $faker->text(70),
        'post_content' => $faker->text(300),
        'post_name' => $faker->slug(),
        'post_status' => $faker->numberBetween(0,1),
        'post_guid' => $faker->url(),
        'post_type' => $faker->text(10),
        'post_parent' => $faker->text(5),
    ];
});
