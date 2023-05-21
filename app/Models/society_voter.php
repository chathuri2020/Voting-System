<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class society_voter extends Model
{
    use HasFactory;
    protected $fillable = ['Society_id','Voter_id','created_at','updated_at'] ;
}
