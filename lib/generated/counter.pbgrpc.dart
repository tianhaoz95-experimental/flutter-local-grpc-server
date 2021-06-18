///
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'counter.pb.dart' as $0;
export 'counter.pb.dart';

class CounterServerClient extends $grpc.Client {
  static final _$execAction =
      $grpc.ClientMethod<$0.CounterRequest, $0.CounterResponse>(
          '/CounterServer/ExecAction',
          ($0.CounterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CounterResponse.fromBuffer(value));

  CounterServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CounterResponse> execAction($0.CounterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$execAction, request, options: options);
  }
}

abstract class CounterServerServiceBase extends $grpc.Service {
  $core.String get $name => 'CounterServer';

  CounterServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CounterRequest, $0.CounterResponse>(
        'ExecAction',
        execAction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CounterRequest.fromBuffer(value),
        ($0.CounterResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CounterResponse> execAction_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CounterRequest> request) async {
    return execAction(call, await request);
  }

  $async.Future<$0.CounterResponse> execAction(
      $grpc.ServiceCall call, $0.CounterRequest request);
}
