import 'package:proj4dart/proj4dart.dart';

var projSrc = Projection.get('EPSG:4326')!;
var projDst = Projection.get('EPSG:5179') ??
    Projection.add(
      'EPSG:5179',
      '+proj=tmerc +lat_0=38 +lon_0=127.5 +k=0.9996 +x_0=1000000 +y_0=2000000 +ellps=GRS80 +units=m +no_defs',
    );

Point latlngToUtmk(double lat, double lng){
  return projSrc.transform(projDst, Point(x: lng, y: lat));
}

Point utmkTolatlng(double x, double y){
  return projDst.transform(projSrc, Point(x: x, y: y));
}