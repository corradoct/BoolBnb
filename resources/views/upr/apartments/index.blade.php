@extends('layouts.app')

@section('content')
  <section class="justify-content-around cs-space">
    <div class="container">
      <h1>Ecco i tuoi appartamenti registrati</h1>

      <a href="{{ route('upr.apartments.create') }}">Crea un nuovo appartamento</a>
      oppure
      <a href="/">Vai all' Homepage</a>

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
              {{-- <li>
                <h3>Prezzo:</h3>
                {{ $apartment->price }} €
              </li> --}}
              <li>
                <img src=" {{ asset('storage') . '/' . $apartment->image }} " alt="{{$apartment->title}}">
              </li>
            </ul>
            <div>
              <form class="delete" action="{{ route('upr.apartments.destroy', $apartment) }}" method="post">
              @csrf
              @method('DELETE')
                <input type="submit" value="Elimina">
              </form>
              <button type="button" name="button"><a href="{{ route('upr.message', $apartment) }}">Leggi i messaggi</a></button>
              <button type="button" name="button"><a href="{{ route('upr.apartments.edit', $apartment) }}">Modifica annuncio</a></button>

              <form class="sospend" action="{{ route('upr.sospend', $apartment) }}" method="post">
              @csrf
              @method('PUT')
                <input id="sospendValue" type="hidden" name="active" value="{{ ($apartment->active == 0) ? 1 : 0  }}">
                <input id="sospendButton" type="submit" value="{{ ($apartment->active == 0) ? 'Attiva' : 'Sospendi' }}">
              </form>
            </div>
          </div>
        @endif
      @endforeach
    </div>
  </section>
@endsection
