import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import 'constants.dart';
import 'exceptions.dart';

/// SOAP client for communicating with Wemo devices
class SoapClient {
  final http.Client _client;
  final Duration timeout;

  SoapClient({
    http.Client? client,
    this.timeout = WemoConstants.requestTimeout,
  }) : _client = client ?? http.Client();

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

  /// Send a SOAP request to a Wemo device
  Future<Map<String, String>> call({
    required String host,
    required int port,
    required String serviceName,
    required String action,
    required String serviceType,
    Map<String, String>? arguments,
    Duration? requestTimeout,
  }) async {
    final url = Uri.parse('http://$host:$port${WemoConstants.controlPath}/$serviceName');
    final envelope = buildSoapEnvelope(
      action: action,
      serviceType: serviceType,
      arguments: arguments,
    );

    final headers = {
      'Content-Type': 'text/xml; charset=utf-8',
      'SOAPACTION': '"$serviceType#$action"',
    };

    try {
      final response = await _client
          .post(url, headers: headers, body: utf8.encode(envelope))
          .timeout(requestTimeout ?? timeout);

      if (response.statusCode != 200) {
        // If 500, it might be a SOAP Fault
        if (response.statusCode == 500) {
          try {
            _parseSoapResponse(response.body, action);
          } catch (e) {
            // If it was a SOAP fault (which throws SoapException), rethrow it
            // checking if it has fault details to distinguish from parsing error
            if (e is SoapException && e.faultCode != null) {
              rethrow;
            }
          }
        }

        throw SoapException(
          'HTTP ${response.statusCode}',
          errorCode: response.statusCode,
        );
      }

      return _parseSoapResponse(response.body, action);
    } on SoapException {
      rethrow;
    } catch (e) {
      throw NetworkException('Failed to call $action on $host:$port', e);
    }
  }

  /// Parse SOAP response and extract result values
  Map<String, String> _parseSoapResponse(String body, String action) {
    try {
      final document = XmlDocument.parse(body);
      final envelope = document.rootElement;

      // Check for SOAP Fault
      final faultElements = envelope.findAllElements('Fault', namespace: WemoConstants.soapEnvelopeNs);
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
          faultCode: faultCode,
          faultString: faultString,
          errorCode: errorCode,
        );
      }

      // Find response element
      final responseElements = envelope.findAllElements('${action}Response');
      if (responseElements.isEmpty) {
        // Try without namespace prefix
        final bodyElement = envelope.findAllElements('Body', namespace: WemoConstants.soapEnvelopeNs).first;
        final responseElement = bodyElement.children
            .whereType<XmlElement>()
            .where((e) => e.localName == '${action}Response')
            .firstOrNull;

        if (responseElement == null) {
          throw SoapException('No response element found for $action');
        }

        return _extractResponseValues(responseElement);
      }

      return _extractResponseValues(responseElements.first);
    } catch (e) {
      if (e is SoapException) rethrow;
      throw SoapException('Failed to parse SOAP response', cause: e);
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
    _client.close();
  }
}
