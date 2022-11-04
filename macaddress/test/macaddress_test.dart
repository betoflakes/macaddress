import 'package:macaddress/main.dart';
import 'package:test/test.dart';

void main() {
  test('Check MacAddress', () async {
    expect(
        await getData('44:38:39:ff:ef:58', 'at_hOCnp2zmqL4ohXKAxYOT4XrpRLEq0'),
        "Company: Cumulus Networks, Inc; MacAddress: 44:38:39:ff:ef:58;");
  });
}
