<?php

namespace MyApp\Entities;

use Illuminate\Database\Eloquent\Model;

class Currency extends Model {

    protected $fillable = ['name', 'code', 'mid','updated_at'];

}
