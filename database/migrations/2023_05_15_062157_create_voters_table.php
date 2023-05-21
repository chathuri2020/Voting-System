<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVotersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('voters', function (Blueprint $table) {
            $table->id('Index_Number');
            $table->unsignedBigInteger('Department_id');
            $table->unsignedBigInteger('Batch_Id');
            $table->foreign('Department_id')->references('department_id')->on('departments');
            $table->foreign('Batch_Id')->references('batch_id')->on('batches');
            $table->string('NIC');
            $table->string('Full_Name');
            $table->string('Gender');
            $table->string('Email');
            $table->string('Password');
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
        Schema::dropIfExists('voters');
    }
}
