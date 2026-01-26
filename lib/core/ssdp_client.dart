import 'dart:async';
import 'dart:io';
import 'constants.dart';
import 'exceptions.dart';

/// Represents an SSDP discovery response from a Wemo device
class SsdpResponse {
  final String location;
  final String usn;
  final String server;
  final String? st;
  final InternetAddress address;

  SsdpResponse({
    required this.location,
    required this.usn,
    required this.server,
    this.st,
    required this.address,
  });

  /// Extract the host and port from the location URL
  Uri get locationUri => Uri.parse(location);
  String get host => locationUri.host;
  int get port => locationUri.port;

  @override
  String toString() => 'SsdpResponse(location: $location, usn: $usn)';
}

/// SSDP client for discovering Wemo devices on the local network
class SsdpClient {
  /// Build an M-SEARCH request for Wemo device discovery
  static List<int> buildMSearchRequest({
    String searchTarget = WemoConstants.ssdpSearchTarget,
    int mx = 3,
  }) {
    final request = '''M-SEARCH * HTTP/1.1\r
HOST: ${WemoConstants.ssdpMulticastAddress}:${WemoConstants.ssdpPort}\r
MAN: "ssdp:discover"\r
ST: $searchTarget\r
MX: $mx\r
\r
''';
    return request.codeUnits;
  }

  /// Parse an SSDP response
  /// Returns null if response is invalid or not a Wemo device
  static SsdpResponse? parseResponse(List<int> data, InternetAddress address) {
    try {
      final response = String.fromCharCodes(data);
      final lines = response.split('\r\n');

      // Check if this is an HTTP response
      if (!lines.first.startsWith('HTTP/1.1 200')) {
        return null;
      }

      final headers = <String, String>{};
      for (final line in lines.skip(1)) {
        final colonIndex = line.indexOf(':');
        if (colonIndex > 0) {
          final key = line.substring(0, colonIndex).trim().toUpperCase();
          final value = line.substring(colonIndex + 1).trim();
          headers[key] = value;
        }
      }

      final location = headers['LOCATION'];
      final usn = headers['USN'];
      final server = headers['SERVER'];

      if (location == null || usn == null) {
        return null;
      }

      // Filter for Belkin/Wemo devices
      if (server == null || !server.toLowerCase().contains('belkin')) {
        // Check USN for Belkin identifiers
        if (!usn.toLowerCase().contains('belkin') &&
            !_isKnownWemoUuid(usn)) {
          return null;
        }
      }

      return SsdpResponse(
        location: location,
        usn: usn,
        server: server ?? '',
        st: headers['ST'],
        address: address,
      );
    } catch (e) {
      return null;
    }
  }

  /// Check if the USN contains a known Wemo device UUID prefix
  static bool _isKnownWemoUuid(String usn) {
    final usnLower = usn.toLowerCase();
    return WemoConstants.deviceTypesByUuid.keys.any(
      (prefix) => usnLower.contains(prefix.toLowerCase()),
    );
  }

  /// Discover Wemo devices on the local network
  /// Returns a stream of discovered devices
  Stream<SsdpResponse> discover({
    Duration timeout = WemoConstants.ssdpTimeout,
    String searchTarget = WemoConstants.ssdpSearchTarget,
  }) async* {
    RawDatagramSocket? socket;
    final seenLocations = <String>{};
    final controller = StreamController<SsdpResponse>();
    Timer? timer;

    try {
      socket = await RawDatagramSocket.bind(
        InternetAddress.anyIPv4,
        0,
        reuseAddress: true,
      );

      // Enable broadcast
      socket.broadcastEnabled = true;

      // Send M-SEARCH request
      final request = buildMSearchRequest(searchTarget: searchTarget);
      final multicastAddress = InternetAddress(WemoConstants.ssdpMulticastAddress);

      // Wrap send in try-catch - on iOS this fails without local network permission
      int bytesSent = 0;
      try {
        bytesSent = socket.send(request, multicastAddress, WemoConstants.ssdpPort);
      } catch (e) {
        // On iOS, this can fail with "No route to host" (errno 65) if local network 
        // permission is not granted, or if not connected to WiFi.
        socket.close();
        throw DiscoveryException(
          'Cannot access local network. Please ensure:\n• You are connected to WiFi\n• Local Network access is enabled in Settings',
          e,
        );
      }

      if (bytesSent == 0) {
        socket.close();
        throw DiscoveryException('Failed to send discovery request', null);
      }

      // Set up timeout to close the stream
      timer = Timer(timeout, () {
        controller.close();
      });

      // Listen for responses
      socket.listen((event) {
        if (controller.isClosed) return;

        if (event == RawSocketEvent.read) {
          final datagram = socket?.receive();
          if (datagram != null) {
            final response = parseResponse(datagram.data, datagram.address);
            if (response != null && !seenLocations.contains(response.location)) {
              seenLocations.add(response.location);
              controller.add(response);
            }
          }
        }
      });

      // Yield responses from the controller
      await for (final response in controller.stream) {
        yield response;
      }
    } on DiscoveryException {
      rethrow;
    } on SocketException catch (e) {
      throw DiscoveryException('Network error during device discovery', e);
    } catch (e) {
      throw DiscoveryException('Device discovery failed: $e', e);
    } finally {
      timer?.cancel();
      socket?.close();
      if (!controller.isClosed) {
        await controller.close();
      }
    }
  }

  /// Discover all Wemo devices and return as a list
  Future<List<SsdpResponse>> discoverAll({
    Duration timeout = WemoConstants.ssdpTimeout,
    String searchTarget = WemoConstants.ssdpSearchTarget,
  }) async {
    final devices = <SsdpResponse>[];
    await for (final device in discover(timeout: timeout, searchTarget: searchTarget)) {
      devices.add(device);
    }
    return devices;
  }

  /// Probe a specific host for a Wemo device
  Future<SsdpResponse?> probe(
    String host, {
    List<int> ports = WemoConstants.devicePorts,
    Duration timeout = const Duration(seconds: 2),
  }) async {
    for (final port in ports) {
      try {
        final url = Uri.parse('http://$host:$port${WemoConstants.setupXmlPath}');
        final socket = await Socket.connect(
          host,
          port,
          timeout: timeout,
        );
        await socket.close();

        return SsdpResponse(
          location: url.toString(),
          usn: 'probed:$host:$port',
          server: 'probed',
          address: InternetAddress(host),
        );
      } catch (e) {
        continue;
      }
    }
    return null;
  }
}