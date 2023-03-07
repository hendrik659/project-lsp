<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('user',[App\Http\Controllers\usercontroller::class,'index'])->middleware(['CheckLevel:admin'])->name('user.index');
Route::get('user/create',[App\Http\Controllers\usercontroller::class,'create'])->middleware(['CheckLevel:admin'])->name('user.create');
Route::post('user/store',[App\Http\Controllers\usercontroller::class,'store'])->middleware(['CheckLevel:admin'])->name('user.store');
Route::get('user/edit/{id}',[App\Http\Controllers\usercontroller::class,'edit'])->middleware(['CheckLevel:admin'])->name('user.edit');
Route::put('user/update/{id}',[App\Http\Controllers\usercontroller::class,'update'])->middleware(['CheckLevel:admin'])->name('user.update');
Route::get('user/show/{id}',[App\Http\Controllers\usercontroller::class,'show'])->middleware(['CheckLevel:admin'])->name('user.show');
Route::delete('user/delete/{id}',[App\Http\Controllers\usercontroller::class,'destroy'])->middleware(['CheckLevel:adminw'])->name('user.delete');

Route::get('masyarakat', [App\Http\Controllers\masyarakatcontroller::class, 'index'])->middleware(['auth'])->name('masyarakat.index');
Route::get('masyarakat/create', [App\Http\Controllers\masyarakatcontroller::class, 'create'])->middleware(['CheckLevel:administrator'])->name('masyarakat.create');
Route::post('masyarakat/store', [App\Http\Controllers\masyarakatcontroller::class, 'store'])->middleware(['CheckLevel:administrator'])->name('masyarakat.store');
Route::get('masyarakat/edit/{id}', [App\Http\Controllers\masyarakatcontroller::class, 'edit'])->middleware(['CheckLevel:administrator'])->name('masyarakat.edit');
Route::put('masyarakat/update/{id}', [App\Http\Controllers\masyarakatcontroller::class, 'update'])->middleware(['CheckLevel:administrator'])->name('masyarakat.update');
Route::get('masyarakat/show/{id}', [App\Http\Controllers\masyarakatcontroller::class, 'show'])->middleware(['CheckLevel:administrator'])->name('masyarakat.show');
Route::delete('masyarakat/delete/{id}', [App\Http\Controllers\masyarakatcontroller::class, 'destroy'])->middleware(['CheckLevel:administrator'])->name('masyarakat.delete');