<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\{BelongsTo, BelongsToMany, HasOne};
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function partnerOnRegistration(): BelongsTo
    {
        return $this->belongsTo(User::class, 'partner_id');
    }
    /**
     * Gets this user's partners
     * 
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo|\Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function partner(): BelongsTo|HasOne
    {
        $referred_partner = $this->partnerOnRegistration;

       if(is_null($referred_partner))
       {
            return $this->hasOne(User::class, 'partner_id');
       }

        return $this->partnerOnRegistration();
    }

    /**
     * Gets this user's debate role
     * 
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function debateRole(): BelongsTo
    {
        return $this->belongsTo(DebateRole::class);
    }
}
