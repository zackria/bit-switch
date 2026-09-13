import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:xml/xml.dart';
import 'constants.dart';
import 'exceptions.dart';

/// HTTP response for testing
class HttpResponse {
  final int statusCode;
  final String body;

  HttpResponse(this.statusCode, this.body);
}

/// Type for mock HTTP handler function used in testing
typedef MockHttpHandler = Future<HttpResponse> Function(
  Uri url,
  Map<String, String> headers,
  String body,
);

/// Per-call overrides of [SoapClient]'s instance-level timeout/maxRetries
class SoapCallOptions {
  final Duration? requestTimeout;
  final int? maxRetriesOverride;

  const SoapCallOptions({this.requestTimeout, this.maxRetriesOverride});
}

/// SOAP client for communicating with Wemo devices
class SoapClient {
  final HttpClient? _client;
  final MockHttpHandler? mockHandler;
  Duration _timeout;
  final int maxRetries;
  final Duration retryDelay;

  /// Create a SoapClient for production use
  SoapClient({
    HttpClient? client,
    this._timeout = WemoConstants.requestTimeout,
    this.maxRetries = WemoConstants.maxRetries,
    this.retryDelay = const Duration(milliseconds: 500),
  })  : _client = client ?? HttpClient(),
        mockHandler = null {
    // Configure the HTTP client for better connection handling
    _updateClientTimeout();
  }

  /// Create a SoapClient with a mock handler for testing
  SoapClient.forTesting({
    required MockHttpHandler this.mockHandler,
    this._timeout = WemoConstants.requestTimeout,
    this.maxRetries = 1,
    this.retryDelay = Duration.zero,
  }) : _client = null;

  Duration get timeout => _timeout;

  set timeout(Duration value) {
    _timeout = value;
    _updateClientTimeout();
  }

  void _updateClientTimeout() {
    if (_client != null) {
      _client.connectionTimeout = _timeout;
      _client.idleTimeout = Duration(seconds: _timeout.inSeconds + 2);
    }
  }

  /// Build a SOAP envelope with the given action and arguments
  String buildSoapEnvelope({
    required String action,
    required String serviceType,
    Map<String, String>? arguments,
  }) {
    final argsXml = arguments?.entries
            .map((e) => '<${e.key}>${_escapeXml(e.value)}</${e.key}>')
            .join('') ??
        '';

    return '''<?xml version="1.0" encoding="utf-8"?>
<s:Envelope xmlns:s="${WemoConstants.soapEnvelopeNs}" s:encodingStyle="${WemoConstants.soapEncodingNs}">
  <s:Body>
    <u:$action xmlns:u="$serviceType">$argsXml</u:$action>
  </s:Body>
</s:Envelope>''';
  }

  /// Send a SOAP request to a Wemo device with retry logic
  ///
  /// [options] overrides the instance-level timeout/maxRetries for this call only.
  Future<Map<String, String>> call({
    required String host,
    required int port,
    required String serviceName,
    required String action,
    required String serviceType,
    Map<String, String>? arguments,
    SoapCallOptions? options,
  }) async {
    final url = Uri.parse('http://$host:$port${WemoConstants.controlPath}/$serviceName');
    final envelope = buildSoapEnvelope(
      action: action,
      serviceType: serviceType,
      arguments: arguments,
    );

    return _callWithRetries(
      url: url,
      envelope: envelope,
      action: action,
      serviceType: serviceType,
      timeout: options?.requestTimeout ?? timeout,
      maxRetries: options?.maxRetriesOverride ?? maxRetries,
    );
  }

  void _debugLog(String message) {
    if (kDebugMode) debugPrint(message);
  }

  Future<Map<String, String>> _callWithRetries({
    required Uri url,
    required String envelope,
    required String action,
    required String serviceType,
    required Duration timeout,
    required int maxRetries,
  }) async {
    Exception? lastException;

    _debugLog('[SoapClient] $action → $url (timeout=${timeout.inSeconds}s, retries=$maxRetries)');

    for (int attempt = 0; attempt < maxRetries; attempt++) {
      try {
        final result = await _performRequest(
          url: url,
          envelope: envelope,
          action: action,
          serviceType: serviceType,
          timeout: timeout,
        );
        _debugLog('[SoapClient] $action success on attempt ${attempt + 1}');
        return result;
      } on SoapException catch (e) {
        // Don't retry SOAP faults - these are application-level errors
        _debugLog('[SoapClient] $action SOAP fault (no retry): ${e.runtimeType}: $e');
        rethrow;
      } catch (e) {
        lastException = e is Exception ? e : Exception(e.toString());
        _debugLog('[SoapClient] $action attempt ${attempt + 1}/$maxRetries failed: ${e.runtimeType}: $e');
        // Wait before retrying, but not on the last attempt
        if (attempt < maxRetries - 1) {
          await Future.delayed(retryDelay);
        }
      }
    }

    _debugLog('[SoapClient] $action exhausted all $maxRetries retries. Last error: $lastException');
    throw NetworkException(
      'Failed to call $action after $maxRetries attempts',
      host: url.host,
      port: url.port,
      attemptCount: maxRetries,
      cause: lastException,
    );
  }

  /// Perform a single HTTP request
  Future<Map<String, String>> _performRequest({
    required Uri url,
    required String envelope,
    required String action,
    required String serviceType,
    required Duration timeout,
  }) async {
    final headers = {
      'Content-Type': 'text/xml; charset=utf-8',
      'SOAPACTION': '"$serviceType#$action"',
      'Connection': 'close',
    };

    // Use mock handler if available (for testing)
    if (mockHandler != null) {
      // mockHandler is public, so unlike a private field it isn't promoted by the null check
      final mockResponse = await mockHandler!(url, headers, envelope);
      return _handleResponse(mockResponse.statusCode, mockResponse.body, action);
    }

    // Production path using dart:io HttpClient
    HttpClientRequest? request;
    HttpClientResponse? response;

    try {
      request = await _client!.postUrl(url).timeout(timeout);

      // Set headers
      request.headers.set('Content-Type', 'text/xml; charset=utf-8');
      request.headers.set('SOAPACTION', '"$serviceType#$action"');
      request.headers.set('Connection', 'close');

      // Write body
      request.add(utf8.encode(envelope));

      // Get response with timeout
      response = await request.close().timeout(timeout);

      // Read response body
      final responseBody = await response.transform(utf8.decoder).join().timeout(timeout);

      return _handleResponse(response.statusCode, responseBody, action);
    } finally {
      // Ensure response stream is drained to allow connection reuse/cleanup
      if (response != null) {
        try {
          await response.drain<void>();
        } catch (_) {
          // Ignore drain errors
        }
      }
    }
  }

  /// Handle HTTP response and parse SOAP
  Map<String, String> _handleResponse(int statusCode, String body, String action) {
    if (statusCode != 200) {
      // If 500, it might be a SOAP Fault
      if (statusCode == 500) {
        try {
          _parseSoapResponse(body, action);
        } catch (e) {
          // If it was a SOAP fault (which throws SoapException), rethrow it
          if (e is SoapException && e.faultCode != null) {
            rethrow;
          }
        }
      }

      throw SoapException(
        'HTTP $statusCode',
        action: action,
        httpStatusCode: statusCode,
      );
    }

    return _parseSoapResponse(body, action);
  }

  /// Parse SOAP response and extract result values
  Map<String, String> _parseSoapResponse(String body, String action) {
    try {
      final document = XmlDocument.parse(body);
      final envelope = document.rootElement;

      // Check for SOAP Fault
      final faultElements = envelope.findAllElements(
        'Fault',
        namespaceUri: WemoConstants.soapEnvelopeNs,
      );
      if (faultElements.isNotEmpty) {
        final fault = faultElements.first;
        final faultCode = fault.findElements('faultcode').firstOrNull?.innerText;
        final faultString = fault.findElements('faultstring').firstOrNull?.innerText;

        int? errorCode;
        final upnpError = fault.findAllElements('UPnPError').firstOrNull;
        if (upnpError != null) {
          final errorCodeStr = upnpError.findElements('errorCode').firstOrNull?.innerText;
          errorCode = errorCodeStr != null ? int.tryParse(errorCodeStr) : null;
        }

        throw SoapException(
          faultString ?? 'Unknown SOAP fault',
          action: action,
          faultCode: faultCode,
          faultString: faultString,
          errorCode: errorCode,
        );
      }

      // Find response element
      final responseElements = envelope.findAllElements('${action}Response');
      if (responseElements.isEmpty) {
        // Try without namespace prefix
        final bodyElement = envelope
            .findAllElements(
              'Body',
              namespaceUri: WemoConstants.soapEnvelopeNs,
            )
            .first;
        final responseElement = bodyElement.children
            .whereType<XmlElement>()
            .where((e) => e.localName == '${action}Response')
            .firstOrNull;

        if (responseElement == null) {
          throw SoapException(
            'No response element found for $action',
            action: action,
          );
        }

        return _extractResponseValues(responseElement);
      }

      return _extractResponseValues(responseElements.first);
    } catch (e) {
      if (e is SoapException) rethrow;
      throw SoapException('Failed to parse SOAP response', action: action, cause: e);
    }
  }

  Map<String, String> _extractResponseValues(XmlElement responseElement) {
    final result = <String, String>{};
    for (final child in responseElement.children.whereType<XmlElement>()) {
      result[child.localName] = child.innerText;
    }
    return result;
  }

  String _escapeXml(String value) {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&apos;');
  }

  void dispose() {
    _client?.close(force: true);
  }
}
