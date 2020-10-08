@extends('layouts.app')

@section('content')
  <body>
      <div id="app">
          <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
              <div class="container">
                  <a class="navbar-brand" href="{{ url('/') }}">
                      {{ config('app.name', 'BoolBnb') }}
                  </a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                      <span class="navbar-toggler-icon"></span>
                  </button>

                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                      <!-- Left Side Of Navbar -->
                      <ul class="navbar-nav mr-auto">

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
                                      {{ Auth::user()->name }}
                                  </a>

                                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                      <a class="dropdown-item" href="{{ route('logout') }}"
                                         onclick="event.preventDefault();
                                                       document.getElementById('logout-form').submit();">
                                          {{ __('Logout') }}
                                      </a>

                                      <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                          @csrf
                                      </form>
                                  </div>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="{{ route('upr.home') }}">Dashboard</a>
                              </li>
                          @endguest
                      </ul>
                  </div>
              </div>
          </nav>

          <main class="py-4">
            <h1>Benvenuto {{ $user_auth->name }} questa e la tua homepage(o dashboard)</h1>
            <div class="">
              <h3>clicca <a href="{{route('upr.apartments.index')}}">qui</a> per vedere i tuoi appartamenti </h3>

            </div>
            <div class="">
              <h2>Hai <a href="{{route('upr.messages.index')}}">1</a>  nuovo messaggio da leggere </h2>
            </div>
            <div class="">
              <h3>clicca <a href="#">qui</a> per vedere le tue statistiche </h3>

            </div>

            <a href="{{ route('upr.apartments.create') }}">Crea un nuovo appartamento</a>
            oppure
            <a href="{{ route('apartments.index') }}">Visita gli appartamenti già presenti</a>
          </main>

          <footer>
            <div class="container">
            </div>
            IO SONO UN FOOTER
          </footer>
      </div>
    </body>

  @endsection
