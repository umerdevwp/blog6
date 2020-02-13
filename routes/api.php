<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// User Controller Route
Route::post('user-registration', 'UserController@registerUser');
Route::post('user-login', 'UserController@loginUser');


// Auth Tokens
Route::group(['middleware' => 'auth:api'], function () {

    // User Details
    Route::get('user-detail', 'UserController@userDetail');
    // Update User
    Route::post('update-user', 'UserController@update');
    //Create New Task
    //Route::post('create-task', 'TaskController@createTask');
    // List Tasks
   // Route::get('task-listing', 'TaskController@taskListing');
    // Task Detail
    //Route::get('task-detail/{task_id}', 'TaskController@taskDetail');
    // Update Task
    //Route::post('update-task', 'TaskController@updateTask');
    // Delete Task
   // Route::delete('delete-task/{task_id}', 'TaskController@deleteTask');

    Route::get('posts', 'PostController@get');
    Route::post('posts/create', 'PostController@store');

    Route::get('tasks', 'TaskController@get');
    Route::post('tasks/create', 'TaskController@store');
});


/*
// List Posts
Route::get('posts', 'PostController@index');
// List Single Post
Route::get('post/{id}', 'PostController@show');
//Create New Post
Route::post('post', 'PostController@store');
//Update Post
Route::put('post', 'PostController@store');
//Delete Post
Route::delete('post/{id}', 'PostController@destroy');
*/

    //Route::post('posts', 'PostController@store');
    //Route::get('posts', 'PostController@get');
    Route::delete('posts/{id}', 'PostController@delete');
    Route::delete('tasks/{id}', 'TaskController@delete');
