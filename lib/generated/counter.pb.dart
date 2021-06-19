///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'counter.pbenum.dart';

export 'counter.pbenum.dart';

class CounterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterRequest', createEmptyInstance: create)
    ..e<CounterRequest_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CounterRequest_Type.Increase, valueOf: CounterRequest_Type.valueOf, enumValues: CounterRequest_Type.values)
    ..hasRequiredFields = false
  ;

  CounterRequest._() : super();
  factory CounterRequest({
    CounterRequest_Type? type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory CounterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterRequest clone() => CounterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterRequest copyWith(void Function(CounterRequest) updates) => super.copyWith((message) => updates(message as CounterRequest)) as CounterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterRequest create() => CounterRequest._();
  CounterRequest createEmptyInstance() => create();
  static $pb.PbList<CounterRequest> createRepeated() => $pb.PbList<CounterRequest>();
  @$core.pragma('dart2js:noInline')
  static CounterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterRequest>(create);
  static CounterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CounterRequest_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(CounterRequest_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

class CounterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cnt', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  CounterResponse._() : super();
  factory CounterResponse({
    $core.int? cnt,
    $core.String? msg,
  }) {
    final _result = create();
    if (cnt != null) {
      _result.cnt = cnt;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory CounterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterResponse clone() => CounterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterResponse copyWith(void Function(CounterResponse) updates) => super.copyWith((message) => updates(message as CounterResponse)) as CounterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterResponse create() => CounterResponse._();
  CounterResponse createEmptyInstance() => create();
  static $pb.PbList<CounterResponse> createRepeated() => $pb.PbList<CounterResponse>();
  @$core.pragma('dart2js:noInline')
  static CounterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterResponse>(create);
  static CounterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cnt => $_getIZ(0);
  @$pb.TagNumber(1)
  set cnt($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCnt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCnt() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

