import 'package:flutter/widgets.dart';
import 'package:bit_switch/l10n/app_localizations.dart';
import 'package:bit_switch/l10n/l10n.dart';
import 'exceptions.dart';

/// Resolve localizations from the widget tree when a context is available,
/// falling back to English for context-free callers (providers, services,
/// tests).
AppLocalizations _resolveLocalizations(BuildContext? context) {
  if (context != null) {
    final loc = AppLocalizations.of(context);
    if (loc != null) return loc;
  }
  return currentAppLocalizations;
}

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
  ///
  /// [context] is optional; without it (or outside a localized widget tree)
  /// messages fall back to English.
  static String? getMessage(int? errorCode, {BuildContext? context}) {
    if (errorCode == null) return null;
    final loc = _resolveLocalizations(context);

    switch (errorCode) {
      case invalidAction:
        return loc.errDeviceNotSupportAction;
      case invalidArgs:
        return loc.errInvalidArgs;
      case actionFailed:
        return loc.errActionFailed;
      case argumentValueInvalid:
        return loc.errInvalidValue;
      case argumentValueOutOfRange:
        return loc.errValueOutOfRange;
      case optionalActionNotImplemented:
        return loc.errFeatureNotAvailable;
      case outOfMemory:
        return loc.errOutOfMemory;
      case humanInterventionRequired:
        return loc.errManualActionRequired;
      case actionNotAuthorized:
        return loc.errActionNotAuthorized;
      default:
        return null;
    }
  }
}

/// Helper class to generate user-friendly error messages
class ErrorHandler {
  /// Convert an exception to a user-friendly error message
  ///
  /// [context] is optional; without it (or outside a localized widget tree)
  /// messages fall back to English.
  static String getUserFriendlyMessage(dynamic error, {BuildContext? context}) {
    final loc = _resolveLocalizations(context);

    if (error is NetworkException) {
      return _handleNetworkException(loc, error);
    }

    if (error is SoapException) {
      return _handleSoapException(loc, error, context);
    }

    if (error is TimeoutException) {
      return _handleTimeoutException(loc, error);
    }

    if (error is DeviceException) {
      return _handleDeviceException(loc, error);
    }

    if (error is DiscoveryException) {
      return _handleDiscoveryException(loc, error);
    }

    // Default fallback
    return loc.errUnexpected;
  }

  static String _handleNetworkException(
    AppLocalizations loc,
    NetworkException error,
  ) {
    final message = error.message.toLowerCase();

    if (message.contains('connection closed') ||
        message.contains('connection reset') ||
        message.contains('connection refused')) {
      return loc.errDeviceUnreachableOffline;
    }

    if (message.contains('timed out')) {
      if (error.attemptCount != null && error.attemptCount! > 1) {
        return loc.errRequestTimedOutAttempts(error.attemptCount!);
      }
      return loc.errRequestTimedOut;
    }

    if (message.contains('no route to host')) {
      return loc.errNoRouteToHost;
    }

    if (message.contains('host unreachable')) {
      return loc.errHostUnreachable;
    }

    if (error.attemptCount != null && error.attemptCount! > 1) {
      return loc.errCommFailedAttempts(error.attemptCount!);
    }

    return loc.errNetworkErrorComm;
  }

  static String _handleSoapException(
    AppLocalizations loc,
    SoapException error,
    BuildContext? context,
  ) {
    // Check for specific UPnP error codes first
    final errorCodeMessage = SoapErrorCodes.getMessage(
      error.errorCode,
      context: context,
    );
    if (errorCodeMessage != null) {
      return errorCodeMessage;
    }

    // Check fault string for common patterns
    if (error.faultString != null) {
      final fault = error.faultString!.toLowerCase();

      if (fault.contains('invalid') && fault.contains('action')) {
        return loc.errDeviceNotSupportAction;
      }

      if (fault.contains('unauthorized') || fault.contains('not authorized')) {
        return loc.errActionNotAuthorizedDevice;
      }
    }

    // HTTP-level errors
    if (error.httpStatusCode != null) {
      switch (error.httpStatusCode) {
        case 404:
          return loc.errDeviceServiceNotFound;
        case 500:
          if (error.isSoapFault) {
            return loc.errDeviceEncounteredError;
          }
          return loc.errDeviceInternalError;
        case 503:
          return loc.errDeviceTempUnavailable;
        default:
          if (error.httpStatusCode! >= 400) {
            return loc.errDeviceReturnedHttpError(error.httpStatusCode!);
          }
      }
    }

    // Include action context if available
    if (error.action != null) {
      return loc.errFailedToPerformAction(_actionToVerb(loc, error.action!));
    }

    return loc.errDeviceReturnedError;
  }

  static String _handleTimeoutException(
    AppLocalizations loc,
    TimeoutException error,
  ) {
    if (error.operation != null) {
      return loc.errOperationTimedOutName(error.operation!);
    }

    if (error.duration != null && error.duration!.inSeconds > 10) {
      return loc.errOperationTimedOutSeconds(error.duration!.inSeconds);
    }

    return loc.errOperationTimedOut;
  }

  static String _handleDeviceException(
    AppLocalizations loc,
    DeviceException error,
  ) {
    // DeviceException messages are usually already user-friendly
    final message = error.message;

    // Add device name context if available
    if (error.deviceName != null && !message.contains(error.deviceName!)) {
      return loc.errDeviceExceptionMessage(error.deviceName!, message);
    }

    return message;
  }

  static String _handleDiscoveryException(
    AppLocalizations loc,
    DiscoveryException error,
  ) {
    final message = error.message.toLowerCase();

    if (message.contains('permission')) {
      return loc.errEnableLocalNetwork;
    }

    if (message.contains('local network')) {
      return loc.errCannotAccessLocalNetwork;
    }

    if (message.contains('wifi') || message.contains('network')) {
      return loc.errCheckWifiConnection;
    }

    if (message.contains('timeout') || message.contains('timed out')) {
      if (error.devicesFoundBeforeError != null &&
          error.devicesFoundBeforeError! > 0) {
        return loc.errDiscoveryInterrupted(error.devicesFoundBeforeError!);
      }
      return loc.errNoDevicesFound;
    }

    return loc.errCheckWifiConnection;
  }

  /// Convert a SOAP action name to a user-friendly verb
  static String _actionToVerb(AppLocalizations loc, String action) {
    switch (action) {
      case 'GetBinaryState':
        return loc.actionGetDeviceState;
      case 'SetBinaryState':
        return loc.actionSetDeviceState;
      case 'GetInsightParams':
        return loc.actionGetEnergyData;
      case 'GetApList':
        return loc.actionScanNetworks;
      case 'ConnectHomeNetwork':
        return loc.actionConnectWifi;
      case 'GetNetworkStatus':
        return loc.actionCheckConnection;
      case 'ReSetup':
      case 'ReSet':
        return loc.actionResetDevice;
      default:
        // Convert camelCase to readable text
        final readable = action
            .replaceAllMapped(
              RegExp(r'([A-Z])'),
              (m) => ' ${m.group(1)!.toLowerCase()}',
            )
            .trim();
        return readable.isEmpty ? loc.actionPerform : readable;
    }
  }

  /// Get a recovery suggestion for an error
  ///
  /// [context] is optional; without it (or outside a localized widget tree)
  /// suggestions fall back to English.
  static String? getRecoverySuggestion(dynamic error, {BuildContext? context}) {
    final loc = _resolveLocalizations(context);

    if (error is NetworkException) {
      if (error.message.contains('timed out')) {
        return loc.suggestTryRefreshing;
      }
      return loc.suggestEnsurePoweredOn;
    }

    if (error is DiscoveryException) {
      return loc.suggestMakeSureSameWifi;
    }

    if (error is SoapException) {
      if (error.errorCode == SoapErrorCodes.humanInterventionRequired) {
        return loc.suggestCheckPhysical;
      }
      if (error.httpStatusCode == 503) {
        return loc.suggestWaitAndTry;
      }
    }

    if (error is TimeoutException) {
      return loc.suggestDeviceBusy;
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
