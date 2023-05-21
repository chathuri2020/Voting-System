<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSocietyVotersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('society_voters', function (Blueprint $table) {
           
            $table->unsignedBigInteger('Society_id');
            $table->unsignedBigInteger('Voter_id');
            $table->foreign('Society_id')->references('socity_id')->on('societies');
            $table->foreign('Voter_id')->references('Index_Number')->on('voters');
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
        Schema::dropIfExists('society_voters');
    }
}
