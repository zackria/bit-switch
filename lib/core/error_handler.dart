
import 'exceptions.dart';

/// Helper class to generate user-friendly error messages
class ErrorHandler {
  /// Convert an exception to a user-friendly error message
  static String getUserFriendlyMessage(dynamic error) {
    if (error is NetworkException) {
      if (error.message.contains('Connection closed') || 
          error.message.contains('Connection reset') ||
          error.message.contains('Connection refused')) {
        return 'Unable to reach device. Please check your connection.';
      }
      if (error.message.contains('timed out')) {
        return 'Request timed out. The device may be offline.';
      }
      return 'Network error: Unable to communicate with device.';
    }
    
    if (error is SoapException) {
      return 'Device returned an error.';
    }
    
    if (error is TimeoutException) {
      return 'Operation timed out. Please try again.';
    }
    
    if (error is DeviceException) {
      return error.message;
    }

    if (error is DiscoveryException) {
      if (error.message.contains('Permission')) {
        return 'Please enable network permissions to find devices.';
      }
      return 'Unable to discover devices. Please check your WiFi connection.';
    }

    // Default fallback
    return 'An unexpected error occurred.';
  }
}
