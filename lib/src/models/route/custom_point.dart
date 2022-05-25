import 'package:lolab_freight_app/src/models/route/protoResponse.v1_5_6.pbserver.dart';
import 'package:proj4dart/proj4dart.dart';

class CustomPoint extends Point{
  int? orgNumber;
  String? roadName;
  Tbt? tbt;
  Tbt? farTbt;
  CustomPoint({required double x, required double y, this.roadName, this.tbt, this.farTbt, this.orgNumber}):super(x: x, y: y);
}