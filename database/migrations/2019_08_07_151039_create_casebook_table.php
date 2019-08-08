<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCasebookTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('casebook', function (Blueprint $table) {
            $table->increments('id');
            $table->string('');
            $table->unsignedInteger('id_data_siswa')->nullable();
            $table->foreign('id_data_siswa')->references('id')->on('data_siswa')->onDelete('cascade');
            $table->unsignedInteger('id_user')->nullable();
            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('casebook');
    }
}
