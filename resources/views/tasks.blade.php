<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Laravel Vue.js app</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <link rel="stylesheet" href="{{mix('css/app.css')}}">

</head>
<body>
{{--<div class="flex-center position-ref full-height">--}}

<div id="app">

    <div class="container">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img src="{{ asset('images/logo.png') }}" width="200" >
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/posts">Posts</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/tasks">Tasks</a>
                        </li>
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                                    document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>
</div>

            <div class="col-12">

                <div class="container pt-5">
                    <div class="row">

                        <div class="col-2">
                             <!-- Sidebar -->
                            <div class="bg-light border-right" id="sidebar-wrapper">
                                <div class="sidebar-heading"> </div>
                                <div class="list-group list-group-flush">
                                <a href="/home" class="list-group-item list-group-item-action bg-light">Home</a>
                                <a href="/posts" class="list-group-item list-group-item-action bg-light">Posts</a>
                                <a href="/tasks" class="list-group-item list-group-item-action bg-light">Overview</a>
                                <a href="#" class="list-group-item list-group-item-action bg-light">Events</a>
                                <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>
                                <a href="#" class="list-group-item list-group-item-action bg-light">Status</a>
                                </div>
                            </div>
                            <!-- /#sidebar-wrapper -->

                        </div>
                        <div class="col-10">


                                <!-- Create Post Component -->
                                <create-task></create-task>

                                <!-- List Posts Component -->
                                <all-tasks></all-tasks>


                        </div>
                    </div>
                </div>
            </div>

</div>

{{--</div>--}}

<script async src="{{mix('js/app.js')}}"></script>
</body>
</html>
