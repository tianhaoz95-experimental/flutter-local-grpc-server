import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_local_grpc_server/main.dart';

void main() {
  testWidgets('Counter render test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
  });
}
