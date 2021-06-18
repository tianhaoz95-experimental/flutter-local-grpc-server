import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:flutter_local_grpc_server/generated/counter.pbgrpc.dart';

class CounterService extends CounterServerServiceBase {
  @override
  Future<CounterResponse> execAction(
      grpc.ServiceCall call, CounterRequest request) async {
    CounterResponse res = CounterResponse();
    res.msg = "ack";
    return res;
  }
}

void runCounterService(String msg) async {
  final server = grpc.Server([CounterService()]);
  await server.serve(port: 50051);
  print('Server listening...');
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List isolates = [];
  late grpc.ClientChannel channel;
  late CounterServerClient client;

  void initState() {
    super.initState();
    startIsolates();
    channel = grpc.ClientChannel('localhost',
        port: 50051,
        options: const grpc.ChannelOptions(
            credentials: grpc.ChannelCredentials.insecure()));
    client = CounterServerClient(channel,
        options: grpc.CallOptions(timeout: Duration(seconds: 30)));
  }

  void startIsolates() async {
    isolates.add(await Isolate.spawn(runCounterService, "start"));
    print("Server launched");
  }

  void _incrementCounter() async {
    CounterRequest req = CounterRequest();
    req.type = CounterRequest_Type.Increase;
    req.msg = "add";
    CounterResponse res = await client.execAction(req);
    print(res.msg);
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
