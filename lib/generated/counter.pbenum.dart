///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CounterRequest_Type extends $pb.ProtobufEnum {
  static const CounterRequest_Type Increase = CounterRequest_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Increase');
  static const CounterRequest_Type Decrease = CounterRequest_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Decrease');

  static const $core.List<CounterRequest_Type> values = <CounterRequest_Type> [
    Increase,
    Decrease,
  ];

  static final $core.Map<$core.int, CounterRequest_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CounterRequest_Type? valueOf($core.int value) => _byValue[value];

  const CounterRequest_Type._($core.int v, $core.String n) : super(v, n);
}

