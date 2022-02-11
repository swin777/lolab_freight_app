///
//  Generated code. Do not modify.
//  source: protoResponse.v1_5_6.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use routesDescriptor instead')
const Routes$json = const {
  '1': 'Routes',
  '2': const [
    const {'1': 'routes', '3': 1, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Route', '10': 'routes'},
  ],
};

/// Descriptor for `Routes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routesDescriptor = $convert.base64Decode('CgZSb3V0ZXMSRQoGcm91dGVzGAEgAygLMi0uY29tLmt0Lm5hdmkuY29ubmVjdG9yLmh0dHAubmF2aS52MV81XzYuUm91dGVSBnJvdXRlcw==');
@$core.Deprecated('Use routeDescriptor instead')
const Route$json = const {
  '1': 'Route',
  '2': const [
    const {'1': 'ver', '3': 1, '4': 1, '5': 9, '10': 'ver'},
    const {'1': 'route_id', '3': 2, '4': 1, '5': 9, '10': 'routeId'},
    const {'1': 'guide_id', '3': 3, '4': 1, '5': 9, '10': 'guideId'},
    const {'1': 'distance', '3': 4, '4': 1, '5': 5, '10': 'distance'},
    const {'1': 'time', '3': 5, '4': 1, '5': 5, '10': 'time'},
    const {'1': 'totalToll', '3': 6, '4': 1, '5': 5, '10': 'totalToll'},
    const {'1': 'rp_type', '3': 7, '4': 1, '5': 5, '10': 'rpType'},
    const {'1': 'prediction_type', '3': 8, '4': 1, '5': 5, '10': 'predictionType'},
    const {'1': 'links', '3': 9, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Link', '10': 'links'},
    const {'1': 'links_no_vertex', '3': 10, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Link', '10': 'linksNoVertex'},
    const {'1': 'tbts', '3': 11, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Tbt', '10': 'tbts'},
    const {'1': 'lanes', '3': 12, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Lane', '10': 'lanes'},
    const {'1': 'road_view', '3': 13, '4': 1, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.RoadView', '10': 'roadView'},
    const {'1': 'dir_sounds', '3': 14, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.SoundData', '10': 'dirSounds'},
    const {'1': 'road_sounds', '3': 15, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.SoundData', '10': 'roadSounds'},
    const {'1': 'highway_sections', '3': 16, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.HighwaySection', '10': 'highwaySections'},
    const {'1': 'tgs', '3': 17, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.TG', '10': 'tgs'},
    const {'1': 'energy_prices', '3': 18, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.EnergyPrice', '10': 'energyPrices'},
    const {'1': 'safeties', '3': 19, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Safety', '10': 'safeties'},
    const {'1': 'emergency_safeties', '3': 20, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.EmergencySafety', '10': 'emergencySafeties'},
    const {'1': 'incidents', '3': 21, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Incident', '10': 'incidents'},
    const {'1': 'route_guides', '3': 22, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.RouteGuide', '10': 'routeGuides'},
    const {'1': 'control_links', '3': 23, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.ControlLink', '10': 'controlLinks'},
    const {'1': 'cctvs', '3': 24, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Cctv', '10': 'cctvs'},
    const {'1': 'safety_summary', '3': 25, '4': 1, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.SafetySummary', '10': 'safetySummary'},
    const {'1': 'road_summary', '3': 26, '4': 1, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.RoadSummary', '10': 'roadSummary'},
    const {'1': 'error_code', '3': 27, '4': 1, '5': 9, '10': 'errorCode'},
    const {'1': 'error_msg', '3': 28, '4': 1, '5': 9, '10': 'errorMsg'},
    const {'1': 'datetime', '3': 29, '4': 1, '5': 3, '10': 'datetime'},
    const {'1': 'req_t', '3': 30, '4': 1, '5': 3, '10': 'reqT'},
    const {'1': 'route_session_id', '3': 31, '4': 1, '5': 9, '10': 'routeSessionId'},
  ],
};

/// Descriptor for `Route`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeDescriptor = $convert.base64Decode('CgVSb3V0ZRIQCgN2ZXIYASABKAlSA3ZlchIZCghyb3V0ZV9pZBgCIAEoCVIHcm91dGVJZBIZCghndWlkZV9pZBgDIAEoCVIHZ3VpZGVJZBIaCghkaXN0YW5jZRgEIAEoBVIIZGlzdGFuY2USEgoEdGltZRgFIAEoBVIEdGltZRIcCgl0b3RhbFRvbGwYBiABKAVSCXRvdGFsVG9sbBIXCgdycF90eXBlGAcgASgFUgZycFR5cGUSJwoPcHJlZGljdGlvbl90eXBlGAggASgFUg5wcmVkaWN0aW9uVHlwZRJCCgVsaW5rcxgJIAMoCzIsLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LkxpbmtSBWxpbmtzElQKD2xpbmtzX25vX3ZlcnRleBgKIAMoCzIsLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LkxpbmtSDWxpbmtzTm9WZXJ0ZXgSPwoEdGJ0cxgLIAMoCzIrLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LlRidFIEdGJ0cxJCCgVsYW5lcxgMIAMoCzIsLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LkxhbmVSBWxhbmVzEk0KCXJvYWRfdmlldxgNIAEoCzIwLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LlJvYWRWaWV3Ughyb2FkVmlldxJQCgpkaXJfc291bmRzGA4gAygLMjEuY29tLmt0Lm5hdmkuY29ubmVjdG9yLmh0dHAubmF2aS52MV81XzYuU291bmREYXRhUglkaXJTb3VuZHMSUgoLcm9hZF9zb3VuZHMYDyADKAsyMS5jb20ua3QubmF2aS5jb25uZWN0b3IuaHR0cC5uYXZpLnYxXzVfNi5Tb3VuZERhdGFSCnJvYWRTb3VuZHMSYQoQaGlnaHdheV9zZWN0aW9ucxgQIAMoCzI2LmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LkhpZ2h3YXlTZWN0aW9uUg9oaWdod2F5U2VjdGlvbnMSPAoDdGdzGBEgAygLMiouY29tLmt0Lm5hdmkuY29ubmVjdG9yLmh0dHAubmF2aS52MV81XzYuVEdSA3RncxJYCg1lbmVyZ3lfcHJpY2VzGBIgAygLMjMuY29tLmt0Lm5hdmkuY29ubmVjdG9yLmh0dHAubmF2aS52MV81XzYuRW5lcmd5UHJpY2VSDGVuZXJneVByaWNlcxJKCghzYWZldGllcxgTIAMoCzIuLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LlNhZmV0eVIIc2FmZXRpZXMSZgoSZW1lcmdlbmN5X3NhZmV0aWVzGBQgAygLMjcuY29tLmt0Lm5hdmkuY29ubmVjdG9yLmh0dHAubmF2aS52MV81XzYuRW1lcmdlbmN5U2FmZXR5UhFlbWVyZ2VuY3lTYWZldGllcxJOCglpbmNpZGVudHMYFSADKAsyMC5jb20ua3QubmF2aS5jb25uZWN0b3IuaHR0cC5uYXZpLnYxXzVfNi5JbmNpZGVudFIJaW5jaWRlbnRzElUKDHJvdXRlX2d1aWRlcxgWIAMoCzIyLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LlJvdXRlR3VpZGVSC3JvdXRlR3VpZGVzElgKDWNvbnRyb2xfbGlua3MYFyADKAsyMy5jb20ua3QubmF2aS5jb25uZWN0b3IuaHR0cC5uYXZpLnYxXzVfNi5Db250cm9sTGlua1IMY29udHJvbExpbmtzEkIKBWNjdHZzGBggAygLMiwuY29tLmt0Lm5hdmkuY29ubmVjdG9yLmh0dHAubmF2aS52MV81XzYuQ2N0dlIFY2N0dnMSXAoOc2FmZXR5X3N1bW1hcnkYGSABKAsyNS5jb20ua3QubmF2aS5jb25uZWN0b3IuaHR0cC5uYXZpLnYxXzVfNi5TYWZldHlTdW1tYXJ5Ug1zYWZldHlTdW1tYXJ5ElYKDHJvYWRfc3VtbWFyeRgaIAEoCzIzLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LlJvYWRTdW1tYXJ5Ugtyb2FkU3VtbWFyeRIdCgplcnJvcl9jb2RlGBsgASgJUgllcnJvckNvZGUSGwoJZXJyb3JfbXNnGBwgASgJUghlcnJvck1zZxIaCghkYXRldGltZRgdIAEoA1IIZGF0ZXRpbWUSEwoFcmVxX3QYHiABKANSBHJlcVQSKAoQcm91dGVfc2Vzc2lvbl9pZBgfIAEoCVIOcm91dGVTZXNzaW9uSWQ=');
@$core.Deprecated('Use routeGuideDescriptor instead')
const RouteGuide$json = const {
  '1': 'RouteGuide',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'link_x', '3': 3, '4': 1, '5': 2, '10': 'linkX'},
    const {'1': 'link_y', '3': 4, '4': 1, '5': 2, '10': 'linkY'},
    const {'1': 'link_ids', '3': 5, '4': 3, '5': 3, '10': 'linkIds'},
    const {'1': 'road_id', '3': 6, '4': 1, '5': 5, '10': 'roadId'},
  ],
};

/// Descriptor for `RouteGuide`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeGuideDescriptor = $convert.base64Decode('CgpSb3V0ZUd1aWRlEh0KCmxpbmtfaW5kZXgYASABKAVSCWxpbmtJbmRleBISCgR0eXBlGAIgASgFUgR0eXBlEhUKBmxpbmtfeBgDIAEoAlIFbGlua1gSFQoGbGlua195GAQgASgCUgVsaW5rWRIZCghsaW5rX2lkcxgFIAMoA1IHbGlua0lkcxIXCgdyb2FkX2lkGAYgASgFUgZyb2FkSWQ=');
@$core.Deprecated('Use incidentDescriptor instead')
const Incident$json = const {
  '1': 'Incident',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'code', '3': 3, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'address', '3': 4, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'address_new', '3': 5, '4': 1, '5': 9, '10': 'addressNew'},
    const {'1': 'loc_x', '3': 6, '4': 1, '5': 1, '10': 'locX'},
    const {'1': 'loc_y', '3': 7, '4': 1, '5': 1, '10': 'locY'},
    const {'1': 'traffic_code', '3': 8, '4': 1, '5': 5, '10': 'trafficCode'},
    const {'1': 'title', '3': 9, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'start_date', '3': 10, '4': 1, '5': 3, '10': 'startDate'},
    const {'1': 'end_date', '3': 11, '4': 1, '5': 3, '10': 'endDate'},
    const {'1': 'lane', '3': 12, '4': 1, '5': 5, '10': 'lane'},
  ],
};

/// Descriptor for `Incident`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List incidentDescriptor = $convert.base64Decode('CghJbmNpZGVudBIdCgpsaW5rX2luZGV4GAEgASgFUglsaW5rSW5kZXgSDgoCaWQYAiABKAlSAmlkEhIKBGNvZGUYAyABKAVSBGNvZGUSGAoHYWRkcmVzcxgEIAEoCVIHYWRkcmVzcxIfCgthZGRyZXNzX25ldxgFIAEoCVIKYWRkcmVzc05ldxITCgVsb2NfeBgGIAEoAVIEbG9jWBITCgVsb2NfeRgHIAEoAVIEbG9jWRIhCgx0cmFmZmljX2NvZGUYCCABKAVSC3RyYWZmaWNDb2RlEhQKBXRpdGxlGAkgASgJUgV0aXRsZRIdCgpzdGFydF9kYXRlGAogASgDUglzdGFydERhdGUSGQoIZW5kX2RhdGUYCyABKANSB2VuZERhdGUSEgoEbGFuZRgMIAEoBVIEbGFuZQ==');
@$core.Deprecated('Use cctvDescriptor instead')
const Cctv$json = const {
  '1': 'Cctv',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'x', '3': 3, '4': 1, '5': 2, '10': 'x'},
    const {'1': 'y', '3': 4, '4': 1, '5': 2, '10': 'y'},
    const {'1': 'link_x', '3': 5, '4': 1, '5': 2, '10': 'linkX'},
    const {'1': 'link_y', '3': 6, '4': 1, '5': 2, '10': 'linkY'},
  ],
};

/// Descriptor for `Cctv`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cctvDescriptor = $convert.base64Decode('CgRDY3R2Eh0KCmxpbmtfaW5kZXgYASABKAVSCWxpbmtJbmRleBIOCgJpZBgCIAEoBVICaWQSDAoBeBgDIAEoAlIBeBIMCgF5GAQgASgCUgF5EhUKBmxpbmtfeBgFIAEoAlIFbGlua1gSFQoGbGlua195GAYgASgCUgVsaW5rWQ==');
@$core.Deprecated('Use energyPriceDescriptor instead')
const EnergyPrice$json = const {
  '1': 'EnergyPrice',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'brand', '3': 4, '4': 1, '5': 5, '10': 'brand'},
    const {'1': 'energy_srcs', '3': 5, '4': 3, '5': 5, '10': 'energySrcs'},
    const {'1': 'prices', '3': 6, '4': 3, '5': 5, '10': 'prices'},
    const {'1': 'trade_datetime', '3': 7, '4': 3, '5': 3, '10': 'tradeDatetime'},
    const {'1': 'phone', '3': 8, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'x', '3': 9, '4': 1, '5': 2, '10': 'x'},
    const {'1': 'y', '3': 10, '4': 1, '5': 2, '10': 'y'},
    const {'1': 'link_x', '3': 11, '4': 3, '5': 2, '10': 'linkX'},
    const {'1': 'link_y', '3': 12, '4': 3, '5': 2, '10': 'linkY'},
    const {'1': 'guide_x', '3': 13, '4': 1, '5': 2, '10': 'guideX'},
    const {'1': 'guide_y', '3': 14, '4': 1, '5': 2, '10': 'guideY'},
  ],
};

/// Descriptor for `EnergyPrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List energyPriceDescriptor = $convert.base64Decode('CgtFbmVyZ3lQcmljZRIdCgpsaW5rX2luZGV4GAEgASgFUglsaW5rSW5kZXgSDgoCaWQYAiABKAlSAmlkEhIKBG5hbWUYAyABKAlSBG5hbWUSFAoFYnJhbmQYBCABKAVSBWJyYW5kEh8KC2VuZXJneV9zcmNzGAUgAygFUgplbmVyZ3lTcmNzEhYKBnByaWNlcxgGIAMoBVIGcHJpY2VzEiUKDnRyYWRlX2RhdGV0aW1lGAcgAygDUg10cmFkZURhdGV0aW1lEhQKBXBob25lGAggASgJUgVwaG9uZRIMCgF4GAkgASgCUgF4EgwKAXkYCiABKAJSAXkSFQoGbGlua194GAsgAygCUgVsaW5rWBIVCgZsaW5rX3kYDCADKAJSBWxpbmtZEhcKB2d1aWRlX3gYDSABKAJSBmd1aWRlWBIXCgdndWlkZV95GA4gASgCUgZndWlkZVk=');
@$core.Deprecated('Use linkDescriptor instead')
const Link$json = const {
  '1': 'Link',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'ext_type', '3': 3, '4': 1, '5': 5, '10': 'extType'},
    const {'1': 'road_type', '3': 4, '4': 1, '5': 5, '10': 'roadType'},
    const {'1': 'length', '3': 5, '4': 1, '5': 5, '10': 'length'},
    const {'1': 'limit_speed', '3': 6, '4': 1, '5': 5, '10': 'limitSpeed'},
    const {'1': 'real_speed', '3': 7, '4': 1, '5': 5, '10': 'realSpeed'},
    const {'1': 'limit_weight', '3': 8, '4': 1, '5': 5, '10': 'limitWeight'},
    const {'1': 'limit_height', '3': 9, '4': 1, '5': 5, '10': 'limitHeight'},
    const {'1': 'time', '3': 10, '4': 1, '5': 5, '10': 'time'},
    const {'1': 'lane_count', '3': 11, '4': 1, '5': 5, '10': 'laneCount'},
    const {'1': 'tspInfo', '3': 12, '4': 1, '5': 5, '10': 'tspInfo'},
    const {'1': 'road_name', '3': 13, '4': 1, '5': 9, '10': 'roadName'},
    const {'1': 'nodes', '3': 14, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Node', '10': 'nodes'},
    const {'1': 'ks_id', '3': 15, '4': 1, '5': 3, '10': 'ksId'},
    const {'1': 'admin_code', '3': 16, '4': 1, '5': 5, '10': 'adminCode'},
    const {'1': 'dedicated_roads', '3': 17, '4': 3, '5': 5, '10': 'dedicatedRoads'},
  ],
};

/// Descriptor for `Link`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkDescriptor = $convert.base64Decode('CgRMaW5rEg4KAmlkGAEgASgDUgJpZBISCgR0eXBlGAIgASgFUgR0eXBlEhkKCGV4dF90eXBlGAMgASgFUgdleHRUeXBlEhsKCXJvYWRfdHlwZRgEIAEoBVIIcm9hZFR5cGUSFgoGbGVuZ3RoGAUgASgFUgZsZW5ndGgSHwoLbGltaXRfc3BlZWQYBiABKAVSCmxpbWl0U3BlZWQSHQoKcmVhbF9zcGVlZBgHIAEoBVIJcmVhbFNwZWVkEiEKDGxpbWl0X3dlaWdodBgIIAEoBVILbGltaXRXZWlnaHQSIQoMbGltaXRfaGVpZ2h0GAkgASgFUgtsaW1pdEhlaWdodBISCgR0aW1lGAogASgFUgR0aW1lEh0KCmxhbmVfY291bnQYCyABKAVSCWxhbmVDb3VudBIYCgd0c3BJbmZvGAwgASgFUgd0c3BJbmZvEhsKCXJvYWRfbmFtZRgNIAEoCVIIcm9hZE5hbWUSQgoFbm9kZXMYDiADKAsyLC5jb20ua3QubmF2aS5jb25uZWN0b3IuaHR0cC5uYXZpLnYxXzVfNi5Ob2RlUgVub2RlcxITCgVrc19pZBgPIAEoA1IEa3NJZBIdCgphZG1pbl9jb2RlGBAgASgFUglhZG1pbkNvZGUSJwoPZGVkaWNhdGVkX3JvYWRzGBEgAygFUg5kZWRpY2F0ZWRSb2Fkcw==');
@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = const {
  '1': 'Node',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
  ],
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode('CgROb2RlEgwKAXgYASABKAJSAXgSDAoBeRgCIAEoAlIBeQ==');
@$core.Deprecated('Use tbtDescriptor instead')
const Tbt$json = const {
  '1': 'Tbt',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'next_distance', '3': 3, '4': 1, '5': 5, '10': 'nextDistance'},
    const {'1': 'tbt_name', '3': 4, '4': 1, '5': 9, '10': 'tbtName'},
    const {'1': 'sht_dir_name', '3': 5, '4': 1, '5': 9, '10': 'shtDirName'},
    const {'1': 'mid_dir_names', '3': 6, '4': 3, '5': 9, '10': 'midDirNames'},
    const {'1': 'lng_dir_name', '3': 7, '4': 1, '5': 9, '10': 'lngDirName'},
    const {'1': 'tbt_link_x', '3': 8, '4': 1, '5': 2, '10': 'tbtLinkX'},
    const {'1': 'tbt_link_y', '3': 9, '4': 1, '5': 2, '10': 'tbtLinkY'},
    const {'1': 'tbt_link_point_distance', '3': 10, '4': 1, '5': 5, '10': 'tbtLinkPointDistance'},
    const {'1': 'wayout', '3': 11, '4': 1, '5': 5, '10': 'wayout'},
  ],
};

/// Descriptor for `Tbt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tbtDescriptor = $convert.base64Decode('CgNUYnQSHQoKbGlua19pbmRleBgBIAEoBVIJbGlua0luZGV4EhIKBHR5cGUYAiABKAVSBHR5cGUSIwoNbmV4dF9kaXN0YW5jZRgDIAEoBVIMbmV4dERpc3RhbmNlEhkKCHRidF9uYW1lGAQgASgJUgd0YnROYW1lEiAKDHNodF9kaXJfbmFtZRgFIAEoCVIKc2h0RGlyTmFtZRIiCg1taWRfZGlyX25hbWVzGAYgAygJUgttaWREaXJOYW1lcxIgCgxsbmdfZGlyX25hbWUYByABKAlSCmxuZ0Rpck5hbWUSHAoKdGJ0X2xpbmtfeBgIIAEoAlIIdGJ0TGlua1gSHAoKdGJ0X2xpbmtfeRgJIAEoAlIIdGJ0TGlua1kSNQoXdGJ0X2xpbmtfcG9pbnRfZGlzdGFuY2UYCiABKAVSFHRidExpbmtQb2ludERpc3RhbmNlEhYKBndheW91dBgLIAEoBVIGd2F5b3V0');
@$core.Deprecated('Use soundDataDescriptor instead')
const SoundData$json = const {
  '1': 'SoundData',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'time', '3': 2, '4': 1, '5': 2, '10': 'time'},
    const {'1': 'size', '3': 3, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'data', '3': 5, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `SoundData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List soundDataDescriptor = $convert.base64Decode('CglTb3VuZERhdGESHQoKbGlua19pbmRleBgBIAEoBVIJbGlua0luZGV4EhIKBHRpbWUYAiABKAJSBHRpbWUSEgoEc2l6ZRgDIAEoBVIEc2l6ZRISCgRuYW1lGAQgASgJUgRuYW1lEhIKBGRhdGEYBSABKAxSBGRhdGE=');
@$core.Deprecated('Use laneDescriptor instead')
const Lane$json = const {
  '1': 'Lane',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'tbts', '3': 2, '4': 1, '5': 12, '10': 'tbts'},
    const {'1': 'types', '3': 3, '4': 1, '5': 12, '10': 'types'},
  ],
};

/// Descriptor for `Lane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List laneDescriptor = $convert.base64Decode('CgRMYW5lEh0KCmxpbmtfaW5kZXgYASABKAVSCWxpbmtJbmRleBISCgR0YnRzGAIgASgMUgR0YnRzEhQKBXR5cGVzGAMgASgMUgV0eXBlcw==');
@$core.Deprecated('Use roadViewDescriptor instead')
const RoadView$json = const {
  '1': 'RoadView',
  '2': const [
    const {'1': 'image_type', '3': 1, '4': 3, '5': 9, '10': 'imageType'},
    const {'1': 'url_pattern', '3': 2, '4': 1, '5': 9, '10': 'urlPattern'},
    const {'1': 'files', '3': 3, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.RoadViewUrl', '10': 'files'},
  ],
};

/// Descriptor for `RoadView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadViewDescriptor = $convert.base64Decode('CghSb2FkVmlldxIdCgppbWFnZV90eXBlGAEgAygJUglpbWFnZVR5cGUSHwoLdXJsX3BhdHRlcm4YAiABKAlSCnVybFBhdHRlcm4SSQoFZmlsZXMYAyADKAsyMy5jb20ua3QubmF2aS5jb25uZWN0b3IuaHR0cC5uYXZpLnYxXzVfNi5Sb2FkVmlld1VybFIFZmlsZXM=');
@$core.Deprecated('Use roadViewUrlDescriptor instead')
const RoadViewUrl$json = const {
  '1': 'RoadViewUrl',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'file', '3': 2, '4': 1, '5': 9, '10': 'file'},
  ],
};

/// Descriptor for `RoadViewUrl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadViewUrlDescriptor = $convert.base64Decode('CgtSb2FkVmlld1VybBIdCgpsaW5rX2luZGV4GAEgASgFUglsaW5rSW5kZXgSEgoEZmlsZRgCIAEoCVIEZmlsZQ==');
@$core.Deprecated('Use highwaySectionDescriptor instead')
const HighwaySection$json = const {
  '1': 'HighwaySection',
  '2': const [
    const {'1': 'highways', '3': 1, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.Highway', '10': 'highways'},
  ],
};

/// Descriptor for `HighwaySection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List highwaySectionDescriptor = $convert.base64Decode('Cg5IaWdod2F5U2VjdGlvbhJLCghoaWdod2F5cxgBIAMoCzIvLmNvbS5rdC5uYXZpLmNvbm5lY3Rvci5odHRwLm5hdmkudjFfNV82LkhpZ2h3YXlSCGhpZ2h3YXlz');
@$core.Deprecated('Use highwayDescriptor instead')
const Highway$json = const {
  '1': 'Highway',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'sa', '3': 4, '4': 1, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.ServiceArea', '10': 'sa'},
  ],
};

/// Descriptor for `Highway`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List highwayDescriptor = $convert.base64Decode('CgdIaWdod2F5Eh0KCmxpbmtfaW5kZXgYASABKAVSCWxpbmtJbmRleBISCgR0eXBlGAIgASgFUgR0eXBlEhIKBG5hbWUYAyABKAlSBG5hbWUSQwoCc2EYBCABKAsyMy5jb20ua3QubmF2aS5jb25uZWN0b3IuaHR0cC5uYXZpLnYxXzVfNi5TZXJ2aWNlQXJlYVICc2E=');
@$core.Deprecated('Use tGDescriptor instead')
const TG$json = const {
  '1': 'TG',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'lane_count', '3': 2, '4': 1, '5': 5, '10': 'laneCount'},
    const {'1': 'link_index', '3': 3, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'hipass_lanes', '3': 4, '4': 1, '5': 12, '10': 'hipassLanes'},
    const {'1': 'truck_hipass_lanes', '3': 5, '4': 1, '5': 12, '10': 'truckHipassLanes'},
    const {'1': 'toll', '3': 6, '4': 1, '5': 5, '10': 'toll'},
    const {'1': 'total_toll', '3': 7, '4': 1, '5': 5, '10': 'totalToll'},
    const {'1': 'name', '3': 8, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'entrance', '3': 9, '4': 1, '5': 8, '10': 'entrance'},
    const {'1': 'pass', '3': 10, '4': 1, '5': 8, '10': 'pass'},
    const {'1': 'limit_weight', '3': 11, '4': 1, '5': 5, '10': 'limitWeight'},
    const {'1': 'tg_type', '3': 12, '4': 1, '5': 5, '10': 'tgType'},
  ],
};

/// Descriptor for `TG`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tGDescriptor = $convert.base64Decode('CgJURxIOCgJpZBgBIAEoBVICaWQSHQoKbGFuZV9jb3VudBgCIAEoBVIJbGFuZUNvdW50Eh0KCmxpbmtfaW5kZXgYAyABKAVSCWxpbmtJbmRleBIhCgxoaXBhc3NfbGFuZXMYBCABKAxSC2hpcGFzc0xhbmVzEiwKEnRydWNrX2hpcGFzc19sYW5lcxgFIAEoDFIQdHJ1Y2tIaXBhc3NMYW5lcxISCgR0b2xsGAYgASgFUgR0b2xsEh0KCnRvdGFsX3RvbGwYByABKAVSCXRvdGFsVG9sbBISCgRuYW1lGAggASgJUgRuYW1lEhoKCGVudHJhbmNlGAkgASgIUghlbnRyYW5jZRISCgRwYXNzGAogASgIUgRwYXNzEiEKDGxpbWl0X3dlaWdodBgLIAEoBVILbGltaXRXZWlnaHQSFwoHdGdfdHlwZRgMIAEoBVIGdGdUeXBl');
@$core.Deprecated('Use serviceAreaDescriptor instead')
const ServiceArea$json = const {
  '1': 'ServiceArea',
  '2': const [
    const {'1': 'energy_station_ids', '3': 1, '4': 3, '5': 9, '10': 'energyStationIds'},
    const {'1': 'energy_brands', '3': 2, '4': 3, '5': 5, '10': 'energyBrands'},
    const {'1': 'energy_srcs', '3': 3, '4': 3, '5': 5, '10': 'energySrcs'},
    const {'1': 'atm', '3': 4, '4': 1, '5': 8, '10': 'atm'},
    const {'1': 'cargo', '3': 5, '4': 1, '5': 8, '10': 'cargo'},
    const {'1': 'oa', '3': 6, '4': 1, '5': 8, '10': 'oa'},
    const {'1': 'car_center', '3': 7, '4': 1, '5': 8, '10': 'carCenter'},
    const {'1': 'kidplay', '3': 8, '4': 1, '5': 8, '10': 'kidplay'},
    const {'1': 'mart_code', '3': 9, '4': 1, '5': 5, '10': 'martCode'},
    const {'1': 'mall_code', '3': 10, '4': 1, '5': 5, '10': 'mallCode'},
    const {'1': 'phone', '3': 11, '4': 1, '5': 9, '10': 'phone'},
  ],
};

/// Descriptor for `ServiceArea`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceAreaDescriptor = $convert.base64Decode('CgtTZXJ2aWNlQXJlYRIsChJlbmVyZ3lfc3RhdGlvbl9pZHMYASADKAlSEGVuZXJneVN0YXRpb25JZHMSIwoNZW5lcmd5X2JyYW5kcxgCIAMoBVIMZW5lcmd5QnJhbmRzEh8KC2VuZXJneV9zcmNzGAMgAygFUgplbmVyZ3lTcmNzEhAKA2F0bRgEIAEoCFIDYXRtEhQKBWNhcmdvGAUgASgIUgVjYXJnbxIOCgJvYRgGIAEoCFICb2ESHQoKY2FyX2NlbnRlchgHIAEoCFIJY2FyQ2VudGVyEhgKB2tpZHBsYXkYCCABKAhSB2tpZHBsYXkSGwoJbWFydF9jb2RlGAkgASgFUghtYXJ0Q29kZRIbCgltYWxsX2NvZGUYCiABKAVSCG1hbGxDb2RlEhQKBXBob25lGAsgASgJUgVwaG9uZQ==');
@$core.Deprecated('Use safetyDescriptor instead')
const Safety$json = const {
  '1': 'Safety',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'link_x', '3': 3, '4': 1, '5': 2, '10': 'linkX'},
    const {'1': 'link_y', '3': 4, '4': 1, '5': 2, '10': 'linkY'},
    const {'1': 'limit_code', '3': 5, '4': 1, '5': 5, '10': 'limitCode'},
    const {'1': 'policy_id', '3': 6, '4': 1, '5': 5, '10': 'policyId'},
  ],
};

/// Descriptor for `Safety`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List safetyDescriptor = $convert.base64Decode('CgZTYWZldHkSHQoKbGlua19pbmRleBgBIAEoBVIJbGlua0luZGV4EhIKBHR5cGUYAiABKAVSBHR5cGUSFQoGbGlua194GAMgASgCUgVsaW5rWBIVCgZsaW5rX3kYBCABKAJSBWxpbmtZEh0KCmxpbWl0X2NvZGUYBSABKAVSCWxpbWl0Q29kZRIbCglwb2xpY3lfaWQYBiABKAVSCHBvbGljeUlk');
@$core.Deprecated('Use tollDescriptor instead')
const Toll$json = const {
  '1': 'Toll',
  '2': const [
    const {'1': 'toll_info_id', '3': 1, '4': 1, '5': 9, '10': 'tollInfoId'},
    const {'1': 'from_tg', '3': 2, '4': 3, '5': 5, '10': 'fromTg'},
    const {'1': 'to_tg', '3': 3, '4': 1, '5': 5, '10': 'toTg'},
    const {'1': 'car_type', '3': 4, '4': 1, '5': 5, '10': 'carType'},
    const {'1': 'toll', '3': 5, '4': 1, '5': 5, '10': 'toll'},
    const {'1': 'total_toll', '3': 6, '4': 1, '5': 5, '10': 'totalToll'},
    const {'1': 'policy', '3': 7, '4': 1, '5': 5, '10': 'policy'},
    const {'1': 'from_timestamp', '3': 8, '4': 1, '5': 3, '10': 'fromTimestamp'},
    const {'1': 'to_timestamp', '3': 9, '4': 1, '5': 3, '10': 'toTimestamp'},
    const {'1': 'tg_type', '3': 10, '4': 1, '5': 5, '10': 'tgType'},
    const {'1': 'route_id', '3': 11, '4': 1, '5': 9, '10': 'routeId'},
    const {'1': 'route_session_id', '3': 12, '4': 1, '5': 9, '10': 'routeSessionId'},
  ],
};

/// Descriptor for `Toll`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tollDescriptor = $convert.base64Decode('CgRUb2xsEiAKDHRvbGxfaW5mb19pZBgBIAEoCVIKdG9sbEluZm9JZBIXCgdmcm9tX3RnGAIgAygFUgZmcm9tVGcSEwoFdG9fdGcYAyABKAVSBHRvVGcSGQoIY2FyX3R5cGUYBCABKAVSB2NhclR5cGUSEgoEdG9sbBgFIAEoBVIEdG9sbBIdCgp0b3RhbF90b2xsGAYgASgFUgl0b3RhbFRvbGwSFgoGcG9saWN5GAcgASgFUgZwb2xpY3kSJQoOZnJvbV90aW1lc3RhbXAYCCABKANSDWZyb21UaW1lc3RhbXASIQoMdG9fdGltZXN0YW1wGAkgASgDUgt0b1RpbWVzdGFtcBIXCgd0Z190eXBlGAogASgFUgZ0Z1R5cGUSGQoIcm91dGVfaWQYCyABKAlSB3JvdXRlSWQSKAoQcm91dGVfc2Vzc2lvbl9pZBgMIAEoCVIOcm91dGVTZXNzaW9uSWQ=');
@$core.Deprecated('Use safetySummaryDescriptor instead')
const SafetySummary$json = const {
  '1': 'SafetySummary',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 8, '10': 'height'},
    const {'1': 'weight', '3': 2, '4': 1, '5': 8, '10': 'weight'},
    const {'1': 'water_protection', '3': 3, '4': 1, '5': 8, '10': 'waterProtection'},
    const {'1': 'restriction', '3': 4, '4': 1, '5': 8, '10': 'restriction'},
    const {'1': 'narrow', '3': 5, '4': 1, '5': 8, '10': 'narrow'},
    const {'1': 'exhaust_control', '3': 6, '4': 1, '5': 8, '10': 'exhaustControl'},
  ],
};

/// Descriptor for `SafetySummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List safetySummaryDescriptor = $convert.base64Decode('Cg1TYWZldHlTdW1tYXJ5EhYKBmhlaWdodBgBIAEoCFIGaGVpZ2h0EhYKBndlaWdodBgCIAEoCFIGd2VpZ2h0EikKEHdhdGVyX3Byb3RlY3Rpb24YAyABKAhSD3dhdGVyUHJvdGVjdGlvbhIgCgtyZXN0cmljdGlvbhgEIAEoCFILcmVzdHJpY3Rpb24SFgoGbmFycm93GAUgASgIUgZuYXJyb3cSJwoPZXhoYXVzdF9jb250cm9sGAYgASgIUg5leGhhdXN0Q29udHJvbA==');
@$core.Deprecated('Use roadSummaryDescriptor instead')
const RoadSummary$json = const {
  '1': 'RoadSummary',
  '2': const [
    const {'1': 'road_infos', '3': 1, '4': 3, '5': 11, '6': '.com.kt.navi.connector.http.navi.v1_5_6.RoadInfo', '10': 'roadInfos'},
    const {'1': 'has_ferry', '3': 2, '4': 1, '5': 8, '10': 'hasFerry'},
  ],
};

/// Descriptor for `RoadSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSummaryDescriptor = $convert.base64Decode('CgtSb2FkU3VtbWFyeRJPCgpyb2FkX2luZm9zGAEgAygLMjAuY29tLmt0Lm5hdmkuY29ubmVjdG9yLmh0dHAubmF2aS52MV81XzYuUm9hZEluZm9SCXJvYWRJbmZvcxIbCgloYXNfZmVycnkYAiABKAhSCGhhc0ZlcnJ5');
@$core.Deprecated('Use roadInfoDescriptor instead')
const RoadInfo$json = const {
  '1': 'RoadInfo',
  '2': const [
    const {'1': 'road_name', '3': 1, '4': 1, '5': 9, '10': 'roadName'},
    const {'1': 'road_level', '3': 2, '4': 1, '5': 5, '10': 'roadLevel'},
    const {'1': 'road_length', '3': 3, '4': 1, '5': 5, '10': 'roadLength'},
    const {'1': 'road_time', '3': 4, '4': 1, '5': 5, '10': 'roadTime'},
    const {'1': 'link_indexes', '3': 5, '4': 3, '5': 5, '10': 'linkIndexes'},
  ],
};

/// Descriptor for `RoadInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadInfoDescriptor = $convert.base64Decode('CghSb2FkSW5mbxIbCglyb2FkX25hbWUYASABKAlSCHJvYWROYW1lEh0KCnJvYWRfbGV2ZWwYAiABKAVSCXJvYWRMZXZlbBIfCgtyb2FkX2xlbmd0aBgDIAEoBVIKcm9hZExlbmd0aBIbCglyb2FkX3RpbWUYBCABKAVSCHJvYWRUaW1lEiEKDGxpbmtfaW5kZXhlcxgFIAMoBVILbGlua0luZGV4ZXM=');
@$core.Deprecated('Use controlLinkDescriptor instead')
const ControlLink$json = const {
  '1': 'ControlLink',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'tbt_type', '3': 2, '4': 1, '5': 5, '10': 'tbtType'},
    const {'1': 'control_code', '3': 3, '4': 1, '5': 5, '10': 'controlCode'},
    const {'1': 'start_timestamp', '3': 4, '4': 1, '5': 3, '10': 'startTimestamp'},
    const {'1': 'end_timestamp', '3': 5, '4': 1, '5': 3, '10': 'endTimestamp'},
  ],
};

/// Descriptor for `ControlLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controlLinkDescriptor = $convert.base64Decode('CgtDb250cm9sTGluaxIdCgpsaW5rX2luZGV4GAEgASgFUglsaW5rSW5kZXgSGQoIdGJ0X3R5cGUYAiABKAVSB3RidFR5cGUSIQoMY29udHJvbF9jb2RlGAMgASgFUgtjb250cm9sQ29kZRInCg9zdGFydF90aW1lc3RhbXAYBCABKANSDnN0YXJ0VGltZXN0YW1wEiMKDWVuZF90aW1lc3RhbXAYBSABKANSDGVuZFRpbWVzdGFtcA==');
@$core.Deprecated('Use emergencySafetyDescriptor instead')
const EmergencySafety$json = const {
  '1': 'EmergencySafety',
  '2': const [
    const {'1': 'link_index', '3': 1, '4': 1, '5': 5, '10': 'linkIndex'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'link_x', '3': 3, '4': 1, '5': 2, '10': 'linkX'},
    const {'1': 'link_y', '3': 4, '4': 1, '5': 2, '10': 'linkY'},
    const {'1': 'limit_code', '3': 5, '4': 1, '5': 5, '10': 'limitCode'},
  ],
};

/// Descriptor for `EmergencySafety`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emergencySafetyDescriptor = $convert.base64Decode('Cg9FbWVyZ2VuY3lTYWZldHkSHQoKbGlua19pbmRleBgBIAEoBVIJbGlua0luZGV4EhIKBHR5cGUYAiABKAVSBHR5cGUSFQoGbGlua194GAMgASgCUgVsaW5rWBIVCgZsaW5rX3kYBCABKAJSBWxpbmtZEh0KCmxpbWl0X2NvZGUYBSABKAVSCWxpbWl0Q29kZQ==');
