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

import '../../../models/route/custom_point.dart';

// ignore: must_be_immutable
class FreightPostionMap extends StatelessWidget {
  FreightPostionMap({Key? key, this.arg}) : super(key: key) {
    order =  (arg as Map)['order'];
    mapController.order!.value = order!;
  }
  late MaplibreMapController maplibreMapController;
  FreightMapController mapController = Get.put(FreightMapController());
  late Size size;
  Object? arg;
  Symbol? symbol;
  SymbolOptions? symbolOptions;
  String? styleAbsoluteFilePath;
  Order? order;
  dynamic styleData;
  List<String> dtBldLine = [];
  List<String> dtBldPoly = [];

  void simulationRedy() async {
    Rect rect = Rect.fromLTRB(0, 0, size.width, size.height);
    List result = await maplibreMapController.queryRenderedFeaturesInRect(rect, ['routeLineLayer'], null);
    mapController.simulationMode.toggle();
    Future.delayed(const Duration(milliseconds: 500), () {
      maplibreMapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(order!.loadingLat!, order!.loadingLon!),
          tilt: mapController.simulationMode.value ? 60 : 0,
          zoom: 16.5),
      ));
    });
  }

  

  void _onMapCreated(MaplibreMapController controller) async {
    maplibreMapController = controller;
    mapController.maplibreMapController = controller;
    mapController.drawRoute();
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
    extrusionToggle();
  }

  void _onStyleLoadedCallback() async{
    final String tileStyle = await rootBundle.loadString('assets/style/tileStyleAll.json');
    styleData = await json.decode(tileStyle);
    List layers = styleData['layers'] as List;

    for (var layer in layers) {
      String layerId = layer['id'] as String;
      if(layerId.contains("dt_bld_poly")){
        String type = layer['type'] as String;
        if(type=='line'){
          dtBldLine.add(layerId);
        }else{
          dtBldPoly.add(layerId);
        }
      }
    }
    mapController.setStyleIndex(1);
    extrusionToggle();
  }

  void extrusionToggle(){
    if(styleData!=null){
      double? tilt = maplibreMapController.cameraPosition?.tilt;
      if (tilt != null) {
        if (tilt == 0 && mapController.styleIndex.value != 0) {
          mapController.setStyleIndex(0);
          for (var layerId in dtBldLine) {
            maplibreMapController.visiableLayer(layerId);
          }
          for (var layerId in dtBldPoly) {
            maplibreMapController.noneVisiableLayer(layerId);
          }
        }
        if (tilt > 0 && mapController.styleIndex.value == 0) {
          mapController.setStyleIndex(1);
          for (var layerId in dtBldLine) {
            maplibreMapController.noneVisiableLayer(layerId);
          }
          for (var layerId in dtBldPoly) {
            maplibreMapController.visiableLayer(layerId);
          }
        }
      }
    }
  }

  MaplibreMap maplibreMap(String styleUrl) {
    CameraPosition cameraPosition = CameraPosition(
        target: LatLng(order!.loadingLat!, order!.loadingLon!),
        zoom: 16.5,
        tilt: 0);
    return MaplibreMap(
        onMapCreated: _onMapCreated,
        onStyleLoadedCallback: _onStyleLoadedCallback,
        onCameraIdle: _onCameraIdle,
        //styleString: styleUrl,
        styleString: 'assets/style/tileStyleAll.json',
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
                color: const Color(0xff63512b),
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
                          side: BorderSide(color: Color(0xff005e35))),
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      '주소 복사',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff005e35)),
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
        ]
      )
    );
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
                  color: const Color(0xff005e35),
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
                            side: BorderSide(color: Color(0xff005e35))),
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text(
                        '주소 복사',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff005e35)),
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
                heightFactor: mapController.simulationMode.value ? 1.75 : 1.0,
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
                  top: constraints.maxHeight * 1.75 / 2 - 25 ,
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
