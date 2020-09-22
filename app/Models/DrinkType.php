<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DrinkType extends Model
{
    protected $table = 'drink_types';

    public $fillable = [
        'name',
    ];

    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
    ];

    public static $rule = [
        'name' => 'required'
    ];

    public function drinks()
    {
        return $this->hasMany('App\Models\Drink','drink_type');
    }
}
