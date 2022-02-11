import 'package:json_annotation/json_annotation.dart';

part 'codeInfo.g.dart';

class Code {
  String value;
  Map<String, String> _codeInfo = {};
  Code(this.value);

  set code(Map<String, String> code) {
    _codeInfo = code;
  }

  @override
  String toString(){
    return _codeInfo[value]!=null ? _codeInfo[value].toString() : "";
  }
}

@JsonSerializable()
class PACKAGING_TYPE extends Code{
  PACKAGING_TYPE(value):super(value){
    code = {
      "box":"포장박스",
      "palette":"팔렛트"
    };
  }

  factory PACKAGING_TYPE.fromJson(Map<String, dynamic> json) =>
    _$PACKAGING_TYPEFromJson(json);

  Map<String, dynamic> toJson() => _$PACKAGING_TYPEToJson(this);
}

@JsonSerializable()
class DELIVERY_STATUS extends Code{
  DELIVERY_STATUS(value):super(value){
    code = {
      "deliveryRequested":"배송요청",
      "dispatchCompleted":"배차완료",
      "loadingCompleted":"상차완료",
      "unloadingCompleted":"하차완료"
    };
  }
  factory DELIVERY_STATUS.fromJson(Map<String, dynamic> json) =>
    _$DELIVERY_STATUSFromJson(json);

  Map<String, dynamic> toJson() => _$DELIVERY_STATUSToJson(this);
}

@JsonSerializable()
class FREIGHT_METHOD extends Code{
  FREIGHT_METHOD(value):super(value){
    code = {
      "forklift":"지게차",
      "handwork":"수작업"
    };
  }

  factory FREIGHT_METHOD.fromJson(Map<String, dynamic> json) =>
    _$FREIGHT_METHODFromJson(json);

  Map<String, dynamic> toJson() => _$FREIGHT_METHODToJson(this);
}

@JsonSerializable()
class FREIGHT_SIZE extends Code{
  FREIGHT_SIZE(value):super(value){
    code = {
      "big":"대",
      "medium":"중",
      "small":"소",
      "null":""
    };
  }

  factory FREIGHT_SIZE.fromJson(Map<String, dynamic> json) =>
    _$FREIGHT_SIZEFromJson(json);

  Map<String, dynamic> toJson() => _$FREIGHT_SIZEToJson(this);
}

@JsonSerializable()
class CAR_MODE extends Code{
  CAR_MODE(value):super(value){
    code = {
      "damas":"다마스",
      "labo":"라보",
      "oneT":"1t",
      "twoDotFiveT":"2.5t",
      "threeDotFiveT":"3.5t",
      "fiveT":"5t",
      "eightT":"8t",
      "elevT":"11t",
      "fifteenT":"15t",
      "eighteenT":"18t",
      "twentyFiveT":"25t"
    };
  }

  factory CAR_MODE.fromJson(Map<String, dynamic> json) =>
    _$CAR_MODEFromJson(json);

  Map<String, dynamic> toJson() => _$CAR_MODEToJson(this);
}

@JsonSerializable()
class CAR_TYPE extends Code{
  CAR_TYPE(value):super(value){
    code = {
      "cargo":"카고",
      "holo":"호로",
      "truck":"탑",
      "refrigerationTruck":"냉동탑",
      "wingbody":"윙바디"
    };
  }

  factory CAR_TYPE.fromJson(Map<String, dynamic> json) =>
    _$CAR_TYPEFromJson(json);

  Map<String, dynamic> toJson() => _$CAR_TYPEToJson(this);
}

@JsonSerializable()
class CAR_OPTION extends Code{
  CAR_OPTION(value):super(value){
    code = {
      "highTop":"하이탑",
      "lift":"리프트",
      "superLongAxis":"초장축",
      "wide":"광폭",
      "heater":"온풍기"
    };
  }

  factory CAR_OPTION.fromJson(Map<String, dynamic> json) =>
    _$CAR_OPTIONFromJson(json);

  Map<String, dynamic> toJson() => _$CAR_OPTIONToJson(this);
}

@JsonSerializable()
class FREIGHT_TYPE extends Code{
  FREIGHT_TYPE(value):super(value){
    code = {
      "food":"식품",
      "agricultural":"농산물",
      "livestock":"축산물",
      "fisheries":"수산물",
      "industrial":"공산품",
      "medicine":"의약품",
      "other":"기타"
    };
  }

  factory FREIGHT_TYPE.fromJson(Map<String, dynamic> json) =>
    _$FREIGHT_TYPEFromJson(json);

  Map<String, dynamic> toJson() => _$FREIGHT_TYPEToJson(this);
}

@JsonSerializable()
class DELIVERY_TEMPERATURE extends Code{
  DELIVERY_TEMPERATURE(value):super(value){
    code = {
      "roomTemp":"상온",
      "over15Degree":"영상15C이상(온풍기 차량)",
      "cole":"냉장(0~5C 이하)",
      "freeze":"냉동(영하18C 이하)"
    };
  }

  factory DELIVERY_TEMPERATURE.fromJson(Map<String, dynamic> json) =>
    _$DELIVERY_TEMPERATUREFromJson(json);

  Map<String, dynamic> toJson() => _$DELIVERY_TEMPERATUREToJson(this);
}