import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  static PaymentController get to => Get.find();
  RxInt cnt = 20.obs;
  RxInt dayCnt = 5.obs;
  Rx<DateTime> dt = DateTime.now().obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    print("PaymentController Init");
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
    print("PaymentController Close");
    super.onClose();
  }
}