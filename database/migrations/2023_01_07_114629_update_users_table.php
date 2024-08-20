<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Seed users (Including admin)
        Artisan::call('db:seed', [
            '--class' => 'UserSeeder'
        ]);
        // Update users table
        Schema::table('users', function (Blueprint $table) {
            $table->string('school')->nullable();
            $table->foreignId('debate_role_id')
                  ->nullable()
                  ->constrained('debate_roles')
                  ->nullOnDelete()
                  ->cascadeOnUpdate();
            $table->foreignId('partner_id')
                  ->unique()
                  ->nullable()
                  ->constrained('users')
                  ->nullOnDelete()
                  ->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
};
