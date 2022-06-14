import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/models/freight/orderList.dart';
import 'package:lolab_freight_app/src/models/params/orderlist_param.dart';
import 'package:lolab_freight_app/src/repository/freightRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FreightController extends GetxController {
  static FreightController get to => Get.find();
  ScrollController scrollController = ScrollController();
  late SharedPreferences prefs;

  Rx<OrderList>? orderList = OrderList(orders: []).obs;
  Rx<OrderListParam> orderListParam =
      OrderListParam(yearMonthDay: DateTime.now(), limit: 20).obs;
  RxString cursor = "".obs;
  RxBool calling = false.obs;

  RxBool calendarVisible = true.obs;
  RxList<Map<String, Object>> radiusList = [
    {"name": "10km주변", "value": 10000},
    {"name": "30km주변", "value": 30000},
    {"name": "의정부주변", "value": 50000},
  ].obs;
  RxList themaList = [].obs;

  /*
  {"name": "축차", "icon": Icon(Icons.add_box, size: 18)},
    {"name": "무진동", "icon": Icon(Icons.food_bank, size: 18)},
    {"name": "리프트", "icon": Icon(Icons.add_box, size: 18)},
    {"name": "냉장", "icon": Icon(Icons.add_box, size: 18)},
    {"name": "냉동", "icon": Icon(Icons.add_box, size: 18)},
  */

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    calendarVisible.value = prefs.getBool('isDateSort')!;
    // themaList.add({"name": "무진동", "icon": Icon(Icons.food_bank, size: 18)});
    //themaList.value = prefs.getStringList
    if (prefs.getStringList('carOption') != null) {
      themaList.value =
          prefs.getStringList('carOption')!.map((e) => {"name": e}).toList();
    }
    _event();
    ever(orderListParam, (_) {
      getOrderList();
    });
    super.onInit();
  }

  void _event() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        getOrderList(cursorRemove: false);
      }
    });
  }

  Future<void> getOrderList({bool cursorRemove = true}) async {
    calling.value = true;
    try {
      if (cursorRemove) {
        orderList?.value.orders?.clear();
        cursor.value = '';
      }
      OrderList? list = await FreigntRepository.to.orderList(
          orderListParam: orderListParam.value, cursor: cursor.value);
      calling.value = false;

      orderList?.update((val) => val!.orders!.addAll(list!.orders!));
      cursor(list!.orders![list.orders!.length - 1].orderId);
    } catch (e) {
      calling.value = false;
    }
  }

  @override
  void onClose() {
    print("FreightController delete");
    super.onClose();
  }
}
