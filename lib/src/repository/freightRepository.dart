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
    //httpClient.baseUrl = globalBaseUrl; 
    httpClient.timeout = globalTimeout;
  }

  Future<OrderList?> orderList({OrderListParam? orderListParam, String? cursor}) async{
    String url = "https://211.253.29.154/v1/orders/freight${orderListParam!.makrParameter(cursor)}";
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
    String url = "https://211.253.29.154/v1/orders/freight/$orderId";
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