import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryController extends GetxController {
  static DeliveryController get to => Get.find();
  RxInt cnt = 3.obs;
  Rx<DateTime> dt = DateTime.now().obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    print("DeliveryController Init");
    videoLoad();
    _event();
    super.onInit(); 
  }

  void _event() {
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        videoLoad();
      }
    });
  } 

  void videoLoad() async{
    
    // int c = Random().nextInt(10);
    // print("_videoLoad : $c");
    // cnt(c);
  }

  @override
  void onClose() {
    print("DeliveryController Close");
    super.onClose();
  }
}