// ignore_for_file: void_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/freight_detail_controller.dart';
import 'package:lolab_freight_app/src/controller/freight_map_controller.dart';
import 'freight_detail_info.dart';
import 'freight_posion_map_native.dart';

class FreightDetail extends StatelessWidget {
  String orderId;
  FreightDetail({Key? key, required this.orderId}) : super(key: key);

  void close(){
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      //child:FreightDetailInfo(close: close, parentContext:context)
      child: SizedBox(
        //margin: const EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
        child : Navigator(
          key: Get.nestedKey(1), 
          initialRoute:'detail/info',
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case 'detail/info':
                return GetPageRoute(
                  page: () {return FreightDetailInfo(close: close, orderId: orderId,); },
                  transition: Transition.rightToLeft,
                );
              case 'map':
                return GetPageRoute(
                  settings: settings,
                  page: () {return FreightPostionMap(arg: settings.arguments); },
                  //page: () {return FreightPostionMap(); },
                  transition: Transition.leftToRight,
                  //binding: BindingsBuilder(() => Get.put(FreightMapController())),
                );
            }
          }
        )
      ),
    );
  }
}