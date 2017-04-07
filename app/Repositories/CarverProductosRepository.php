<?php

namespace App\Repositories;

use App\CarverProductos;

class CarverProductosRepository {
    private $model;

    public function __construct(){
        $this->model = new CarverProductos();
    }

    public function findByName($q) {
        return $this->model->where('Nombre','like','%'.$q.'%')
                           ->get();
    }
}