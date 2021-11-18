import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FreightController extends GetxController {
  static FreightController get to => Get.find();
  RxInt cnt = 50.obs;
  Rx<DateTime> dt = DateTime.now().obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    print("FreightController Init");
    _videoLoad();
    _event();
    super.onInit(); 
  }

  void _event() {
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        _videoLoad();
      }
    });
  } 

  void _videoLoad() async{
    
  }

  @override
  void onClose() {
    print("FreightController Close");
    super.onClose();
  }
}