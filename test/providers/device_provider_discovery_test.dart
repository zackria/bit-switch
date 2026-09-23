import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

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

    test(
      'discoverDevices maps a SocketException from the discovery stream to '
      'a WiFi/local-network error message',
      () async {
        final discovery = _FakeDiscoveryService(
          discoverStream: Stream<WemoDevice>.error(
            const SocketException('connection failed'),
          ),
        );
        final provider = DeviceProvider(
          discoveryService: discovery,
          controlService: _FakeControlService(),
        );

        await provider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );

        expect(provider.error, isNotNull);
        expect(provider.error, contains('WiFi'));
      },
    );

    test(
      'discoverDevices maps a generic discovery stream error to the '
      'unexpected-error DiscoveryException message',
      () async {
        final discovery = _FakeDiscoveryService(
          discoverStream: Stream<WemoDevice>.error(Exception('boom')),
        );
        final provider = DeviceProvider(
          discoveryService: discovery,
          controlService: _FakeControlService(),
        );

        await provider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );

        expect(provider.error, 'Unexpected error during discovery');
      },
    );

    test(
      'probeDeviceByIp logs "no device" when TCP succeeds but probeHost '
      'finds nothing',
      () async {
        final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
        final port = server.port;
        server.listen((client) => client.destroy());

        final discovery = _FakeDiscoveryService(probeResult: null);
        final provider = DeviceProvider(
          discoveryService: discovery,
          controlService: _FakeControlService(),
        );
        provider.setDebugMode(true);

        await provider.probeDeviceByIp('127.0.0.1', port: port);

        expect(
          provider.debugLog.any(
            (line) => line.contains('No Wemo device at this address'),
          ),
          true,
        );
        expect(provider.devices, isEmpty);

        await server.close();
      },
    );

    test(
      'probeDeviceByIp logs HTTP failure when probeHost throws',
      () async {
        final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
        final port = server.port;
        server.listen((client) => client.destroy());

        final discovery = _FakeDiscoveryService(
          probeError: Exception('probe boom'),
        );
        final provider = DeviceProvider(
          discoveryService: discovery,
          controlService: _FakeControlService(),
        );
        provider.setDebugMode(true);

        await provider.probeDeviceByIp('127.0.0.1', port: port);

        expect(
          provider.debugLog.any(
            (line) => line.contains('HTTP request FAILED'),
          ),
          true,
        );
        expect(provider.devices, isEmpty);

        await server.close();
      },
    );

    test(
      'discoverDevices ignores concurrent calls while one is already in '
      'progress',
      () async {
        final provider = DeviceProvider(
          discoveryService: _SlowDiscoveryService(),
          controlService: _FakeControlService(),
        );

        final first = provider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );

        // Give the first call a chance to set isDiscovering before we try a
        // second, concurrent call.
        await Future.delayed(const Duration(milliseconds: 10));
        expect(provider.isDiscovering, true);

        // A second call made while the first is still in flight must be a
        // no-op and must not interfere with the in-flight discovery.
        await provider.discoverDevices();
        expect(provider.isDiscovering, true);

        await first;
        expect(provider.isDiscovering, false);
      },
    );

    test(
      'discoverDevices recovers a previously known device missed by SSDP '
      'via a direct probe of its last-known address',
      () async {
        final deviceA = const WemoDevice(
          id: 'a',
          name: 'A',
          host: '10.0.0.1',
          port: 49153,
          type: WemoDeviceType.wemoSwitch,
        );
        final deviceB = const WemoDevice(
          id: 'b',
          name: 'B',
          host: '10.0.0.2',
          port: 49153,
          type: WemoDeviceType.wemoSwitch,
        );

        // First scan (e.g. a previous app session): SSDP finds both
        // devices, seeding the persisted known-device list.
        final firstProvider = DeviceProvider(
          discoveryService: _KnownDeviceFallbackDiscoveryService(
            discoverStreamBuilder: () =>
                Stream.fromIterable([deviceA, deviceB]),
          ),
          controlService: _FakeControlService(),
        );
        await firstProvider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );
        expect(
          firstProvider.devices.map((d) => d.id),
          containsAll(['a', 'b']),
        );

        // Let the fire-and-forget persistence write land.
        await Future.delayed(const Duration(milliseconds: 20));

        // Second scan (fresh provider, simulating a new app launch): SSDP
        // only finds device A this time - device B's UDP response was
        // lost - but device B is still reachable directly.
        final secondProvider = DeviceProvider(
          discoveryService: _KnownDeviceFallbackDiscoveryService(
            discoverStreamBuilder: () => Stream.fromIterable([deviceA]),
            probeResultsByHost: {deviceB.host: deviceB},
          ),
          controlService: _FakeControlService(),
        );
        await secondProvider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );

        expect(
          secondProvider.devices.map((d) => d.id),
          containsAll(['a', 'b']),
        );
      },
    );

    test(
      'discoverDevices does not add a known device that no longer responds '
      'to a direct probe',
      () async {
        final deviceA = const WemoDevice(
          id: 'a',
          name: 'A',
          host: '10.0.0.1',
          port: 49153,
          type: WemoDeviceType.wemoSwitch,
        );

        final firstProvider = DeviceProvider(
          discoveryService: _KnownDeviceFallbackDiscoveryService(
            discoverStreamBuilder: () => Stream.fromIterable([deviceA]),
          ),
          controlService: _FakeControlService(),
        );
        await firstProvider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );
        await Future.delayed(const Duration(milliseconds: 20));

        final secondProvider = DeviceProvider(
          discoveryService: _KnownDeviceFallbackDiscoveryService(
            discoverStreamBuilder: () => const Stream.empty(),
          ),
          controlService: _FakeControlService(),
        );
        secondProvider.setDebugMode(true);
        await secondProvider.discoverDevices(
          timeout: const Duration(milliseconds: 200),
        );

        expect(secondProvider.devices, isEmpty);
        expect(
          secondProvider.debugLog.any(
            (line) => line.contains('did not respond to direct probe'),
          ),
          true,
        );
      },
    );
  });
}

class _FakeDiscoveryService extends DeviceDiscoveryService {
  final WemoDevice? probeResult;
  final Object? probeError;
  final Stream<WemoDevice>? discoverStream;

  _FakeDiscoveryService({this.probeResult, this.probeError, this.discoverStream});

  @override
  Future<WemoDevice?> probeHost(
    String host, {
    List<int> ports = const [49153],
  }) async {
    if (probeError != null) throw probeError!;
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

/// A discovery service that yields a fresh SSDP stream per call (built by
/// [discoverStreamBuilder]) and resolves [probeHost] per-host from
/// [probeResultsByHost], used to simulate a device being found by SSDP on
/// one scan and only reachable via direct probe on the next.
class _KnownDeviceFallbackDiscoveryService extends DeviceDiscoveryService {
  final Stream<WemoDevice> Function() discoverStreamBuilder;
  final Map<String, WemoDevice> probeResultsByHost;

  _KnownDeviceFallbackDiscoveryService({
    required this.discoverStreamBuilder,
    this.probeResultsByHost = const {},
  });

  @override
  Stream<WemoDevice> discoverDevices({
    Duration timeout = const Duration(seconds: 5),
    void Function(String)? onDebugLog,
  }) {
    return discoverStreamBuilder();
  }

  @override
  Future<WemoDevice?> probeHost(
    String host, {
    List<int> ports = const [49153],
  }) async {
    return probeResultsByHost[host];
  }
}

/// A discovery service whose stream stays open for a short delay before
/// completing with no devices, used to exercise the "already discovering"
/// concurrency guard in [DeviceProvider.discoverDevices].
class _SlowDiscoveryService extends DeviceDiscoveryService {
  @override
  Stream<WemoDevice> discoverDevices({
    Duration timeout = const Duration(seconds: 5),
    void Function(String)? onDebugLog,
  }) async* {
    await Future.delayed(const Duration(milliseconds: 100));
  }
}
