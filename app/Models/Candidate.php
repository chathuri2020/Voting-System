<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Candidate extends Model
{
    use HasFactory;
    protected $fillable = ['candidate_id', 'Election_id', 'candidate_name','NIC','Gender','photo','created_at','updated_at'];
}
