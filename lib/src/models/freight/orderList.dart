import 'package:json_annotation/json_annotation.dart';

import 'order.dart';

part 'orderList.g.dart';

@JsonSerializable()
class OrderList {
  List<Order>? orders;

  OrderList({
    this.orders
  });

  factory OrderList.fromJson(Map<String, dynamic> json) =>
      _$OrderListFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListToJson(this);
}