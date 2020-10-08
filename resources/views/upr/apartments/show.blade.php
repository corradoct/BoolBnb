@extends('layouts.app')

@section('content')

            <h1>Appartamento {{ $apartment->id }}</h1>

            <div class="">
              <ul>
                <li><h3>Titolo:</h3>{{ $apartment->title }}</li>
                <li><h3>Descrizione:</h3>{{ $apartment->description }}</li>
                <li><h3>Stanze:</h3>{{ $apartment->rooms }}</li>
                <li><h3>Letti:</h3>{{ $apartment->beds }}</li>
                <li><h3>Bagni:</h3>{{ $apartment->baths }}</li>
                <li><h3>Mq:</h3>{{ $apartment->square_meters }}</li>
                <li><h3>Indirizzo:</h3>{{ $apartment->address }}</li>
                {{-- <li><h3>Latitudine:</h3>{{ $apartment->lat }}</li>
                <li><h3>Longitudine:</h3>{{ $apartment->lon }}</li>
                <li><h3>Prezzo:</h3>{{ $apartment->price }} €</li> --}}
                <li><img src=" {{ asset('storage') . '/' . $apartment->image }} " alt="{{$apartment->title}}"></li>
                <li><h3>Proprietario:</h3>{{ $apartment->user->name }}</li>
                <li><h3>Servizi:</h3>
                  @foreach ($apartment->services as $service)
                    {{ $service->type }}
                  @endforeach
                </li>
              </ul>
              <a href="{{ route('upr.apartments.edit', $apartment) }}">Modifica annuncio</a>
            </div>

            <div id="mapid"></div>

            <script type="text/javascript">
              var mymap = L.map('mapid').setView([{{ $apartment->lat }}, {{ $apartment->lon }}], 17);
              var marker = L.marker([{{ $apartment->lat }}, {{ $apartment->lon }}]).addTo(mymap);
              marker.bindPopup("{{$apartment->title}} <br> {{ $apartment->address}}").openPopup();

              L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
              attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
              maxZoom: 18,
              id: 'mapbox/streets-v11',
              tileSize: 512,
              zoomOffset: -1,
              accessToken: 'pk.eyJ1IjoiY29ycmFkb2N0IiwiYSI6ImNrZm51YmF0NDBlZTQyeW9lYmpyNGpzcGYifQ.A43eZmLSH1fCHbMCGtG_Zg'
              }).addTo(mymap);
            </script>

            @if ($user_auth->id  !== $apartment->user_id)
              <div class="">
                <form class="" action="{{ route('message.store', $apartment) }}" method="post">
                  @csrf
                  @method('POST')

                  <div>
                    <input  type="hidden" name="apartment_id" value= {{ $apartment->id }}>
                  </div>


                  <div>
                    <label for="email">Email</label>
                    <input  type="email" name="email" value= {{ $user_auth->email }} placeholder="Inserisci la mail">
                  </div>

                  <div>
                    <label for="content">Content</label>
                    <textarea name="content" rows="8" cols="80" placeholder="Inserisci il messaggio"></textarea>
                  </div>

                  <div>
                    <input type="submit" name="" value="Send">
                  </div>

                </form>
              </div>


            @else
 <a href="{{ route('upr.messages.index') }}">Leggi i messaggi ricevuti</a>
            @endif 

            <a href="{{ route('upr.apartments.index') }}">Torna alla lista</a>
          




@endsection
