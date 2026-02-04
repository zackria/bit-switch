import 'exceptions.dart';

/// Known UPnP/SOAP error codes and their meanings
class SoapErrorCodes {
  static const int invalidAction = 401;
  static const int invalidArgs = 402;
  static const int actionFailed = 501;
  static const int argumentValueInvalid = 600;
  static const int argumentValueOutOfRange = 601;
  static const int optionalActionNotImplemented = 602;
  static const int outOfMemory = 603;
  static const int humanInterventionRequired = 604;
  static const int stringArgumentTooLong = 605;
  static const int actionNotAuthorized = 606;
  static const int signatureFailure = 607;
  static const int signatureMissing = 608;
  static const int notEncrypted = 609;
  static const int invalidSequence = 610;
  static const int invalidControlUrl = 611;
  static const int noSuchSession = 612;

  /// Get a user-friendly message for a SOAP error code
  static String? getMessage(int? errorCode) {
    if (errorCode == null) return null;

    switch (errorCode) {
      case invalidAction:
        return 'The device does not support this action.';
      case invalidArgs:
        return 'Invalid arguments were sent to the device.';
      case actionFailed:
        return 'The device failed to perform the requested action.';
      case argumentValueInvalid:
        return 'An invalid value was provided.';
      case argumentValueOutOfRange:
        return 'The value is out of the acceptable range.';
      case optionalActionNotImplemented:
        return 'This feature is not available on this device.';
      case outOfMemory:
        return 'The device is out of memory. Try again later.';
      case humanInterventionRequired:
        return 'Manual action is required on the device.';
      case actionNotAuthorized:
        return 'This action is not authorized.';
      default:
        return null;
    }
  }
}

/// Helper class to generate user-friendly error messages
class ErrorHandler {
  /// Convert an exception to a user-friendly error message
  static String getUserFriendlyMessage(dynamic error) {
    if (error is NetworkException) {
      return _handleNetworkException(error);
    }

    if (error is SoapException) {
      return _handleSoapException(error);
    }

    if (error is TimeoutException) {
      return _handleTimeoutException(error);
    }

    if (error is DeviceException) {
      return _handleDeviceException(error);
    }

    if (error is DiscoveryException) {
      return _handleDiscoveryException(error);
    }

    // Default fallback
    return 'An unexpected error occurred. Please try again.';
  }

  static String _handleNetworkException(NetworkException error) {
    final message = error.message.toLowerCase();

    if (message.contains('connection closed') ||
        message.contains('connection reset') ||
        message.contains('connection refused')) {
      return 'Unable to reach the device. It may be offline or on a different network.';
    }

    if (message.contains('timed out')) {
      if (error.attemptCount != null && error.attemptCount! > 1) {
        return 'Request timed out after ${error.attemptCount} attempts. The device may be offline.';
      }
      return 'Request timed out. The device may be offline.';
    }

    if (message.contains('no route to host')) {
      return 'Cannot reach the device. Please check your WiFi connection.';
    }

    if (message.contains('host unreachable')) {
      return 'The device is unreachable. Please ensure it is powered on and connected to WiFi.';
    }

    if (error.attemptCount != null && error.attemptCount! > 1) {
      return 'Unable to communicate with device after ${error.attemptCount} attempts.';
    }

    return 'Network error: Unable to communicate with device.';
  }

  static String _handleSoapException(SoapException error) {
    // Check for specific UPnP error codes first
    final errorCodeMessage = SoapErrorCodes.getMessage(error.errorCode);
    if (errorCodeMessage != null) {
      return errorCodeMessage;
    }

    // Check fault string for common patterns
    if (error.faultString != null) {
      final fault = error.faultString!.toLowerCase();

      if (fault.contains('invalid') && fault.contains('action')) {
        return 'The device does not support this action.';
      }

      if (fault.contains('unauthorized') || fault.contains('not authorized')) {
        return 'This action is not authorized on the device.';
      }
    }

    // HTTP-level errors
    if (error.httpStatusCode != null) {
      switch (error.httpStatusCode) {
        case 404:
          return 'Device service not found. The device may need a firmware update.';
        case 500:
          if (error.isSoapFault) {
            return 'The device encountered an error processing the request.';
          }
          return 'The device returned an internal error.';
        case 503:
          return 'The device is temporarily unavailable. Please try again.';
        default:
          if (error.httpStatusCode! >= 400) {
            return 'Device returned an error (HTTP ${error.httpStatusCode}).';
          }
      }
    }

    // Include action context if available
    if (error.action != null) {
      return 'Failed to ${_actionToVerb(error.action!)} on the device.';
    }

    return 'The device returned an error.';
  }

  static String _handleTimeoutException(TimeoutException error) {
    if (error.operation != null) {
      return 'The ${error.operation} operation timed out. Please try again.';
    }

    if (error.duration != null && error.duration!.inSeconds > 10) {
      return 'Operation timed out after ${error.duration!.inSeconds} seconds.';
    }

    return 'Operation timed out. Please try again.';
  }

  static String _handleDeviceException(DeviceException error) {
    // DeviceException messages are usually already user-friendly
    final message = error.message;

    // Add device name context if available
    if (error.deviceName != null && !message.contains(error.deviceName!)) {
      return '${error.deviceName}: $message';
    }

    return message;
  }

  static String _handleDiscoveryException(DiscoveryException error) {
    final message = error.message.toLowerCase();

    if (message.contains('permission')) {
      return 'Please enable Local Network permission in Settings to find devices.';
    }

    if (message.contains('local network')) {
      return 'Cannot access local network. Please enable Local Network permission in Settings.';
    }

    if (message.contains('wifi') || message.contains('network')) {
      return 'Unable to discover devices. Please check your WiFi connection.';
    }

    if (message.contains('timeout') || message.contains('timed out')) {
      if (error.devicesFoundBeforeError != null &&
          error.devicesFoundBeforeError! > 0) {
        return 'Discovery interrupted. ${error.devicesFoundBeforeError} device(s) found.';
      }
      return 'No devices found. Please ensure devices are powered on and connected to your network.';
    }

    return 'Unable to discover devices. Please check your WiFi connection.';
  }

  /// Convert a SOAP action name to a user-friendly verb
  static String _actionToVerb(String action) {
    switch (action) {
      case 'GetBinaryState':
        return 'get device state';
      case 'SetBinaryState':
        return 'set device state';
      case 'GetInsightParams':
        return 'get energy data';
      case 'GetApList':
        return 'scan for networks';
      case 'ConnectHomeNetwork':
        return 'connect to WiFi';
      case 'GetNetworkStatus':
        return 'check connection status';
      case 'ReSetup':
      case 'ReSet':
        return 'reset device';
      default:
        // Convert camelCase to readable text
        final readable = action
            .replaceAllMapped(
              RegExp(r'([A-Z])'),
              (m) => ' ${m.group(1)!.toLowerCase()}',
            )
            .trim();
        return readable.isEmpty ? 'perform action' : readable;
    }
  }

  /// Get a recovery suggestion for an error
  static String? getRecoverySuggestion(dynamic error) {
    if (error is NetworkException) {
      if (error.message.contains('timed out')) {
        return 'Try refreshing the device list or check if the device is responding.';
      }
      return 'Ensure the device is powered on and connected to your WiFi network.';
    }

    if (error is DiscoveryException) {
      return 'Make sure your phone is connected to the same WiFi network as your devices.';
    }

    if (error is SoapException) {
      if (error.errorCode == SoapErrorCodes.humanInterventionRequired) {
        return 'Check the physical device for any buttons or switches that need attention.';
      }
      if (error.httpStatusCode == 503) {
        return 'Wait a moment and try again.';
      }
    }

    if (error is TimeoutException) {
      return 'The device may be busy. Try again in a few seconds.';
    }

    return null;
  }

  /// Check if an error is likely recoverable by retrying
  static bool isRetryable(dynamic error) {
    if (error is NetworkException) {
      // Connection issues are often temporary - perform case-insensitive match
      final msg = error.message.toLowerCase();
      return msg.contains('timed out') || msg.contains('connection reset');
    }

    if (error is SoapException) {
      // HTTP 500/503 might be temporary
      return error.httpStatusCode == 500 || error.httpStatusCode == 503;
    }

    if (error is TimeoutException) {
      return true;
    }

    return false;
  }
}
