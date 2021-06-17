import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:my_bookmark/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("failing test example", (WidgetTester tester) async {
    // app.main();
    // await tester.pumpAndSettle();
    await tester.pump(Duration(seconds: 12));
    expect(2 + 2, equals(4));
  });
}