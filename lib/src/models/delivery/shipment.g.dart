// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shipment _$DeliveryFromJson(Map<String, dynamic> json) => Shipment(
      deliveryId: json['deliveryId'] as String?,
    )
      ..orderId = json['orderId'] as String?
      ..registerDateTime = json['registerDateTime'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(json['registerDateTime'] as int)
      ..loadingDateTime = json['loadingDateTime'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(json['loadingDateTime'] as int)
      ..unloadingDateTime = json['unloadingDateTime'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(json['unloadingDateTime'] as int)
      ..loadingCompletedDateTime = json['loadingCompletedDateTime'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(json['loadingCompletedDateTime'] as int)
      ..unloadingCompletedDateTime = json['unloadingCompletedDateTime'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(json['unloadingCompletedDateTime'] as int)
      ..deliveryStatus = json['deliveryStatus'] as String?
      ..loadingAddress = json['loadingAddress'] as String?
      ..loadingDetailAddress = json['loadingDetailAddress'] as String?
      ..unloadingAddress = json['unloadingAddress'] as String?
      ..unloadingDetailAddress = json['unloadingDetailAddress'] as String?
      ..unloadingZipCode = json['unloadingZipCode'] as String?
      ..loadingFreightMethod = json['loadingFreightMethod'] as String?
      ..isMoveToLoadingCar = json['isMoveToLoadingCar'] as bool?
      ..unloadingFreightMethod = json['unloadingFreightMethod'] as String?
      ..isMoveToUnloadingCar = json['isMoveToUnloadingCar'] as bool?
      ..otherFreightInfo = json['otherFreightInfo'] as String?
      ..carModel = json['carModel'] as String?
      ..carType = json['carType'] as String?
      ..carOptions = (json['carOptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..deliveryDistance = (json['deliveryDistance'] as num?)?.toDouble()
      ..deliveryCharge = json['deliveryCharge'] as int?
      ..loadingLon = (json['loadingLon'] as num?)?.toDouble()
      ..loadingLat = (json['loadingLat'] as num?)?.toDouble()
      ..unloadingLon = (json['unloadingLon'] as num?)?.toDouble()
      ..unloadingLat = (json['unloadingLat'] as num?)?.toDouble()
      ..packagingLists = (json['packagingLists'] as List<dynamic>?)
          ?.map((e) => PackagingList.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DeliveryToJson(Shipment instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'registerDateTime': instance.registerDateTime?.toIso8601String(),
      'loadingDateTime': instance.loadingDateTime?.toIso8601String(),
      'unloadingDateTime': instance.unloadingDateTime?.toIso8601String(),
      'loadingCompletedDateTime':
          instance.loadingCompletedDateTime?.toIso8601String(),
      'unloadingCompletedDateTime':
          instance.unloadingCompletedDateTime?.toIso8601String(),
      'deliveryStatus': instance.deliveryStatus,
      'loadingAddress': instance.loadingAddress,
      'loadingDetailAddress': instance.loadingDetailAddress,
      'unloadingAddress': instance.unloadingAddress,
      'unloadingDetailAddress': instance.unloadingDetailAddress,
      'unloadingZipCode': instance.unloadingZipCode,
      'loadingFreightMethod': instance.loadingFreightMethod,
      'isMoveToLoadingCar': instance.isMoveToLoadingCar,
      'unloadingFreightMethod': instance.unloadingFreightMethod,
      'isMoveToUnloadingCar': instance.isMoveToUnloadingCar,
      'otherFreightInfo': instance.otherFreightInfo,
      'carModel': instance.carModel,
      'carType': instance.carType,
      'carOptions': instance.carOptions,
      'deliveryDistance': instance.deliveryDistance,
      'deliveryCharge': instance.deliveryCharge,
      'loadingLon': instance.loadingLon,
      'loadingLat': instance.loadingLat,
      'unloadingLon': instance.unloadingLon,
      'unloadingLat': instance.unloadingLat,
      'packagingLists': instance.packagingLists,
      'deliveryId': instance.deliveryId,
    };