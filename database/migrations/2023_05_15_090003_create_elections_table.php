<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateElectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('elections', function (Blueprint $table) {
            $table->id('Election_id');
            $table->unsignedBigInteger('Batch_Id');
            $table->unsignedBigInteger('Department_id');
            $table->unsignedBigInteger('Society_id');
            $table->unsignedBigInteger('Category_id');
            $table->foreign('Batch_Id')->references('batch_id')->on('batches');
            $table->foreign('Department_id')->references('department_id')->on('departments');
            $table->foreign('Society_id')->references('socity_id')->on('societies');
            $table->foreign('Category_id')->references('category_id')->on('categories');
            $table->string('Election_Name');
            $table->dateTime('Starting_dateTime');
            $table->dateTime('Ending_dateTime');
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
        Schema::dropIfExists('elections');
    }
}
