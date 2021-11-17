import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/app_controller.dart';
import 'package:lolab_freight_app/src/controller/delivery_controller.dart';
import 'package:lolab_freight_app/src/controller/freight_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.put(FreightController());
    Get.put(DeliveryController());
  }
}