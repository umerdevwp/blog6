<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Post extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);
    }

     // Extra
     public function with($request)
     {
         return [
             'version' => 'v1.0.0',
             'author' => 'DatumSquare',
             'author_url' => 'http://datumsquare.com/'
         ];
     }
}
