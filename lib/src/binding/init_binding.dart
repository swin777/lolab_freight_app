import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}