<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Builder;
use App\Apartment;

class SearchController extends Controller
{
  public function view(Apartment $apartment, Request $request) {

    $rooms = $request->input('rooms');
    $beds = $request->input('beds');
    $lat = $request->input('lat');
    $lon = $request->input('lon');
    $rad = $request->input('rad');
    $R = 6371;
    $wifi = $request->input('wifi');
    $parking = $request->input('parking');
    $pool = $request->input('pool');
    $reception = $request->input('reception');
    $sauna = $request->input('sauna');
    $seaView = $request->input('seaView');

    $params = [
            "maxLat" => $lat + rad2deg($rad/$R),
            "minLat" => $lat - rad2deg($rad/$R),
            "maxLon" => $lon + rad2deg(asin($rad/$R) / cos(deg2rad($lat))),
            "minLon" => $lon - rad2deg(asin($rad/$R) / cos(deg2rad($lat))),
        ];

    $querySuite = Apartment::query();

    $querySuite->whereBetween('lat', [$params['minLat'], $params['maxLat']]);
    $querySuite->whereBetween('lon', [$params['minLon'], $params['maxLon']]);

    if ($wifi == 'checked') {
      $querySuite->whereHas('services', function (Builder $query) {
        $query->where('service_id', '=', '1');
      });
    }

    if ($parking == 'checked') {
      $querySuite->whereHas('services', function (Builder $query) {
        $query->where('service_id', '=', '2');
      });
    }

    if ($pool == 'checked') {
      $querySuite->whereHas('services', function (Builder $query) {
        $query->where('service_id', '=', '3');
      });
    }

    if ($reception == 'checked') {
      $querySuite->whereHas('services', function (Builder $query) {
        $query->where('service_id', '=', '4');
      });
    }

    if ($sauna == 'checked') {
      $querySuite->whereHas('services', function (Builder $query) {
        $query->where('service_id', '=', '5');
      });
    }

    if ($seaView == 'checked') {
      $querySuite->whereHas('services', function (Builder $query) {
        $query->where('service_id', '=', '6');
      });
    }

    if ($rooms) {
      $querySuite->where('rooms', "=", $rooms);
    }

    if ($beds) {
      $querySuite->where('beds', "=", $beds);
    }

    $noPromo = $querySuite->get();
        return response()->json(compact('noPromo'));
  }
}
