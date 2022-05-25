import 'package:get/get.dart';
import 'package:lolab_freight_app/src/globalVariables.dart';
import 'package:lolab_freight_app/src/models/delivery/shipmentList.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeliveryRepository extends GetConnect {
  static DeliveryRepository get to => Get.find();
  late final SharedPreferences prefs;

  @override
  void onInit() {
    allowAutoSignedCert = true;
    httpClient.baseUrl = globalBaseUrl_epc; 
    httpClient.timeout = globalTimeout;
  }

  Future<ShipmentList?> deliveryList() async{
    String url = "/v1/delivery/shipments";
    final response = await get(url, headers: globalHeaders);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      if (response.body["shipments"] != null ) {
        return ShipmentList.fromJson(response.body);
      }
    }
  }
}