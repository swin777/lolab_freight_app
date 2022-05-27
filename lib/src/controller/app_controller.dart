import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/utils/message_popup.dart';
import 'package:lolab_freight_app/src/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum RouteName {Freight, Delivery, Payment, Etc} 

class AppController extends GetxController {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;
  RxString access_token = "".obs;
  RxString refresh_token = "".obs;
  List<int> bottomHistory = [0];

  void allInit() async{
    access_token.value = "";
    refresh_token.value = "";
    currentIndex.value = 0;
    bottomHistory = [0];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('carOwner');
    setGlobalHeaders({...globalHeaders, 'Authorization': ''});
  }

  void changePageIndex(int index, {bool hasGesture = true}) {
    currentIndex(index);
    if(!hasGesture) return;
    if(bottomHistory.contains(index)){
      bottomHistory.remove(index);
    }
    bottomHistory.add(index);
    //print(bottomHistory);
    // if(bottomHistory.last != index){
    //   bottomHistory.add(index);
    //   print(bottomHistory);
    // }
  }

  Future<bool> willPopScope() async{
    if(bottomHistory.length == 1){
      showDialog(context: Get.context!, builder: (_) => MessagePopup(title:'시스템', message:'종료하시겠습니까?', okCallback: (){exit(0);}));
      return true;
    }else{
      //print('goto before');
      bottomHistory.removeLast();
      changePageIndex(bottomHistory.last, hasGesture:false);
      //print(bottomHistory);
      return false;
    }
  }
} 