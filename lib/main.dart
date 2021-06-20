import 'package:flutter/material.dart';
import 'package:flutter_local_grpc_server/generated/counter.pb.dart';
import 'package:flutter_local_grpc_server/service_impl.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:flutter_local_grpc_server/generated/counter.pbgrpc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter gRPC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter gRPC Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _init = true;
  String _msg = 'Not started';
  bool _remote = false;
  List isolates = [];
  late grpc.ClientChannel _localChannel;
  late CounterServerClient _localClient;
  late grpc.ClientChannel _remoteChannel;
  late CounterServerClient _remoteClient;

  void initState() {
    super.initState();
    _localChannel = grpc.ClientChannel('localhost',
        port: 50051,
        options: const grpc.ChannelOptions(
            credentials: grpc.ChannelCredentials.insecure()));
    _localClient = CounterServerClient(_localChannel,
        options: grpc.CallOptions(timeout: Duration(seconds: 30)));
    _remoteChannel = grpc.ClientChannel('10.0.2.2',
        port: 8080,
        options: const grpc.ChannelOptions(
            credentials: grpc.ChannelCredentials.insecure()));
    _remoteClient = CounterServerClient(_remoteChannel,
        options: grpc.CallOptions(timeout: Duration(seconds: 30)));
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    configureLocalService();
  }

  void configureLocalService() async {
    final server = grpc.Server([CounterService("local")]);
    await server.serve(port: 50051);
    setState(() {
      _init = false;
    });
  }

  void _sendRequest(CounterRequest_Type type) async {
    try {
      CounterRequest req = CounterRequest();
      req.type = type;
      CounterResponse res = _remote
          ? await _remoteClient.execAction(req)
          : await _localClient.execAction(req);
      print(res.msg);
      setState(() {
        _counter = res.cnt;
        _msg = res.msg;
      });
    } catch (err) {
      setState(() {
        _msg = 'Error: ${err.toString()}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _init
                ? Text("Initializing local service...")
                : Text('Local service initialized'),
            Divider(),
            Text('Counter: $_counter'),
            Divider(),
            Text(_msg),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Remote'),
          Switch(
              value: _remote,
              onChanged: (bool val) {
                setState(() {
                  _remote = val;
                });
              }),
          FloatingActionButton(
            onPressed: () {
              _sendRequest(CounterRequest_Type.Increase);
            },
            child: Icon(Icons.exposure_plus_1),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              _sendRequest(CounterRequest_Type.Decrease);
            },
            child: Icon(Icons.exposure_neg_1),
          ),
        ],
      ),
    );
  }
}
