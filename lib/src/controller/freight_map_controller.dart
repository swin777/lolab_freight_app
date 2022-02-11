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

  Future<RouteInfo> getRoute() async{
    //Order order = detailController.order!.value;
    //RouteResitory.to.getRoute(order.loadingLat!, order.loadingLon!, order.unloadingLat!, order.unloadingLon!);
    //List<LatLng>? latalngList = await RouteResitory.to.getRoute(37.4873468886489, 127.03086712329379, 35.17923092120002, 129.12595027491258);
    //routePointList = await RouteResitory.to.getRoute(37.47136509899208, 127.02940905611158, 37.35878209462215, 127.11491971884783);
    routeInfo = await RouteResitory.to.getRoute(order!.value.loadingLat!, order!.value.loadingLon!, order!.value.unloadingLat!, order!.value.unloadingLon!);
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
        List<CustomPoint> utmkRoute = routeInfo!.routePoints!.map((e) {
          Point p = latlngToUtmk(e.lat, e.lng);
          return CustomPoint(x:p.x, y:p.y, roadName:e.roadName, tbt:e.tbt, farTbt:e.farTbt);
        }).toList();
        List<CustomPoint> smoothRoute = smooth(utmkRoute);
        List<CustomPoint> latLngsmoothRoute = smoothRoute.map((CustomPoint e) {
          Point p = utmkTolatlng(e.x, e.y);
          return CustomPoint(x:p.x, y:p.y);
        }).toList();
        
        timer = PausableTimer(const Duration(milliseconds: 20), () async {
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
          
          double bearing = atan2(smoothRoute[number + 1].x - smoothRoute[number].x,smoothRoute[number + 1].y - smoothRoute[number].y) * (180 / pi);
          // print('${maplibreMapController.cameraPosition!.bearing} , ${360+bearing} ==> ${maplibreMapController.cameraPosition!.bearing - (360+bearing)}');
          // if((maplibreMapController.cameraPosition!.bearing - (360+bearing)).abs() < 2 && missMatch<50){
          //   bearing = maplibreMapController.cameraPosition!.bearing;
          //   missMatch++;
          // }
          // if(missMatch>49){
          //     missMatch = 0;
          // }
          maplibreMapController.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
              bearing: bearing,
              target: LatLng(latLngsmoothRoute[number].y, latLngsmoothRoute[number].x), tilt: 60, zoom: 17.5
            ),
          ));
          // symbol ??= await maplibreMapController.addSymbol(SymbolOptions(
          //   geometry: LatLng(
          //       latLngsmoothRoute[number].y, latLngsmoothRoute[number].x),
          //   iconImage: "assets/images/car.png",
          //   iconSize: 0.6,
          // ));
          // maplibreMapController.updateSymbol(
          //   symbol!,
          //   SymbolOptions(
          //     geometry: LatLng(
          //     latLngsmoothRoute[number].y, latLngsmoothRoute[number].x),
          //   )
          // );
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
        CustomPoint netxPoint = utmkRouteList[element.key + 1];
        double length = twoPointLength(point, netxPoint);
        towPointSpint(point, netxPoint, length, partPath);
      }
    });
    return partPath;
  }

  double twoPointLength(CustomPoint p1, CustomPoint p2) {
    return sqrt(pow((p1.x - p2.x).abs(), 2) + pow((p1.y - p2.y).abs(), 2)); //* 20000;
  }

  void towPointSpint(CustomPoint p1, CustomPoint p2, double length, List<CustomPoint> result) {
    int max = (length / 1).round();
    for (int i = 0; i < max - 1; i++) {
      //if(i%1==0){
        result.add(CustomPoint(
          x: (p2.x * (i) / max) + (p1.x * (max - i) / max), y: (p2.y * (i) / max) + (p1.y * (max - i) / max), 
          roadName: p1.roadName, tbt:p1.tbt, farTbt:p1.farTbt)
        );
      //}
    }
  }
}