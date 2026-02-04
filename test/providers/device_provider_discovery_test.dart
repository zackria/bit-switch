import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  group('DeviceProvider discovery and probe', () {
    test(
      'probeDeviceByIp succeeds when TCP port open and probeHost returns device',
      () async {
        // Start a local server to accept TCP connection
        final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
        final port = server.port;

        // Accept one connection in background
        server.listen((client) {
          client.destroy();
        });

        final device = WemoDevice(
          id: 'd1',
          name: 'Test',
          host: '127.0.0.1',
          port: port,
          type: WemoDeviceType.wemoSwitch,
        );

        final discovery = _FakeDiscoveryService(probeResult: device);
        final provider = DeviceProvider(
          discoveryService: discovery,
          controlService: _FakeControlService(),
        );

        await provider.probeDeviceByIp('127.0.0.1', port: port);

        expect(provider.devices.any((d) => d.id == 'd1'), true);

        await server.close();
      },
    );

    test(
      'discoverDevices sets error when discovery stream throws DiscoveryException',
      () async {
        final discovery = _FakeDiscoveryService(
          discoverStream: Stream<WemoDevice>.error(DiscoveryException('boom')),
        );
        final provider = DeviceProvider(
          discoveryService: discovery,
          controlService: _FakeControlService(),
        );

        await provider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );

        expect(provider.error, isNotNull);
        expect(provider.error, contains('boom'));
      },
    );
  });
}

class _FakeDiscoveryService extends DeviceDiscoveryService {
  final WemoDevice? probeResult;
  final Stream<WemoDevice>? discoverStream;

  _FakeDiscoveryService({this.probeResult, this.discoverStream});

  @override
  Future<WemoDevice?> probeHost(
    String host, {
    List<int> ports = const [49153],
  }) async {
    return probeResult;
  }

  @override
  Stream<WemoDevice> discoverDevices({
    Duration timeout = const Duration(seconds: 5),
    void Function(String)? onDebugLog,
  }) {
    return discoverStream ?? const Stream.empty();
  }
}

class _FakeControlService extends DeviceControlService {}
