<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Carver_Clientes_Controller extends Controller
{
    
    public function index()
    {
        return view('Carver_Clientes.index');
    }
}
