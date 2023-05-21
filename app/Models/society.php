<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class society extends Model
{
    use HasFactory;
    protected $fillable = ['socity_id','socity_name','created_at','updated_at'] ;
}
