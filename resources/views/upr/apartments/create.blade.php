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
            <div class="container">
              <div class="row">
                <div class="col-12">
                  <h1>Add apartment</h1>
                  {{-- Validazione form --}}
                  @if ($errors->any())
                    <div class="alert alert-danger">
                      <ul>
                        @foreach ($errors->all() as $error)
                          <li>{{ $error }}</li>
                        @endforeach
                      </ul>
                    </div>
                  @endif
                  {{-- Add new car form --}}
                  <form action="{{route('upr.apartments.store')}}" method="post" enctype="multipart/form-data">
                  @csrf
                  @method('POST')

                    <div>
                      <label for="title">Title:</label><br>
                      <input type="text" name="title" value="{{ old('title')}}" placeholder="Inserisci il titolo">
                    </div>

                    <div>
                      <label for="description">Description:</label><br>
                      <textarea name="description" rows="8" cols="80" placeholder="Inserisci la descrizione">{{ old('description')}}</textarea>
                    </div>

                    <div>
                      <label for="rooms">Rooms:</label><br>
                      <input type="number" name="rooms" value="{{ old('rooms')}}" placeholder="Inserisci il numero di stanze">
                    </div>

                    <div>
                      <label for="beds">Beds:</label><br>
                      <input type="number" name="beds" value="{{ old('beds')}}" placeholder="Inserisci il numero di letti">
                    </div>

                    <div>
                      <label for="baths">Baths:</label><br>
                      <input type="number" name="baths" value="{{ old('baths')}}" placeholder="Inserisci il numero di bagni">
                    </div>

                    <div>
                      <label for="square_meters">Square meters:</label><br>
                      <input type="number" name="square_meters" value="{{ old('square_meters')}}" placeholder="Inserisci i mq">
                    </div>

                    <div>
                      <label for="address">Address:</label><br>
                      {{-- <input type="search" name="address" class="form-control" id="address-new" placeholder="Where do you live?" /> --}}
                      <input name="address" type="search" id="address-new" class="form-control" placeholder="Inserisci l'indirizzo" value="{{ old('address')}}" required/>
                    </div>

                    <div>
                      <input id="lat" type="hidden" name="lat">
                    </div>

                    <div>
                      <input id="lon" type="hidden" name="lon">
                    </div>

                    <div class="chekboxes">
                      <span>Services:</span>
                      @foreach ($services as $service)
                        <div>
                          <input type="checkbox" name="services[]" value="{{ $service->id }}">
                          <label>{{$service->type}}</label>
                        </div>
                      @endforeach
                    </div>

                    <div>
                      <label for="image">Upload image</label>
                      <input type="file" name="image" accept="image/*" required>
                    </div>

                    <div>
                      <input id="save" type="submit" name="" value="save">
                    </div>
                  </form>

                  <a href="{{ route('upr.apartments.index') }}">Torna alla lista</a>
                </div>

              </div>

            </div>

            <script type="text/javascript" src="{{ asset('js/app.js') }}"></script>

            <script src="https://cdn.jsdelivr.net/npm/places.js@1.19.0"></script>
            <script>
            (function() {
              var placesAutocomplete = places({
                appId: 'pl72UD0E1RWC',
                apiKey: '6f2ccdf8214af2f289be15103d07cf1c',
                container: document.querySelector('#address-new'),

              });
              var address = document.querySelector('#address-value')
              placesAutocomplete.on('change', function(e) {
                console.log(placesAutocomplete);
                  $('#address-new').val(e.suggestion.value);
                  $('#lat').val(e.suggestion.latlng.lat);
                  $('#lon').val(e.suggestion.latlng.lng);

                  console.log("latitudine: ", $('#lat').val());
                  console.log("longitudine: ", $('#lon').val());
              });
            })();



            </script>
          </main>

          <footer>
            <div class="container">
            </div>
            IO SONO UN FOOTER
          </footer>
      </div>
    </body>

@endsection
