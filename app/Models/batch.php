<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class batch extends Model
{
    use HasFactory;
    protected $fillable = ['batch_id', 'batch_name','created_at','updated_at'];
}
