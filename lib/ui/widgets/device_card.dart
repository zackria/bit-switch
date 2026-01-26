import 'package:flutter/material.dart';
import '../../models/wemo_device.dart';
import '../../models/device_state.dart';

class DeviceCard extends StatelessWidget {
  final WemoDevice device;
  final DeviceState state;
  final VoidCallback? onTap;
  final VoidCallback? onToggle;

  const DeviceCard({
    super.key,
    required this.device,
    required this.state,
    this.onTap,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isOn = state.isOn;
    final isReachable = state.isReachable;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: isOn ? 4 : 1,
      shadowColor: isOn ? theme.colorScheme.primary.withValues(alpha: 0.3) : null,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Device icon
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: _getIconBackgroundColor(context, isOn, isReachable),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _getDeviceIcon(device.type),
                  size: 28,
                  color: _getIconColor(context, isOn, isReachable),
                ),
              ),
              const SizedBox(width: 16),

              // Device info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      device.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        // Status indicator
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _getStatusColor(isOn, isReachable),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          _getStatusText(isOn, isReachable),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          device.type.displayName,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    // Show brightness if it's a dimmer
                    if (device.type.supportsBrightness && state.brightness != null) ...[
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: state.brightness! / 100,
                        backgroundColor: Colors.grey[200],
                        valueColor: AlwaysStoppedAnimation(
                          isOn
                              ? theme.colorScheme.primary
                              : Colors.grey[400],
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                    // Show power for Insight devices
                    if (device.type == WemoDeviceType.insight && state is InsightState) ...[
                      const SizedBox(height: 4),
                      Text(
                        '${(state as InsightState).currentPowerWatts?.toStringAsFixed(1) ?? '0'} W',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.secondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              // Toggle button
              if (device.type.supportsOnOff)
                Switch.adaptive(
                  value: isOn,
                  onChanged: isReachable
                      ? (_) => onToggle?.call()
                      : null,
                  activeTrackColor: theme.colorScheme.primary.withValues(alpha: 0.5),
                  activeThumbColor: theme.colorScheme.primary,
                ),

              // Arrow indicator
              Icon(
                Icons.chevron_right,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getDeviceIcon(WemoDeviceType type) {
    switch (type) {
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

  Color _getIconBackgroundColor(BuildContext context, bool isOn, bool isReachable) {
    if (!isReachable) return Colors.grey[200]!;
    if (isOn) return Theme.of(context).colorScheme.primaryContainer;
    return Colors.grey[100]!;
  }

  Color _getIconColor(BuildContext context, bool isOn, bool isReachable) {
    if (!isReachable) return Colors.grey[400]!;
    if (isOn) return Theme.of(context).colorScheme.primary;
    return Colors.grey[600]!;
  }

  Color _getStatusColor(bool isOn, bool isReachable) {
    if (!isReachable) return Colors.red;
    if (isOn) return Colors.green;
    return Colors.grey;
  }

  String _getStatusText(bool isOn, bool isReachable) {
    if (!isReachable) return 'Offline';
    if (isOn) return 'On';
    return 'Off';
  }
}
