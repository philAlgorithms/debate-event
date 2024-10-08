<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Activity extends Model
{
    use HasFactory;

    public function eventDay(): BelongsTo 
    {
        return $this->belongsTo(EventDay::class, 'event_day_id');
    }
}
