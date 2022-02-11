import 'package:lolab_freight_app/src/models/route/route_point.dart';
import 'package:lolab_freight_app/src/models/route/route_point.dart';
import 'package:maplibre_gl/mapbox_gl.dart';

class RouteInfo {
  LatLng? northeast;
  LatLng? southwest;
  List<RoutePoint>? routePoints;

  RouteInfo({required this.northeast, required this.southwest, required this.routePoints});
}