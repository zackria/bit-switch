import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/error_handler.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  group('SoapErrorCodes', () {
    test('should return message for known error codes', () {
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.invalidAction),
        'The device does not support this action.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.invalidArgs),
        'Invalid arguments were sent to the device.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.actionFailed),
        'The device failed to perform the requested action.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.argumentValueInvalid),
        'An invalid value was provided.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.argumentValueOutOfRange),
        'The value is out of the acceptable range.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.optionalActionNotImplemented),
        'This feature is not available on this device.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.outOfMemory),
        'The device is out of memory. Try again later.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.humanInterventionRequired),
        'Manual action is required on the device.',
      );
      expect(
        SoapErrorCodes.getMessage(SoapErrorCodes.actionNotAuthorized),
        'This action is not authorized.',
      );
    });

    test('should return null for unknown error codes', () {
      expect(SoapErrorCodes.getMessage(999), null);
      expect(SoapErrorCodes.getMessage(0), null);
      expect(SoapErrorCodes.getMessage(null), null);
    });
  });

  group('ErrorHandler.getUserFriendlyMessage', () {
    group('NetworkException handling', () {
      test('should handle connection closed', () {
        final e = NetworkException('Connection closed by remote host');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('Unable to reach'));
      });

      test('should handle connection refused', () {
        final e = NetworkException('Connection refused');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('Unable to reach'));
      });

      test('should handle timeout', () {
        final e = NetworkException('Request timed out');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('timed out'));
      });

      test('should include attempt count in timeout message', () {
        final e = NetworkException('Request timed out', attemptCount: 3);
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('3 attempts'));
      });

      test('should handle no route to host', () {
        final e = NetworkException('No route to host');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('WiFi'));
      });

      test('should handle host unreachable', () {
        final e = NetworkException('Host unreachable');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('unreachable'));
      });

      test('should provide generic message for unknown network error', () {
        final e = NetworkException('Some obscure error');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('Network error'));
      });
    });

    group('SoapException handling', () {
      test('should use error code message when available', () {
        final e = SoapException(
          'UPnP error',
          errorCode: SoapErrorCodes.invalidAction,
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, 'The device does not support this action.');
      });

      test('should handle invalid action in fault string', () {
        final e = SoapException(
          'Fault',
          faultString: 'Invalid Action requested',
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('does not support'));
      });

      test('should handle unauthorized in fault string', () {
        final e = SoapException('Fault', faultString: 'Action not authorized');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('not authorized'));
      });

      test('should handle HTTP 404', () {
        final e = SoapException('Not found', httpStatusCode: 404);
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('not found'));
      });

      test('should handle HTTP 500 with SOAP fault', () {
        final e = SoapException(
          'Internal error',
          httpStatusCode: 500,
          faultCode: 'Server',
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('error processing'));
      });

      test('should handle HTTP 500 without SOAP fault', () {
        final e = SoapException('Internal error', httpStatusCode: 500);
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('internal error'));
      });

      test('should handle HTTP 503', () {
        final e = SoapException('Unavailable', httpStatusCode: 503);
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('temporarily unavailable'));
      });

      test('should include action in message when available', () {
        final e = SoapException('Error', action: 'GetBinaryState');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('get device state'));
      });

      test('should provide generic message for unknown SOAP error', () {
        final e = SoapException('Unknown error');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('device returned an error'));
      });
    });

    group('TimeoutException handling', () {
      test('should include operation when available', () {
        final e = TimeoutException('Timeout', operation: 'discovery');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('discovery'));
      });

      test('should include duration for long timeouts', () {
        final e = TimeoutException(
          'Timeout',
          duration: const Duration(seconds: 15),
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('15 seconds'));
      });

      test('should provide generic message for short timeout', () {
        final e = TimeoutException(
          'Timeout',
          duration: const Duration(seconds: 3),
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('timed out'));
      });
    });

    group('DeviceException handling', () {
      test('should use exception message directly', () {
        final e = DeviceException('Device does not support brightness control');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, 'Device does not support brightness control');
      });

      test('should prepend device name when available', () {
        final e = DeviceException(
          'Connection failed',
          deviceName: 'Kitchen Plug',
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, 'Kitchen Plug: Connection failed');
      });

      test('should not duplicate device name if already in message', () {
        final e = DeviceException(
          'Kitchen Plug is offline',
          deviceName: 'Kitchen Plug',
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, 'Kitchen Plug is offline');
      });
    });

    group('DiscoveryException handling', () {
      test('should handle permission errors', () {
        final e = DiscoveryException('Permission denied');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('Local Network permission'));
      });

      test('should handle local network errors', () {
        final e = DiscoveryException('Cannot access local network');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('Local Network permission'));
      });

      test('should handle WiFi errors', () {
        final e = DiscoveryException('WiFi not connected');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('WiFi connection'));
      });

      test('should handle timeout with devices found', () {
        final e = DiscoveryException(
          'Discovery timed out',
          cause: null,
          devicesFoundBeforeError: 2,
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('2 device(s) found'));
      });

      test('should handle timeout with no devices found', () {
        final e = DiscoveryException(
          'Discovery timed out',
          cause: null,
          devicesFoundBeforeError: 0,
        );
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('No devices found'));
      });

      test('should provide generic message for unknown discovery error', () {
        final e = DiscoveryException('Unknown error');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('WiFi connection'));
      });
    });

    group('Default fallback', () {
      test('should provide generic message for unknown exceptions', () {
        final e = Exception('Random error');
        final msg = ErrorHandler.getUserFriendlyMessage(e);
        expect(msg, contains('unexpected error'));
      });

      test('should handle null-like errors gracefully', () {
        final msg = ErrorHandler.getUserFriendlyMessage('string error');
        expect(msg, contains('unexpected error'));
      });
    });
  });

  group('ErrorHandler.getRecoverySuggestion', () {
    test('should provide suggestion for timeout NetworkException', () {
      final e = NetworkException('Connection timed out');
      final suggestion = ErrorHandler.getRecoverySuggestion(e);
      expect(suggestion, isNotNull);
      expect(suggestion, contains('refresh'));
    });

    test('should provide suggestion for other NetworkException', () {
      final e = NetworkException('Connection refused');
      final suggestion = ErrorHandler.getRecoverySuggestion(e);
      expect(suggestion, isNotNull);
      expect(suggestion, contains('powered on'));
    });

    test('should provide suggestion for DiscoveryException', () {
      final e = DiscoveryException('No devices found');
      final suggestion = ErrorHandler.getRecoverySuggestion(e);
      expect(suggestion, isNotNull);
      expect(suggestion, contains('same WiFi'));
    });

    test('should provide suggestion for human intervention SOAP error', () {
      final e = SoapException(
        'Error',
        errorCode: SoapErrorCodes.humanInterventionRequired,
      );
      final suggestion = ErrorHandler.getRecoverySuggestion(e);
      expect(suggestion, isNotNull);
      expect(suggestion, contains('physical device'));
    });

    test('should provide suggestion for HTTP 503', () {
      final e = SoapException('Unavailable', httpStatusCode: 503);
      final suggestion = ErrorHandler.getRecoverySuggestion(e);
      expect(suggestion, isNotNull);
      expect(suggestion, contains('Wait'));
    });

    test('should provide suggestion for TimeoutException', () {
      final e = TimeoutException('Timed out');
      final suggestion = ErrorHandler.getRecoverySuggestion(e);
      expect(suggestion, isNotNull);
      expect(suggestion, contains('busy'));
    });

    test('should return null for unknown exceptions', () {
      final e = Exception('Random');
      final suggestion = ErrorHandler.getRecoverySuggestion(e);
      expect(suggestion, isNull);
    });
  });

  group('ErrorHandler.isRetryable', () {
    test('should return true for timeout NetworkException', () {
      final e = NetworkException('Request timed out');
      expect(ErrorHandler.isRetryable(e), true);
    });

    test('should return true for connection reset NetworkException', () {
      final e = NetworkException('Connection reset by peer');
      expect(ErrorHandler.isRetryable(e), true);
    });

    test('should return false for connection refused NetworkException', () {
      final e = NetworkException('Connection refused');
      expect(ErrorHandler.isRetryable(e), false);
    });

    test('should return true for HTTP 500 SoapException', () {
      final e = SoapException('Error', httpStatusCode: 500);
      expect(ErrorHandler.isRetryable(e), true);
    });

    test('should return true for HTTP 503 SoapException', () {
      final e = SoapException('Unavailable', httpStatusCode: 503);
      expect(ErrorHandler.isRetryable(e), true);
    });

    test('should return false for HTTP 404 SoapException', () {
      final e = SoapException('Not found', httpStatusCode: 404);
      expect(ErrorHandler.isRetryable(e), false);
    });

    test('should return true for TimeoutException', () {
      final e = TimeoutException('Timed out');
      expect(ErrorHandler.isRetryable(e), true);
    });

    test('should return false for DeviceException', () {
      final e = DeviceException('Not supported');
      expect(ErrorHandler.isRetryable(e), false);
    });

    test('should return false for unknown exceptions', () {
      final e = Exception('Random');
      expect(ErrorHandler.isRetryable(e), false);
    });
  });

  group('ErrorHandler._actionToVerb', () {
    // Testing via getUserFriendlyMessage since _actionToVerb is private
    test('should convert GetBinaryState to readable text', () {
      final e = SoapException('Error', action: 'GetBinaryState');
      final msg = ErrorHandler.getUserFriendlyMessage(e);
      expect(msg, contains('get device state'));
    });

    test('should convert SetBinaryState to readable text', () {
      final e = SoapException('Error', action: 'SetBinaryState');
      final msg = ErrorHandler.getUserFriendlyMessage(e);
      expect(msg, contains('set device state'));
    });

    test('should convert GetInsightParams to readable text', () {
      final e = SoapException('Error', action: 'GetInsightParams');
      final msg = ErrorHandler.getUserFriendlyMessage(e);
      expect(msg, contains('get energy data'));
    });

    test('should convert GetApList to readable text', () {
      final e = SoapException('Error', action: 'GetApList');
      final msg = ErrorHandler.getUserFriendlyMessage(e);
      expect(msg, contains('scan for networks'));
    });

    test('should convert ConnectHomeNetwork to readable text', () {
      final e = SoapException('Error', action: 'ConnectHomeNetwork');
      final msg = ErrorHandler.getUserFriendlyMessage(e);
      expect(msg, contains('connect to WiFi'));
    });

    test('should handle unknown actions with camelCase conversion', () {
      final e = SoapException('Error', action: 'SomeNewAction');
      final msg = ErrorHandler.getUserFriendlyMessage(e);
      // Should convert camelCase to readable text
      expect(msg.toLowerCase(), contains('some'));
    });
  });
}
