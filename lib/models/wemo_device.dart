import 'package:flutter/foundation.dart';

/// Enum representing different types of Wemo devices
enum WemoDeviceType {
  wemoSwitch,
  lightSwitch,
  dimmer,
  dimmerV2,
  insight,
  motion,
  maker,
  bridge,
  coffeemaker,
  crockpot,
  humidifier,
  outdoorPlug,
  unknown,
}

/// Extension to provide display names for device types
extension WemoDeviceTypeExtension on WemoDeviceType {
  String get displayName {
    switch (this) {
      case WemoDeviceType.wemoSwitch:
        return 'Smart Switch';
      case WemoDeviceType.lightSwitch:
        return 'Light Switch';
      case WemoDeviceType.dimmer:
      case WemoDeviceType.dimmerV2:
        return 'Dimmer';
      case WemoDeviceType.insight:
        return 'Insight Plug';
      case WemoDeviceType.motion:
        return 'Motion Sensor';
      case WemoDeviceType.maker:
        return 'Maker';
      case WemoDeviceType.bridge:
        return 'Bridge';
      case WemoDeviceType.coffeemaker:
        return 'Coffee Maker';
      case WemoDeviceType.crockpot:
        return 'Crockpot';
      case WemoDeviceType.humidifier:
        return 'Humidifier';
      case WemoDeviceType.outdoorPlug:
        return 'Outdoor Plug';
      case WemoDeviceType.unknown:
        return 'Unknown Device';
    }
  }

  String get iconName {
    switch (this) {
      case WemoDeviceType.wemoSwitch:
      case WemoDeviceType.outdoorPlug:
        return 'power';
      case WemoDeviceType.lightSwitch:
        return 'lightbulb_outline';
      case WemoDeviceType.dimmer:
      case WemoDeviceType.dimmerV2:
        return 'brightness_6';
      case WemoDeviceType.insight:
        return 'insights';
      case WemoDeviceType.motion:
        return 'sensors';
      case WemoDeviceType.maker:
        return 'handyman';
      case WemoDeviceType.bridge:
        return 'device_hub';
      case WemoDeviceType.coffeemaker:
        return 'coffee';
      case WemoDeviceType.crockpot:
        return 'soup_kitchen';
      case WemoDeviceType.humidifier:
        return 'water_drop';
      case WemoDeviceType.unknown:
        return 'device_unknown';
    }
  }

  bool get supportsBrightness {
    return this == WemoDeviceType.dimmer || this == WemoDeviceType.dimmerV2;
  }

  bool get supportsOnOff {
    return this != WemoDeviceType.motion && this != WemoDeviceType.bridge;
  }
}

/// Represents a discovered Wemo device
@immutable
class WemoDevice {
  final String id;
  final String name;
  final String host;
  final int port;
  final WemoDeviceType type;
  final String? manufacturer;
  final String? model;
  final String? serialNumber;
  final String? firmwareVersion;
  final String? macAddress;
  final String? udn;

  const WemoDevice({
    required this.id,
    required this.name,
    required this.host,
    required this.port,
    required this.type,
    this.manufacturer,
    this.model,
    this.serialNumber,
    this.firmwareVersion,
    this.macAddress,
    this.udn,
  });

  WemoDevice copyWith({
    String? id,
    String? name,
    String? host,
    int? port,
    WemoDeviceType? type,
    String? manufacturer,
    String? model,
    String? serialNumber,
    String? firmwareVersion,
    String? macAddress,
    String? udn,
  }) {
    return WemoDevice(
      id: id ?? this.id,
      name: name ?? this.name,
      host: host ?? this.host,
      port: port ?? this.port,
      type: type ?? this.type,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      serialNumber: serialNumber ?? this.serialNumber,
      firmwareVersion: firmwareVersion ?? this.firmwareVersion,
      macAddress: macAddress ?? this.macAddress,
      udn: udn ?? this.udn,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WemoDevice &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          host == other.host &&
          port == other.port &&
          type == other.type &&
          manufacturer == other.manufacturer &&
          model == other.model &&
          serialNumber == other.serialNumber &&
          firmwareVersion == other.firmwareVersion &&
          macAddress == other.macAddress &&
          udn == other.udn;

  @override
  int get hashCode => Object.hash(
        id,
        name,
        host,
        port,
        type,
        manufacturer,
        model,
        serialNumber,
        firmwareVersion,
        macAddress,
        udn,
      );

  @override
  String toString() => 'WemoDevice(name: $name, type: ${type.displayName}, host: $host:$port)';
}
