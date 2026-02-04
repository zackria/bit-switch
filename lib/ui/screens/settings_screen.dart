import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_settings/app_settings.dart';
import '../../providers/settings_provider.dart';
import '../../providers/device_provider.dart';
import '../../providers/pairing_provider.dart';
import '../../services/wifi_detection_service.dart';
import 'device_pairing_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final WifiDetectionService _wifiService = WifiDetectionService();
  String? _currentSsid;
  bool _hasLocationPermission = false;
  bool _isCheckingPermissions = false;

  @override
  void initState() {
    super.initState();
    _checkPermissionsAndWifi();
  }

  Future<void> _checkPermissionsAndWifi() async {
    setState(() => _isCheckingPermissions = true);

    final hasPermission = await _wifiService.hasLocationPermission();
    String? ssid;

    if (hasPermission) {
      ssid = await _wifiService.getCurrentSsid(requestPermission: false);
    }

    if (mounted) {
      setState(() {
        _hasLocationPermission = hasPermission;
        _currentSsid = ssid;
        _isCheckingPermissions = false;
      });
    }
  }

  Future<void> _requestPermissions() async {
    setState(() => _isCheckingPermissions = true);

    final granted = await _wifiService.requestLocationPermission();

    if (granted == true) {
      // Permission was granted
      await Future.delayed(const Duration(milliseconds: 500));
      final ssid = await _wifiService.getCurrentSsid(requestPermission: false);
      if (mounted) {
        setState(() {
          _hasLocationPermission = true;
          _currentSsid = ssid;
          _isCheckingPermissions = false;
        });
        if (ssid != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Permission granted! WiFi name: $ssid'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          // Has location but no SSID - needs Local Network too
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Location granted, but Local Network permission also needed. Check Settings.',
              ),
              backgroundColor: Colors.orange,
              duration: Duration(seconds: 4),
            ),
          );
        }
      }
    } else if (granted == null) {
      // Permission is permanently denied - must enable in Settings
      if (mounted) {
        setState(() => _isCheckingPermissions = false);
        _showPermanentlyDeniedDialog();
      }
    } else {
      // Permission was denied (but can be requested again)
      if (mounted) {
        setState(() => _isCheckingPermissions = false);
        _showPermissionDeniedDialog();
      }
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Location Permission Required'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'To display your WiFi network name, iOS requires Location permission.\n',
            ),
            const SizedBox(height: 12),
            Text(
              'Required Permissions:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              '1. Location Services ("While Using the App")\n'
              '2. Local Network\n',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            const Text(
              'Note: Device discovery works without location permission. '
              'This is only needed to show the WiFi name.',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              _requestPermissions();
            },
            child: const Text('Try Again'),
          ),
        ],
      ),
    );
  }

  void _showPermanentlyDeniedDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Enable Location in Settings'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Location permission was previously denied. You must enable it manually in Settings.\n',
            ),
            const SizedBox(height: 12),
            Text(
              'Steps to enable:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              '\n1. Open Settings\n'
              '2. Scroll to "Bit Switch"\n'
              '3. Tap "Location"\n'
              '4. Select "While Using the App"\n'
              '5. Return to this app and tap the refresh button\n',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            const Text(
              'Note: Location permission is only needed to display the WiFi name. '
              'Device discovery works without it.',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Later'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              AppSettings.openAppSettings(type: AppSettingsType.settings);
            },
            child: const Text('Open Settings'),
          ),
        ],
      ),
    );
  }

  void _showLocalNetworkPermissionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Additional Permission Needed'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'You have Location permission, but WiFi name isn\'t visible yet.\n',
            ),
            const SizedBox(height: 12),
            Text(
              'Please enable:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              '\n1. Go to iPhone Settings\n'
              '2. Scroll down to "Bit Switch"\n'
              '3. Enable "Local Network"\n',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            const Text(
              'Local Network permission is required for both device discovery '
              'and WiFi name access on iOS.',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              AppSettings.openAppSettings(type: AppSettingsType.settings);
            },
            child: const Text('Open Settings'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Consumer2<SettingsProvider, DeviceProvider>(
        builder: (context, settings, devices, child) {
          return ListView(
            children: [
              // Network information and permissions
              if (Platform.isIOS || Platform.isAndroid) ...[
                _buildSectionHeader(context, 'Network'),
                _buildWifiInfoTile(context),
                _buildPermissionStatusTile(context),
                const Divider(),
              ],

              // Device pairing (iOS and Android only)
              if (Platform.isIOS || Platform.isAndroid) ...[
                _buildSectionHeader(context, 'Device Setup'),
                ListTile(
                  leading: const Icon(Icons.add_circle_outline),
                  title: const Text('Pair New Device'),
                  subtitle: const Text('Set up a new Wemo device'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _openPairingScreen(context),
                ),
                const Divider(),
              ],
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
                subtitle: Text(
                  '${settings.requestTimeoutSeconds} seconds per request',
                ),
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
                      interval: Duration(
                        seconds: settings.autoRefreshIntervalSeconds,
                      ),
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
                  subtitle: Text(
                    '${settings.autoRefreshIntervalSeconds} seconds',
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () =>
                      _showRefreshIntervalDialog(context, settings, devices),
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
                subtitle: const Text('1.0.1'),
              ),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Network Diagnostics'),
                onTap: () => _showDiagnosticsDialog(context),
              ),
              const Divider(),
              _buildSectionHeader(context, 'Debug'),
              SwitchListTile(
                secondary: const Icon(Icons.bug_report),
                title: const Text('Show Debug Mode'),
                subtitle: const Text(
                  'Show debug icon in home screen for troubleshooting',
                ),
                value: settings.showDebugOption,
                onChanged: (value) async {
                  await settings.setShowDebugOption(value);
                  if (!value) {
                    // Turn off debug mode in device provider when hiding the option
                    devices.setDebugMode(false);
                  }
                },
              ),
              // Removed stray empty info ListTile that showed an unexplained icon
            ],
          );
        },
      ),
    );
  }

  Widget _buildWifiInfoTile(BuildContext context) {
    final theme = Theme.of(context);

    String subtitle;
    if (_isCheckingPermissions) {
      subtitle = 'Checking...';
    } else if (_currentSsid != null) {
      subtitle = _currentSsid!;
    } else if (_hasLocationPermission) {
      // Has location permission but still no SSID - likely missing Local Network permission
      subtitle = Platform.isIOS
          ? 'Enable Local Network in Settings'
          : 'Not connected to WiFi';
    } else {
      subtitle = 'Permission required to view';
    }

    return ListTile(
      leading: Icon(
        _currentSsid != null ? Icons.wifi : Icons.wifi_off,
        color: _currentSsid != null ? theme.colorScheme.primary : null,
      ),
      title: const Text('Current Network'),
      subtitle: Text(subtitle),
      trailing: _isCheckingPermissions
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _checkPermissionsAndWifi,
              tooltip: 'Refresh',
            ),
      onTap: _currentSsid == null && _hasLocationPermission
          ? () => _showLocalNetworkPermissionDialog()
          : null,
    );
  }

  Widget _buildPermissionStatusTile(BuildContext context) {
    final theme = Theme.of(context);

    // Determine overall permission status
    final bool fullyGranted = _hasLocationPermission && _currentSsid != null;
    final bool partiallyGranted =
        _hasLocationPermission && _currentSsid == null;

    return ListTile(
      leading: Icon(
        fullyGranted ? Icons.check_circle : Icons.warning_amber,
        color: fullyGranted ? Colors.green : Colors.orange,
      ),
      title: const Text('Network Access Status'),
      subtitle: Text(
        fullyGranted
            ? 'All permissions granted'
            : partiallyGranted && Platform.isIOS
            ? 'Local Network permission needed'
            : 'Location permission needed',
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Refresh button
          IconButton(
            onPressed: _isCheckingPermissions ? null : _checkPermissionsAndWifi,
            icon: Icon(
              Icons.refresh,
              color: _isCheckingPermissions ? theme.disabledColor : null,
            ),
            tooltip: 'Refresh permissions',
          ),
          const SizedBox(width: 4),
          // Action button based on status
          if (!_hasLocationPermission)
            FilledButton.icon(
              onPressed: _isCheckingPermissions ? null : _requestPermissions,
              icon: const Icon(Icons.lock_open, size: 18),
              label: const Text('Grant'),
            )
          else if (partiallyGranted && Platform.isIOS)
            OutlinedButton.icon(
              onPressed: () => _showLocalNetworkPermissionDialog(),
              icon: const Icon(Icons.settings, size: 18),
              label: const Text('Fix'),
            ),
        ],
      ),
      onTap: _hasLocationPermission
          ? null
          : () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('About WiFi Name Permission'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'On iOS, displaying your WiFi network name requires location permission.\n',
                      ),
                      const SizedBox(height: 8),
                      Text('Important:', style: theme.textTheme.titleSmall),
                      const Text(
                        '• Device discovery works WITHOUT this permission\n'
                        '• This is only needed to show the WiFi name\n'
                        '• No location data is collected or stored',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _requestPermissions();
                      },
                      child: const Text('Grant Permission'),
                    ),
                  ],
                ),
              );
            },
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

  void _showDiscoveryTimeoutDialog(
    BuildContext context,
    SettingsProvider settings,
  ) {
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
                  label: Text(
                    seconds < 60 ? '${seconds}s' : '${seconds ~/ 60}m',
                  ),
                  selected: seconds == settings.discoveryTimeoutSeconds,
                  onSelected: (selected) async {
                    await settings.setDiscoveryTimeoutSeconds(seconds);
                    if (context.mounted) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Discovery timeout set to $seconds seconds',
                          ),
                        ),
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

  void _showRequestTimeoutDialog(
    BuildContext context,
    SettingsProvider settings,
  ) {
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
                        SnackBar(
                          content: Text(
                            'Request timeout set to $seconds seconds',
                          ),
                        ),
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
                        interval: Duration(
                          seconds: settings.autoRefreshIntervalSeconds,
                        ),
                      );
                    }
                    if (context.mounted) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Refresh interval set to $seconds seconds',
                          ),
                        ),
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
              'Version 1.0.1',
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

  void _openPairingScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ChangeNotifierProvider(
          create: (_) => PairingProvider(),
          child: const DevicePairingScreen(),
        ),
      ),
    ).then((result) {
      // If a device was paired, refresh the device list
      if (result != null && context.mounted) {
        final deviceProvider = context.read<DeviceProvider>();
        deviceProvider.discoverDevices();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Device paired! Refreshing device list...'),
          ),
        );
      }
    });
  }
}
