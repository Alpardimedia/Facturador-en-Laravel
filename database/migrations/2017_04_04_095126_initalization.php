<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Initalization extends Migration
{
    public function up()
    {
        Schema::create('carver_clientes', function (Blueprint $table) {
            $table->increments('IdCarver_Clientes');
            $table->string('Num_Cliente')->unique();
            $table->string('Nombre',100);
            $table->string('DNI',50);
            $table->string('Empresa',100);
            $table->string('NIF',50);
            $table->string('CIF',50);
            $table->string('Direccion_Fiscal',250);
            $table->string('Codigo_Postal_Fiscal',50)->nullable();
            $table->string('Direccion_Comercial_Envio',250)->nullable();
            $table->string('Poblacion_Comercial_Envio',100)->nullable();
            $table->string('Codigo_Postal_Comercial_Envio',50)->nullable();
            $table->string('Telefono',50)->nullable();
            $table->string('Movil',50)->nullable();
            $table->string('Fax',50)->nullable();
            $table->string('Email')->nullable();
            $table->string('Forma_Pago',250)->nullable();
            $table->string('Estado',50);
            $table->engine = 'InnoDB';
        });

        Schema::create('carver_catalogo_modulos', function (Blueprint $table) {
            $table->increments('IdCarver_Catalogo_Modulos');
            $table->string('Nombre_Modulo',300);
            $table->text('Descripcion_Modulo');
            $table->string('Categoria',150);
            $table->string('Estado',50);
        });

        Schema::create('carver_catalogo', function (Blueprint $table) {
            $table->increments('IdCarver_Catalogo');
            $table->integer('IdCarver_Catalogo_Modulos')->unsigned();
            $table->text('Descripcion_Modulo');
            $table->string('Categoria',150);
            $table->string('Producto',150);
            $table->text('Descripcion_Producto');
            $table->string('Imagen',200);
            $table->string('Pie_Imagen',100);
            $table->string('Estado',50);
            $table->engine = 'InnoDB';
        });

        Schema::create('carver_productos', function (Blueprint $table) {
            $table->increments('IdCarver_Productos');
            $table->integer('IdCarver_Catalogo_Modulos')->unsigned();
            $table->string('Codigo')->unique();
            $table->string('Categoria',150);
            $table->string('Prop_Mezcla',50);
            $table->string('Embalaje_Estandar',50);
            $table->string('Producto_Peligroso_Transporte',50);
            $table->string('Palet',50);
            $table->decimal('Precio_Litro_Kg_Euro', 10, 2);            
            $table->integer('Stock');
            $table->decimal('PVP', 10, 2);
            $table->string('Estado',50);
            $table->engine = 'InnoDB';
        });

        Schema::create('bancos', function (Blueprint $table) {
            $table->increments('IdBancos');
            $table->string('Nombre',300);
            $table->string('Estado',50);
            $table->engine = 'InnoDB';
        });

        Schema::create('carver_ventas', function (Blueprint $table) {
            $table->increments('IdCarver_Ventas');
            $table->integer('IdCarver_Clientes')->unsigned();
            $table->integer('IdBancos')->unsigned();
            $table->string('Tipo_Documento',250)->unique();
            $table->string('Numero_Documento')->unique();
            $table->date('Fecha');
            $table->string('Nombre_Cliente',250);
            $table->text('Direccion_Cliente');
            $table->string('CP_Poblacion',250)->nullable();
            $table->string('NIF',50)->nullable();
            $table->decimal('Base_Imponible', 10, 2);
            $table->string('Tipo_IVA',5);
            $table->decimal('IVA', 10, 2);
            $table->decimal('Total', 10, 2);
            $table->string('Plazos_Pago',5)->default(0);
            $table->text('Observaciones')->nullable();
            $table->string('Forma_Pago',250)->nullable();
            $table->decimal('Total_Vencimiento', 10, 2);
            $table->string('Banco',300)->nullable();
            $table->string('Numero_Cuenta_Bancaria',400)->nullable();
            $table->string('Estado',50);
            $table->engine = 'InnoDB';
        });

        Schema::create('carver_detalle_ventas', function (Blueprint $table) {
            $table->integer('IdCarver_Ventas')->unsigned();
            $table->integer('IdCarver_Productos')->unsigned();
            $table->text('Concepto');
            $table->decimal('Cantidad',10,2);
            $table->decimal('Descuento',10,2);
            $table->decimal('Precio',10,2);
            $table->decimal('Subtotal',10,2);
            $table->engine = 'InnoDB';
        });

        Schema::create('carver_vencimientos_ventas', function (Blueprint $table) {
            $table->integer('IdCarver_Ventas')->unsigned();
            $table->date('Vencimiento');
            $table->decimal('Importes',10,2);
            $table->string('Estado',50);
            $table->engine = 'InnoDB';
        });

        Schema::create('carver_facturas_salida', function (Blueprint $table) {
            $table->increments('IdCarver_Facturas_Salida');
            $table->integer('IdCarver_Ventas')->unsigned();
            $table->string('Numero_Documento',250)->unique();
            $table->string('Fecha');
            $table->string('NIF');
            $table->string('Nombre_Cliente');
            $table->decimal('Base_Imponible',10,2);
            $table->decimal('IVA',10,2);
            $table->string('Cuota');
            $table->decimal('Total',10,2);
            $table->string('Estado',50);
            $table->engine = 'InnoDB';
        });

        Schema::table('carver_catalogo', function ($table) {
            $table->foreign('IdCarver_Catalogo_Modulos')
                  ->references('IdCarver_Catalogo_Modulos')
                  ->on('carver_catalogo_modulos');
        });

        Schema::table('carver_productos', function ($table) {
            $table->foreign('IdCarver_Catalogo_Modulos')
                  ->references('IdCarver_Catalogo_Modulos')
                  ->on('carver_catalogo_modulos');
        });

        Schema::table('carver_ventas', function ($table) {
            $table->foreign('IdCarver_Clientes')
                  ->references('IdCarver_Clientes')
                  ->on('carver_clientes');
            
            $table->foreign('IdBancos')
                  ->references('IdBancos')
                  ->on('bancos');
        });

        Schema::table('carver_detalle_ventas', function ($table) {
            $table->foreign('IdCarver_Ventas')
                  ->references('IdCarver_Ventas')
                  ->on('carver_ventas');
            
            $table->foreign('IdCarver_Productos')
                  ->references('IdCarver_Productos')
                  ->on('carver_productos');
        });

        Schema::table('carver_vencimientos_ventas', function ($table) {
            $table->foreign('IdCarver_Ventas')
                  ->references('IdCarver_Ventas')
                  ->on('carver_ventas');
        });

        Schema::table('carver_facturas_salida', function ($table) {
            $table->foreign('IdCarver_Ventas')
                  ->references('IdCarver_Ventas')
                  ->on('carver_ventas');
        });
    }
    
    public function down()
    {
        //
    }
}
