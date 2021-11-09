import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  RxInt cnt = 50.obs;
  Rx<DateTime> dt = DateTime.now().obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
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
}