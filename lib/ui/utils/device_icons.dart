import 'package:flutter/material.dart';
import '../../models/wemo_device.dart';

/// Maps a [WemoDeviceType] to the [IconData] used to represent it in the UI.
extension WemoDeviceTypeIcon on WemoDeviceType {
  IconData get icon {
    switch (this) {
      case WemoDeviceType.wemoSwitch:
      case WemoDeviceType.outdoorPlug:
        return Icons.power;
      case WemoDeviceType.lightSwitch:
        return Icons.lightbulb_outline;
      case WemoDeviceType.dimmer:
      case WemoDeviceType.dimmerV2:
        return Icons.brightness_6;
      case WemoDeviceType.insight:
        return Icons.insights;
      case WemoDeviceType.motion:
        return Icons.sensors;
      case WemoDeviceType.maker:
        return Icons.handyman;
      case WemoDeviceType.bridge:
        return Icons.device_hub;
      case WemoDeviceType.coffeemaker:
        return Icons.coffee;
      case WemoDeviceType.crockpot:
        return Icons.soup_kitchen;
      case WemoDeviceType.humidifier:
        return Icons.water_drop;
      case WemoDeviceType.unknown:
        return Icons.device_unknown;
    }
  }
}
