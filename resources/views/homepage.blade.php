<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>BoolBnb</title>
        <script src="{{ asset('js/app.js') }}" defer></script>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 30px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>

    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/upr') }}">Home</a>
                    @else

                        <a href="{{ url('/apartments') }}">Mostra tutto</a>

                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    HOME PAGE CON L INPUT DI RICERCA
                    <div class="">
                      <form action="{{ route('search')}}" method="post">
                          @csrf
                          @method('GET')
                          <div class="form-group">

                              <div class="where-bar">
                                <input type="search" id="address" name="address" placeholder="Dove vuoi andare?">
                                <input type="hidden" id="lat" name="lat" class="form-control">
                                <input type="hidden" id="lon" name="lon" class="form-control">
                              </div>
                              <div class="search-button">
                                <button type="submit" class="btn btn-boolbnb">
                                  cerca
                                </button>
                              </div>
                              <script src="https://cdn.jsdelivr.net/npm/places.js@1.19.0"></script>

                              <script>
                                  (function() {
                                      var placesAutocomplete = places({
                                          appId: 'pl72UD0E1RWC',
                                          apiKey: '6f2ccdf8214af2f289be15103d07cf1c',
                                          container: document.querySelector('#address')
                                      });
                                      var address = document.querySelector('#address-value')
                                      placesAutocomplete.on('change', function(e) {
                                        console.log(placesAutocomplete);
                                          $('#address').val(e.suggestion.value);
                                          $('#lat').val(e.suggestion.latlng.lat);
                                          $('#lon').val(e.suggestion.latlng.lng);

                                          console.log("latitudine: ", $('#lat').val());
                                          console.log("longitudine: ", $('#lon').val());
                                      });
                                      placesAutocomplete.on('clear', function() {
                                          //$address.textContent = 'none';
                                          $('#address').val('');
                                          $('#lat').val('');
                                          $('#lon').val('');
                                      });
                                  })();
                              </script>
                          </div>
                      </form>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
