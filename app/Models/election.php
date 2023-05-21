<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class election extends Model
{
    use HasFactory;
    protected $fillable = ['Election_id','Batch_Id','Department_id','Society_id','Category_id','Election_Name','Starting_dateTime','Ending_dateTime','created_at','updated_at'];
}
