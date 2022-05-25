import 'package:json_annotation/json_annotation.dart';

part 'car_owner.g.dart';

@JsonSerializable()
class CarOwner{
  String? resultCode;	
  String? resultMsg;	
  String? access_token;	
  String? refresh_token;
  String? token_type;	
  int? expires_in;	
  String? carOwnerId;	
  String? carOwnerName;	
  String? carOwnerTelephoneNum;	
  String? carOwnerEmail;	
  String? carOwnerAddress1;	
  String? carOwnerAddress2;	
  String? carOwnerCorporateRegistrationName;	
  String? carOwnerCorporateName;	
  String? carOwnerNumber;	
  String? carOwnerMemberStatus;	
  String? carOwnerMemberStatusName;	
  String? carOwnerMemberType;	
  String? carOwnerMemberTypeName;	
  String? carOwnerBusinessType;	
  String? carOwnerBusinessTypeName;	
  String? carOwnerJoinApprovalStatus;	
  String? carOwnerJoinApprovalStatusName;	
  String? carOwnerType;	
  String? carOwnerTypeName;	
  int? carOwnerPasswordModifyDate;	

  CarOwner({
    this.resultCode,
    this.resultMsg,	
    this.access_token,	
    this.refresh_token,	
    this.token_type,	
    this.expires_in,	
    this.carOwnerId,	
    this.carOwnerName,	
    this.carOwnerTelephoneNum,	
    this.carOwnerEmail,	
    this.carOwnerAddress1,	
    this.carOwnerAddress2,	
    this.carOwnerCorporateRegistrationName,	
    this.carOwnerCorporateName,	
    this.carOwnerNumber,	
    this.carOwnerMemberStatus,	
    this.carOwnerMemberStatusName,	
    this.carOwnerMemberType,	
    this.carOwnerMemberTypeName,	
    this.carOwnerBusinessType,	
    this.carOwnerBusinessTypeName,	
    this.carOwnerJoinApprovalStatus,	
    this.carOwnerJoinApprovalStatusName,	
    this.carOwnerType,	
    this.carOwnerTypeName,	
    this.carOwnerPasswordModifyDate,	
  });

  factory CarOwner.fromJson(Map<String, dynamic> json) =>
      _$CarOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$CarOwnerToJson(this);
}