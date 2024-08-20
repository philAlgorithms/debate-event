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
        // Schema::create('event_days', function (Blueprint $table) {
        //     $table->bigIncrements('id');
        //     $table->date('date');
        //     $table->string('color')->default('cyan');
        //     $table->timestamps();
        // });

        Artisan::call('db:seed', [
            '--class' => 'EventDaySeeder'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
        Schema::dropIfExists('activities');
        Schema::dropIfExists('event_days');
    }
};
