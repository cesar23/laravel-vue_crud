<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('dashboard');
});

//-aqui dice que no use los metodos de la ruta ('show', 'create', 'edit')
Route::resource('tasks', 'TaskController', ['except' => 'show', 'create', 'edit']);
Route::get('tasks/peru', 'TaskController@peru');