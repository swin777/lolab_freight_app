import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/models/delivery/shipment.dart';
import 'package:lolab_freight_app/src/models/delivery/shipmentList.dart';
import 'package:lolab_freight_app/src/repository/deliveryRepository.dart';

class DeliveryController extends GetxController {
  static DeliveryController get to => Get.find();
  RxInt cnt = 3.obs;
  ScrollController scrollController = ScrollController();

  Rx<ShipmentList>? deliveryList = ShipmentList(shipments: []).obs;
  RxString cursor = "".obs;
  Rx<Shipment>? shipment = Shipment().obs;

  @override
  void onInit() {
    _event();
    super.onInit(); 
  }

  void _event() {
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        getDeliveryList();
      }
    });
  } 

  void getDeliveryList() async{
    try{
      ShipmentList? list = await DeliveryRepository.to.deliveryList();
      deliveryList?.value = list!;
      if(list!=null) {
        cursor(list.shipments![list.shipments!.length-1].orderId);
      }
    // ignore: empty_catches
    }catch(e){}
  }

  void getShipment(String orderId) async{
    try{
      shipment!.value = deliveryList!.value.shipments?.firstWhere((element) => element.orderId == orderId) as Shipment;
    }catch(e){
      print(e.toString());
    }
  }
}