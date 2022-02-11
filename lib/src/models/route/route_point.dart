import 'package:lolab_freight_app/src/models/route/protoResponse.v1_5_6.pbserver.dart';

class RoutePoint {
  int? linkNum;
  String? linkPart;
  int? nodeNum;
  int? num;
  String? roadName;
  double x;
  double y;
  double lat;
  double lng;
  Tbt? tbt;
  Tbt? farTbt;

  RoutePoint({required this.x, required this.y, required this.lat, required this.lng});
}