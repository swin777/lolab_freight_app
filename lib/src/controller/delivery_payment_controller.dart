import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryPaymentController extends GetxController {
  static DeliveryPaymentController get to => Get.find();
  RxInt cnt = 20.obs;
  RxInt dayCnt = 5.obs;
  Rx<DateTime> dt = DateTime.now().obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    print("DeliveryPaymentController Init");
    //search();
    _event();
    super.onInit(); 
  }

  void _event() {
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        search();
      }
    });
  } 

  void search() async{
    cnt(Random().nextInt(30));
  }

  @override
  void onClose() {
    print("DeliveryPaymentController Close");
    super.onClose();
  }
}