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
    int mx = 5,
  }) {
    final request =
        '''M-SEARCH * HTTP/1.1\r
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
        if (!usn.toLowerCase().contains('belkin') && !_isKnownWemoUuid(usn)) {
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
    void Function(String)? onDebugLog,
  }) async* {
    RawDatagramSocket? socket;
    final seenLocations = <String>{};
    final controller = StreamController<SsdpResponse>();
    Timer? timer;

    void log(String msg) => onDebugLog?.call(msg);

    try {
      log('Binding UDP socket...');
      // Add timeout for socket bind - can hang on iOS without proper permissions
      socket =
          await RawDatagramSocket.bind(
            InternetAddress.anyIPv4,
            0,
            reuseAddress: true,
          ).timeout(
            const Duration(seconds: 5),
            onTimeout: () {
              log('Socket bind TIMEOUT');
              throw DiscoveryException(
                'Network initialization timed out. Please check:\n• WiFi connection\n• Local Network permission in Settings',
                null,
              );
            },
          );

      log('Socket bound to port ${socket.port}');

      // Enable broadcast
      socket.broadcastEnabled = true;
      log('Broadcast enabled');

      // Send M-SEARCH request
      final request = buildMSearchRequest(searchTarget: searchTarget, mx: 5);
      final multicastAddress = InternetAddress(
        WemoConstants.ssdpMulticastAddress,
      );

      log(
        'Sending M-SEARCH to ${WemoConstants.ssdpMulticastAddress}:${WemoConstants.ssdpPort}',
      );

      // Set up response listener BEFORE sending requests to catch early responses
      log('Listening for responses (${timeout.inSeconds}s timeout)...');
      int responseCount = 0;

      socket.listen(
        (event) {
          if (controller.isClosed) return;

          if (event == RawSocketEvent.read) {
            final datagram = socket?.receive();
            if (datagram != null) {
              responseCount++;
              log(
                'Received packet #$responseCount from ${datagram.address.address}',
              );
              final response = parseResponse(datagram.data, datagram.address);
              if (response != null &&
                  !seenLocations.contains(response.location)) {
                log('Valid Wemo response: ${response.location}');
                seenLocations.add(response.location);
                controller.add(response);
              } else if (response == null) {
                log('Non-Wemo response (filtered out)');
              } else {
                log('Duplicate response (filtered out)');
              }
            }
          }
        },
        onError: (error, stackTrace) {
          // Handle socket errors (e.g., errno 65 on iOS without Local Network permission)
          log('Socket error during discovery: $error');
          if (!controller.isClosed) {
            controller.addError(
              DiscoveryException(
                'Network error. Please check:\n• WiFi connection\n• Local Network permission in Settings',
                error,
              ),
              stackTrace,
            );
            controller.close();
          }
          socket?.close();
        },
        cancelOnError: false,
      );

      // Wrap send in try-catch - on iOS this fails without local network permission
      int totalBytesSent = 0;
      try {
        // Send multiple M-SEARCH requests to increase discovery chances
        // Send more requests with better timing to catch all devices
        for (int i = 0; i < 5; i++) {
          final bytesSent = socket.send(
            request,
            multicastAddress,
            WemoConstants.ssdpPort,
          );
          totalBytesSent += bytesSent;
          log('M-SEARCH #${i + 1}: sent $bytesSent bytes');
          // Stagger requests to avoid network congestion
          if (i < 4) {
            await Future.delayed(Duration(milliseconds: i < 2 ? 300 : 800));
          }
        }

        // Also try sending to broadcast address as fallback
        try {
          final broadcastAddr = InternetAddress('255.255.255.255');
          final broadcastBytes = socket.send(
            request,
            broadcastAddr,
            WemoConstants.ssdpPort,
          );
          log('Broadcast fallback: sent $broadcastBytes bytes');
        } catch (e) {
          log('Broadcast fallback failed (OK): $e');
        }
      } catch (e) {
        // On iOS, this can fail with "No route to host" (errno 65) if local network
        // permission is not granted, or if not connected to WiFi.
        log('SEND FAILED: $e');
        socket.close();
        throw DiscoveryException(
          'Cannot access local network. Please ensure:\n• You are connected to WiFi\n• Local Network access is enabled in Settings',
          e,
        );
      }

      if (totalBytesSent == 0) {
        log('ERROR: 0 bytes sent');
        socket.close();
        throw DiscoveryException('Failed to send discovery request', null);
      }

      // Set up timeout to close the stream
      // Add a 2-second buffer after timeout to catch late responses
      timer = Timer(timeout + const Duration(seconds: 2), () {
        log('Discovery timeout reached (with buffer)');
        controller.close();
      });

      // Yield responses from the controller
      await for (final response in controller.stream) {
        yield response;
      }
      log('Total packets received: $responseCount');
    } on DiscoveryException {
      rethrow;
    } on SocketException catch (e) {
      log('SocketException: $e');
      throw DiscoveryException('Network error during device discovery', e);
    } catch (e) {
      log('Exception: $e');
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
    await for (final device in discover(
      timeout: timeout,
      searchTarget: searchTarget,
    )) {
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
        final url = Uri.parse(
          'http://$host:$port${WemoConstants.setupXmlPath}',
        );
        final socket = await Socket.connect(host, port, timeout: timeout);
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
