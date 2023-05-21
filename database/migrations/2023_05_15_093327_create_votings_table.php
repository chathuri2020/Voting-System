<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVotingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('votings', function (Blueprint $table) {
            $table->id('Voting_id');
            $table->unsignedBigInteger('Election_id');
            $table->unsignedBigInteger('Candidate_Id');
            $table->unsignedBigInteger('Voter_Id');
            $table->foreign('Election_id')->references('Election_id')->on('elections');
            $table->foreign('Candidate_Id')->references('candidate_id')->on('candidates');
            $table->foreign('Voter_Id')->references('Index_Number')->on('voters');
            $table->timestamps('');
            $table->string('Gender');
            $table->string('Choice');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('votings');
    }
}
