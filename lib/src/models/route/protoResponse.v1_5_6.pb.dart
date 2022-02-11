///
//  Generated code. Do not modify.
//  source: protoResponse.v1_5_6.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Routes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Routes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..pc<Route>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routes', $pb.PbFieldType.PM, subBuilder: Route.create)
    ..hasRequiredFields = false
  ;

  Routes._() : super();
  factory Routes({
    $core.Iterable<Route>? routes,
  }) {
    final _result = create();
    if (routes != null) {
      _result.routes.addAll(routes);
    }
    return _result;
  }
  factory Routes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Routes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Routes clone() => Routes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Routes copyWith(void Function(Routes) updates) => super.copyWith((message) => updates(message as Routes)) as Routes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Routes create() => Routes._();
  Routes createEmptyInstance() => create();
  static $pb.PbList<Routes> createRepeated() => $pb.PbList<Routes>();
  @$core.pragma('dart2js:noInline')
  static Routes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Routes>(create);
  static Routes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Route> get routes => $_getList(0);
}

class Route extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Route', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ver')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guideId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'distance', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalToll', $pb.PbFieldType.O3, protoName: 'totalToll')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rpType', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'predictionType', $pb.PbFieldType.O3)
    ..pc<Link>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'links', $pb.PbFieldType.PM, subBuilder: Link.create)
    ..pc<Link>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linksNoVertex', $pb.PbFieldType.PM, subBuilder: Link.create)
    ..pc<Tbt>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tbts', $pb.PbFieldType.PM, subBuilder: Tbt.create)
    ..pc<Lane>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lanes', $pb.PbFieldType.PM, subBuilder: Lane.create)
    ..aOM<RoadView>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadView', subBuilder: RoadView.create)
    ..pc<SoundData>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dirSounds', $pb.PbFieldType.PM, subBuilder: SoundData.create)
    ..pc<SoundData>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadSounds', $pb.PbFieldType.PM, subBuilder: SoundData.create)
    ..pc<HighwaySection>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highwaySections', $pb.PbFieldType.PM, subBuilder: HighwaySection.create)
    ..pc<TG>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tgs', $pb.PbFieldType.PM, subBuilder: TG.create)
    ..pc<EnergyPrice>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'energyPrices', $pb.PbFieldType.PM, subBuilder: EnergyPrice.create)
    ..pc<Safety>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'safeties', $pb.PbFieldType.PM, subBuilder: Safety.create)
    ..pc<EmergencySafety>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emergencySafeties', $pb.PbFieldType.PM, subBuilder: EmergencySafety.create)
    ..pc<Incident>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incidents', $pb.PbFieldType.PM, subBuilder: Incident.create)
    ..pc<RouteGuide>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeGuides', $pb.PbFieldType.PM, subBuilder: RouteGuide.create)
    ..pc<ControlLink>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'controlLinks', $pb.PbFieldType.PM, subBuilder: ControlLink.create)
    ..pc<Cctv>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cctvs', $pb.PbFieldType.PM, subBuilder: Cctv.create)
    ..aOM<SafetySummary>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'safetySummary', subBuilder: SafetySummary.create)
    ..aOM<RoadSummary>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadSummary', subBuilder: RoadSummary.create)
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorCode')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMsg')
    ..aInt64(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'datetime')
    ..aInt64(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqT')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeSessionId')
    ..hasRequiredFields = false
  ;

  Route._() : super();
  factory Route({
    $core.String? ver,
    $core.String? routeId,
    $core.String? guideId,
    $core.int? distance,
    $core.int? time,
    $core.int? totalToll,
    $core.int? rpType,
    $core.int? predictionType,
    $core.Iterable<Link>? links,
    $core.Iterable<Link>? linksNoVertex,
    $core.Iterable<Tbt>? tbts,
    $core.Iterable<Lane>? lanes,
    RoadView? roadView,
    $core.Iterable<SoundData>? dirSounds,
    $core.Iterable<SoundData>? roadSounds,
    $core.Iterable<HighwaySection>? highwaySections,
    $core.Iterable<TG>? tgs,
    $core.Iterable<EnergyPrice>? energyPrices,
    $core.Iterable<Safety>? safeties,
    $core.Iterable<EmergencySafety>? emergencySafeties,
    $core.Iterable<Incident>? incidents,
    $core.Iterable<RouteGuide>? routeGuides,
    $core.Iterable<ControlLink>? controlLinks,
    $core.Iterable<Cctv>? cctvs,
    SafetySummary? safetySummary,
    RoadSummary? roadSummary,
    $core.String? errorCode,
    $core.String? errorMsg,
    $fixnum.Int64? datetime,
    $fixnum.Int64? reqT,
    $core.String? routeSessionId,
  }) {
    final _result = create();
    if (ver != null) {
      _result.ver = ver;
    }
    if (routeId != null) {
      _result.routeId = routeId;
    }
    if (guideId != null) {
      _result.guideId = guideId;
    }
    if (distance != null) {
      _result.distance = distance;
    }
    if (time != null) {
      _result.time = time;
    }
    if (totalToll != null) {
      _result.totalToll = totalToll;
    }
    if (rpType != null) {
      _result.rpType = rpType;
    }
    if (predictionType != null) {
      _result.predictionType = predictionType;
    }
    if (links != null) {
      _result.links.addAll(links);
    }
    if (linksNoVertex != null) {
      _result.linksNoVertex.addAll(linksNoVertex);
    }
    if (tbts != null) {
      _result.tbts.addAll(tbts);
    }
    if (lanes != null) {
      _result.lanes.addAll(lanes);
    }
    if (roadView != null) {
      _result.roadView = roadView;
    }
    if (dirSounds != null) {
      _result.dirSounds.addAll(dirSounds);
    }
    if (roadSounds != null) {
      _result.roadSounds.addAll(roadSounds);
    }
    if (highwaySections != null) {
      _result.highwaySections.addAll(highwaySections);
    }
    if (tgs != null) {
      _result.tgs.addAll(tgs);
    }
    if (energyPrices != null) {
      _result.energyPrices.addAll(energyPrices);
    }
    if (safeties != null) {
      _result.safeties.addAll(safeties);
    }
    if (emergencySafeties != null) {
      _result.emergencySafeties.addAll(emergencySafeties);
    }
    if (incidents != null) {
      _result.incidents.addAll(incidents);
    }
    if (routeGuides != null) {
      _result.routeGuides.addAll(routeGuides);
    }
    if (controlLinks != null) {
      _result.controlLinks.addAll(controlLinks);
    }
    if (cctvs != null) {
      _result.cctvs.addAll(cctvs);
    }
    if (safetySummary != null) {
      _result.safetySummary = safetySummary;
    }
    if (roadSummary != null) {
      _result.roadSummary = roadSummary;
    }
    if (errorCode != null) {
      _result.errorCode = errorCode;
    }
    if (errorMsg != null) {
      _result.errorMsg = errorMsg;
    }
    if (datetime != null) {
      _result.datetime = datetime;
    }
    if (reqT != null) {
      _result.reqT = reqT;
    }
    if (routeSessionId != null) {
      _result.routeSessionId = routeSessionId;
    }
    return _result;
  }
  factory Route.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Route.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Route clone() => Route()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Route copyWith(void Function(Route) updates) => super.copyWith((message) => updates(message as Route)) as Route; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Route create() => Route._();
  Route createEmptyInstance() => create();
  static $pb.PbList<Route> createRepeated() => $pb.PbList<Route>();
  @$core.pragma('dart2js:noInline')
  static Route getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Route>(create);
  static Route? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ver => $_getSZ(0);
  @$pb.TagNumber(1)
  set ver($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVer() => $_has(0);
  @$pb.TagNumber(1)
  void clearVer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get routeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set routeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRouteId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRouteId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get guideId => $_getSZ(2);
  @$pb.TagNumber(3)
  set guideId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGuideId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGuideId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get distance => $_getIZ(3);
  @$pb.TagNumber(4)
  set distance($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDistance() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistance() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get time => $_getIZ(4);
  @$pb.TagNumber(5)
  set time($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalToll => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalToll($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalToll() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalToll() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get rpType => $_getIZ(6);
  @$pb.TagNumber(7)
  set rpType($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRpType() => $_has(6);
  @$pb.TagNumber(7)
  void clearRpType() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get predictionType => $_getIZ(7);
  @$pb.TagNumber(8)
  set predictionType($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPredictionType() => $_has(7);
  @$pb.TagNumber(8)
  void clearPredictionType() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<Link> get links => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<Link> get linksNoVertex => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<Tbt> get tbts => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<Lane> get lanes => $_getList(11);

  @$pb.TagNumber(13)
  RoadView get roadView => $_getN(12);
  @$pb.TagNumber(13)
  set roadView(RoadView v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasRoadView() => $_has(12);
  @$pb.TagNumber(13)
  void clearRoadView() => clearField(13);
  @$pb.TagNumber(13)
  RoadView ensureRoadView() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.List<SoundData> get dirSounds => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<SoundData> get roadSounds => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<HighwaySection> get highwaySections => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<TG> get tgs => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<EnergyPrice> get energyPrices => $_getList(17);

  @$pb.TagNumber(19)
  $core.List<Safety> get safeties => $_getList(18);

  @$pb.TagNumber(20)
  $core.List<EmergencySafety> get emergencySafeties => $_getList(19);

  @$pb.TagNumber(21)
  $core.List<Incident> get incidents => $_getList(20);

  @$pb.TagNumber(22)
  $core.List<RouteGuide> get routeGuides => $_getList(21);

  @$pb.TagNumber(23)
  $core.List<ControlLink> get controlLinks => $_getList(22);

  @$pb.TagNumber(24)
  $core.List<Cctv> get cctvs => $_getList(23);

  @$pb.TagNumber(25)
  SafetySummary get safetySummary => $_getN(24);
  @$pb.TagNumber(25)
  set safetySummary(SafetySummary v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasSafetySummary() => $_has(24);
  @$pb.TagNumber(25)
  void clearSafetySummary() => clearField(25);
  @$pb.TagNumber(25)
  SafetySummary ensureSafetySummary() => $_ensure(24);

  @$pb.TagNumber(26)
  RoadSummary get roadSummary => $_getN(25);
  @$pb.TagNumber(26)
  set roadSummary(RoadSummary v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasRoadSummary() => $_has(25);
  @$pb.TagNumber(26)
  void clearRoadSummary() => clearField(26);
  @$pb.TagNumber(26)
  RoadSummary ensureRoadSummary() => $_ensure(25);

  @$pb.TagNumber(27)
  $core.String get errorCode => $_getSZ(26);
  @$pb.TagNumber(27)
  set errorCode($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasErrorCode() => $_has(26);
  @$pb.TagNumber(27)
  void clearErrorCode() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get errorMsg => $_getSZ(27);
  @$pb.TagNumber(28)
  set errorMsg($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasErrorMsg() => $_has(27);
  @$pb.TagNumber(28)
  void clearErrorMsg() => clearField(28);

  @$pb.TagNumber(29)
  $fixnum.Int64 get datetime => $_getI64(28);
  @$pb.TagNumber(29)
  set datetime($fixnum.Int64 v) { $_setInt64(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasDatetime() => $_has(28);
  @$pb.TagNumber(29)
  void clearDatetime() => clearField(29);

  @$pb.TagNumber(30)
  $fixnum.Int64 get reqT => $_getI64(29);
  @$pb.TagNumber(30)
  set reqT($fixnum.Int64 v) { $_setInt64(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasReqT() => $_has(29);
  @$pb.TagNumber(30)
  void clearReqT() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get routeSessionId => $_getSZ(30);
  @$pb.TagNumber(31)
  set routeSessionId($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasRouteSessionId() => $_has(30);
  @$pb.TagNumber(31)
  void clearRouteSessionId() => clearField(31);
}

class RouteGuide extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RouteGuide', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkX', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkY', $pb.PbFieldType.OF)
    ..p<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIds', $pb.PbFieldType.P6)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RouteGuide._() : super();
  factory RouteGuide({
    $core.int? linkIndex,
    $core.int? type,
    $core.double? linkX,
    $core.double? linkY,
    $core.Iterable<$fixnum.Int64>? linkIds,
    $core.int? roadId,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (type != null) {
      _result.type = type;
    }
    if (linkX != null) {
      _result.linkX = linkX;
    }
    if (linkY != null) {
      _result.linkY = linkY;
    }
    if (linkIds != null) {
      _result.linkIds.addAll(linkIds);
    }
    if (roadId != null) {
      _result.roadId = roadId;
    }
    return _result;
  }
  factory RouteGuide.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouteGuide.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouteGuide clone() => RouteGuide()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouteGuide copyWith(void Function(RouteGuide) updates) => super.copyWith((message) => updates(message as RouteGuide)) as RouteGuide; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteGuide create() => RouteGuide._();
  RouteGuide createEmptyInstance() => create();
  static $pb.PbList<RouteGuide> createRepeated() => $pb.PbList<RouteGuide>();
  @$core.pragma('dart2js:noInline')
  static RouteGuide getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouteGuide>(create);
  static RouteGuide? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get linkX => $_getN(2);
  @$pb.TagNumber(3)
  set linkX($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLinkX() => $_has(2);
  @$pb.TagNumber(3)
  void clearLinkX() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get linkY => $_getN(3);
  @$pb.TagNumber(4)
  set linkY($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkY() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkY() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$fixnum.Int64> get linkIds => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get roadId => $_getIZ(5);
  @$pb.TagNumber(6)
  set roadId($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRoadId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoadId() => clearField(6);
}

class Incident extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Incident', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressNew')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locX', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locY', $pb.PbFieldType.OD)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trafficCode', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lane', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Incident._() : super();
  factory Incident({
    $core.int? linkIndex,
    $core.String? id,
    $core.int? code,
    $core.String? address,
    $core.String? addressNew,
    $core.double? locX,
    $core.double? locY,
    $core.int? trafficCode,
    $core.String? title,
    $fixnum.Int64? startDate,
    $fixnum.Int64? endDate,
    $core.int? lane,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (id != null) {
      _result.id = id;
    }
    if (code != null) {
      _result.code = code;
    }
    if (address != null) {
      _result.address = address;
    }
    if (addressNew != null) {
      _result.addressNew = addressNew;
    }
    if (locX != null) {
      _result.locX = locX;
    }
    if (locY != null) {
      _result.locY = locY;
    }
    if (trafficCode != null) {
      _result.trafficCode = trafficCode;
    }
    if (title != null) {
      _result.title = title;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    if (lane != null) {
      _result.lane = lane;
    }
    return _result;
  }
  factory Incident.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Incident.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Incident clone() => Incident()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Incident copyWith(void Function(Incident) updates) => super.copyWith((message) => updates(message as Incident)) as Incident; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Incident create() => Incident._();
  Incident createEmptyInstance() => create();
  static $pb.PbList<Incident> createRepeated() => $pb.PbList<Incident>();
  @$core.pragma('dart2js:noInline')
  static Incident getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Incident>(create);
  static Incident? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get code => $_getIZ(2);
  @$pb.TagNumber(3)
  set code($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get address => $_getSZ(3);
  @$pb.TagNumber(4)
  set address($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get addressNew => $_getSZ(4);
  @$pb.TagNumber(5)
  set addressNew($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddressNew() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddressNew() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get locX => $_getN(5);
  @$pb.TagNumber(6)
  set locX($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocX() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocX() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get locY => $_getN(6);
  @$pb.TagNumber(7)
  set locY($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLocY() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocY() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get trafficCode => $_getIZ(7);
  @$pb.TagNumber(8)
  set trafficCode($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTrafficCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearTrafficCode() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get title => $_getSZ(8);
  @$pb.TagNumber(9)
  set title($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTitle() => $_has(8);
  @$pb.TagNumber(9)
  void clearTitle() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get startDate => $_getI64(9);
  @$pb.TagNumber(10)
  set startDate($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStartDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearStartDate() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get endDate => $_getI64(10);
  @$pb.TagNumber(11)
  set endDate($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndDate() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndDate() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get lane => $_getIZ(11);
  @$pb.TagNumber(12)
  set lane($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLane() => $_has(11);
  @$pb.TagNumber(12)
  void clearLane() => clearField(12);
}

class Cctv extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Cctv', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkX', $pb.PbFieldType.OF)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkY', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Cctv._() : super();
  factory Cctv({
    $core.int? linkIndex,
    $core.int? id,
    $core.double? x,
    $core.double? y,
    $core.double? linkX,
    $core.double? linkY,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (id != null) {
      _result.id = id;
    }
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (linkX != null) {
      _result.linkX = linkX;
    }
    if (linkY != null) {
      _result.linkY = linkY;
    }
    return _result;
  }
  factory Cctv.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cctv.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cctv clone() => Cctv()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cctv copyWith(void Function(Cctv) updates) => super.copyWith((message) => updates(message as Cctv)) as Cctv; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cctv create() => Cctv._();
  Cctv createEmptyInstance() => create();
  static $pb.PbList<Cctv> createRepeated() => $pb.PbList<Cctv>();
  @$core.pragma('dart2js:noInline')
  static Cctv getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cctv>(create);
  static Cctv? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get x => $_getN(2);
  @$pb.TagNumber(3)
  set x($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX() => $_has(2);
  @$pb.TagNumber(3)
  void clearX() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get y => $_getN(3);
  @$pb.TagNumber(4)
  set y($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasY() => $_has(3);
  @$pb.TagNumber(4)
  void clearY() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get linkX => $_getN(4);
  @$pb.TagNumber(5)
  set linkX($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLinkX() => $_has(4);
  @$pb.TagNumber(5)
  void clearLinkX() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get linkY => $_getN(5);
  @$pb.TagNumber(6)
  set linkY($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLinkY() => $_has(5);
  @$pb.TagNumber(6)
  void clearLinkY() => clearField(6);
}

class EnergyPrice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EnergyPrice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brand', $pb.PbFieldType.O3)
    ..p<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'energySrcs', $pb.PbFieldType.P3)
    ..p<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prices', $pb.PbFieldType.P3)
    ..p<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tradeDatetime', $pb.PbFieldType.P6)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OF)
    ..p<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkX', $pb.PbFieldType.PF)
    ..p<$core.double>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkY', $pb.PbFieldType.PF)
    ..a<$core.double>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guideX', $pb.PbFieldType.OF)
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guideY', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  EnergyPrice._() : super();
  factory EnergyPrice({
    $core.int? linkIndex,
    $core.String? id,
    $core.String? name,
    $core.int? brand,
    $core.Iterable<$core.int>? energySrcs,
    $core.Iterable<$core.int>? prices,
    $core.Iterable<$fixnum.Int64>? tradeDatetime,
    $core.String? phone,
    $core.double? x,
    $core.double? y,
    $core.Iterable<$core.double>? linkX,
    $core.Iterable<$core.double>? linkY,
    $core.double? guideX,
    $core.double? guideY,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (brand != null) {
      _result.brand = brand;
    }
    if (energySrcs != null) {
      _result.energySrcs.addAll(energySrcs);
    }
    if (prices != null) {
      _result.prices.addAll(prices);
    }
    if (tradeDatetime != null) {
      _result.tradeDatetime.addAll(tradeDatetime);
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (linkX != null) {
      _result.linkX.addAll(linkX);
    }
    if (linkY != null) {
      _result.linkY.addAll(linkY);
    }
    if (guideX != null) {
      _result.guideX = guideX;
    }
    if (guideY != null) {
      _result.guideY = guideY;
    }
    return _result;
  }
  factory EnergyPrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnergyPrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnergyPrice clone() => EnergyPrice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnergyPrice copyWith(void Function(EnergyPrice) updates) => super.copyWith((message) => updates(message as EnergyPrice)) as EnergyPrice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EnergyPrice create() => EnergyPrice._();
  EnergyPrice createEmptyInstance() => create();
  static $pb.PbList<EnergyPrice> createRepeated() => $pb.PbList<EnergyPrice>();
  @$core.pragma('dart2js:noInline')
  static EnergyPrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnergyPrice>(create);
  static EnergyPrice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get brand => $_getIZ(3);
  @$pb.TagNumber(4)
  set brand($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBrand() => $_has(3);
  @$pb.TagNumber(4)
  void clearBrand() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get energySrcs => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get prices => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$fixnum.Int64> get tradeDatetime => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get phone => $_getSZ(7);
  @$pb.TagNumber(8)
  set phone($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPhone() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhone() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get x => $_getN(8);
  @$pb.TagNumber(9)
  set x($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasX() => $_has(8);
  @$pb.TagNumber(9)
  void clearX() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get y => $_getN(9);
  @$pb.TagNumber(10)
  set y($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasY() => $_has(9);
  @$pb.TagNumber(10)
  void clearY() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.double> get linkX => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$core.double> get linkY => $_getList(11);

  @$pb.TagNumber(13)
  $core.double get guideX => $_getN(12);
  @$pb.TagNumber(13)
  set guideX($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasGuideX() => $_has(12);
  @$pb.TagNumber(13)
  void clearGuideX() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get guideY => $_getN(13);
  @$pb.TagNumber(14)
  set guideY($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGuideY() => $_has(13);
  @$pb.TagNumber(14)
  void clearGuideY() => clearField(14);
}

class Link extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Link', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extType', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadType', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'length', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limitSpeed', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realSpeed', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limitWeight', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limitHeight', $pb.PbFieldType.O3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', $pb.PbFieldType.O3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'laneCount', $pb.PbFieldType.O3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tspInfo', $pb.PbFieldType.O3, protoName: 'tspInfo')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadName')
    ..pc<Node>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodes', $pb.PbFieldType.PM, subBuilder: Node.create)
    ..aInt64(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ksId')
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminCode', $pb.PbFieldType.O3)
    ..p<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dedicatedRoads', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  Link._() : super();
  factory Link({
    $fixnum.Int64? id,
    $core.int? type,
    $core.int? extType,
    $core.int? roadType,
    $core.int? length,
    $core.int? limitSpeed,
    $core.int? realSpeed,
    $core.int? limitWeight,
    $core.int? limitHeight,
    $core.int? time,
    $core.int? laneCount,
    $core.int? tspInfo,
    $core.String? roadName,
    $core.Iterable<Node>? nodes,
    $fixnum.Int64? ksId,
    $core.int? adminCode,
    $core.Iterable<$core.int>? dedicatedRoads,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (extType != null) {
      _result.extType = extType;
    }
    if (roadType != null) {
      _result.roadType = roadType;
    }
    if (length != null) {
      _result.length = length;
    }
    if (limitSpeed != null) {
      _result.limitSpeed = limitSpeed;
    }
    if (realSpeed != null) {
      _result.realSpeed = realSpeed;
    }
    if (limitWeight != null) {
      _result.limitWeight = limitWeight;
    }
    if (limitHeight != null) {
      _result.limitHeight = limitHeight;
    }
    if (time != null) {
      _result.time = time;
    }
    if (laneCount != null) {
      _result.laneCount = laneCount;
    }
    if (tspInfo != null) {
      _result.tspInfo = tspInfo;
    }
    if (roadName != null) {
      _result.roadName = roadName;
    }
    if (nodes != null) {
      _result.nodes.addAll(nodes);
    }
    if (ksId != null) {
      _result.ksId = ksId;
    }
    if (adminCode != null) {
      _result.adminCode = adminCode;
    }
    if (dedicatedRoads != null) {
      _result.dedicatedRoads.addAll(dedicatedRoads);
    }
    return _result;
  }
  factory Link.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Link.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Link clone() => Link()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Link copyWith(void Function(Link) updates) => super.copyWith((message) => updates(message as Link)) as Link; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Link create() => Link._();
  Link createEmptyInstance() => create();
  static $pb.PbList<Link> createRepeated() => $pb.PbList<Link>();
  @$core.pragma('dart2js:noInline')
  static Link getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Link>(create);
  static Link? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get extType => $_getIZ(2);
  @$pb.TagNumber(3)
  set extType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtType() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get roadType => $_getIZ(3);
  @$pb.TagNumber(4)
  set roadType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoadType() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoadType() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get length => $_getIZ(4);
  @$pb.TagNumber(5)
  set length($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearLength() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get limitSpeed => $_getIZ(5);
  @$pb.TagNumber(6)
  set limitSpeed($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLimitSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearLimitSpeed() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get realSpeed => $_getIZ(6);
  @$pb.TagNumber(7)
  set realSpeed($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRealSpeed() => $_has(6);
  @$pb.TagNumber(7)
  void clearRealSpeed() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get limitWeight => $_getIZ(7);
  @$pb.TagNumber(8)
  set limitWeight($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLimitWeight() => $_has(7);
  @$pb.TagNumber(8)
  void clearLimitWeight() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get limitHeight => $_getIZ(8);
  @$pb.TagNumber(9)
  set limitHeight($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLimitHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearLimitHeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get time => $_getIZ(9);
  @$pb.TagNumber(10)
  set time($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearTime() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get laneCount => $_getIZ(10);
  @$pb.TagNumber(11)
  set laneCount($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLaneCount() => $_has(10);
  @$pb.TagNumber(11)
  void clearLaneCount() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get tspInfo => $_getIZ(11);
  @$pb.TagNumber(12)
  set tspInfo($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTspInfo() => $_has(11);
  @$pb.TagNumber(12)
  void clearTspInfo() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get roadName => $_getSZ(12);
  @$pb.TagNumber(13)
  set roadName($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRoadName() => $_has(12);
  @$pb.TagNumber(13)
  void clearRoadName() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<Node> get nodes => $_getList(13);

  @$pb.TagNumber(15)
  $fixnum.Int64 get ksId => $_getI64(14);
  @$pb.TagNumber(15)
  set ksId($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasKsId() => $_has(14);
  @$pb.TagNumber(15)
  void clearKsId() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get adminCode => $_getIZ(15);
  @$pb.TagNumber(16)
  set adminCode($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAdminCode() => $_has(15);
  @$pb.TagNumber(16)
  void clearAdminCode() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.int> get dedicatedRoads => $_getList(16);
}

class Node extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Node', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Node._() : super();
  factory Node({
    $core.double? x,
    $core.double? y,
  }) {
    final _result = create();
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    return _result;
  }
  factory Node.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Node.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Node clone() => Node()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Node copyWith(void Function(Node) updates) => super.copyWith((message) => updates(message as Node)) as Node; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Node create() => Node._();
  Node createEmptyInstance() => create();
  static $pb.PbList<Node> createRepeated() => $pb.PbList<Node>();
  @$core.pragma('dart2js:noInline')
  static Node getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Node>(create);
  static Node? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class Tbt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Tbt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextDistance', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tbtName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shtDirName')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'midDirNames')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lngDirName')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tbtLinkX', $pb.PbFieldType.OF)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tbtLinkY', $pb.PbFieldType.OF)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tbtLinkPointDistance', $pb.PbFieldType.O3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wayout', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Tbt._() : super();
  factory Tbt({
    $core.int? linkIndex,
    $core.int? type,
    $core.int? nextDistance,
    $core.String? tbtName,
    $core.String? shtDirName,
    $core.Iterable<$core.String>? midDirNames,
    $core.String? lngDirName,
    $core.double? tbtLinkX,
    $core.double? tbtLinkY,
    $core.int? tbtLinkPointDistance,
    $core.int? wayout,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (type != null) {
      _result.type = type;
    }
    if (nextDistance != null) {
      _result.nextDistance = nextDistance;
    }
    if (tbtName != null) {
      _result.tbtName = tbtName;
    }
    if (shtDirName != null) {
      _result.shtDirName = shtDirName;
    }
    if (midDirNames != null) {
      _result.midDirNames.addAll(midDirNames);
    }
    if (lngDirName != null) {
      _result.lngDirName = lngDirName;
    }
    if (tbtLinkX != null) {
      _result.tbtLinkX = tbtLinkX;
    }
    if (tbtLinkY != null) {
      _result.tbtLinkY = tbtLinkY;
    }
    if (tbtLinkPointDistance != null) {
      _result.tbtLinkPointDistance = tbtLinkPointDistance;
    }
    if (wayout != null) {
      _result.wayout = wayout;
    }
    return _result;
  }
  factory Tbt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tbt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tbt clone() => Tbt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tbt copyWith(void Function(Tbt) updates) => super.copyWith((message) => updates(message as Tbt)) as Tbt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tbt create() => Tbt._();
  Tbt createEmptyInstance() => create();
  static $pb.PbList<Tbt> createRepeated() => $pb.PbList<Tbt>();
  @$core.pragma('dart2js:noInline')
  static Tbt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tbt>(create);
  static Tbt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nextDistance => $_getIZ(2);
  @$pb.TagNumber(3)
  set nextDistance($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNextDistance() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextDistance() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tbtName => $_getSZ(3);
  @$pb.TagNumber(4)
  set tbtName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTbtName() => $_has(3);
  @$pb.TagNumber(4)
  void clearTbtName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get shtDirName => $_getSZ(4);
  @$pb.TagNumber(5)
  set shtDirName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasShtDirName() => $_has(4);
  @$pb.TagNumber(5)
  void clearShtDirName() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get midDirNames => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get lngDirName => $_getSZ(6);
  @$pb.TagNumber(7)
  set lngDirName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLngDirName() => $_has(6);
  @$pb.TagNumber(7)
  void clearLngDirName() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get tbtLinkX => $_getN(7);
  @$pb.TagNumber(8)
  set tbtLinkX($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTbtLinkX() => $_has(7);
  @$pb.TagNumber(8)
  void clearTbtLinkX() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get tbtLinkY => $_getN(8);
  @$pb.TagNumber(9)
  set tbtLinkY($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTbtLinkY() => $_has(8);
  @$pb.TagNumber(9)
  void clearTbtLinkY() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get tbtLinkPointDistance => $_getIZ(9);
  @$pb.TagNumber(10)
  set tbtLinkPointDistance($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTbtLinkPointDistance() => $_has(9);
  @$pb.TagNumber(10)
  void clearTbtLinkPointDistance() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get wayout => $_getIZ(10);
  @$pb.TagNumber(11)
  set wayout($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasWayout() => $_has(10);
  @$pb.TagNumber(11)
  void clearWayout() => clearField(11);
}

class SoundData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SoundData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', $pb.PbFieldType.OF)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SoundData._() : super();
  factory SoundData({
    $core.int? linkIndex,
    $core.double? time,
    $core.int? size,
    $core.String? name,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (time != null) {
      _result.time = time;
    }
    if (size != null) {
      _result.size = size;
    }
    if (name != null) {
      _result.name = name;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory SoundData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoundData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoundData clone() => SoundData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoundData copyWith(void Function(SoundData) updates) => super.copyWith((message) => updates(message as SoundData)) as SoundData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SoundData create() => SoundData._();
  SoundData createEmptyInstance() => create();
  static $pb.PbList<SoundData> createRepeated() => $pb.PbList<SoundData>();
  @$core.pragma('dart2js:noInline')
  static SoundData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SoundData>(create);
  static SoundData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get time => $_getN(1);
  @$pb.TagNumber(2)
  set time($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get data => $_getN(4);
  @$pb.TagNumber(5)
  set data($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => clearField(5);
}

class Lane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Lane', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tbts', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'types', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Lane._() : super();
  factory Lane({
    $core.int? linkIndex,
    $core.List<$core.int>? tbts,
    $core.List<$core.int>? types,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (tbts != null) {
      _result.tbts = tbts;
    }
    if (types != null) {
      _result.types = types;
    }
    return _result;
  }
  factory Lane.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lane.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lane clone() => Lane()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lane copyWith(void Function(Lane) updates) => super.copyWith((message) => updates(message as Lane)) as Lane; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Lane create() => Lane._();
  Lane createEmptyInstance() => create();
  static $pb.PbList<Lane> createRepeated() => $pb.PbList<Lane>();
  @$core.pragma('dart2js:noInline')
  static Lane getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lane>(create);
  static Lane? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get tbts => $_getN(1);
  @$pb.TagNumber(2)
  set tbts($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTbts() => $_has(1);
  @$pb.TagNumber(2)
  void clearTbts() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get types => $_getN(2);
  @$pb.TagNumber(3)
  set types($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTypes() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypes() => clearField(3);
}

class RoadView extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoadView', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'urlPattern')
    ..pc<RoadViewUrl>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files', $pb.PbFieldType.PM, subBuilder: RoadViewUrl.create)
    ..hasRequiredFields = false
  ;

  RoadView._() : super();
  factory RoadView({
    $core.Iterable<$core.String>? imageType,
    $core.String? urlPattern,
    $core.Iterable<RoadViewUrl>? files,
  }) {
    final _result = create();
    if (imageType != null) {
      _result.imageType.addAll(imageType);
    }
    if (urlPattern != null) {
      _result.urlPattern = urlPattern;
    }
    if (files != null) {
      _result.files.addAll(files);
    }
    return _result;
  }
  factory RoadView.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadView.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadView clone() => RoadView()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadView copyWith(void Function(RoadView) updates) => super.copyWith((message) => updates(message as RoadView)) as RoadView; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoadView create() => RoadView._();
  RoadView createEmptyInstance() => create();
  static $pb.PbList<RoadView> createRepeated() => $pb.PbList<RoadView>();
  @$core.pragma('dart2js:noInline')
  static RoadView getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadView>(create);
  static RoadView? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get imageType => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get urlPattern => $_getSZ(1);
  @$pb.TagNumber(2)
  set urlPattern($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrlPattern() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrlPattern() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<RoadViewUrl> get files => $_getList(2);
}

class RoadViewUrl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoadViewUrl', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file')
    ..hasRequiredFields = false
  ;

  RoadViewUrl._() : super();
  factory RoadViewUrl({
    $core.int? linkIndex,
    $core.String? file,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (file != null) {
      _result.file = file;
    }
    return _result;
  }
  factory RoadViewUrl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadViewUrl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadViewUrl clone() => RoadViewUrl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadViewUrl copyWith(void Function(RoadViewUrl) updates) => super.copyWith((message) => updates(message as RoadViewUrl)) as RoadViewUrl; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoadViewUrl create() => RoadViewUrl._();
  RoadViewUrl createEmptyInstance() => create();
  static $pb.PbList<RoadViewUrl> createRepeated() => $pb.PbList<RoadViewUrl>();
  @$core.pragma('dart2js:noInline')
  static RoadViewUrl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadViewUrl>(create);
  static RoadViewUrl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get file => $_getSZ(1);
  @$pb.TagNumber(2)
  set file($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => clearField(2);
}

class HighwaySection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HighwaySection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..pc<Highway>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highways', $pb.PbFieldType.PM, subBuilder: Highway.create)
    ..hasRequiredFields = false
  ;

  HighwaySection._() : super();
  factory HighwaySection({
    $core.Iterable<Highway>? highways,
  }) {
    final _result = create();
    if (highways != null) {
      _result.highways.addAll(highways);
    }
    return _result;
  }
  factory HighwaySection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HighwaySection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HighwaySection clone() => HighwaySection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HighwaySection copyWith(void Function(HighwaySection) updates) => super.copyWith((message) => updates(message as HighwaySection)) as HighwaySection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HighwaySection create() => HighwaySection._();
  HighwaySection createEmptyInstance() => create();
  static $pb.PbList<HighwaySection> createRepeated() => $pb.PbList<HighwaySection>();
  @$core.pragma('dart2js:noInline')
  static HighwaySection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HighwaySection>(create);
  static HighwaySection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Highway> get highways => $_getList(0);
}

class Highway extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Highway', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<ServiceArea>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sa', subBuilder: ServiceArea.create)
    ..hasRequiredFields = false
  ;

  Highway._() : super();
  factory Highway({
    $core.int? linkIndex,
    $core.int? type,
    $core.String? name,
    ServiceArea? sa,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (type != null) {
      _result.type = type;
    }
    if (name != null) {
      _result.name = name;
    }
    if (sa != null) {
      _result.sa = sa;
    }
    return _result;
  }
  factory Highway.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Highway.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Highway clone() => Highway()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Highway copyWith(void Function(Highway) updates) => super.copyWith((message) => updates(message as Highway)) as Highway; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Highway create() => Highway._();
  Highway createEmptyInstance() => create();
  static $pb.PbList<Highway> createRepeated() => $pb.PbList<Highway>();
  @$core.pragma('dart2js:noInline')
  static Highway getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Highway>(create);
  static Highway? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  ServiceArea get sa => $_getN(3);
  @$pb.TagNumber(4)
  set sa(ServiceArea v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSa() => $_has(3);
  @$pb.TagNumber(4)
  void clearSa() => clearField(4);
  @$pb.TagNumber(4)
  ServiceArea ensureSa() => $_ensure(3);
}

class TG extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TG', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'laneCount', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hipassLanes', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'truckHipassLanes', $pb.PbFieldType.OY)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toll', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalToll', $pb.PbFieldType.O3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entrance')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pass')
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limitWeight', $pb.PbFieldType.O3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tgType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TG._() : super();
  factory TG({
    $core.int? id,
    $core.int? laneCount,
    $core.int? linkIndex,
    $core.List<$core.int>? hipassLanes,
    $core.List<$core.int>? truckHipassLanes,
    $core.int? toll,
    $core.int? totalToll,
    $core.String? name,
    $core.bool? entrance,
    $core.bool? pass,
    $core.int? limitWeight,
    $core.int? tgType,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (laneCount != null) {
      _result.laneCount = laneCount;
    }
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (hipassLanes != null) {
      _result.hipassLanes = hipassLanes;
    }
    if (truckHipassLanes != null) {
      _result.truckHipassLanes = truckHipassLanes;
    }
    if (toll != null) {
      _result.toll = toll;
    }
    if (totalToll != null) {
      _result.totalToll = totalToll;
    }
    if (name != null) {
      _result.name = name;
    }
    if (entrance != null) {
      _result.entrance = entrance;
    }
    if (pass != null) {
      _result.pass = pass;
    }
    if (limitWeight != null) {
      _result.limitWeight = limitWeight;
    }
    if (tgType != null) {
      _result.tgType = tgType;
    }
    return _result;
  }
  factory TG.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TG.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TG clone() => TG()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TG copyWith(void Function(TG) updates) => super.copyWith((message) => updates(message as TG)) as TG; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TG create() => TG._();
  TG createEmptyInstance() => create();
  static $pb.PbList<TG> createRepeated() => $pb.PbList<TG>();
  @$core.pragma('dart2js:noInline')
  static TG getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TG>(create);
  static TG? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get laneCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set laneCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLaneCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearLaneCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get linkIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set linkIndex($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLinkIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearLinkIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hipassLanes => $_getN(3);
  @$pb.TagNumber(4)
  set hipassLanes($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHipassLanes() => $_has(3);
  @$pb.TagNumber(4)
  void clearHipassLanes() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get truckHipassLanes => $_getN(4);
  @$pb.TagNumber(5)
  set truckHipassLanes($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTruckHipassLanes() => $_has(4);
  @$pb.TagNumber(5)
  void clearTruckHipassLanes() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get toll => $_getIZ(5);
  @$pb.TagNumber(6)
  set toll($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasToll() => $_has(5);
  @$pb.TagNumber(6)
  void clearToll() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get totalToll => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalToll($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalToll() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalToll() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get name => $_getSZ(7);
  @$pb.TagNumber(8)
  set name($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasName() => $_has(7);
  @$pb.TagNumber(8)
  void clearName() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get entrance => $_getBF(8);
  @$pb.TagNumber(9)
  set entrance($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEntrance() => $_has(8);
  @$pb.TagNumber(9)
  void clearEntrance() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get pass => $_getBF(9);
  @$pb.TagNumber(10)
  set pass($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPass() => $_has(9);
  @$pb.TagNumber(10)
  void clearPass() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get limitWeight => $_getIZ(10);
  @$pb.TagNumber(11)
  set limitWeight($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLimitWeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearLimitWeight() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get tgType => $_getIZ(11);
  @$pb.TagNumber(12)
  set tgType($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTgType() => $_has(11);
  @$pb.TagNumber(12)
  void clearTgType() => clearField(12);
}

class ServiceArea extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceArea', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'energyStationIds')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'energyBrands', $pb.PbFieldType.P3)
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'energySrcs', $pb.PbFieldType.P3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'atm')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cargo')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'oa')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'carCenter')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kidplay')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'martCode', $pb.PbFieldType.O3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mallCode', $pb.PbFieldType.O3)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..hasRequiredFields = false
  ;

  ServiceArea._() : super();
  factory ServiceArea({
    $core.Iterable<$core.String>? energyStationIds,
    $core.Iterable<$core.int>? energyBrands,
    $core.Iterable<$core.int>? energySrcs,
    $core.bool? atm,
    $core.bool? cargo,
    $core.bool? oa,
    $core.bool? carCenter,
    $core.bool? kidplay,
    $core.int? martCode,
    $core.int? mallCode,
    $core.String? phone,
  }) {
    final _result = create();
    if (energyStationIds != null) {
      _result.energyStationIds.addAll(energyStationIds);
    }
    if (energyBrands != null) {
      _result.energyBrands.addAll(energyBrands);
    }
    if (energySrcs != null) {
      _result.energySrcs.addAll(energySrcs);
    }
    if (atm != null) {
      _result.atm = atm;
    }
    if (cargo != null) {
      _result.cargo = cargo;
    }
    if (oa != null) {
      _result.oa = oa;
    }
    if (carCenter != null) {
      _result.carCenter = carCenter;
    }
    if (kidplay != null) {
      _result.kidplay = kidplay;
    }
    if (martCode != null) {
      _result.martCode = martCode;
    }
    if (mallCode != null) {
      _result.mallCode = mallCode;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    return _result;
  }
  factory ServiceArea.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceArea.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceArea clone() => ServiceArea()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceArea copyWith(void Function(ServiceArea) updates) => super.copyWith((message) => updates(message as ServiceArea)) as ServiceArea; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceArea create() => ServiceArea._();
  ServiceArea createEmptyInstance() => create();
  static $pb.PbList<ServiceArea> createRepeated() => $pb.PbList<ServiceArea>();
  @$core.pragma('dart2js:noInline')
  static ServiceArea getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceArea>(create);
  static ServiceArea? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get energyStationIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get energyBrands => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get energySrcs => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get atm => $_getBF(3);
  @$pb.TagNumber(4)
  set atm($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAtm() => $_has(3);
  @$pb.TagNumber(4)
  void clearAtm() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get cargo => $_getBF(4);
  @$pb.TagNumber(5)
  set cargo($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCargo() => $_has(4);
  @$pb.TagNumber(5)
  void clearCargo() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get oa => $_getBF(5);
  @$pb.TagNumber(6)
  set oa($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOa() => $_has(5);
  @$pb.TagNumber(6)
  void clearOa() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get carCenter => $_getBF(6);
  @$pb.TagNumber(7)
  set carCenter($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCarCenter() => $_has(6);
  @$pb.TagNumber(7)
  void clearCarCenter() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get kidplay => $_getBF(7);
  @$pb.TagNumber(8)
  set kidplay($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasKidplay() => $_has(7);
  @$pb.TagNumber(8)
  void clearKidplay() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get martCode => $_getIZ(8);
  @$pb.TagNumber(9)
  set martCode($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMartCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearMartCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get mallCode => $_getIZ(9);
  @$pb.TagNumber(10)
  set mallCode($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMallCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearMallCode() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get phone => $_getSZ(10);
  @$pb.TagNumber(11)
  set phone($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPhone() => $_has(10);
  @$pb.TagNumber(11)
  void clearPhone() => clearField(11);
}

class Safety extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Safety', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkX', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkY', $pb.PbFieldType.OF)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limitCode', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'policyId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Safety._() : super();
  factory Safety({
    $core.int? linkIndex,
    $core.int? type,
    $core.double? linkX,
    $core.double? linkY,
    $core.int? limitCode,
    $core.int? policyId,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (type != null) {
      _result.type = type;
    }
    if (linkX != null) {
      _result.linkX = linkX;
    }
    if (linkY != null) {
      _result.linkY = linkY;
    }
    if (limitCode != null) {
      _result.limitCode = limitCode;
    }
    if (policyId != null) {
      _result.policyId = policyId;
    }
    return _result;
  }
  factory Safety.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Safety.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Safety clone() => Safety()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Safety copyWith(void Function(Safety) updates) => super.copyWith((message) => updates(message as Safety)) as Safety; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Safety create() => Safety._();
  Safety createEmptyInstance() => create();
  static $pb.PbList<Safety> createRepeated() => $pb.PbList<Safety>();
  @$core.pragma('dart2js:noInline')
  static Safety getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Safety>(create);
  static Safety? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get linkX => $_getN(2);
  @$pb.TagNumber(3)
  set linkX($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLinkX() => $_has(2);
  @$pb.TagNumber(3)
  void clearLinkX() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get linkY => $_getN(3);
  @$pb.TagNumber(4)
  set linkY($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkY() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkY() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get limitCode => $_getIZ(4);
  @$pb.TagNumber(5)
  set limitCode($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLimitCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimitCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get policyId => $_getIZ(5);
  @$pb.TagNumber(6)
  set policyId($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPolicyId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPolicyId() => clearField(6);
}

class Toll extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Toll', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tollInfoId')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromTg', $pb.PbFieldType.P3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toTg', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'carType', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toll', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalToll', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'policy', $pb.PbFieldType.O3)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromTimestamp')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toTimestamp')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tgType', $pb.PbFieldType.O3)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeId')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeSessionId')
    ..hasRequiredFields = false
  ;

  Toll._() : super();
  factory Toll({
    $core.String? tollInfoId,
    $core.Iterable<$core.int>? fromTg,
    $core.int? toTg,
    $core.int? carType,
    $core.int? toll,
    $core.int? totalToll,
    $core.int? policy,
    $fixnum.Int64? fromTimestamp,
    $fixnum.Int64? toTimestamp,
    $core.int? tgType,
    $core.String? routeId,
    $core.String? routeSessionId,
  }) {
    final _result = create();
    if (tollInfoId != null) {
      _result.tollInfoId = tollInfoId;
    }
    if (fromTg != null) {
      _result.fromTg.addAll(fromTg);
    }
    if (toTg != null) {
      _result.toTg = toTg;
    }
    if (carType != null) {
      _result.carType = carType;
    }
    if (toll != null) {
      _result.toll = toll;
    }
    if (totalToll != null) {
      _result.totalToll = totalToll;
    }
    if (policy != null) {
      _result.policy = policy;
    }
    if (fromTimestamp != null) {
      _result.fromTimestamp = fromTimestamp;
    }
    if (toTimestamp != null) {
      _result.toTimestamp = toTimestamp;
    }
    if (tgType != null) {
      _result.tgType = tgType;
    }
    if (routeId != null) {
      _result.routeId = routeId;
    }
    if (routeSessionId != null) {
      _result.routeSessionId = routeSessionId;
    }
    return _result;
  }
  factory Toll.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Toll.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Toll clone() => Toll()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Toll copyWith(void Function(Toll) updates) => super.copyWith((message) => updates(message as Toll)) as Toll; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Toll create() => Toll._();
  Toll createEmptyInstance() => create();
  static $pb.PbList<Toll> createRepeated() => $pb.PbList<Toll>();
  @$core.pragma('dart2js:noInline')
  static Toll getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Toll>(create);
  static Toll? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tollInfoId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tollInfoId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTollInfoId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTollInfoId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get fromTg => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get toTg => $_getIZ(2);
  @$pb.TagNumber(3)
  set toTg($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToTg() => $_has(2);
  @$pb.TagNumber(3)
  void clearToTg() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get carType => $_getIZ(3);
  @$pb.TagNumber(4)
  set carType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCarType() => $_has(3);
  @$pb.TagNumber(4)
  void clearCarType() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get toll => $_getIZ(4);
  @$pb.TagNumber(5)
  set toll($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToll() => $_has(4);
  @$pb.TagNumber(5)
  void clearToll() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalToll => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalToll($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalToll() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalToll() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get policy => $_getIZ(6);
  @$pb.TagNumber(7)
  set policy($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPolicy() => $_has(6);
  @$pb.TagNumber(7)
  void clearPolicy() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get fromTimestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set fromTimestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFromTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearFromTimestamp() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get toTimestamp => $_getI64(8);
  @$pb.TagNumber(9)
  set toTimestamp($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasToTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearToTimestamp() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get tgType => $_getIZ(9);
  @$pb.TagNumber(10)
  set tgType($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTgType() => $_has(9);
  @$pb.TagNumber(10)
  void clearTgType() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get routeId => $_getSZ(10);
  @$pb.TagNumber(11)
  set routeId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRouteId() => $_has(10);
  @$pb.TagNumber(11)
  void clearRouteId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get routeSessionId => $_getSZ(11);
  @$pb.TagNumber(12)
  set routeSessionId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasRouteSessionId() => $_has(11);
  @$pb.TagNumber(12)
  void clearRouteSessionId() => clearField(12);
}

class SafetySummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SafetySummary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waterProtection')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restriction')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'narrow')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exhaustControl')
    ..hasRequiredFields = false
  ;

  SafetySummary._() : super();
  factory SafetySummary({
    $core.bool? height,
    $core.bool? weight,
    $core.bool? waterProtection,
    $core.bool? restriction,
    $core.bool? narrow,
    $core.bool? exhaustControl,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    if (waterProtection != null) {
      _result.waterProtection = waterProtection;
    }
    if (restriction != null) {
      _result.restriction = restriction;
    }
    if (narrow != null) {
      _result.narrow = narrow;
    }
    if (exhaustControl != null) {
      _result.exhaustControl = exhaustControl;
    }
    return _result;
  }
  factory SafetySummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SafetySummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SafetySummary clone() => SafetySummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SafetySummary copyWith(void Function(SafetySummary) updates) => super.copyWith((message) => updates(message as SafetySummary)) as SafetySummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SafetySummary create() => SafetySummary._();
  SafetySummary createEmptyInstance() => create();
  static $pb.PbList<SafetySummary> createRepeated() => $pb.PbList<SafetySummary>();
  @$core.pragma('dart2js:noInline')
  static SafetySummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SafetySummary>(create);
  static SafetySummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get height => $_getBF(0);
  @$pb.TagNumber(1)
  set height($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get weight => $_getBF(1);
  @$pb.TagNumber(2)
  set weight($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get waterProtection => $_getBF(2);
  @$pb.TagNumber(3)
  set waterProtection($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWaterProtection() => $_has(2);
  @$pb.TagNumber(3)
  void clearWaterProtection() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get restriction => $_getBF(3);
  @$pb.TagNumber(4)
  set restriction($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRestriction() => $_has(3);
  @$pb.TagNumber(4)
  void clearRestriction() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get narrow => $_getBF(4);
  @$pb.TagNumber(5)
  set narrow($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNarrow() => $_has(4);
  @$pb.TagNumber(5)
  void clearNarrow() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get exhaustControl => $_getBF(5);
  @$pb.TagNumber(6)
  set exhaustControl($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExhaustControl() => $_has(5);
  @$pb.TagNumber(6)
  void clearExhaustControl() => clearField(6);
}

class RoadSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoadSummary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..pc<RoadInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadInfos', $pb.PbFieldType.PM, subBuilder: RoadInfo.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hasFerry')
    ..hasRequiredFields = false
  ;

  RoadSummary._() : super();
  factory RoadSummary({
    $core.Iterable<RoadInfo>? roadInfos,
    $core.bool? hasFerry,
  }) {
    final _result = create();
    if (roadInfos != null) {
      _result.roadInfos.addAll(roadInfos);
    }
    if (hasFerry != null) {
      _result.hasFerry = hasFerry;
    }
    return _result;
  }
  factory RoadSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSummary clone() => RoadSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSummary copyWith(void Function(RoadSummary) updates) => super.copyWith((message) => updates(message as RoadSummary)) as RoadSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoadSummary create() => RoadSummary._();
  RoadSummary createEmptyInstance() => create();
  static $pb.PbList<RoadSummary> createRepeated() => $pb.PbList<RoadSummary>();
  @$core.pragma('dart2js:noInline')
  static RoadSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSummary>(create);
  static RoadSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RoadInfo> get roadInfos => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get hasFerry => $_getBF(1);
  @$pb.TagNumber(2)
  set hasFerry($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasFerry() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasFerry() => clearField(2);
}

class RoadInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoadInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadName')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadLevel', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadLength', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roadTime', $pb.PbFieldType.O3)
    ..p<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndexes', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  RoadInfo._() : super();
  factory RoadInfo({
    $core.String? roadName,
    $core.int? roadLevel,
    $core.int? roadLength,
    $core.int? roadTime,
    $core.Iterable<$core.int>? linkIndexes,
  }) {
    final _result = create();
    if (roadName != null) {
      _result.roadName = roadName;
    }
    if (roadLevel != null) {
      _result.roadLevel = roadLevel;
    }
    if (roadLength != null) {
      _result.roadLength = roadLength;
    }
    if (roadTime != null) {
      _result.roadTime = roadTime;
    }
    if (linkIndexes != null) {
      _result.linkIndexes.addAll(linkIndexes);
    }
    return _result;
  }
  factory RoadInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadInfo clone() => RoadInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadInfo copyWith(void Function(RoadInfo) updates) => super.copyWith((message) => updates(message as RoadInfo)) as RoadInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoadInfo create() => RoadInfo._();
  RoadInfo createEmptyInstance() => create();
  static $pb.PbList<RoadInfo> createRepeated() => $pb.PbList<RoadInfo>();
  @$core.pragma('dart2js:noInline')
  static RoadInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadInfo>(create);
  static RoadInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roadName => $_getSZ(0);
  @$pb.TagNumber(1)
  set roadName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoadName() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoadName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get roadLevel => $_getIZ(1);
  @$pb.TagNumber(2)
  set roadLevel($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadLevel() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get roadLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set roadLength($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadLength() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get roadTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set roadTime($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoadTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoadTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get linkIndexes => $_getList(4);
}

class ControlLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ControlLink', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tbtType', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'controlCode', $pb.PbFieldType.O3)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTimestamp')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTimestamp')
    ..hasRequiredFields = false
  ;

  ControlLink._() : super();
  factory ControlLink({
    $core.int? linkIndex,
    $core.int? tbtType,
    $core.int? controlCode,
    $fixnum.Int64? startTimestamp,
    $fixnum.Int64? endTimestamp,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (tbtType != null) {
      _result.tbtType = tbtType;
    }
    if (controlCode != null) {
      _result.controlCode = controlCode;
    }
    if (startTimestamp != null) {
      _result.startTimestamp = startTimestamp;
    }
    if (endTimestamp != null) {
      _result.endTimestamp = endTimestamp;
    }
    return _result;
  }
  factory ControlLink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ControlLink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ControlLink clone() => ControlLink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ControlLink copyWith(void Function(ControlLink) updates) => super.copyWith((message) => updates(message as ControlLink)) as ControlLink; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ControlLink create() => ControlLink._();
  ControlLink createEmptyInstance() => create();
  static $pb.PbList<ControlLink> createRepeated() => $pb.PbList<ControlLink>();
  @$core.pragma('dart2js:noInline')
  static ControlLink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ControlLink>(create);
  static ControlLink? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get tbtType => $_getIZ(1);
  @$pb.TagNumber(2)
  set tbtType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTbtType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTbtType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get controlCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set controlCode($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasControlCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearControlCode() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get startTimestamp => $_getI64(3);
  @$pb.TagNumber(4)
  set startTimestamp($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTimestamp() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get endTimestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set endTimestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTimestamp() => clearField(5);
}

class EmergencySafety extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmergencySafety', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.kt.navi.connector.http.navi.v1_5_6'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkX', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkY', $pb.PbFieldType.OF)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limitCode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  EmergencySafety._() : super();
  factory EmergencySafety({
    $core.int? linkIndex,
    $core.int? type,
    $core.double? linkX,
    $core.double? linkY,
    $core.int? limitCode,
  }) {
    final _result = create();
    if (linkIndex != null) {
      _result.linkIndex = linkIndex;
    }
    if (type != null) {
      _result.type = type;
    }
    if (linkX != null) {
      _result.linkX = linkX;
    }
    if (linkY != null) {
      _result.linkY = linkY;
    }
    if (limitCode != null) {
      _result.limitCode = limitCode;
    }
    return _result;
  }
  factory EmergencySafety.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmergencySafety.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmergencySafety clone() => EmergencySafety()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmergencySafety copyWith(void Function(EmergencySafety) updates) => super.copyWith((message) => updates(message as EmergencySafety)) as EmergencySafety; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmergencySafety create() => EmergencySafety._();
  EmergencySafety createEmptyInstance() => create();
  static $pb.PbList<EmergencySafety> createRepeated() => $pb.PbList<EmergencySafety>();
  @$core.pragma('dart2js:noInline')
  static EmergencySafety getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmergencySafety>(create);
  static EmergencySafety? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLinkIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get linkX => $_getN(2);
  @$pb.TagNumber(3)
  set linkX($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLinkX() => $_has(2);
  @$pb.TagNumber(3)
  void clearLinkX() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get linkY => $_getN(3);
  @$pb.TagNumber(4)
  set linkY($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLinkY() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkY() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get limitCode => $_getIZ(4);
  @$pb.TagNumber(5)
  set limitCode($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLimitCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimitCode() => clearField(5);
}

