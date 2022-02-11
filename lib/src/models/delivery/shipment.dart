import 'package:json_annotation/json_annotation.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';

part 'shipment.g.dart';

@JsonSerializable()
class Shipment extends Order{
  String? deliveryId;

  Shipment({this.deliveryId}):super();
  factory Shipment.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryToJson(this);
}