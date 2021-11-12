import 'package:calculator/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Unit test add', () {
    var calculator = Calculator();
    expect(calculator.add(2, 2), 4);
  });

  test('Unit test divide', () {
    final calculator = Calculator();
    expect(calculator.divide(4, 2), 2);
  });
}
