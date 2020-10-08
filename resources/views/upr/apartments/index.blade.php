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
            <h1>Ecco i tuoi appartamenti registrati</h1>

            <a href="{{ route('upr.apartments.create') }}">Crea un nuovo appartamento</a>
            oppure
            <a href="{{ route('apartments.index') }}">Visita gli appartamenti già presenti</a>

            @foreach ($apartments as $apartment)
              @if ($user->id == $apartment->user_id)
                <div class="">
                  <h2>
                    <a href="{{route('upr.apartments.show', $apartment)}}">Appartamento {{ $apartment->id }}</a>
                  </h2>
                  <ul>
                    <li>
                      <h3>Titolo:</h3>
                      {{ $apartment->title }}
                    </li>
                    <li>
                      <h3>Prezzo:</h3>
                      {{ $apartment->price }} €
                    </li>
                    <li>
                      <img src=" {{ asset('storage') . '/' . $apartment->image }} " alt="{{$apartment->title}}">
                    </li>
                    <li>
                      <h3>Città:</h3>
                      {{ $apartment->city }}
                    </li>
                    <li>
                      <h3>Stato:</h3>
                      {{ $apartment->country }}
                    </li>
                  </ul>
                  <div>
                    <form class="delete" action="{{ route('upr.apartments.destroy', $apartment) }}" method="post">
                    @csrf
                    @method('DELETE')
                      <input type="submit" value="Elimina">
                    </form>
                  </div>
                </div>
              @endif
            @endforeach
          </main>

          <footer>
            <div class="container">
            </div>
            IO SONO UN FOOTER
          </footer>
      </div>
    </body>



@endsection
