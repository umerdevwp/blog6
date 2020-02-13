<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            // Migration Fields
            $table->bigIncrements('id');
            $table->Text('post_title');
            $table->Text('post_excerpt');
            $table->longText('post_content');
            $table->string('post_name');
            $table->string('post_status');
            $table->string('post_parent');
            $table->string('post_guid');
            $table->string('post_type');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
