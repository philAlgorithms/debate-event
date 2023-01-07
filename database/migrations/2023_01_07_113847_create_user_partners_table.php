<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
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
        // Schema::create('user_partners', function (Blueprint $table) {
        //     $table->bigIncrements('id');
        //     $table->foreignId('user_id')
        //           ->constrained('users')
        //           ->cascadeOnDelete()
        //           ->cascadeOnUpdate();
        //     $table->foreignId('partner_id')
        //           ->constrained('users')
        //           ->cascadeOnDelete()
        //           ->cascadeOnUpdate();
        //     $table->timestamps();
        //     $table->unique(['user_id', 'partner_id']);
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_partners');
    }
};
