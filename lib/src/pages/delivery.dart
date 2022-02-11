import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/delivery/delivery_list.dart';
import 'package:lolab_freight_app/src/components/freight/detail/freight_posion_map_native.dart';
import 'package:lolab_freight_app/src/controller/delivery_controller.dart';

class Delivery extends StatelessWidget {
  Delivery({Key? key}) : super(key: key);

  final DeliveryController controller = Get.put(DeliveryController());

  @override
  Widget build(BuildContext context) {
    controller.getDeliveryList();
    return SafeArea(
      child : Navigator(
        key: Get.nestedKey(1), 
        initialRoute:'delivery/list',
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case 'delivery/list':
              return GetPageRoute(
                page: () {return DeliveryList(); },
                transition: Transition.rightToLeft
              );
            case 'map':
              return GetPageRoute(
                page: () {return FreightPostionMap(arg: settings.arguments); },
                //page: () {return FreightPostionMap(); },
                transition: Transition.leftToRight
              );
          }
        }
      )
    );
  }
}
