<?php

namespace App\Http\Controllers;
use App\Models\ModelsPFE\Clients;
use App\Models\ModelsPFE\Voyages;
use App\Models\ModelsPFE\Vols;
use App\Models\ModelsPFE\VoyagesDispo;
use App\Models\ModelsPFE\VolsDispo;
use App\Models\ModelsPFE\CommentsVyg;
use App\Models\ModelsPFE\CommentsVol;
use App\Models\ModelsPFE\Reservation;
use Illuminate\Support\Facades\Storage;
use App\Models\ModelsPFE\HajOmra;
use App\Models\ModelsPFE\Contact;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;

class PFE extends Controller
{
    public function AjouterContact(Request $request){
        Contact::create([
            'Nom' => $request->Nom,
            'Prenom' => $request->Prenom,
            'adresseEmail' => $request->adresseEmail,
            'NomDemande' =>$request->NomDemande,
            'autre_demande' => $request->autre_demande,
            'demande' =>$request->demande,
        ]);
        return response()->json('Votre demande a ete envoyé avec success',201);
    }
    public function AjouterVoyage(Request $request){
        // Log::info($request->all());
        $voyage = Voyages::create([
            'nomVille' => $request->nomVille,
            'image' => $request->file('image')->store('picturesPFE','public'),
            'prix' => $request->prix,
            'date_depart' => $request->date_depart,
            'date_arrivee' => $request->date_arrivee,
            'description' => $request->description,
        ]);
        return response()->json(['message'=>'Votre voyage a ete bien ajouté ','voyage'=>$voyage],201);
    }
    public function AjouterVoyageDispo(Request $request , $id){
        Log::info($request->all());    
            $vygDispo = VoyagesDispo::create([
                'agenceVyg' => $request->file('agenceVyg')->store('agencesVoyages','public'),
                'date_debut' => $request->date_debut,
                'date_fin' => $request->date_fin,
                'prixV' => $request->prixV,
                'formule' => $request->formule,
                'idVoyage' => $id
            ]);
    
            return response()->json(['message'=>'Votre voyage dispo a ete bien ajouté'],201);
    }  
    public function AfficherListVoyage()
    {
        $listV = Voyages::all();
        return $listV;
    }
    public function AfficherListReserDispo($id){
        $listReserDispo = DB::select('SELECT * FROM reservation_voyage_dispo WHERE idVoyage ='.$id);
        return $listReserDispo;
    }



    public function AjouterVol(Request $request){
        // Log::info($request->all());
        $vol = Vols::create([
            'nomVille' => $request->nomVille,
            'image' => $request->file('image')->store('picturesPFE','public'),
            'prix' => $request->prix,
            'date_depart' => $request->date_depart,
            'date_arrivee' => $request->date_arrivee,
            'description' => $request->description,
        ]);
        return response()->json(['message'=>'Votre voyage a ete bien ajouté ','vol'=>$vol],201);
    }
    public function AjouterVolDispo(Request $request , $id){
        Log::info($request->all());    
            $volDispo = VolsDispo::create([
                'agenceVyg' => $request->file('agenceVyg')->store('agencesVolsDispo','public'),
                'date_debut' => $request->date_debut,
                'date_fin' => $request->date_fin,
                'prixV' => $request->prixV,
                'formule' => $request->formule,
                'idVol' => $id
            ]);
    
            return response()->json(['message'=>'Votre voyage dispo a ete bien ajouté'],201);
    }  


    public function AjouterClient(Request $request){
        $Clients=Clients::create([
            'nom' => $request->nom,
            'prenom' => $request->prenom,
            'telephone' => $request->telephone,
            'email' => $request->email,
        ]);
        return response()->json(['message'=>'votre Clients a ete ajouter','Clients'=>$Clients],201);
    }
    public function AjouterReservation(Request $request){
        Log::info($request->all());
        Reservation::create([
            'nombre_chambres' => $request->nombre_chambres,
            'nombre_adultes' => $request->nombre_adultes,
            'nombre_enfants' => $request->nombre_enfants,
            'nombre_bebe' => $request->nombre_bebe,
            'montant_total' => $request->montant_total,
            'idVolDispo' => $request->idVolDispo,
            'idVygDispo' => $request->idVygDispo,
            'idclient' => $request->idclient,
        ]);
        return response()->json('Votre Reservation a ete bien ajouté ',201);
    }

    public function AfficherListVol()
    {
        $listV = Vols::all();
        return $listV;
    }
    public function AfficherListReserDispoVol($id){
        $listReserDispo = DB::select('SELECT * FROM reservation_vol_dispo WHERE idVol ='.$id);
        return $listReserDispo;
    }
    public function AjouterHaj(Request $request){
        HajOmra::create([
            'nom' => $request->nom,
            'image' => $request->file('image')->store('picturesPFEHaj','public'),
            'prix' => $request->prix,
            'date_depart' => $request->date_depart,
            'date_arrivee' => $request->date_arrivee,
            'description' => $request->description,
        ]);
        return response()->json('Votre haj a ete bien ajouté',201);
    }
    public function AfficherListHaj()
    {
        $listH = HajOmra::all();
        return $listH;
    }
    public function AfficherListReservation(){
        $listR = DB::SELECT('SELECT * FROM reservation WHERE vue = 1');
        return $listR;
    }

    public function AfficherListDemande(){
        $listContact = DB::SELECT('SELECT * FROM contact WHERE vue = 1');
        return $listContact;
    }

    public function AfficherListClient(){
        $listClient = Clients::all();
        return $listClient;
    }

    public function AjouterVoyageDispon(Request $request ){ 
        $vygDispo = VoyagesDispo::create([
            'agenceVyg' => $request->file('agenceVyg')->store('agencesVoyages','public'),
            'date_debut' => $request->date_debut,
            'date_fin' => $request->date_fin,
            'prixV' => $request->prixV,
            'formule' => $request->formule,
            'idVoyage' => $request->idVoyage,
        ]);

        return response()->json(['message'=>'Votre voyage dispo a ete bien ajouté'],201);
    }
    public function AjouterVolDispon(Request $request ){ 
        $vygDispo = VolsDispo::create([
            'agenceVyg' => $request->file('agenceVyg')->store('agencesVoyages','public'),
            'date_debut' => $request->date_debut,
            'date_fin' => $request->date_fin,
            'prixV' => $request->prixV,
            'formule' => $request->formule,
            'idVol' => $request->idVol,
        ]);

        return response()->json(['message'=>'Votre voyage dispo a ete bien ajouté'],201);
    }
    public function AfficherListReservationNonVue(){
        $listReser = DB::SELECT('SELECT * FROM reservation WHERE vue = 0');
        return response()->json($listReser);
    }

    public function AfficherListcontactNonVue(){
        $listDmd = DB::SELECT('SELECT * FROM contact WHERE vue = 0');
        return response()->json($listDmd);
    }
    public function ActiverVueDemande($id){
        $listDemandeSpecifie = Contact::find($id);
        $listDemandeSpecifie->vue = 1;
        $listDemandeSpecifie->save();
        return response()->json($listDemandeSpecifie,200);
    }
    public function ActiverVueReservation($id){
        $listReservationSpecifie = Reservation::find($id);
        $listReservationSpecifie->vue = 1;
        $listReservationSpecifie->save();
        return response()->json($listReservationSpecifie,200);
    }
    public function bedelVoyage(Request $request , $id){
        $vyg = Voyages::find($id);
        if($request->image){
            if ($vyg->image) {
                Storage::disk("public")->delete($vyg->image);
            }
            $imagePath = $request->file('image')->store('ss', 'public');
            $vyg->update([
                'nomVille' => $request->nomVille,
                'prix' => $request->prix,
                'date_depart' => $request->date_depart,
                'date_arrivee' => $request->date_arrivee,
                'description' => $request->description,
                'image' => $imagePath,
            ]);
            return response()->json(['message' => 'l7wa khdem', 'user' => $user], 200);
        } else {
            return response()->json(['message' => 'No image'], 400);
        }
        // return $request->nomV;
    }
}