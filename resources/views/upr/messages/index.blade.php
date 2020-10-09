@extends('layouts.app')
@section('content')
  <section>
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div id="containerMessageList">
            @foreach ($messages as $message)
              @if ($apartment->id == $message->apartment_id)
                <div>
                  <ul id="messagesList">
                    <li>Email: {{ $message->email }}</li>
                    <li>Contenuto: {{ $message->content }}</li>
                  </ul>
                </div>
              @endif
            @endforeach
          </div>
        </div>
      </div>
    </div>
    <a href="{{ route('upr.apartments.index') }}">Torna alla lista</a>
  </section>

  <script>
  $(document).ready(function() {
    if (!$('#messagesList').length) {
      $('#containerMessageList').html("<h2>Non hai messaggi per questo appartamento.</h2>");
    };
  });
  </script>
@endsection
