import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/settings_provider.dart';
import '../../providers/device_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Consumer2<SettingsProvider, DeviceProvider>(
        builder: (context, settings, devices, child) {
          return ListView(
            children: [
              _buildSectionHeader(context, 'Discovery'),
              ListTile(
                leading: const Icon(Icons.timer_outlined),
                title: const Text('Discovery Timeout'),
                subtitle: Text('${settings.discoveryTimeoutSeconds} seconds'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _showDiscoveryTimeoutDialog(context, settings),
              ),
              ListTile(
                leading: const Icon(Icons.network_ping),
                title: const Text('Request Timeout'),
                subtitle: Text('${settings.requestTimeoutSeconds} seconds per request'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _showRequestTimeoutDialog(context, settings),
              ),
              SwitchListTile(
                secondary: const Icon(Icons.autorenew),
                title: const Text('Auto-refresh'),
                subtitle: Text(
                  settings.autoRefreshEnabled
                      ? 'Refreshing every ${settings.autoRefreshIntervalSeconds}s'
                      : 'Off - Use manual refresh button',
                ),
                value: settings.autoRefreshEnabled,
                onChanged: (value) async {
                  await settings.setAutoRefreshEnabled(value);
                  if (value) {
                    devices.startPeriodicRefresh(
                      interval: Duration(seconds: settings.autoRefreshIntervalSeconds),
                    );
                  } else {
                    devices.stopPeriodicRefresh();
                  }
                },
              ),
              if (settings.autoRefreshEnabled)
                ListTile(
                  leading: const Icon(Icons.schedule),
                  title: const Text('Auto-refresh Interval'),
                  subtitle: Text('${settings.autoRefreshIntervalSeconds} seconds'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _showRefreshIntervalDialog(context, settings, devices),
                ),
              const Divider(),
              _buildSectionHeader(context, 'About'),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('About Bit Switch'),
                onTap: () => _showAboutDialog(context),
              ),
              ListTile(
                leading: const Icon(Icons.code),
                title: const Text('Version'),
                subtitle: const Text('1.0.0'),
              ),
              const Divider(),
              _buildSectionHeader(context, 'Debug'),
              ListTile(
                leading: const Icon(Icons.bug_report),
                title: const Text('Network Diagnostics'),
                onTap: () => _showDiagnosticsDialog(context),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
      ),
    );
  }

  void _showDiscoveryTimeoutDialog(BuildContext context, SettingsProvider settings) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Discovery Timeout'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('How long to scan for devices:'),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [5, 10, 30, 60, 120].map((seconds) {
                return ChoiceChip(
                  label: Text(seconds < 60 ? '${seconds}s' : '${seconds ~/ 60}m'),
                  selected: seconds == settings.discoveryTimeoutSeconds,
                  onSelected: (selected) async {
                    await settings.setDiscoveryTimeoutSeconds(seconds);
                    if (context.mounted) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Discovery timeout set to $seconds seconds')),
                      );
                    }
                  },
                );
              }).toList(),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _showRequestTimeoutDialog(BuildContext context, SettingsProvider settings) {
    final devices = Provider.of<DeviceProvider>(context, listen: false);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Request Timeout'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('How long to wait for device responses:'),
            const SizedBox(height: 8),
            const Text(
              'Increase if you see "Connection closed" errors.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [2, 3, 5, 8, 10].map((seconds) {
                return ChoiceChip(
                  label: Text('${seconds}s'),
                  selected: seconds == settings.requestTimeoutSeconds,
                  onSelected: (selected) async {
                    await settings.setRequestTimeoutSeconds(seconds);
                    // Apply the timeout to the control service
                    devices.controlService.setRequestTimeout(
                      Duration(seconds: seconds),
                    );
                    if (context.mounted) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Request timeout set to $seconds seconds')),
                      );
                    }
                  },
                );
              }).toList(),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _showRefreshIntervalDialog(
    BuildContext context,
    SettingsProvider settings,
    DeviceProvider devices,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Auto-refresh Interval'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Set the interval for automatic state refresh:'),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [15, 30, 60, 120].map((seconds) {
                return ChoiceChip(
                  label: Text('${seconds}s'),
                  selected: seconds == settings.autoRefreshIntervalSeconds,
                  onSelected: (selected) async {
                    await settings.setAutoRefreshIntervalSeconds(seconds);
                    if (settings.autoRefreshEnabled) {
                      devices.startPeriodicRefresh(
                        interval: Duration(seconds: settings.autoRefreshIntervalSeconds),
                      );
                    }
                    if (context.mounted) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Refresh interval set to $seconds seconds')),
                      );
                    }
                  },
                );
              }).toList(),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('About Bit Switch'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'A clean, private local controller for your Wemo devices.',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Text(
              'Bit Switch uses local network discovery to find and control devices without cloud dependencies.',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Version 1.0.0',
              style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showDiagnosticsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Network Diagnostics'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Protocol: SSDP/UPnP'),
            SizedBox(height: 8),
            Text('Multicast Address: 239.255.255.250:1900'),
            SizedBox(height: 8),
            Text('Device Ports: 49152-49159'),
            SizedBox(height: 8),
            Text('Control Protocol: SOAP over HTTP'),
            SizedBox(height: 16),
            Text(
              'Tip: Ensure your device is on the same network as your '
              'Wemo devices and that UDP multicast is not blocked.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
