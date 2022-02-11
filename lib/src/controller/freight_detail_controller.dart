import 'dart:async';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';
import 'package:lolab_freight_app/src/repository/freightRepository.dart';
import 'package:wakelock/wakelock.dart';

class FreightDetailController extends GetxController {
  static FreightDetailController get to => Get.find();

  RxBool reqStatus = false.obs;
  RxString timeStr = "5: 00".obs;
  RxDouble timeRate = 0.0.obs;
  final int timerMaxSeconds = 60*5;
  int currentSeconds = 0;
  Timer? _timer;
  Rx<Order>? order = Order().obs;

  void reqStatusToggle() => reqStatus.value = reqStatus.value ? false : true;

  void startTimeout() {
    if(reqStatus.value){
      Wakelock.enable();
      _timer = Timer.periodic(const Duration(milliseconds: 1000), (Timer timer){
        currentSeconds = timer.tick;
        timeStr('${((timerMaxSeconds - currentSeconds) ~/ 60).toString()}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}');
        timeRate(currentSeconds/timerMaxSeconds);
        if (timer.tick >= timerMaxSeconds) {
          timer.cancel();
          Wakelock.disable();
        }
      });
    }
  }

  void getOrder(String orderId) async{
    try{
      Order? orderDetail = await FreigntRepository.to.orderDetail(orderId);
      order!.value = orderDetail!;
    // ignore: empty_catches
    }catch(e){
      print(e.toString());
    }
  }

  @override
  void onClose() {
    super.onClose();
    if(_timer!=null){
      _timer?.cancel();
      Wakelock.disable();
    }
  }
}