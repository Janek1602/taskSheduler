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

Route::group(['middleware' => 'web'], function () {
Route::get('/', 'PagesController@getIndex');
Route::get('/saveInformationAboutCurrency', 'PagesController@saveInformationAboutCurrency' );


        Route::resource('/posts','PostController');
		

	Route::get('/login', ['as' => 'login', 'uses' => 'Auth\LoginController@getLogin']);
	Route::post('/postLogin', [ 'as'=> 'postLogin' , 'uses' => 'Auth\LoginController@postLogin']);

});

Route::group(['middleware' => 'auth'], function () {
	Route::get('/information', ['as' => 'information' ,'uses' =>'PagesController@getInformationAboutCurrencies']);
});	

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
