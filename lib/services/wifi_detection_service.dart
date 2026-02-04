import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../core/constants.dart';

/// Service for detecting the current WiFi network and opening WiFi settings
class WifiDetectionService {
  final NetworkInfo _networkInfo;
  bool _permissionRequested = false;
  bool _hasPermission = false;

  WifiDetectionService({NetworkInfo? networkInfo})
    : _networkInfo = networkInfo ?? NetworkInfo();

  /// Request location permission needed for WiFi SSID access on iOS/Android
  /// Returns true if permission is granted, false if denied
  /// Returns null if permission is permanentlyDenied (user must enable in Settings)
  Future<bool?> requestLocationPermission() async {
    if (_permissionRequested && _hasPermission) {
      debugPrint('[WiFiService] Permission already granted (cached)');
      return true;
    }

    try {
      if (Platform.isIOS) {
        // First check current status - if permanentlyDenied, don't request
        final currentStatus = await Permission.locationWhenInUse.status;
        debugPrint(
          '[WiFiService] Current iOS location status: $currentStatus (isPermanentlyDenied: ${currentStatus.isPermanentlyDenied})',
        );

        if (currentStatus.isPermanentlyDenied) {
          debugPrint(
            '[WiFiService] Permission is permanently denied - user must enable in Settings',
          );
          return null; // Signal that user must go to Settings
        }

        if (currentStatus.isGranted) {
          _permissionRequested = true;
          _hasPermission = true;
          return true;
        }

        // Only request if not already denied
        debugPrint('[WiFiService] Requesting iOS location permission...');
        final status = await Permission.locationWhenInUse.request();
        debugPrint(
          '[WiFiService] iOS location permission result: $status (isGranted: ${status.isGranted})',
        );
        _permissionRequested = true;
        _hasPermission = status.isGranted;

        // Check if it became permanentlyDenied after request
        if (status.isPermanentlyDenied) {
          return null;
        }

        return _hasPermission;
      } else if (Platform.isAndroid) {
        debugPrint('[WiFiService] Requesting Android permissions...');
        // Android 13+ can use NEARBY_WIFI_DEVICES, older needs location
        final nearbyStatus = await Permission.nearbyWifiDevices.request();
        debugPrint(
          '[WiFiService] Android NEARBY_WIFI_DEVICES result: $nearbyStatus',
        );
        if (nearbyStatus.isGranted) {
          _permissionRequested = true;
          _hasPermission = true;
          return true;
        }

        if (nearbyStatus.isPermanentlyDenied) {
          return null;
        }

        // Fall back to location permission for older Android
        final locationStatus = await Permission.locationWhenInUse.request();
        debugPrint(
          '[WiFiService] Android location permission result: $locationStatus',
        );
        _permissionRequested = true;
        _hasPermission = locationStatus.isGranted;

        if (locationStatus.isPermanentlyDenied) {
          return null;
        }

        return _hasPermission;
      }

      // Desktop platforms don't need permission
      debugPrint('[WiFiService] Desktop platform - no permission needed');
      _permissionRequested = true;
      _hasPermission = true;
      return true;
    } catch (e) {
      debugPrint('[WiFiService] Error requesting permission: $e');
      return false;
    }
  }

  /// Check if we have location permission without requesting it
  Future<bool> hasLocationPermission() async {
    try {
      if (Platform.isIOS) {
        final status = await Permission.locationWhenInUse.status;
        debugPrint(
          '[WiFiService] iOS Location permission status: $status (isGranted: ${status.isGranted})',
        );
        return status.isGranted;
      } else if (Platform.isAndroid) {
        final nearbyStatus = await Permission.nearbyWifiDevices.status;
        if (nearbyStatus.isGranted) {
          debugPrint('[WiFiService] Android NEARBY_WIFI_DEVICES granted');
          return true;
        }

        final locationStatus = await Permission.locationWhenInUse.status;
        final serviceStatus = await Permission.location.serviceStatus;
        debugPrint(
          '[WiFiService] Android location: $locationStatus, service: $serviceStatus',
        );
        return locationStatus.isGranted && serviceStatus.isEnabled;
      }
      debugPrint(
        '[WiFiService] Desktop platform - permission granted by default',
      );
      return true; // Desktop
    } catch (e) {
      debugPrint('[WiFiService] Error checking location permission: $e');
      return false;
    }
  }

  /// Get the current WiFi SSID
  /// On iOS/Android, will request location permission if not already granted
  /// Returns null if not connected to WiFi or if permission is denied
  Future<String?> getCurrentSsid({bool requestPermission = true}) async {
    try {
      debugPrint(
        '[WiFiService] getCurrentSsid called (requestPermission: $requestPermission)',
      );

      // On mobile platforms, ensure we have permission
      if (Platform.isIOS || Platform.isAndroid) {
        if (requestPermission && !_hasPermission) {
          debugPrint(
            '[WiFiService] Requesting permission (cached: $_hasPermission)',
          );
          final granted = await requestLocationPermission();
          if (granted != true) {
            debugPrint(
              '[WiFiService] Permission not granted (result: $granted)',
            );
            return null;
          }
        } else if (!requestPermission) {
          // Just check without requesting
          final hasPermission = await hasLocationPermission();
          debugPrint(
            '[WiFiService] Permission check (no request): $hasPermission',
          );
          if (!hasPermission) {
            return null;
          }
        }
      }

      debugPrint('[WiFiService] Calling NetworkInfo.getWifiName()...');
      final ssid = await _networkInfo.getWifiName();
      debugPrint('[WiFiService] NetworkInfo.getWifiName() returned: $ssid');

      // NetworkInfo returns SSID wrapped in quotes on some platforms
      if (ssid != null && ssid != '<unknown ssid>') {
        final cleanedSsid = ssid.replaceAll('"', '');
        debugPrint('[WiFiService] Returning cleaned SSID: $cleanedSsid');
        return cleanedSsid;
      }

      debugPrint('[WiFiService] Returning null (ssid was null or unknown)');
      return null;
    } catch (e) {
      debugPrint('[WiFiService] Error getting SSID: $e');
      return null;
    }
  }

  /// Check if the given SSID matches the Wemo AP pattern (WeMo.XXXXX)
  bool isWemoApNetwork(String? ssid) {
    if (ssid == null) return false;
    return WemoConstants.wemoApSsidPattern.hasMatch(ssid);
  }

  /// Open the device's WiFi settings
  /// Returns true if settings were opened successfully
  Future<bool> openWifiSettings() async {
    try {
      // We use app_settings package for this - see PairingProvider
      // This method is here for interface consistency
      return false;
    } catch (e) {
      return false;
    }
  }

  /// Watch for SSID changes by polling at the specified interval
  /// Emits the current SSID whenever it changes (or periodically if unchanged)
  Stream<String?> watchSsidChanges({
    Duration interval = const Duration(seconds: 2),
  }) {
    return Stream.periodic(interval, (_) => null).asyncMap((_) async {
      return getCurrentSsid();
    }).distinct();
  }

  /// Check if the app is running on a mobile platform that supports pairing
  static bool get isPairingSupported {
    return Platform.isIOS || Platform.isAndroid;
  }
}
