import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
//import 'package:lolab_freight_app/src/controller/freight_detail_controller.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';
import 'package:lolab_freight_app/src/models/route/custom_point.dart';
import 'package:lolab_freight_app/src/models/route/route_info.dart';
import 'package:lolab_freight_app/src/models/route/tbt_info.dart';
import 'package:lolab_freight_app/src/repository/routeRepository.dart';
import 'package:lolab_freight_app/src/utils/projection.dart';
import 'package:pausable_timer/pausable_timer.dart';
import 'package:wakelock/wakelock.dart';
import 'package:proj4dart/proj4dart.dart';
import 'package:maplibre_gl/mapbox_gl.dart';
import 'dart:math';

class FreightMapController extends GetxController {
  static FreightMapController get to => Get.find();
  //FreightDetailController detailController = FreightDetailController.to;
  late MaplibreMapController maplibreMapController;
  RxInt styleIndex = 0.obs;
  RxString styleString = "".obs;
  RxBool simulationMode = false.obs;
  List path = [];
  RxBool routeComplate = false.obs;
  RouteInfo? routeInfo;
  PausableTimer? timer;
  RxBool playMode = false.obs;
  RxString roadName = "".obs;
  RxString tbtUrl = "".obs;
  RxString farTbtUrl = "".obs;
  RxString tbtName = "".obs;
  Rx<Order>? order = Order().obs;

  late List<CustomPoint> smoothRoute; //smooth된 utmk
  late List<CustomPoint> latLngsmoothRoute; //smooth된 utmk로 위경도로 변경
  late List<CustomPoint> latLngRoute; //utmk에서 위경도로 변경
  late List<List<double>> latalngList;

  final _line = {
    "type": "FeatureCollection",
    "features": [
      {
        "type": "Feature",
        "geometry": {
          "type": "LineString",
          "coordinates": []
        }
      }
    ]
  };

  @override
  void onInit() async{
    Wakelock.enable();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown, DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    styleString.value = "assets/style/tileStyle2.json";
    super.onInit();
  }

  @override
  void onClose() {
    Wakelock.disable();
    if(timer!=null){
      timer!.cancel();
    }
    super.onClose();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
  
  void drawRoute() async {
    RouteInfo routeInfo = await getRoute();
    routeComplate.value = true;

    (_line['features'] as List)[0]['geometry']['coordinates'] = latalngList;
    await maplibreMapController.addGeoJsonSource("route", _line);
    await maplibreMapController.addLineLayer(
      "route", "routeLineLayer",
      LineLayerProperties(
        lineColor: const Color(0xff005e35).toHexStringRGB(),
        lineWidth: 10
      ),
    );
    await maplibreMapController.addGeoJsonSource("route2", _line);
    await maplibreMapController.addSymbolLayer(
      "route2", "routeArrowLayer",
      const SymbolLayerProperties(
        symbolPlacement: "line",
        symbolSpacing: 100,
        iconImage: "ico_001",
        iconSize: 0.5,
        //iconOpacity: 0.5
      ),
    );

    maplibreMapController.animateCamera(CameraUpdate.newLatLngBounds(LatLngBounds(northeast: routeInfo.northeast!,southwest: routeInfo.southwest!))); 
  }

  Future<RouteInfo> getRoute() async{
    routeInfo = await RouteResitory.to.getRoute(order!.value.loadingLat!, order!.value.loadingLon!, order!.value.unloadingLat!, order!.value.unloadingLon!);

    List<CustomPoint> utmkRoute = routeInfo!.routePoints!.map((e) {
      Point p = latlngToUtmk(e.lat, e.lng);
      return CustomPoint(x:p.x, y:p.y, roadName:e.roadName, tbt:e.tbt, farTbt:e.farTbt);
    }).toList();

    latLngRoute = utmkRoute.map((CustomPoint e) {
      Point p = utmkTolatlng(e.x, e.y);
      return CustomPoint(x:p.x, y:p.y);
    }).toList();
    latalngList = latLngRoute.map((CustomPoint e) => [e.x, e.y]).toList();

    smoothRoute = smooth(utmkRoute);
    latLngsmoothRoute = smoothRoute.map((CustomPoint e) {
      Point p = utmkTolatlng(e.x, e.y);
      return CustomPoint(x:p.x, y:p.y, orgNumber: e.orgNumber);
    }).toList();

    return Future.value(routeInfo);
  }

  void setStyleIndex(int idx) {
    styleIndex.value = idx;
    if(path.isEmpty){
      styleString.value = idx==0 ? "assets/style/tileStyle2.json" : "assets/style/tileStyle.json";
    }else{
      styleString.value = idx==0 ? path[0] : path[1];
    }
  }

  void playAndStop() {
    int missMatch = 0;
    if (playMode.value) {
      timer!.pause();
    } else {
      if (timer == null) {
        timer = PausableTimer(const Duration(milliseconds: 100), () async {
          int number = timer!.tick;
          if (number == latLngsmoothRoute.length - 1) {
            timer!.cancel();
          }
          if(smoothRoute[number].roadName!=null && smoothRoute[number].roadName!=roadName.value){
            roadName.value = smoothRoute[number].roadName!;
          }
          if(smoothRoute[number].tbt!=null && smoothRoute[number].tbt!.type!=998){
            tbtUrl('https://map.gis.kt.com/images/tbt-images/${tbtIcon['type_${smoothRoute[number].tbt!.type}']}.png');
            tbtName(smoothRoute[number].tbt!.tbtName);
          }
          if(smoothRoute[number].farTbt!=null && smoothRoute[number].farTbt!.type!=998){
            farTbtUrl('https://map.gis.kt.com/images/tbt-images/${tbtIcon['type_${smoothRoute[number].farTbt!.type}']}.png');
          }

          List<List<double>> sub = latalngList.sublist(latLngsmoothRoute[number].orgNumber!);
          sub[0] = [latLngsmoothRoute[number].x, latLngsmoothRoute[number].y];
          (_line['features'] as List)[0]['geometry']['coordinates'] = sub; 
          await maplibreMapController.setGeoJsonSource("route", _line);
          
          try{
            LatLngBounds bounds = await maplibreMapController.getVisibleRegion();
            debugPrint(bounds.northeast.latitude.toString() + ", " + bounds.northeast.longitude.toString() 
            + " : " +  bounds.southwest.latitude.toString() + ", " + bounds.southwest.longitude.toString());
          }catch(e){
            debugPrint(e.toString());
          }
          
          double bearing = atan2(smoothRoute[number + 1].x - smoothRoute[number].x,smoothRoute[number + 1].y - smoothRoute[number].y) * (180 / pi);
          maplibreMapController.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
              bearing: bearing,
              target: LatLng(latLngsmoothRoute[number].y, latLngsmoothRoute[number].x), tilt: 60, zoom: 17.5
            ),
          ));
        
          
          
          timer!.reset();
          timer!.start();
        })
              ..start();
      } else {
        timer!.start();
      }
    }
    playMode.value = !playMode.value;
  }

  List<CustomPoint> smooth(List<CustomPoint> utmkRouteList) {
    List<CustomPoint> partPath = [];
    utmkRouteList.asMap().entries.forEach((element) {
      if (utmkRouteList.length > element.key + 1) {
        CustomPoint point = element.value;
        point.orgNumber = element.key;
        CustomPoint netxPoint = utmkRouteList[element.key + 1];
        netxPoint.orgNumber = element.key;
        double length = twoPointLength(point, netxPoint);
        towPointSpint(point, netxPoint, length, partPath, element.key);
      }
    });
    return partPath;
  }

  double twoPointLength(CustomPoint p1, CustomPoint p2) {
    return sqrt(pow((p1.x - p2.x).abs(), 2) + pow((p1.y - p2.y).abs(), 2)); //* 20000;
  }

  void towPointSpint(CustomPoint p1, CustomPoint p2, double length, List<CustomPoint> result, int idx) {
    int max = (length / 1).round();
    for (int i = 0; i < max - 1; i++) {
      if(i%6==0){
        result.add(CustomPoint(
          x: (p2.x * (i) / max) + (p1.x * (max - i) / max), y: (p2.y * (i) / max) + (p1.y * (max - i) / max), 
          roadName: p1.roadName, tbt:p1.tbt, farTbt:p1.farTbt, orgNumber:idx
        ));
      }
    }
  }
}