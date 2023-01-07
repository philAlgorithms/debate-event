<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
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
        // Schema::create('activities', function (Blueprint $table) {
        //     $table->bigIncrements('id');
        //     $table->unsignedBigInteger('event_day_id');
        //     $table->string('title');
        //     $table->timestamps();

        //     $table->foreign('event_day_id')
        //           ->references('id')
        //           ->on('event_days')
        //           ->onDelete('cascade')
        //           ->onDelete('cascade');
        // });

        Artisan::call('db:seed', [
            '--class' => 'ActivitySeeder'
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
    }
};
