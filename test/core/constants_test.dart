import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/constants.dart';

void main() {
  test('WemoConstants should have correct values', () {
    expect(WemoConstants.ssdpMulticastAddress, '239.255.255.250');
    expect(WemoConstants.ssdpPort, 1900);
    expect(WemoConstants.devicePorts, isNotEmpty);
    expect(WemoConstants.deviceTypesByUuid, isNotEmpty);
    expect(WemoConstants.setupXmlPath, '/setup.xml');
  });
}
