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
  RxBool calling = false.obs;

  @override
  void onInit() {
    _event();
    ever(orderListParam, (_) {
      getOrderList();
    });
    super.onInit(); 
  }

  void _event() {
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        getOrderList(cursorRemove:false);
      }
    });
  } 

  Future<void> getOrderList({bool cursorRemove = true}) async{
    calling.value = true;
    try{
      if(cursorRemove){
        orderList?.value.orders?.clear();
        cursor.value = '';
      }
      OrderList? list = await FreigntRepository.to.orderList(
        orderListParam: orderListParam.value,
        cursor: cursor.value
      );
      calling.value = false;
      //if(list!.orders!.length > 0 && list.orders![list.orders!.length-1].orderId == cursor.value){
      if(list!.orders!.isNotEmpty && list.orders![list.orders!.length-1].orderId == cursor.value){
        return;
      }
      orderList?.update((val) => val!.orders!.addAll(list.orders!));
      cursor(list.orders![list.orders!.length-1].orderId);
    }catch(e){
      calling.value = false;
    }
  }

  @override
  void onClose() {
    print("FreightController delete");
    super.onClose();
  }
}