import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/core/ssdp_client.dart';
import 'package:bit_switch/core/constants.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:http/http.dart' as http;

class _FakeSsdpClient extends SsdpClient {
  final Stream<SsdpResponse> _stream;

  _FakeSsdpClient(this._stream);

  @override
  Stream<SsdpResponse> discover({
    Duration timeout = WemoConstants.ssdpTimeout,
    String searchTarget = WemoConstants.ssdpSearchTarget,
    void Function(String)? onDebugLog,
  }) async* {
    yield* _stream;
  }

  @override
  Future<SsdpResponse?> probe(
    String host, {
    List<int> ports = WemoConstants.devicePorts,
    Duration timeout = const Duration(seconds: 2),
  }) {
    return Future.value(null);
  }
}

class _FakeHttpClient implements http.Client {
  final Future<http.Response> Function(Uri url) _handler;

  _FakeHttpClient(this._handler);

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) =>
      _handler(url);

  @override
  void close() {}

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final response = await _handler(request.url);
    return http.StreamedResponse(
      Stream.value(response.bodyBytes),
      response.statusCode,
      headers: response.headers,
      request: request,
    );
  }

  @override
  Future<http.Response> head(Uri url, {Map<String, String>? headers}) =>
      throw UnimplementedError();

  @override
  Future<http.Response> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) => throw UnimplementedError();

  @override
  Future<http.Response> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) => throw UnimplementedError();

  @override
  Future<http.Response> patch(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) => throw UnimplementedError();

  @override
  Future<http.Response> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) => throw UnimplementedError();

  @override
  Future<String> read(Uri url, {Map<String, String>? headers}) =>
      throw UnimplementedError();

  @override
  Future<Uint8List> readBytes(Uri url, {Map<String, String>? headers}) =>
      throw UnimplementedError();
}

// Helper: discover a device with the given UDN/model and return its type.
// Tests device-type detection via the public discoverAll() API.
Future<WemoDeviceType> _detectType(String udn, String? model) async {
  final modelTag = model != null ? '<modelName>$model</modelName>' : '';
  final xml = '''<?xml version="1.0"?>
<root><device>
  <friendlyName>Test</friendlyName>
  <UDN>$udn</UDN>
  $modelTag
</device></root>''';

  final ssdpResp = SsdpResponse(
    location: 'http://192.168.1.1:49153/setup.xml',
    usn: udn,
    server: 'Belkin/1.0',
    address: InternetAddress('192.168.1.1'),
  );

  final svc = DeviceDiscoveryService(
    ssdpClient: _FakeSsdpClient(Stream.value(ssdpResp)),
    httpClient: _FakeHttpClient((_) async => http.Response(xml, 200)),
  );

  final devices = await svc.discoverAll(
    timeout: const Duration(milliseconds: 50),
  );
  return devices.first.type;
}

void main() {
  group('DeviceDiscoveryService', () {
    test('discovers device from valid setup.xml', () async {
      final ssdpResp = SsdpResponse(
        location: 'http://192.168.1.2:49153/setup.xml',
        usn: 'uuid:Socket-1_0-TEST',
        server: 'Belkin/1.0',
        address: InternetAddress('192.168.1.2'),
      );

      final setupXml = '''<?xml version="1.0"?>
<root>
  <device>
    <friendlyName>Test Device</friendlyName>
    <manufacturer>Belkin</manufacturer>
    <modelName>Socket-1_0</modelName>
    <serialNumber>SN123</serialNumber>
    <UDN>uuid:Socket-1_0-TEST</UDN>
    <firmwareVersion>1.0</firmwareVersion>
    <macAddress>AABBCCDDEEFF</macAddress>
  </device>
</root>
''';

      final fakeSsdp = _FakeSsdpClient(Stream.value(ssdpResp));
      final fakeHttp = _FakeHttpClient((uri) async {
        return http.Response(setupXml, 200);
      });

      final svc = DeviceDiscoveryService(
        ssdpClient: fakeSsdp,
        httpClient: fakeHttp,
      );

      final devices = await svc.discoverAll(
        timeout: const Duration(milliseconds: 50),
      );
      expect(devices.length, 1);
      final d = devices.first;
      expect(d.name, 'Test Device');
      expect(d.id, 'uuid:Socket-1_0-TEST');
      expect(d.type, WemoDeviceType.wemoSwitch);
    });

    test('device type detection via discoverAll', () async {
      expect(
        await _detectType('uuid:Socket-1_0-123', null),
        WemoDeviceType.wemoSwitch,
      );
      expect(
        await _detectType('uuid:Lightswitch-1_0-abc', null),
        WemoDeviceType.lightSwitch,
      );
      expect(
        await _detectType('uuid:Dimmer-1_0-xyz', null),
        WemoDeviceType.dimmer,
      );
      expect(
        await _detectType('uuid:Insight-abc', null),
        WemoDeviceType.insight,
      );
      expect(
        await _detectType('uuid:Sensor-abc', null),
        WemoDeviceType.motion,
      );
      expect(
        await _detectType('uuid:Maker-abc', null),
        WemoDeviceType.maker,
      );
      expect(
        await _detectType('uuid:Unknown-abc', null),
        WemoDeviceType.unknown,
      );
    });

    test('retries on timeout then succeeds', () async {
      final ssdpResp = SsdpResponse(
        location: 'http://192.168.1.3:49153/setup.xml',
        usn: 'uuid:Socket-1_0-TEST2',
        server: 'Belkin/1.0',
        address: InternetAddress('192.168.1.3'),
      );

      const xml = '''<?xml version="1.0"?>
<root><device>
  <friendlyName>Retry Device</friendlyName>
  <UDN>uuid:Socket-1_0-TEST2</UDN>
</device></root>''';

      var calls = 0;
      final fakeHttp = _FakeHttpClient((uri) async {
        calls++;
        if (calls == 1) throw TimeoutException('timeout');
        return http.Response(xml, 200);
      });

      final svc = DeviceDiscoveryService(
        ssdpClient: _FakeSsdpClient(Stream.value(ssdpResp)),
        httpClient: fakeHttp,
      );

      final devices = await svc.discoverAll(
        timeout: const Duration(milliseconds: 50),
      );
      expect(devices.length, 1);
      expect(devices.first.name, 'Retry Device');
      expect(calls, greaterThan(1)); // At least one retry occurred
    });
  });
}
