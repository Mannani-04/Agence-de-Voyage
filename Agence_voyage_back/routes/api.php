<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PFE;
use App\Http\Controllers\Log;
use App\Http\Controllers\LoginController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// put , patch , post , get , delete

Route::post('/Ajouter-demande',[PFE::class,'AjouterContact']);
Route::post('/Ajouter-voyage',[PFE::class,'AjouterVoyage']);
Route::post('/AjouterVoyageDispo/{id}',[PFE::class,'ajouterVoyageDispo']);
Route::get('/AfficherListVoyages',[PFE::class,'AfficherListVoyage']);
Route::get('/AfficherListVoyages',[PFE::class,'AfficherListVoyage']);
Route::get('/AfficherListReserDispo/{id}',[PFE::class,'AfficherListReserDispo']);
Route::post('/Ajouter-vol',[PFE::class,'AjouterVol']);
Route::post('/AjouterVolDispo/{id}',[PFE::class,'AjouterVolDispo']);
Route::get('/AfficherListVol',[PFE::class,'AfficherListVol']);
Route::get('/AfficherListVolDispo/{id}',[PFE::class,'AfficherListReserDispoVol']);

Route::post('/hajomra', [PFE::class, 'AjouterHaj']);;
Route::post('/reservation', [PFE::class, 'AjouterReservation']);
Route::get('/client', [PFE::class, 'liste']);
Route::post('/client', [PFE::class, 'AjouterClient']);
Route::get('/hajomraa', [PFE::class,'AfficherListHaj']);
Route::get('/AfficherListReservation', [PFE::class,'AfficherListReservation']);


Route::post('/login',[LoginController::class,'login']);
Route::post('/logout', [LoginController::class, 'logout']);
Route::get('/Afficher-nom-user', [LoginController::class, 'AfficherNomUser']);
Route::get('/Afficher-client', [PFE::class, 'AfficherListClient']);
Route::get('/Afficher-list-demande',[PFE::class,'AfficherListDemande']);
Route::get('/Afficher-list-reservation-nonvue',[PFE::class,'AfficherListReservationNonVue']);
Route::get('/Afficher-list-demande-nonvue',[PFE::class,'AfficherListcontactNonVue']);
Route::post('/AjouterVoyageDispon',[PFE::class,'AjouterVoyageDispon']);
Route::post('/AjouterVolDispon',[PFE::class,'AjouterVolDispon']);
Route::get('/Active-demande-nonvue/{id}',[PFE::class,'ActiverVueDemande']);
Route::get('/Active-reservation-nonvue/{id}',[PFE::class,'ActiverVueReservation']);
Route::put('/bb/{id}',[PFE::class,'bedelVoyage']);