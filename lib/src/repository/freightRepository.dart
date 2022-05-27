import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';
import 'package:lolab_freight_app/src/models/freight/orderList.dart';
import 'package:lolab_freight_app/src/models/params/orderlist_param.dart';
import 'package:lolab_freight_app/src/globalVariables.dart';

import 'package:shared_preferences/shared_preferences.dart';


class FreigntRepository extends GetConnect {
  static FreigntRepository get to => Get.find();
  late final SharedPreferences prefs;
  
  @override
  void onInit() {
    allowAutoSignedCert = true;
    httpClient.baseUrl = globalBaseUrl_epc; 
    httpClient.timeout = globalTimeout;
  }

  Future<OrderList?> orderList({OrderListParam? orderListParam, String? cursor}) async{
    print("orderList call");
    Position position;
    try{
      position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation, forceAndroidLocationManager: false);
    }catch(e){
      position = Position.fromMap({'longitude':127.02940905611158, 'latitude':37.47087751421342}); //KT연구개발센터
    }
    String url = "/v1/orders/freight${orderListParam!.makrParameter(cursor, position.longitude, position.latitude)}";
    final response = await get(url, headers: globalHeaders);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      if (response.body["orders"] != null ) {
        return OrderList.fromJson(response.body);
      }
    }
  }

  Future<Order?> orderDetail(String orderId) async{
    String url = "/v1/orders/freight/$orderId";
    final response = await get(url, headers: globalHeaders);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      if (response.body != null ) {
        return Order.fromJson(response.body);
      }
    }
  }
}