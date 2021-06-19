import 'package:flutter_local_grpc_server/generated/counter.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;

class CounterService extends CounterServerServiceBase {
  int count = 0;
  String id;

  CounterService(this.id);

  @override
  Future<CounterResponse> execAction(
      grpc.ServiceCall call, CounterRequest request) async {
    CounterResponse res = CounterResponse();
    res.msg = 'ACK from $id';
    switch (request.type) {
      case CounterRequest_Type.Increase:
        count += 1;
        break;
      case CounterRequest_Type.Decrease:
        count -= 1;
        break;
      default:
        res.msg = 'ERR from $id';
    }
    res.cnt = count;
    return res;
  }
}
