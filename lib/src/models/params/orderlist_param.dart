import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class OrderListParam {
  DateTime? yearMonthDay = DateTime.now();
  String? loadingArea;
  int? loadingRadius;
  String? unloadingArea;
  String? carModel;
  String? carType;
  List<String>? carOptions;
  int? minDeliveryDistance;
  int? maxDeliveryDistance;
  int? minDeliveryCharge;
  bool? excludeHandworkFreight;
  double? lat;
  double? lon;

  OrderListParam({
    this.yearMonthDay,
    this.loadingArea,
    this.loadingRadius,
    this.unloadingArea,
    this.carModel,
    this.carType,
    this.carOptions,
    this.minDeliveryDistance,
    this.maxDeliveryDistance,
    this.minDeliveryCharge,
    this.excludeHandworkFreight,
    this.lat,
    this.lon
  });

  String makrParameter(String? cursor, double lon, double lat){
    String params = "?yearMonthDay=${DateFormat('yyyy-MM-dd').format(yearMonthDay!)}";
    // params += loadingArea!=null ? ("&loadingArea="+loadingArea!) : "";
    // params += loadingRadius!=null ? ("&loadingArea="+loadingRadius!.toString()) : "";
    // params += unloadingArea!=null ? ("&loadingArea="+unloadingArea!) : "";
    // params += carModel!=null ? ("&loadingArea="+carModel!) : "";
    // params += carType!=null ? ("&loadingArea="+carType!) : "";
    // params += carOptions!=null ? ("&loadingArea="+carOptions.toString()) : "";
    // params += minDeliveryDistance!=null ? ("&loadingArea="+minDeliveryDistance.toString()) : "";
    // params += maxDeliveryDistance!=null ? ("&loadingArea="+maxDeliveryDistance.toString()) : "";
    // params += minDeliveryCharge!=null ? ("&loadingArea="+minDeliveryCharge.toString()) : "";
    // params += excludeHandworkFreight!=null ? ("&loadingArea="+excludeHandworkFreight.toString()) : "";
    params += ("&lon="+lon.toString());
    params += ("&lat="+lat.toString());
    if(cursor!=null && cursor!=""){
      params += "&cursor"+cursor;
    }
    return params;
  }
}
