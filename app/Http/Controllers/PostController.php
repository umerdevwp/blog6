<?php

namespace App\Http\Controllers;


use App\Post;//
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;//
use function GuzzleHttp\Promise\all;//

class PostController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        return view('posts');
    }

    public function get(Request $request)
    {
        $user = Auth::user();
        $posts = Post::orderBy('created_at', 'desc')->get();
        return response()->json($posts);
    }

    public function store(Request $request)
    {
        $user = Auth::user();


        //$imageName = time().'.'.$request->image->getClientOriginalExtension();
       //$request->image->move(public_path('images'), $imageName);

        $post = Post::create($request->all());

        return response()->json($post);
    }

    public function delete($id)
    {
        $user = Auth::user();
        Post::destroy($id);

        return response()->json("ok");
    }
}
