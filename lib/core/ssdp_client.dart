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

class _PacketCounters {
  int responseCount = 0;
  int validCount = 0;
}

class _SendState {
  int totalBytesSent = 0;
  int consecutiveFailures = 0;
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
      final counters = _PacketCounters();

      socket.listen(
        (event) => _handleSocketEvent(
          event: event,
          socket: socket,
          controller: controller,
          seenLocations: seenLocations,
          seenHostPorts: seenHostPorts,
          counters: counters,
          log: log,
        ),
        onError: (error, stackTrace) => _handleSocketError(
          error,
          stackTrace,
          socket: socket,
          controller: controller,
          log: log,
        ),
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
        timer = _armTimeoutOrFail(
          bytesSent,
          validCount: counters.validCount,
          timeout: timeout,
          controller: controller,
          log: log,
        );
        doneSending.complete();
      }).catchError((e) {
        _failSending(e, controller: controller);
        doneSending.complete();
      });

      // Process and yield discovered devices as they come in
      await for (final response in controller.stream) {
        yield response;
      }

      // Ensure sending is complete before finishing the attempt
      await doneSending.future;
      log(
        'Discovery complete: ${counters.validCount} devices from '
        '${counters.responseCount} packets',
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

  void _handleSocketEvent({
    required RawSocketEvent event,
    required RawDatagramSocket? socket,
    required StreamController<SsdpResponse> controller,
    required Set<String> seenLocations,
    required Set<String> seenHostPorts,
    required _PacketCounters counters,
    required void Function(String) log,
  }) {
    if (controller.isClosed) return;
    if (event != RawSocketEvent.read) return;

    // A single read event does not guarantee exactly one queued datagram —
    // when several devices respond in a burst, more than one packet can be
    // waiting in the OS socket buffer. Drain all of them now, since another
    // read event may not fire until further data arrives.
    while (true) {
      if (controller.isClosed) return;
      final datagram = socket?.receive();
      if (datagram == null) return;

      counters.responseCount++;
      log(
        'Packet #${counters.responseCount} from ${datagram.address.address}',
      );

      final response = parseResponse(datagram.data, datagram.address);
      if (response == null) {
        log('  → Non-Wemo response (filtered)');
        continue;
      }

      // Deduplicate by both location URL and host:port
      final hostPortKey = response.hostPortKey;
      if (seenLocations.contains(response.location) ||
          seenHostPorts.contains(hostPortKey)) {
        log('  → Duplicate (${response.host}:${response.port})');
        continue;
      }

      counters.validCount++;
      seenLocations.add(response.location);
      seenHostPorts.add(hostPortKey);
      log('  → Valid #${counters.validCount}: ${response.location}');
      controller.add(response);
    }
  }

  void _handleSocketError(
    Object error,
    StackTrace stackTrace, {
    required RawDatagramSocket? socket,
    required StreamController<SsdpResponse> controller,
    required void Function(String) log,
  }) {
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
  }

  Timer? _armTimeoutOrFail(
    int bytesSent, {
    required int validCount,
    required Duration timeout,
    required StreamController<SsdpResponse> controller,
    required void Function(String) log,
  }) {
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
      return null;
    }

    log('Total bytes sent: $bytesSent');
    // Start timeout AFTER all requests are sent
    return Timer(timeout, () {
      log('Discovery timeout reached');
      if (!controller.isClosed) {
        controller.close();
      }
    });
  }

  void _failSending(
    Object e, {
    required StreamController<SsdpResponse> controller,
  }) {
    if (!controller.isClosed) {
      controller.addError(e);
      controller.close();
    }
  }

  /// Send discovery requests with retry on individual send failures
  Future<int> _sendDiscoveryRequests({
    required RawDatagramSocket socket,
    required List<int> request,
    required InternetAddress multicastAddress,
    required void Function(String) log,
  }) async {
    const maxConsecutiveFailures = 3;

    // Send requests with staggered timing
    // Timing: 0ms, 500ms, 500ms, 1000ms, 1000ms, 1000ms (~4 seconds total)
    const requestCount = 6;
    const delays = [0, 500, 500, 1000, 1000, 1000];

    final state = _SendState();

    for (int i = 0; i < requestCount; i++) {
      if (i > 0) {
        await Future.delayed(Duration(milliseconds: delays[i]));
      }

      final shouldStop = await _sendOneDiscoveryRequest(
        index: i,
        socket: socket,
        request: request,
        multicastAddress: multicastAddress,
        log: log,
        state: state,
        maxConsecutiveFailures: maxConsecutiveFailures,
      );

      if (shouldStop) {
        break;
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
        state.totalBytesSent += broadcastBytes;
        log('Broadcast fallback: $broadcastBytes bytes');
      }
    } catch (e) {
      log('Broadcast fallback failed (OK): $e');
    }

    return state.totalBytesSent;
  }

  Future<bool> _sendOneDiscoveryRequest({
    required int index,
    required RawDatagramSocket socket,
    required List<int> request,
    required InternetAddress multicastAddress,
    required void Function(String) log,
    required _SendState state,
    required int maxConsecutiveFailures,
  }) async {
    try {
      final bytesSent = socket.send(
        request,
        multicastAddress,
        WemoConstants.ssdpPort,
      );

      if (bytesSent > 0) {
        state.totalBytesSent += bytesSent;
        state.consecutiveFailures = 0;
        log('M-SEARCH #${index + 1}: $bytesSent bytes');
      } else {
        state.consecutiveFailures++;
        log('M-SEARCH #${index + 1}: 0 bytes (attempt failed)');

        await _retryFirstFailedSend(
          index: index,
          socket: socket,
          request: request,
          multicastAddress: multicastAddress,
          log: log,
          state: state,
        );
      }

      if (state.consecutiveFailures >= maxConsecutiveFailures) {
        log('Too many consecutive send failures, aborting');
        return true;
      }
    } catch (e) {
      log('Send error on request #${index + 1}: $e');
      state.consecutiveFailures++;

      if (state.consecutiveFailures >= maxConsecutiveFailures) {
        throw DiscoveryException(
          'Cannot access local network. Please ensure:\n'
          '• You are connected to WiFi\n'
          '• Local Network access is enabled in Settings',
          cause: e,
        );
      }
    }
    return false;
  }

  // If first request fails with 0 bytes, wait and retry once
  Future<void> _retryFirstFailedSend({
    required int index,
    required RawDatagramSocket socket,
    required List<int> request,
    required InternetAddress multicastAddress,
    required void Function(String) log,
    required _SendState state,
  }) async {
    if (index != 0 || state.consecutiveFailures != 1) return;

    log('First send returned 0, retrying after delay...');
    await Future.delayed(const Duration(milliseconds: 100));
    final retryBytes = socket.send(
      request,
      multicastAddress,
      WemoConstants.ssdpPort,
    );
    if (retryBytes > 0) {
      state.totalBytesSent += retryBytes;
      state.consecutiveFailures = 0;
      log('Retry successful: $retryBytes bytes');
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
