import 'package:flutter_local_grpc_server/service_impl.dart';
import 'package:grpc/grpc.dart' as grpc;

Future<void> main(List<String> args) async {
  final server = grpc.Server([CounterService("remote")]);
  await server.serve(port: 8080);
  print('Server listening...');
}