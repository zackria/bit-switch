import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/wemo_device.dart';
import '../../models/device_state.dart';
import '../../providers/device_provider.dart';
import 'device_card.dart';

class DeviceListItem extends StatelessWidget {
  final WemoDevice device;
  final VoidCallback onTap;
  final VoidCallback onToggle;

  const DeviceListItem({
    super.key,
    required this.device,
    required this.onTap,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<DeviceProvider, DeviceState>(
      selector: (_, provider) => provider.getDeviceState(device.id),
      builder: (context, state, child) {
        return DeviceCard(
          device: device,
          state: state,
          onTap: onTap,
          onToggle: onToggle,
        );
      },
    );
  }
}
