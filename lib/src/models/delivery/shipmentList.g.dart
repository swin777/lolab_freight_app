// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipmentList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShipmentList _$DeliveryListFromJson(Map<String, dynamic> json) => ShipmentList(
      shipments: (json['shipments'] as List<dynamic>?)
          ?.map((e) => Shipment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeliveryListToJson(ShipmentList instance) =>
    <String, dynamic>{
      'shipments': instance.shipments,
    };