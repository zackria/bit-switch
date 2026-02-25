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

  /// Unique key for deduplication by host:port
  String get hostPortKey => '$host:$port';

  @override
  String toString() => 'SsdpResponse(location: $location, usn: $usn)';
}

/// SSDP client for discovering Wemo devices on the local network
///
/// Implements robust discovery with automatic retry on transient failures.
class SsdpClient {
  /// Maximum number of discovery attempts before giving up
  static const _maxDiscoveryAttempts = 3;

  /// Delay between discovery retry attempts
  static const _retryDelay = Duration(milliseconds: 500);

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
  ///
  /// The discovery process:
  /// 1. Binds a UDP socket for receiving responses
  /// 2. Sets up response listener BEFORE sending requests (avoids race conditions)
  /// 3. Sends multiple M-SEARCH requests with staggered timing for reliability
  /// 4. Waits for the full timeout period after all requests are sent
  /// 5. Yields unique responses, deduplicated by both location URL and host:port
  ///
  /// Implements automatic retry on transient network failures.
  Stream<SsdpResponse> discover({
    Duration timeout = WemoConstants.ssdpTimeout,
    String searchTarget = WemoConstants.ssdpSearchTarget,
    void Function(String)? onDebugLog,
  }) async* {
    void log(String msg) => onDebugLog?.call(msg);

    // Track seen responses across all attempts
    final seenLocations = <String>{};
    final seenHostPorts = <String>{};
    DiscoveryException? lastException;

    for (int attempt = 1; attempt <= _maxDiscoveryAttempts; attempt++) {
      if (attempt > 1) {
        log('Retry attempt $attempt/$_maxDiscoveryAttempts...');
        await Future.delayed(_retryDelay);
      }

      try {
        await for (final response in _discoverAttempt(
          timeout: timeout,
          searchTarget: searchTarget,
          onDebugLog: onDebugLog,
          seenLocations: seenLocations,
          seenHostPorts: seenHostPorts,
        )) {
          yield response;
        }
        // Success - exit retry loop
        return;
      } on DiscoveryException catch (e) {
        lastException = e;
        log('Discovery attempt $attempt failed: ${e.message}');

        // Don't retry on permission errors - they won't resolve
        if (e.message.contains('permission') ||
            e.message.contains('Permission')) {
          rethrow;
        }

        if (attempt == _maxDiscoveryAttempts) {
          rethrow;
        }
      }
    }

    if (lastException != null) {
      throw lastException;
    }
  }

  /// Single discovery attempt (internal method)
  Stream<SsdpResponse> _discoverAttempt({
    required Duration timeout,
    required String searchTarget,
    required void Function(String)? onDebugLog,
    required Set<String> seenLocations,
    required Set<String> seenHostPorts,
  }) async* {
    RawDatagramSocket? socket;
    final controller = StreamController<SsdpResponse>();
    Timer? timer;

    void log(String msg) => onDebugLog?.call(msg);

    try {
      log('Binding UDP socket...');
      socket = await RawDatagramSocket.bind(
        InternetAddress.anyIPv4,
        0,
        reuseAddress: true,
      ).timeout(
        const Duration(seconds: 5),
        onTimeout: () {
          log('Socket bind TIMEOUT');
          throw DiscoveryException(
            'Network initialization timed out. Please check:\n'
            '• WiFi connection\n'
            '• Local Network permission in Settings',
            cause: null,
          );
        },
      );

      log('Socket bound to port ${socket.port}');
      socket.broadcastEnabled = true;
      log('Broadcast enabled');

      final request = buildMSearchRequest(searchTarget: searchTarget, mx: 5);
      final multicastAddress = InternetAddress(
        WemoConstants.ssdpMulticastAddress,
      );

      log(
        'Sending M-SEARCH to ${WemoConstants.ssdpMulticastAddress}:'
        '${WemoConstants.ssdpPort}',
      );

      // Set up response listener BEFORE sending requests
      log('Listening for responses (${timeout.inSeconds}s timeout)...');
      int responseCount = 0;
      int validCount = 0;

      socket.listen(
        (event) {
          if (controller.isClosed) return;

          if (event == RawSocketEvent.read) {
            final datagram = socket?.receive();
            if (datagram == null) return;

            responseCount++;
            log('Packet #$responseCount from ${datagram.address.address}');

            final response = parseResponse(datagram.data, datagram.address);
            if (response == null) {
              log('  → Non-Wemo response (filtered)');
              return;
            }

            // Deduplicate by both location URL and host:port
            final hostPortKey = response.hostPortKey;
            if (seenLocations.contains(response.location) ||
                seenHostPorts.contains(hostPortKey)) {
              log('  → Duplicate (${response.host}:${response.port})');
              return;
            }

            validCount++;
            seenLocations.add(response.location);
            seenHostPorts.add(hostPortKey);
            log('  → Valid #$validCount: ${response.location}');
            controller.add(response);
          }
        },
        onError: (error, stackTrace) {
          log('Socket error: $error');
          if (!controller.isClosed) {
            controller.addError(
              DiscoveryException(
                'Network error. Please check:\n'
                '• WiFi connection\n'
                '• Local Network permission in Settings',
                cause: error,
              ),
              stackTrace,
            );
            controller.close();
          }
          socket?.close();
        },
        cancelOnError: false,
      );

      // Start sending discovery requests in the background to allow immediate yielding
      final doneSending = Completer<void>();
      _sendDiscoveryRequests(
        socket: socket,
        request: request,
        multicastAddress: multicastAddress,
        log: log,
      ).then((bytesSent) {
        if (bytesSent == 0 && validCount == 0) {
          log('ERROR: 0 bytes sent after all attempts');
          // If we haven't found anything and sending failed completely, report error
          if (!controller.isClosed) {
            controller.addError(
              DiscoveryException(
                'Failed to send discovery request. Network may be unavailable.',
                cause: null,
              ),
            );
            controller.close();
          }
        } else {
          log('Total bytes sent: $bytesSent');
          // Start timeout AFTER all requests are sent
          timer = Timer(timeout, () {
            log('Discovery timeout reached');
            if (!controller.isClosed) {
              controller.close();
            }
          });
        }
        doneSending.complete();
      }).catchError((e) {
        if (!controller.isClosed) {
          controller.addError(e);
          controller.close();
        }
        doneSending.complete();
      });

      // Process and yield discovered devices as they come in
      await for (final response in controller.stream) {
        yield response;
      }

      // Ensure sending is complete before finishing the attempt
      await doneSending.future;
      log(
        'Discovery complete: $validCount devices from $responseCount packets',
      );
    } on DiscoveryException {
      rethrow;
    } on SocketException catch (e) {
      log('SocketException: $e');
      throw DiscoveryException(
        'Network error during device discovery',
        cause: e,
      );
    } catch (e) {
      log('Exception: $e');
      throw DiscoveryException('Device discovery failed: $e', cause: e);
    } finally {
      timer?.cancel();
      socket?.close();
      if (!controller.isClosed) {
        await controller.close();
      }
    }
  }

  /// Send discovery requests with retry on individual send failures
  Future<int> _sendDiscoveryRequests({
    required RawDatagramSocket socket,
    required List<int> request,
    required InternetAddress multicastAddress,
    required void Function(String) log,
  }) async {
    int totalBytesSent = 0;
    int consecutiveFailures = 0;
    const maxConsecutiveFailures = 3;

    // Send requests with staggered timing
    // Timing: 0ms, 500ms, 500ms, 1000ms, 1000ms, 1000ms (~4 seconds total)
    const requestCount = 6;
    const delays = [0, 500, 500, 1000, 1000, 1000];

    for (int i = 0; i < requestCount; i++) {
      if (i > 0) {
        await Future.delayed(Duration(milliseconds: delays[i]));
      }

      try {
        final bytesSent = socket.send(
          request,
          multicastAddress,
          WemoConstants.ssdpPort,
        );

        if (bytesSent > 0) {
          totalBytesSent += bytesSent;
          consecutiveFailures = 0;
          log('M-SEARCH #${i + 1}: $bytesSent bytes');
        } else {
          consecutiveFailures++;
          log('M-SEARCH #${i + 1}: 0 bytes (attempt failed)');

          // If first request fails with 0 bytes, wait and retry once
          if (i == 0 && consecutiveFailures == 1) {
            log('First send returned 0, retrying after delay...');
            await Future.delayed(const Duration(milliseconds: 100));
            final retryBytes = socket.send(
              request,
              multicastAddress,
              WemoConstants.ssdpPort,
            );
            if (retryBytes > 0) {
              totalBytesSent += retryBytes;
              consecutiveFailures = 0;
              log('Retry successful: $retryBytes bytes');
            }
          }
        }

        if (consecutiveFailures >= maxConsecutiveFailures) {
          log('Too many consecutive send failures, aborting');
          break;
        }
      } catch (e) {
        log('Send error on request #${i + 1}: $e');
        consecutiveFailures++;

        if (consecutiveFailures >= maxConsecutiveFailures) {
          throw DiscoveryException(
            'Cannot access local network. Please ensure:\n'
            '• You are connected to WiFi\n'
            '• Local Network access is enabled in Settings',
            cause: e,
          );
        }
      }
    }

    // Send to broadcast address as fallback
    try {
      final broadcastAddr = InternetAddress('255.255.255.255');
      final broadcastBytes = socket.send(
        request,
        broadcastAddr,
        WemoConstants.ssdpPort,
      );
      if (broadcastBytes > 0) {
        totalBytesSent += broadcastBytes;
        log('Broadcast fallback: $broadcastBytes bytes');
      }
    } catch (e) {
      log('Broadcast fallback failed (OK): $e');
    }

    return totalBytesSent;
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
