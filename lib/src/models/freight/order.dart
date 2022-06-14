import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  String? orderId;
  DateTime? registerDateTime;
  DateTime? loadingDateTime;
  DateTime? unloadingDateTime;
  DateTime? loadingCompletedDateTime;
  DateTime? unloadingCompletedDateTime;
  String? deliveryStatus;
  String? loadingAddress;
  String? loadingDetailAddress;
  String? unloadingAddress;
  String? unloadingDetailAddress;
  String? unloadingZipCode;
  String? loadingFreightMethod;
  bool? isMoveToLoadingCar;
  String? unloadingFreightMethod;
  bool? isMoveToUnloadingCar;
  String? otherFreightInfo;
  String? carModel;
  String? carType;
  List<String>? carOptions;
  double? deliveryDistance;
  int? deliveryCharge;
  double? loadingLon;
  double? loadingLat;
  double? unloadingLon;
  double? unloadingLat;
  List<PackagingList>? packagingLists;

  Order(
      {this.orderId,
      this.registerDateTime,
      this.loadingDateTime,
      this.unloadingDateTime,
      this.loadingCompletedDateTime,
      this.unloadingCompletedDateTime,
      this.loadingAddress,
      this.loadingDetailAddress,
      this.unloadingAddress,
      this.unloadingDetailAddress,
      this.unloadingZipCode,
      this.loadingFreightMethod,
      this.isMoveToLoadingCar,
      this.unloadingFreightMethod,
      this.isMoveToUnloadingCar,
      this.otherFreightInfo,
      this.carModel,
      this.carType,
      this.carOptions,
      this.deliveryDistance,
      this.deliveryCharge,
      this.loadingLon,
      this.loadingLat,
      this.unloadingLon,
      this.unloadingLat,
      this.packagingLists});

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class PackagingList {
  String? packagingType;
  String? freightLoadingSize;
  String? freightLoadingCount;

  PackagingList(
      {this.packagingType, this.freightLoadingSize, this.freightLoadingCount});

  factory PackagingList.fromJson(Map<String, dynamic> json) =>
      _$PackagingListFromJson(json);

  Map<String, dynamic> toJson() => _$PackagingListToJson(this);
}
