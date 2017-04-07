<?php

namespace App\Repositories;

use App\CarverClientes;

class CarverClientesRepository {
    private $model;

    public function __construct(){
        $this->model = new CarverClientes();
    }

    public function findByName($q) {
        return $this->model->where('Nombre','like','%'.$q.'%')
                           ->get();
    }
}