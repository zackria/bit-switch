/// Custom exceptions for Wemo device communication
library;

/// Base exception for all Wemo-related errors
class WemoException implements Exception {
  final String message;
  final dynamic cause;

  WemoException(this.message, [this.cause]);

  @override
  String toString() => 'WemoException: $message${cause != null ? ' ($cause)' : ''}';
}

/// Exception for network-related errors
class NetworkException extends WemoException {
  NetworkException(super.message, [super.cause]);

  @override
  String toString() => 'NetworkException: $message${cause != null ? ' ($cause)' : ''}';
}

/// Exception for device discovery failures
class DiscoveryException extends WemoException {
  DiscoveryException(super.message, [super.cause]);

  @override
  String toString() => 'DiscoveryException: $message${cause != null ? ' ($cause)' : ''}';
}

/// Exception for SOAP communication errors
class SoapException extends WemoException {
  final String? faultCode;
  final String? faultString;
  final int? errorCode;

  SoapException(
    String message, {
    this.faultCode,
    this.faultString,
    this.errorCode,
    dynamic cause,
  }) : super(message, cause);

  @override
  String toString() {
    final buffer = StringBuffer('SoapException: $message');
    if (faultCode != null) buffer.write(' [code: $faultCode]');
    if (faultString != null) buffer.write(' [fault: $faultString]');
    if (errorCode != null) buffer.write(' [error: $errorCode]');
    if (cause != null) buffer.write(' ($cause)');
    return buffer.toString();
  }
}

/// Exception for device control errors
class DeviceException extends WemoException {
  final String? deviceName;

  DeviceException(String message, {this.deviceName, dynamic cause})
      : super(message, cause);

  @override
  String toString() {
    final prefix = deviceName != null ? '[$deviceName] ' : '';
    return 'DeviceException: $prefix$message${cause != null ? ' ($cause)' : ''}';
  }
}

/// Exception for timeout errors
class TimeoutException extends WemoException {
  final Duration? duration;

  TimeoutException(String message, {this.duration, dynamic cause})
      : super(message, cause);

  @override
  String toString() {
    final durationStr = duration != null ? ' after ${duration!.inSeconds}s' : '';
    return 'TimeoutException: $message$durationStr${cause != null ? ' ($cause)' : ''}';
  }
}
