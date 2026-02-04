import 'package:flutter/material.dart';
import '../../services/device_control_service.dart';

/// List tile widget for displaying a WiFi network in the selection list
class NetworkListTile extends StatelessWidget {
  final WifiNetwork network;
  final bool isSelected;
  final VoidCallback onTap;

  const NetworkListTile({
    super.key,
    required this.network,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: _buildSignalIcon(theme),
      title: Text(
        network.ssid,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      subtitle: Text(
        _getSecurityLabel(),
        style: theme.textTheme.bodySmall,
      ),
      trailing:
          isSelected
              ? Icon(Icons.check_circle, color: theme.colorScheme.primary)
              : null,
      selected: isSelected,
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side:
            isSelected
                ? BorderSide(color: theme.colorScheme.primary, width: 2)
                : BorderSide.none,
      ),
      tileColor:
          isSelected ? theme.colorScheme.primaryContainer.withAlpha(50) : null,
    );
  }

  Widget _buildSignalIcon(ThemeData theme) {
    IconData icon;
    Color color;

    // Determine signal strength icon
    if (network.signalStrength >= 70) {
      icon = Icons.signal_wifi_4_bar;
      color = Colors.green;
    } else if (network.signalStrength >= 50) {
      icon = Icons.network_wifi_3_bar;
      color = Colors.orange;
    } else if (network.signalStrength >= 30) {
      icon = Icons.network_wifi_2_bar;
      color = Colors.orange;
    } else {
      icon = Icons.network_wifi_1_bar;
      color = Colors.red;
    }

    // Add lock icon for secured networks
    final isSecured = _isSecuredNetwork();

    return Stack(
      children: [
        Icon(icon, color: color, size: 28),
        if (isSecured)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.lock,
                size: 10,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
      ],
    );
  }

  String _getSecurityLabel() {
    final auth = network.authMode.toUpperCase();
    final encrypt = network.encryption.toUpperCase();

    if (auth == 'OPEN' || auth == 'NONE') {
      return 'Open network';
    }

    // Format common security types nicely
    if (auth.contains('WPA2') || auth.contains('WPAPSK')) {
      if (encrypt.contains('AES') || encrypt.contains('CCMP')) {
        return 'WPA2';
      }
      return 'WPA2 ($encrypt)';
    }

    if (auth.contains('WPA')) {
      return 'WPA ($encrypt)';
    }

    if (auth.contains('WEP')) {
      return 'WEP (insecure)';
    }

    return '$auth / $encrypt';
  }

  bool _isSecuredNetwork() {
    final auth = network.authMode.toUpperCase();
    return auth != 'OPEN' && auth != 'NONE' && auth.isNotEmpty;
  }
}
