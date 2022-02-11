import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lolab_freight_app/src/components/freight/detail/simulation/remocon.dart';
//import 'package:lolab_freight_app/src/controller/freight_detail_controller.dart';
import 'package:lolab_freight_app/src/controller/freight_map_controller.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';
import 'package:lolab_freight_app/src/models/route/route_info.dart';
import 'package:lolab_freight_app/src/models/route/route_point.dart';
import 'package:lolab_freight_app/src/utils/util.dart';
import 'package:maplibre_gl/mapbox_gl.dart';
import 'dart:math';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

// ignore: must_be_immutable
class FreightPostionMap extends StatelessWidget {
  FreightPostionMap({Key? key, this.arg}) : super(key: key) {
    order =  (arg as Map)['order'];
    mapController.order!.value = order!;
  }
  late MaplibreMapController maplibreMapController;
  FreightMapController mapController = Get.put(FreightMapController());
  //FreightDetailController controller = FreightDetailController.to;
  late Size size;
  Object? arg;
  Symbol? symbol;
  SymbolOptions? symbolOptions;
  String? styleAbsoluteFilePath;
  Order? order;

  void simulationRedy() async {
    mapController.simulationMode.toggle();
    Future.delayed(const Duration(milliseconds: 500), () {
      maplibreMapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(order!.loadingLat!,
                order!.loadingLon!),
            tilt: mapController.simulationMode.value ? 60 : 0,
            zoom: 16.5),
      ));
    });
  }

  void getRoute() async {
    RouteInfo routeInfo = await mapController.getRoute();
    List<RoutePoint> routePointList = routeInfo.routePoints!;
    List<List<double>> latalngList = routePointList.map((e) => [e.lng, e.lat]).toList();
    final String tileStyle2 = await rootBundle.loadString('assets/style/tileStyle2.json');
    final String tileStyle = await rootBundle.loadString('assets/style/tileStyle.json');
    final data2 = await json.decode(tileStyle2);
    final data = await json.decode(tileStyle);
    data2['sources']['geojson_route']['data']['geometry']['coordinates'] = latalngList;
    data['sources']['geojson_route']['data']['geometry']['coordinates'] = latalngList;

    getApplicationDocumentsDirectory().then((dir) async {
      String documentDir = dir.path;
      String stylesDir = '$documentDir/styles';
      await Directory(stylesDir).create(recursive: true);
      File styleFile2 = File('$stylesDir/tileStyleTmp2.json');
      await styleFile2.writeAsString(json.encode(data));
      File styleFile = File('$stylesDir/tileStyleTmp.json');
      await styleFile.writeAsString(json.encode(data));

      mapController.path.add(styleFile2.path);
      mapController.path.add(styleFile.path);

      mapController.styleString.value = styleFile2.path;
      mapController.routeComplate.value = true;

      //maplibreMapController.addRouteLayer(featureJson)

      maplibreMapController.animateCamera(CameraUpdate.newLatLngBounds(LatLngBounds(northeast: routeInfo.northeast!,southwest: routeInfo.southwest!)));
    });
  }

  void _onMapCreated(MaplibreMapController controller) async {
    maplibreMapController = controller;
    mapController.maplibreMapController = controller;
    //symbolOptions = _getSymbolOptions("assets/images/poi.png");
    // Future.delayed(const Duration(milliseconds: 500), () async {
    //   symbol = await maplibreMapController.addSymbol(symbolOptions!);
    //   //maplibreMapController.removeSymbol(symbol!);
    // });
    getRoute();
  }

  SymbolOptions _getSymbolOptions(String iconImage) {
    return SymbolOptions(
      geometry: LatLng(order!.loadingLat!,
          order!.loadingLon!),
      iconImage: iconImage,
      iconSize: 0.5,
    );
  }

  void _onCameraIdle() {
    double? tilt = maplibreMapController.cameraPosition?.tilt;
    if (tilt != null) {
      if (tilt == 0 && mapController.styleIndex.value != 0) {
        mapController.setStyleIndex(0);
      }
      if (tilt > 0 && mapController.styleIndex.value == 0) {
        mapController.setStyleIndex(1);
      }
    }
  }

  void _onStyleLoadedCallback() {}

  MaplibreMap maplibreMap(String styleUrl) {
    CameraPosition cameraPosition = CameraPosition(
        target: LatLng(order!.loadingLat!,
            order!.loadingLon!),
        zoom: 16.5,
        tilt: 0);
    return MaplibreMap(
        onMapCreated: _onMapCreated,
        onStyleLoadedCallback: _onStyleLoadedCallback,
        onCameraIdle: _onCameraIdle,
        styleString: styleUrl,
        trackCameraPosition: true,
        initialCameraPosition: cameraPosition,
        logoViewMargins: const Point(0, -100),
        attributionButtonMargins: const Point(0, -100));
  }

  Widget upPoisionInfo(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xffcccccc),
          ),
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff60acff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(2),
                child: const Text(
                  '상차',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Row(
                children: [
                  Text(
                    '${toDayOrYYYYMM(order!.loadingDateTime ?? DateTime.now())} ${DateFormat('HH:mm').format(order!.loadingDateTime ?? DateTime.now())}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    ' 405km',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Expanded(
                      child: Obx(() => Container(
                          height: 30,
                          alignment: Alignment.centerRight,
                          child: mapController.routeComplate.value
                              ? ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    primary: Colors.pink,
                                  ),
                                  onPressed: () {
                                    simulationRedy();
                                  },
                                  child: const Text('모이주행'),
                                )
                              : const SizedBox())))
                ],
              )),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    '${order!.loadingAddress!} ${order!.loadingDetailAddress!}',
                    style: Theme.of(context).textTheme.headline3,
                  )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            side: BorderSide(color: Color(0xff2a3f85))),
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text(
                        '주소 복사',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a3f85)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      child: const Text('길안내'),
                    ),
                  )
                ],
              )
            ],
          ),
        ]));
  }

  Widget downPoisionInfo(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffcccccc)),
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff2a3f85),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(2),
                child: const Text(
                  '하차',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: Row(
                children: [
                  Text(
                    '${toDayOrYYYYMM(order!.unloadingDateTime ?? DateTime.now())} ${DateFormat('HH:mm').format(order!.unloadingDateTime ?? DateTime.now())}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    ' 405km',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Expanded(
                      child: Obx(() => Container(
                          height: 30,
                          alignment: Alignment.centerRight,
                          child: mapController.routeComplate.value
                              ? ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    primary: Colors.pink,
                                  ),
                                  onPressed: () {
                                    simulationRedy();
                                  },
                                  child: const Text('모이주행'),
                                )
                              : const SizedBox())))
                ],
              )),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    '${order!.unloadingAddress!} ${order!.unloadingDetailAddress!}',
                    style: Theme.of(context).textTheme.headline3,
                  )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            side: BorderSide(color: Color(0xff2a3f85))),
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text(
                        '주소 복사',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a3f85)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      child: const Text('길안내'),
                    ),
                  )
                ],
              )
            ],
          ),
        ]));

  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) => 
      Stack(
        //alignment: Alignment.center,
        children: <Widget>[
          Obx(() => FractionallySizedBox(
                heightFactor: mapController.simulationMode.value ? 1.5 : 1.0,
                widthFactor: 1.0,
                alignment: Alignment.topCenter,
                child: mapController.styleString.value != ""
                    ? maplibreMap(mapController.styleString.value)
                    : const SizedBox(),
              )),
          Obx(() => 
            !mapController.playMode.value
            ?
            Positioned(
              top: 14,
              left: 14,
              child: GestureDetector(
                onTap: () {
                  Get.back(id: 1);
                },
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            )
            :
            const SizedBox()
          ),
          Positioned(
            bottom: 6,
            child: Obx(() => mapController.simulationMode.value
                ? RemodeCon()
                : SizedBox(
                    width: size.width,
                    height: 184,
                    child: CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: false,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          initialPage: 0,
                          viewportFraction: 0.92),
                      items: [
                        upPoisionInfo(context),
                        downPoisionInfo(context),
                      ],
                    ),
                  )),
          ),
          Obx(() => mapController.playMode.value
              ? Positioned(
                  top: 10,
                  left: 8,
                  right: 54,
                  child: Container(
                    height: 80,
                    color: const Color(0xff039428).withOpacity(0.65),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mapController.tbtUrl.value != null &&
                                mapController.tbtUrl.value != ''
                            ? Image.network(mapController.tbtUrl.value)
                            : const SizedBox(),
                        Text(
                          mapController.tbtName.value,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            color: const Color(0xff025316).withOpacity(0.65),
                            child: mapController.farTbtUrl.value != null &&
                                    mapController.farTbtUrl.value != ''
                                ? Image.network(mapController.farTbtUrl.value)
                                : const SizedBox())
                      ],
                    ),
                  ),
                )
              : const SizedBox()),
          Obx(() => mapController.playMode.value
              ? Positioned(
                  top: constraints.maxHeight * 1.5 / 2 - 25 ,
                  left: constraints.maxWidth / 2 - 25,
                  child: Image.asset(
                    "assets/images/car.png",
                    width: 50,
                    height: 50,
                  ),
                )
              : 
              const SizedBox()),
        ],
      )
    ,);

  }
}
