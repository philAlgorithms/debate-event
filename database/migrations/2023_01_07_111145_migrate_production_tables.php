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
        // Old plan was to continue with exisying database, the boss said no.
        
        // Schema::dropIfExists('personal_access_tokens');
        // Artisan::call('db:seed', [
        //     '--class' => 'OldProductionSeeder'
        // ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
