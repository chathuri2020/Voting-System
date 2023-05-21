<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class voter extends Model
{
    use HasFactory;
    protected $fillable = ['Index_Number','Department_id','Batch_Id','NIC','Full_Name','Gender','Email','Password','created_at','updated_at'] ;
}
