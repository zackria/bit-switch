/// Custom exceptions for Wemo device communication
library;

/// Base exception for all Wemo-related errors
class WemoException implements Exception {
  final String message;
  final dynamic cause;

  WemoException(this.message, [this.cause]);

  @override
  String toString() =>
      'WemoException: $message${cause != null ? ' ($cause)' : ''}';
}

/// Exception for network-related errors
class NetworkException extends WemoException {
  /// Number of retry attempts made before failing (if applicable)
  final int? attemptCount;

  /// Host that was being contacted when the error occurred
  final String? host;

  /// Port that was being contacted when the error occurred
  final int? port;

  NetworkException(
    String message, {
    this.attemptCount,
    this.host,
    this.port,
    dynamic cause,
  }) : super(message, cause);

  @override
  String toString() {
    final buffer = StringBuffer('NetworkException: $message');
    if (host != null)
      buffer.write(' [host: $host${port != null ? ':$port' : ''}]');
    if (attemptCount != null) buffer.write(' [attempts: $attemptCount]');
    if (cause != null) buffer.write(' ($cause)');
    return buffer.toString();
  }
}

/// Exception for device discovery failures
class DiscoveryException extends WemoException {
  /// Number of devices found before the failure (if applicable)
  final int? devicesFoundBeforeError;

  /// Location URL that failed (if applicable)
  final String? failedLocation;

  DiscoveryException(
    String message, {
    dynamic cause,
    this.devicesFoundBeforeError,
    this.failedLocation,
  }) : super(message, cause);

  @override
  String toString() {
    final buffer = StringBuffer('DiscoveryException: $message');
    if (failedLocation != null) buffer.write(' [location: $failedLocation]');
    if (devicesFoundBeforeError != null)
      buffer.write(' [found: $devicesFoundBeforeError]');
    if (cause != null) buffer.write(' ($cause)');
    return buffer.toString();
  }
}

/// Exception for SOAP communication errors
class SoapException extends WemoException {
  /// SOAP action that was being executed
  final String? action;

  /// SOAP fault code from the response
  final String? faultCode;

  /// SOAP fault string from the response
  final String? faultString;

  /// UPnP error code from the response
  final int? errorCode;

  /// HTTP status code if the error was from HTTP layer
  final int? httpStatusCode;

  SoapException(
    String message, {
    this.action,
    this.faultCode,
    this.faultString,
    this.errorCode,
    this.httpStatusCode,
    dynamic cause,
  }) : super(message, cause);

  /// Returns true if this is a known SOAP fault (application-level error)
  bool get isSoapFault => faultCode != null || faultString != null;

  /// Returns true if this is an HTTP-level error
  bool get isHttpError => httpStatusCode != null && httpStatusCode != 200;

  @override
  String toString() {
    final buffer = StringBuffer('SoapException: $message');
    if (action != null) buffer.write(' [action: $action]');
    if (faultCode != null) buffer.write(' [code: $faultCode]');
    if (faultString != null) buffer.write(' [fault: $faultString]');
    if (errorCode != null) buffer.write(' [error: $errorCode]');
    if (httpStatusCode != null) buffer.write(' [http: $httpStatusCode]');
    if (cause != null) buffer.write(' ($cause)');
    return buffer.toString();
  }
}

/// Exception for device control errors
class DeviceException extends WemoException {
  /// Name of the device that had the error
  final String? deviceName;

  /// Host address of the device
  final String? host;

  /// Port of the device
  final int? port;

  /// The operation that was being performed
  final String? operation;

  DeviceException(
    String message, {
    this.deviceName,
    this.host,
    this.port,
    this.operation,
    dynamic cause,
  }) : super(message, cause);

  @override
  String toString() {
    final buffer = StringBuffer('DeviceException: ');
    if (deviceName != null) buffer.write('[$deviceName] ');
    buffer.write(message);
    if (host != null)
      buffer.write(' [host: $host${port != null ? ':$port' : ''}]');
    if (operation != null) buffer.write(' [op: $operation]');
    if (cause != null) buffer.write(' ($cause)');
    return buffer.toString();
  }
}

/// Exception for timeout errors
class TimeoutException extends WemoException {
  /// Duration that was exceeded
  final Duration? duration;

  /// The operation that timed out
  final String? operation;

  TimeoutException(
    String message, {
    this.duration,
    this.operation,
    dynamic cause,
  }) : super(message, cause);

  @override
  String toString() {
    final buffer = StringBuffer('TimeoutException: $message');
    if (operation != null) buffer.write(' [op: $operation]');
    if (duration != null) buffer.write(' after ${duration!.inSeconds}s');
    if (cause != null) buffer.write(' ($cause)');
    return buffer.toString();
  }
}
