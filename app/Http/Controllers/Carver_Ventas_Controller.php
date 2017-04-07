<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request,
    App\Repositories\CarverClientesRepository,
    App\Repositories\CarverProductosRepository,
    App\Http\Requests;

class Carver_Ventas_Controller extends Controller
{
    private $_clienteRepo;
    private $_productoRepo;

    public function __CONSTRUCT(
        CarverClientesRepository $clienteRepo,
        CarverProductosRepository $productoRepo
    )
    {
        $this->_clienteRepo = $clienteRepo;
        $this->_productoRepo = $productoRepo;
    }

    public function index()
    {
        return view('Carver_Ventas.index');
    }

    public function add()
    {
        return view('Carver_Ventas/Nueva_Venta');
    }

    public function findCliente(Request $request)
    {
        return $this->_clienteRepo
                    ->findByName($request->input('q'));
    }

    public function findProducto(Request $request)
    {
        return $this->_productoRepo
                    ->findByName($request->input('q'));
    }
}
