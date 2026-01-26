import 'package:flutter/foundation.dart';

/// Represents the current state of a Wemo device
@immutable
class DeviceState {
  /// Whether the device is on (true) or off (false)
  final bool isOn;

  /// Brightness level (0-100) for dimmer devices
  final int? brightness;

  /// Whether the device is reachable
  final bool isReachable;

  /// Last time the state was updated
  final DateTime lastUpdated;

  /// Error message if there was a problem communicating with the device
  final String? error;

  const DeviceState({
    required this.isOn,
    this.brightness,
    this.isReachable = true,
    required this.lastUpdated,
    this.error,
  });

  factory DeviceState.unknown() {
    return DeviceState(
      isOn: false,
      isReachable: false,
      lastUpdated: DateTime.now(),
    );
  }

  factory DeviceState.error(String message) {
    return DeviceState(
      isOn: false,
      isReachable: false,
      lastUpdated: DateTime.now(),
      error: message,
    );
  }

  DeviceState copyWith({
    bool? isOn,
    int? brightness,
    bool? isReachable,
    DateTime? lastUpdated,
    String? error,
  }) {
    return DeviceState(
      isOn: isOn ?? this.isOn,
      brightness: brightness ?? this.brightness,
      isReachable: isReachable ?? this.isReachable,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      error: error,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceState &&
          runtimeType == other.runtimeType &&
          isOn == other.isOn &&
          brightness == other.brightness &&
          isReachable == other.isReachable;

  @override
  int get hashCode => Object.hash(isOn, brightness, isReachable);

  @override
  String toString() =>
      'DeviceState(isOn: $isOn, brightness: $brightness, reachable: $isReachable)';
}

/// Extended state for Insight devices with energy monitoring
@immutable
class InsightState extends DeviceState {
  /// Current power consumption in milliwatts
  final double? currentPowerMw;

  /// Today's energy consumption in kWh
  final double? todayKwh;

  /// Total energy consumption in kWh
  final double? totalKwh;

  /// Time device has been on today in seconds
  final int? todayOnTimeSeconds;

  /// Total time device has been on in seconds
  final int? totalOnTimeSeconds;

  /// Standby state: 0 = off, 1 = on, 8 = standby
  final int? standbyState;

  const InsightState({
    required super.isOn,
    super.brightness,
    super.isReachable = true,
    required super.lastUpdated,
    super.error,
    this.currentPowerMw,
    this.todayKwh,
    this.totalKwh,
    this.todayOnTimeSeconds,
    this.totalOnTimeSeconds,
    this.standbyState,
  });

  /// Current power in watts
  double? get currentPowerWatts =>
      currentPowerMw != null ? currentPowerMw! / 1000 : null;

  /// Human-readable standby state
  String get standbyStateDisplay {
    switch (standbyState) {
      case 0:
        return 'Off';
      case 1:
        return 'On';
      case 8:
        return 'Standby';
      default:
        return 'Unknown';
    }
  }

  @override
  InsightState copyWith({
    bool? isOn,
    int? brightness,
    bool? isReachable,
    DateTime? lastUpdated,
    String? error,
    double? currentPowerMw,
    double? todayKwh,
    double? totalKwh,
    int? todayOnTimeSeconds,
    int? totalOnTimeSeconds,
    int? standbyState,
  }) {
    return InsightState(
      isOn: isOn ?? this.isOn,
      brightness: brightness ?? this.brightness,
      isReachable: isReachable ?? this.isReachable,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      error: error,
      currentPowerMw: currentPowerMw ?? this.currentPowerMw,
      todayKwh: todayKwh ?? this.todayKwh,
      totalKwh: totalKwh ?? this.totalKwh,
      todayOnTimeSeconds: todayOnTimeSeconds ?? this.todayOnTimeSeconds,
      totalOnTimeSeconds: totalOnTimeSeconds ?? this.totalOnTimeSeconds,
      standbyState: standbyState ?? this.standbyState,
    );
  }
}
