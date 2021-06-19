///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use counterRequestDescriptor instead')
const CounterRequest$json = const {
  '1': 'CounterRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.CounterRequest.Type', '10': 'type'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
  '4': const [CounterRequest_Type$json],
};

@$core.Deprecated('Use counterRequestDescriptor instead')
const CounterRequest_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'Increase', '2': 0},
    const {'1': 'Decrease', '2': 1},
  ],
};

/// Descriptor for `CounterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterRequestDescriptor = $convert.base64Decode('Cg5Db3VudGVyUmVxdWVzdBIoCgR0eXBlGAEgASgOMhQuQ291bnRlclJlcXVlc3QuVHlwZVIEdHlwZRIQCgNtc2cYAiABKAlSA21zZyIiCgRUeXBlEgwKCEluY3JlYXNlEAASDAoIRGVjcmVhc2UQAQ==');
@$core.Deprecated('Use counterResponseDescriptor instead')
const CounterResponse$json = const {
  '1': 'CounterResponse',
  '2': const [
    const {'1': 'cnt', '3': 1, '4': 1, '5': 5, '10': 'cnt'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `CounterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterResponseDescriptor = $convert.base64Decode('Cg9Db3VudGVyUmVzcG9uc2USEAoDY250GAEgASgFUgNjbnQSEAoDbXNnGAIgASgJUgNtc2c=');
