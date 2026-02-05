import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../core/constants.dart';

/// Service for detecting the current WiFi network and opening WiFi settings
///
/// Handles platform-specific permission requirements for accessing WiFi SSID:
/// - iOS: Requires location permission + Access WiFi Information entitlement
/// - Android <13: Location permission required
/// - Android 13+: NEARBY_WIFI_DEVICES or Location permission
class WifiDetectionService {
  final NetworkInfo _networkInfo;
  bool _permissionRequested = false;
  bool _hasPermission = false;

  WifiDetectionService({NetworkInfo? networkInfo})
    : _networkInfo = networkInfo ?? NetworkInfo();

  /// Log message only in debug mode
  void _log(String message) {
    if (kDebugMode) {
      debugPrint('[WiFiService] $message');
    }
  }

  /// Request location permission needed for WiFi SSID access on iOS/Android
  /// Returns true if permission is granted, false if denied
  /// Returns null if permission is permanentlyDenied (user must enable in Settings)
  Future<bool?> requestLocationPermission() async {
    if (_permissionRequested && _hasPermission) {
      _log('Permission already granted (cached)');
      return true;
    }

    try {
      if (Platform.isIOS) {
        final currentStatus = await Permission.locationWhenInUse.status;
        _log('iOS location status: $currentStatus');

        if (currentStatus.isPermanentlyDenied) {
          _log('Permission permanently denied - user must enable in Settings');
          return null;
        }

        if (currentStatus.isGranted) {
          _permissionRequested = true;
          _hasPermission = true;
          return true;
        }

        _log('Requesting iOS location permission...');
        final status = await Permission.locationWhenInUse.request();
        _log('iOS location permission result: $status');
        _permissionRequested = true;
        _hasPermission = status.isGranted;

        if (status.isPermanentlyDenied) {
          return null;
        }

        return _hasPermission;
      } else if (Platform.isAndroid) {
        _log('Requesting Android permissions...');
        final nearbyStatus = await Permission.nearbyWifiDevices.request();
        _log('NEARBY_WIFI_DEVICES result: $nearbyStatus');

        if (nearbyStatus.isGranted) {
          _permissionRequested = true;
          _hasPermission = true;
          return true;
        }

        if (nearbyStatus.isPermanentlyDenied) {
          return null;
        }

        final locationStatus = await Permission.locationWhenInUse.request();
        _log('Android location result: $locationStatus');
        _permissionRequested = true;
        _hasPermission = locationStatus.isGranted;

        if (locationStatus.isPermanentlyDenied) {
          return null;
        }

        return _hasPermission;
      }

      _log('Desktop platform - no permission needed');
      _permissionRequested = true;
      _hasPermission = true;
      return true;
    } catch (e) {
      _log('Error requesting permission: $e');
      return false;
    }
  }

  /// Check if we have location permission without requesting it
  Future<bool> hasLocationPermission() async {
    try {
      if (Platform.isIOS) {
        final status = await Permission.locationWhenInUse.status;
        _log('iOS permission status: ${status.isGranted}');
        return status.isGranted;
      } else if (Platform.isAndroid) {
        final nearbyStatus = await Permission.nearbyWifiDevices.status;
        if (nearbyStatus.isGranted) {
          _log('Android NEARBY_WIFI_DEVICES granted');
          return true;
        }

        final locationStatus = await Permission.locationWhenInUse.status;
        final serviceStatus = await Permission.location.serviceStatus;
        _log('Android location: $locationStatus, service: $serviceStatus');
        return locationStatus.isGranted && serviceStatus.isEnabled;
      }
      _log('Desktop platform - permission granted by default');
      return true;
    } catch (e) {
      _log('Error checking location permission: $e');
      return false;
    }
  }

  /// Get the current WiFi SSID
  /// On iOS/Android, will request location permission if not already granted
  /// Returns null if not connected to WiFi or if permission is denied
  Future<String?> getCurrentSsid({bool requestPermission = true}) async {
    try {
      _log('getCurrentSsid called (requestPermission: $requestPermission)');

      if (Platform.isIOS || Platform.isAndroid) {
        if (requestPermission && !_hasPermission) {
          _log('Requesting permission (cached: $_hasPermission)');
          final granted = await requestLocationPermission();
          if (granted != true) {
            _log('Permission not granted (result: $granted)');
            return null;
          }
        } else if (!requestPermission) {
          final hasPermission = await hasLocationPermission();
          _log('Permission check (no request): $hasPermission');
          if (!hasPermission) {
            return null;
          }
        }
      }

      _log('Calling NetworkInfo.getWifiName()...');
      final ssid = await _networkInfo.getWifiName();
      _log('getWifiName() returned: $ssid');

      if (ssid != null && ssid != '<unknown ssid>') {
        final cleanedSsid = ssid.replaceAll('"', '');
        _log('Returning SSID: $cleanedSsid');
        return cleanedSsid;
      }

      _log('Returning null (ssid was null or unknown)');
      return null;
    } catch (e) {
      _log('Error getting SSID: $e');
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
    // Use app_settings package for this - see PairingProvider
    return false;
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
