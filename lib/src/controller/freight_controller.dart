import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/models/freight/orderList.dart';
import 'package:lolab_freight_app/src/models/params/orderlist_param.dart';
import 'package:lolab_freight_app/src/repository/freightRepository.dart';

class FreightController extends GetxController {
  static FreightController get to => Get.find();
  ScrollController scrollController = ScrollController();

  Rx<OrderList>? orderList = OrderList(orders: []).obs;
  Rx<OrderListParam> orderListParam = OrderListParam(yearMonthDay: DateTime.now(),).obs;
  RxString cursor = "".obs;

  @override
  void onInit() {
    _event();
    ever(orderListParam, (_) {
      cursor("");
      getOrderList();
    });
    super.onInit(); 
  }

  void _event() {
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        getOrderList();
      }
    });
  } 

  void getOrderList() async{
    try{
      OrderList? list = await FreigntRepository.to.orderList(
        orderListParam: orderListParam.value,
        cursor: cursor.value
      );
      orderList?.value = list!;
      if(list!=null) {
        cursor(list.orders![list.orders!.length-1].orderId);
      }
    }catch(e){}
  }

  @override
  void onClose() {
    print("FreightController delete");
    super.onClose();
  }
}