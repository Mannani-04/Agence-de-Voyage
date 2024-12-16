<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:5',
        ]);

        if (!Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return response()->json([
                'eror' => false,
                'status' => 401,
            ], 401);
        }

        $user = auth()->user();
        $token = $user->createToken('login_test');
        return response()->json([
            'success' => true,
            'token' => $token->plainTextToken,
            'user' => $user
        ]);
    }
    public function logout(Request $request)
    {
        $user = $request->user();
        if($user){
            $user->currentAccessToken()->delete();
            return response()->json(['message' => 'Successfully logged out'], 200);
        }
    }
    public function AfficherNomUser(Request $request)
    {
        $user = $request->user();
        if($user){
            return response()->json(['user' => $user], 200);
        }
    }

}
