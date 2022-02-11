import 'package:json_annotation/json_annotation.dart';

import 'shipment.dart';

part 'shipmentList.g.dart';

@JsonSerializable()
class ShipmentList {
  List<Shipment>? shipments;

  ShipmentList({
    this.shipments
  });

  factory ShipmentList.fromJson(Map<String, dynamic> json) =>
      _$DeliveryListFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryListToJson(this);
}