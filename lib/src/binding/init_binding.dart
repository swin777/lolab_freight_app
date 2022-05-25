import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/app_controller.dart';
import 'package:lolab_freight_app/src/controller/login_controller.dart';
import 'package:lolab_freight_app/src/repository/deliveryRepository.dart';
import 'package:lolab_freight_app/src/repository/freightRepository.dart';
import 'package:lolab_freight_app/src/repository/loginRespository.dart';
import 'package:lolab_freight_app/src/repository/routeRepository.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(FreigntRepository(), permanent: true);
    Get.put(DeliveryRepository(), permanent: true);
    Get.put(RouteResitory(), permanent: true);
    Get.put(LoginRepository());
    Get.put(AppController());
    Get.put(LoginController());
    //Get.put(FreightController());
    //Get.put(FreightMapController());
    //Get.put(DeliveryController());
    //Get.put(DeliveryPaymentController());
    //Get.lazyPut<DeliveryController>(() => DeliveryController());
    //Get.lazyPut<DeliveryPaymentController>(() => DeliveryPaymentController());
  }
}

