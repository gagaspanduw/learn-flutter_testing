import 'package:calculator_app/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalculatorApp', () {
    testWidgets('Render 2 Text Field Widgets', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.byType(TextField), findsNWidgets(2));
    });
  });
}
