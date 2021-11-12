import 'package:flutter_driver/flutter_driver.dart';
// import 'package:flutter_test/flutter_test.dart';
import 'package:test/test.dart';

void main() {
  FlutterDriver driver;

  // setUpAll(() async {
  //   driver = await FlutterDriver.connect();
  //   await driver.waitUntilFirstFrameRasterized();
  // });

  // tearDownAll(() async {
  //   await driver.close();
  // });

  test('Tes app', () async {
    driver = await FlutterDriver.connect();
    await driver.waitUntilFirstFrameRasterized();

    await driver.tap(find.byValueKey('Input1'));
    await driver.enterText('10');
    await driver.tap(find.text('+'));
    await driver.tap(find.byValueKey('Input2'));
    await driver.enterText('5');
    expect(await driver.getText(find.text('15.0')), '15.0');

    await driver.close();
  });
}
