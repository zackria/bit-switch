import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wifi_scan/wifi_scan.dart';
import '../../providers/device_provider.dart';
import '../../models/wemo_device.dart';
import '../../models/device_state.dart';
import '../../services/device_control_service.dart';
import '../widgets/power_button.dart';
import '../widgets/brightness_slider.dart';
import '../widgets/insight_stats.dart';
import '../../core/error_handler.dart';

class DeviceDetailScreen extends StatelessWidget {
  final WemoDevice device;

  const DeviceDetailScreen({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(device.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<DeviceProvider>().refreshDeviceState(device.id);
            },
            tooltip: 'Refresh state',
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showDeviceInfo(context),
            tooltip: 'Device info',
          ),
        ],
      ),
      body: Consumer<DeviceProvider>(
        builder: (context, provider, child) {
          final state = provider.getDeviceState(device.id);

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Device type indicator
                _buildDeviceTypeHeader(context),
                const SizedBox(height: 32),

                // Connection status
                if (!state.isReachable)
                  _buildUnreachableWarning(context)
                else ...[
                  // Power button
                  PowerButton(
                    isOn: state.isOn,
                    onPressed: state.isReachable
                        ? () => _toggleDevice(context, provider)
                        : null,
                  ),
                  const SizedBox(height: 32),

                  // Brightness slider for dimmer devices
                  if (device.type.supportsBrightness)
                    BrightnessSlider(
                      brightness: state.brightness ?? 100,
                      onChanged: (value) {
                        provider.setBrightness(device.id, value.round());
                      },
                    ),

                  // Insight stats for Insight devices
                  if (device.type == WemoDeviceType.insight &&
                      state is InsightState)
                    InsightStats(state: state),
                ],

                const SizedBox(height: 32),

                // Quick action buttons
                _buildQuickActions(context, provider, state),

                // Error display
                if (state.error != null) ...[
                  const SizedBox(height: 16),
                  _buildErrorCard(context, state.error!),
                ],

                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 16),

                // Advanced section
                _buildAdvancedSection(context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildAdvancedSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Advanced',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Colors.grey[600],
              ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _showWifiSetupDialog(context),
                icon: const Icon(Icons.wifi),
                label: const Text('WiFi Setup'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _showResetDialog(context),
                icon: const Icon(Icons.restart_alt),
                label: const Text('Reset'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDeviceTypeHeader(BuildContext context) {
    final iconData = _getDeviceIcon(device.type);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            shape: BoxShape.circle,
          ),
          child: Icon(
            iconData,
            size: 48,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          device.type.displayName,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.grey[600],
              ),
        ),
      ],
    );
  }

  Widget _buildUnreachableWarning(BuildContext context) {
    return Card(
      color: Colors.orange.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: Colors.orange.shade700),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'Device is unreachable. Check network connection.',
                style: TextStyle(color: Colors.orange.shade900),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActions(
    BuildContext context,
    DeviceProvider provider,
    DeviceState state,
  ) {
    if (!device.type.supportsOnOff) return const SizedBox.shrink();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ActionButton(
          icon: Icons.power_settings_new,
          label: 'On',
          onPressed: state.isReachable
              ? () => provider.turnOn(device.id)
              : null,
          isActive: state.isOn,
        ),
        const SizedBox(width: 16),
        _ActionButton(
          icon: Icons.power_off,
          label: 'Off',
          onPressed: state.isReachable
              ? () => provider.turnOff(device.id)
              : null,
          isActive: !state.isOn && state.isReachable,
        ),
      ],
    );
  }

  Widget _buildErrorCard(BuildContext context, String error) {
    return Card(
      color: Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(Icons.error_outline, color: Colors.red.shade700),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                error,
                style: TextStyle(color: Colors.red.shade900, fontSize: 12),
              ),
            ),
          ],
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

  Future<void> _toggleDevice(BuildContext context, DeviceProvider provider) async {
    try {
      await provider.toggle(device.id);
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to toggle: $e')),
      );
    }
  }

  void _showDeviceInfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Device Information',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            _InfoRow(label: 'Name', value: device.name),
            _InfoRow(label: 'Type', value: device.type.displayName),
            _InfoRow(label: 'Host', value: '${device.host}:${device.port}'),
            if (device.manufacturer != null)
              _InfoRow(label: 'Manufacturer', value: device.manufacturer!),
            if (device.model != null)
              _InfoRow(label: 'Model', value: device.model!),
            if (device.serialNumber != null)
              _InfoRow(label: 'Serial', value: device.serialNumber!),
            if (device.firmwareVersion != null)
              _InfoRow(label: 'Firmware', value: device.firmwareVersion!),
            if (device.macAddress != null)
              _InfoRow(label: 'MAC', value: device.macAddress!),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  void _showWifiSetupDialog(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _WifiSetupScreen(
          device: device,
          controlService: context.read<DeviceProvider>().controlService,
        ),
      ),
    );
  }

  void _showResetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => _ResetDialog(
        device: device,
        controlService: context.read<DeviceProvider>().controlService,
      ),
    );
  }
}

class _WifiSetupScreen extends StatefulWidget {
  final WemoDevice device;
  final DeviceControlService controlService;

  const _WifiSetupScreen({
    required this.device,
    required this.controlService,
  });

  @override
  State<_WifiSetupScreen> createState() => _WifiSetupScreenState();
}

class _WifiSetupScreenState extends State<_WifiSetupScreen> {
  late final DeviceControlService _controlService;
  final _ssidController = TextEditingController();
  final _passwordController = TextEditingController();

  List<WifiNetwork>? _networks;
  bool _isScanning = false;
  bool _isConnecting = false;
  String? _error;
  WifiSetupStatus? _status;
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    _controlService = widget.controlService;
    _scanNetworks();
  }

  @override
  void dispose() {
    _ssidController.dispose();
    _passwordController.dispose();
    // Don't dispose _controlService as it's injected
    super.dispose();
  }

  Future<void> _scanNetworks() async {
    setState(() {
      _isScanning = true;
      _error = null;
    });

    try {
      // Use phone's WiFi scanner instead of device SOAP call
      // This works reliably when device is already on the home network
      
      // Check if we can scan
      final canScan = await WiFiScan.instance.canStartScan();
      if (canScan != CanStartScan.yes) {
        // Request location permission if needed (required for WiFi scanning on Android)
        if (Platform.isAndroid) {
          final locationStatus = await Permission.location.request();
          if (!locationStatus.isGranted) {
            if (mounted) {
              setState(() {
                _networks = [];
                _isScanning = false;
                _error = 'Location permission required to scan WiFi networks.';
              });
            }
            return;
          }
        }
      }

      // Start scan
      final result = await WiFiScan.instance.startScan();
      if (result != true) {
        throw Exception('WiFi scan could not be started');
      }

      // Get results
      final accessPoints = await WiFiScan.instance.getScannedResults();
      
      // Convert to our WifiNetwork model
      final networks = accessPoints
          .where((ap) => ap.ssid.isNotEmpty) // Filter out hidden networks
          .map((ap) => WifiNetwork(
                ssid: ap.ssid,
                channel: _frequencyToChannel(ap.frequency),
                signalStrength: _levelToPercent(ap.level),
                authMode: _getAuthMode(ap.capabilities),
                encryption: _getEncryption(ap.capabilities),
              ))
          .toList();

      // Remove duplicates (same SSID can appear multiple times)
      final uniqueNetworks = <String, WifiNetwork>{};
      for (final network in networks) {
        if (!uniqueNetworks.containsKey(network.ssid) ||
            uniqueNetworks[network.ssid]!.signalStrength < network.signalStrength) {
          uniqueNetworks[network.ssid] = network;
        }
      }

      // Sort by signal strength
      final sortedNetworks = uniqueNetworks.values.toList()
        ..sort((a, b) => b.signalStrength.compareTo(a.signalStrength));

      if (mounted) {
        setState(() {
          _networks = sortedNetworks;
          _isScanning = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _networks = [];
          _isScanning = false;
          _error = 'Could not scan networks. Enter network name manually.';
        });
      }
    }
  }

  // Convert WiFi frequency (MHz) to channel number
  int _frequencyToChannel(int frequency) {
    if (frequency >= 2412 && frequency <= 2484) {
      return ((frequency - 2412) / 5 + 1).round();
    } else if (frequency >= 5170 && frequency <= 5825) {
      return ((frequency - 5170) / 5 + 34).round();
    }
    return 0;
  }

  // Convert dBm signal level to percentage (0-100)
  int _levelToPercent(int level) {
    // Typical range: -100 dBm (weak) to -30 dBm (strong)
    if (level >= -30) return 100;
    if (level <= -100) return 0;
    return ((level + 100) * 100 / 70).round().clamp(0, 100);
  }

  // Extract auth mode from capabilities string like "[WPA2-PSK-CCMP][ESS]"
  String _getAuthMode(String capabilities) {
    if (capabilities.contains('WPA3')) return 'WPA3';
    if (capabilities.contains('WPA2')) return 'WPA2';
    if (capabilities.contains('WPA')) return 'WPA';
    if (capabilities.contains('WEP')) return 'WEP';
    return 'OPEN';
  }

  // Extract encryption from capabilities string
  String _getEncryption(String capabilities) {
    if (capabilities.contains('CCMP')) return 'AES';
    if (capabilities.contains('TKIP')) return 'TKIP';
    if (capabilities.contains('WEP')) return 'WEP';
    return 'NONE';
  }

  Future<void> _connect() async {
    final ssid = _ssidController.text.trim();
    final password = _passwordController.text;

    if (ssid.isEmpty) {
      setState(() => _error = 'Please enter or select a network name');
      return;
    }

    if (password.isEmpty) {
      setState(() => _error = 'Please enter the network password');
      return;
    }

    setState(() {
      _isConnecting = true;
      _error = null;
      _status = WifiSetupStatus.connecting;
    });

    try {
      final status = await _controlService.setupWifi(
        widget.device,
        ssid: ssid,
        password: password,
      );

      if (mounted) {
        setState(() {
          _status = status;
          _isConnecting = false;
        });

        if (status == WifiSetupStatus.connected) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('WiFi configured successfully!'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = ErrorHandler.getUserFriendlyMessage(e);
          _isConnecting = false;
          _status = WifiSetupStatus.failed;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WiFi Setup'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _isScanning ? null : _scanNetworks,
            tooltip: 'Scan for networks',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Info card
            Card(
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.blue.shade700),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Configure the WiFi network for "${widget.device.name}"',
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Available networks
            Text(
              'Available Networks',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            if (_isScanning)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
              )
            else if (_networks == null || _networks!.isEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Icon(Icons.wifi_find, size: 48, color: Colors.grey[400]),
                      const SizedBox(height: 8),
                      Text(
                        _networks == null
                            ? 'Tap refresh to scan for networks'
                            : 'Enter your network name below',
                        style: TextStyle(color: Colors.grey[600]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            else
              Card(
                clipBehavior: Clip.antiAlias,
                child: ConstrainedBox(
                  // Show max 3 networks (~180px), rest are scrollable
                  constraints: const BoxConstraints(maxHeight: 180),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: _networks!.length,
                    separatorBuilder: (context, index) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final network = _networks![index];
                      return ListTile(
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        leading: Icon(
                          _getSignalIcon(network.signalStrength),
                          color: _getSignalColor(network.signalStrength),
                          size: 20,
                        ),
                        title: Text(network.ssid, style: const TextStyle(fontSize: 14)),
                        subtitle: Text(
                          '${network.authMode} • Ch ${network.channel}',
                          style: TextStyle(color: Colors.grey[600], fontSize: 11),
                        ),
                        trailing: network.authMode != 'OPEN'
                            ? const Icon(Icons.lock, size: 14)
                            : null,
                        onTap: () {
                          _ssidController.text = network.ssid;
                          // Clear any previous error when selecting a network
                          setState(() => _error = null);
                        },
                      );
                    },
                  ),
                ),
              ),

            const SizedBox(height: 24),

            // Manual entry
            Text(
              'Network Credentials',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _ssidController,
              decoration: const InputDecoration(
                labelText: 'Network Name (SSID)',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.wifi),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() => _obscurePassword = !_obscurePassword);
                  },
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Error display
            if (_error != null)
              Card(
                color: Colors.red.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.error_outline, color: Colors.red.shade700),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _error!,
                          style: TextStyle(color: Colors.red.shade900),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Status display
            if (_status != null && _error == null)
              Card(
                color: _status == WifiSetupStatus.connected
                    ? Colors.green.shade50
                    : Colors.orange.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      if (_isConnecting)
                        const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      else
                        Icon(
                          _status == WifiSetupStatus.connected
                              ? Icons.check_circle
                              : Icons.warning_amber_rounded,
                          color: _status == WifiSetupStatus.connected
                              ? Colors.green.shade700
                              : Colors.orange.shade700,
                        ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _getStatusMessage(_status!),
                          style: TextStyle(
                            color: _status == WifiSetupStatus.connected
                                ? Colors.green.shade900
                                : Colors.orange.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            const SizedBox(height: 24),

            // Connect button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isConnecting ? null : _connect,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: _isConnecting
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Connect'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getSignalIcon(int strength) {
    if (strength >= 75) return Icons.signal_wifi_4_bar;
    if (strength >= 50) return Icons.network_wifi_3_bar;
    if (strength >= 25) return Icons.network_wifi_2_bar;
    return Icons.network_wifi_1_bar;
  }

  Color _getSignalColor(int strength) {
    if (strength >= 75) return Colors.green;
    if (strength >= 50) return Colors.lightGreen;
    if (strength >= 25) return Colors.orange;
    return Colors.red;
  }

  String _getStatusMessage(WifiSetupStatus status) {
    switch (status) {
      case WifiSetupStatus.connecting:
        return 'Connecting to network...';
      case WifiSetupStatus.connected:
        return 'Connected successfully!';
      case WifiSetupStatus.passwordShort:
        return 'Password is too short';
      case WifiSetupStatus.handshake:
        return 'Authentication failed - check password';
      case WifiSetupStatus.failed:
        return 'Connection failed';
    }
  }
}

class _ResetDialog extends StatefulWidget {
  final WemoDevice device;
  final DeviceControlService controlService;

  const _ResetDialog({
    required this.device,
    required this.controlService,
  });

  @override
  State<_ResetDialog> createState() => _ResetDialogState();
}

class _ResetDialogState extends State<_ResetDialog> {
  late final DeviceControlService _controlService;
  bool _resetData = false;
  bool _resetWifi = false;
  bool _isResetting = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _controlService = widget.controlService;
  }

  @override
  void dispose() {
    // Don't dispose _controlService
    super.dispose();
  }

  Future<void> _performReset() async {
    if (!_resetData && !_resetWifi) {
      setState(() => _error = 'Please select what to reset');
      return;
    }

    // Build warning message based on selected options
    final warnings = <String>[];
    if (_resetData) {
      warnings.add('• All schedules and automation rules will be deleted');
    }
    if (_resetWifi) {
      warnings.add('• WiFi settings will be erased');
      warnings.add('• You will need to set up the device again');
      warnings.add('• The device may become temporarily unreachable');
    }

    // Show confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: Colors.orange.shade700),
            const SizedBox(width: 8),
            const Text('Confirm Reset'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Are you sure you want to reset "${widget.device.name}"?',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Text(
              'This will:',
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            ...warnings.map((w) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(w, style: TextStyle(color: Colors.red.shade700, fontSize: 13)),
            )),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, size: 18, color: Colors.orange.shade700),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'This action cannot be undone.',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            child: const Text('Yes, Reset'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() {
      _isResetting = true;
      _error = null;
    });

    try {
      final result = await _controlService.resetDevice(
        widget.device,
        data: _resetData,
        wifi: _resetWifi,
      );

      if (!mounted) return;

      if (result == ResetResult.success) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Device reset successfully'),
            backgroundColor: Colors.green,
          ),
        );
      } else if (result == ResetResult.resetRemote) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Device will reset remotely'),
            backgroundColor: Colors.orange,
          ),
        );
      } else {
        setState(() {
          _error = 'Reset failed';
          _isResetting = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = ErrorHandler.getUserFriendlyMessage(e);
          _isResetting = false;
        });
      }
    }
  }

  Future<void> _performFactoryReset() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Factory Reset'),
        content: const Text(
          'This will erase ALL settings and restore the device to factory defaults. '
          'You will need to set up the device again.\n\n'
          'This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Factory Reset'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() {
      _isResetting = true;
      _error = null;
    });

    try {
      await _controlService.factoryReset(widget.device);

      if (!mounted) return;

      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Factory reset initiated'),
          backgroundColor: Colors.orange,
        ),
      );
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = ErrorHandler.getUserFriendlyMessage(e);
          _isResetting = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Reset Device'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reset options for "${widget.device.name}"',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          CheckboxListTile(
            value: _resetData,
            onChanged: _isResetting
                ? null
                : (value) => setState(() => _resetData = value ?? false),
            title: const Text('Reset User Data'),
            subtitle: const Text('Clears schedules and rules'),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          ),
          CheckboxListTile(
            value: _resetWifi,
            onChanged: _isResetting
                ? null
                : (value) => setState(() => _resetWifi = value ?? false),
            title: const Text('Reset WiFi Settings'),
            subtitle: const Text('Device will need to be set up again'),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          ),
          if (_error != null) ...[
            const SizedBox(height: 8),
            Text(
              _error!,
              style: TextStyle(color: Colors.red.shade700, fontSize: 12),
            ),
          ],
          const Divider(height: 24),
          TextButton.icon(
            onPressed: _isResetting ? null : _performFactoryReset,
            icon: const Icon(Icons.warning_amber_rounded),
            label: const Text('Factory Reset'),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: _isResetting ? null : () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _isResetting ? null : _performReset,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
          child: _isResetting
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : const Text('Reset'),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;
  final bool isActive;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.surfaceContainerHighest,
        foregroundColor: isActive
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.onSurface,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
