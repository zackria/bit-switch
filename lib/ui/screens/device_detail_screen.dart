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
import '../../l10n/l10n.dart';

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
            tooltip: context.l10n.detailRefreshState,
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showDeviceInfo(context),
            tooltip: context.l10n.detailDeviceInfo,
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
          context.l10n.detailAdvanced,
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(color: Colors.grey[600]),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _showWifiSetupDialog(context),
                icon: const Icon(Icons.wifi),
                label: Text(context.l10n.detailWifiSetup),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _showResetDialog(context),
                icon: const Icon(Icons.restart_alt),
                label: Text(context.l10n.detailReset),
                style: OutlinedButton.styleFrom(foregroundColor: Colors.orange),
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
          localizedDeviceType(context.l10n, device.type),
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: Colors.grey[600]),
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
                context.l10n.detailUnreachable,
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
          label: context.l10n.commonOn,
          onPressed: state.isReachable
              ? () => provider.turnOn(device.id)
              : null,
          isActive: state.isOn,
        ),
        const SizedBox(width: 16),
        _ActionButton(
          icon: Icons.power_off,
          label: context.l10n.commonOff,
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

  Future<void> _toggleDevice(
    BuildContext context,
    DeviceProvider provider,
  ) async {
    try {
      await provider.toggle(device.id);
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(context.l10n.detailFailedToggle(e.toString()))),
      );
    }
  }

  void _showDeviceInfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.detailDeviceInformation,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              _InfoRow(label: context.l10n.commonName, value: device.name),
              _InfoRow(
                label: context.l10n.commonType,
                value: localizedDeviceType(context.l10n, device.type),
              ),
              _InfoRow(
                label: context.l10n.commonHost,
                value: '${device.host}:${device.port}',
              ),
              if (device.manufacturer != null)
                _InfoRow(
                  label: context.l10n.commonManufacturer,
                  value: device.manufacturer!,
                ),
              if (device.model != null)
                _InfoRow(label: context.l10n.commonModel, value: device.model!),
              if (device.serialNumber != null)
                _InfoRow(
                  label: context.l10n.commonSerial,
                  value: device.serialNumber!,
                ),
              if (device.firmwareVersion != null)
                _InfoRow(
                  label: context.l10n.commonFirmware,
                  value: device.firmwareVersion!,
                ),
              if (device.macAddress != null)
                _InfoRow(
                  label: context.l10n.commonMac,
                  value: device.macAddress!,
                ),
              const SizedBox(height: 24),
            ],
          ),
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

  const _WifiSetupScreen({required this.device, required this.controlService});

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
  bool _iosScanUnavailable = false;

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
      if (Platform.isIOS) {
        // iOS does not support wifi_scan (Apple prohibits Wi-Fi scanning).
        // Try the Wemo device's own network scanner via SOAP.
        // This may fail if the device is not in setup/AP mode.
        try {
          final deviceNetworks = await _controlService.getAvailableNetworks(
            widget.device,
          );
          deviceNetworks.sort(
            (a, b) => b.signalStrength.compareTo(a.signalStrength),
          );

          if (mounted) {
            setState(() {
              _networks = deviceNetworks;
              _isScanning = false;
            });
          }
          return;
        } catch (_) {
          // Device scan failed (device may not be in setup mode).
          // Show informational message for manual entry.
          if (mounted) {
            setState(() {
              _networks = [];
              _isScanning = false;
              _iosScanUnavailable = true;
            });
          }
          return;
        }
      }

      // On Android, use phone's WiFi scanner instead of device SOAP call
      // This works reliably when device is already on the home network

      // Check if we can scan
      final canScan = await WiFiScan.instance.canStartScan();
      if (canScan != CanStartScan.yes) {
        // Request location permission if needed (required for WiFi scanning)
        final permissionGranted = await _requestWifiScanPermission();
        if (!permissionGranted) {
          if (mounted) {
            setState(() {
              _networks = [];
              _isScanning = false;
              _error = context.l10n.detailPermissionScan;
            });
          }
          return;
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
          .map(
            (ap) => WifiNetwork(
              ssid: ap.ssid,
              channel: _frequencyToChannel(ap.frequency),
              signalStrength: _levelToPercent(ap.level),
              authMode: _getAuthMode(ap.capabilities),
              encryption: _getEncryption(ap.capabilities),
            ),
          )
          .toList();

      // Remove duplicates (same SSID can appear multiple times)
      final uniqueNetworks = <String, WifiNetwork>{};
      for (final network in networks) {
        if (!uniqueNetworks.containsKey(network.ssid) ||
            uniqueNetworks[network.ssid]!.signalStrength <
                network.signalStrength) {
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
          _error = context.l10n.detailScanFailedManual;
        });
      }
    }
  }

  /// Request WiFi scan permission (location or nearbyWifiDevices)
  /// Returns true if permission is granted, false otherwise
  ///
  /// Note: Uses Permission.locationWhenInUse for both iOS and Android
  /// to be consistent with WifiDetectionService. This maps to
  /// ACCESS_FINE_LOCATION on Android which is required for WiFi scanning.
  Future<bool> _requestWifiScanPermission() async {
    try {
      if (Platform.isIOS) {
        // iOS requires location permission for WiFi scanning
        final status = await Permission.locationWhenInUse.status;
        if (status.isPermanentlyDenied) {
          return false;
        }
        if (status.isGranted) {
          return true;
        }
        final result = await Permission.locationWhenInUse.request();
        return result.isGranted;
      } else if (Platform.isAndroid) {
        // Android 13+ can use NEARBY_WIFI_DEVICES, older needs location
        final nearbyStatus = await Permission.nearbyWifiDevices.status;
        if (nearbyStatus.isGranted) {
          return true;
        }
        if (!nearbyStatus.isPermanentlyDenied) {
          final nearbyResult = await Permission.nearbyWifiDevices.request();
          if (nearbyResult.isGranted) {
            return true;
          }
        }

        // Fall back to location permission for older Android
        final locationStatus = await Permission.locationWhenInUse.status;
        if (locationStatus.isPermanentlyDenied) {
          return false;
        }
        if (locationStatus.isGranted) {
          return true;
        }
        final locationResult = await Permission.locationWhenInUse.request();
        return locationResult.isGranted;
      }
      // Desktop platforms don't need permission
      return true;
    } catch (e) {
      return false;
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
      setState(() => _error = context.l10n.detailEnterNetworkNameError);
      return;
    }

    if (password.isEmpty) {
      setState(() => _error = context.l10n.detailEnterPasswordError);
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
            SnackBar(
              content: Text(context.l10n.detailWifiSuccess),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = ErrorHandler.getUserFriendlyMessage(e, context: context);
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
        title: Text(context.l10n.detailWifiSetup),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _isScanning ? null : _scanNetworks,
            tooltip: context.l10n.detailScanNetworks,
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
                        context.l10n.detailConfigureWifiFor(widget.device.name),
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
              context.l10n.detailAvailableNetworks,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),

            // iOS limitation banner — always visible on iOS
            if (Theme.of(context).platform == TargetPlatform.iOS)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Card(
                  color: Colors.blue.shade50,
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.blue.shade700,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            context.l10n.detailIosManualOnly,
                            style: TextStyle(
                              color: Colors.blue.shade800,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            if (_isScanning)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
              )
            else if (_networks == null || _networks!.isEmpty)
              Card(
                color: _iosScanUnavailable ? Colors.blue.shade50 : null,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Icon(
                        _iosScanUnavailable
                            ? Icons.info_outline
                            : Icons.wifi_find,
                        size: 48,
                        color: _iosScanUnavailable
                            ? Colors.blue.shade400
                            : Colors.grey[400],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _iosScanUnavailable
                            ? context.l10n.detailIosManualOnly
                            : _networks == null
                            ? context.l10n.detailTapRefreshScan
                            : context.l10n.detailEnterNetworkBelow,
                        style: TextStyle(
                          color: _iosScanUnavailable
                              ? Colors.blue.shade800
                              : Colors.grey[600],
                        ),
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
                    separatorBuilder: (context, index) =>
                        const Divider(height: 1),
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
                        title: Text(
                          network.ssid,
                          style: const TextStyle(fontSize: 14),
                        ),
                        subtitle: Text(
                          context.l10n.detailNetworkSecurityChannel(
                            network.authMode,
                            network.channel,
                          ),
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 11,
                          ),
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
              context.l10n.detailNetworkCredentials,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _ssidController,
              decoration: InputDecoration(
                labelText: context.l10n.pairingNetworkName,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.wifi),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: context.l10n.commonPassword,
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
                    : Text(context.l10n.pairingConnect),
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
        return context.l10n.detailConnecting;
      case WifiSetupStatus.connected:
        return context.l10n.detailConnected;
      case WifiSetupStatus.passwordShort:
        return context.l10n.detailPasswordShort;
      case WifiSetupStatus.handshake:
        return context.l10n.detailAuthenticationFailed;
      case WifiSetupStatus.failed:
        return context.l10n.detailConnectionFailed;
    }
  }
}

class _ResetDialog extends StatefulWidget {
  final WemoDevice device;
  final DeviceControlService controlService;

  const _ResetDialog({required this.device, required this.controlService});

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
      setState(() => _error = context.l10n.detailSelectReset);
      return;
    }

    // Build warning message based on selected options
    final warnings = <String>[];
    if (_resetData) {
      warnings.add(context.l10n.detailResetSchedulesWarning);
    }
    if (_resetWifi) {
      warnings.add(context.l10n.detailResetWifiWarning);
      warnings.add(context.l10n.detailSetupAgainWarning);
      warnings.add(context.l10n.detailUnreachableWarning);
    }

    // Show confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: Colors.orange.shade700),
            const SizedBox(width: 8),
            Text(context.l10n.detailConfirmReset),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.detailConfirmResetDevice(widget.device.name),
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Text(
              context.l10n.detailThisWill,
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            ...warnings.map(
              (w) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  w,
                  style: TextStyle(color: Colors.red.shade700, fontSize: 13),
                ),
              ),
            ),
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
                  Icon(
                    Icons.info_outline,
                    size: 18,
                    color: Colors.orange.shade700,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      context.l10n.detailCannotUndo,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
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
            child: Text(context.l10n.commonCancel),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            child: Text(context.l10n.detailYesReset),
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
          SnackBar(
            content: Text(context.l10n.detailResetSuccess),
            backgroundColor: Colors.green,
          ),
        );
      } else if (result == ResetResult.resetRemote) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.l10n.detailResetRemote),
            backgroundColor: Colors.orange,
          ),
        );
      } else {
        setState(() {
          _error = context.l10n.detailResetFailed;
          _isResetting = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = ErrorHandler.getUserFriendlyMessage(e, context: context);
          _isResetting = false;
        });
      }
    }
  }

  Future<void> _performFactoryReset() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.detailFactoryReset),
        content: Text(context.l10n.detailFactoryResetWarning),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(context.l10n.commonCancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(context.l10n.detailFactoryReset),
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
        SnackBar(
          content: Text(context.l10n.detailFactoryResetInitiated),
          backgroundColor: Colors.orange,
        ),
      );
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = ErrorHandler.getUserFriendlyMessage(e, context: context);
          _isResetting = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.detailResetDevice),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.detailResetOptionsFor(widget.device.name),
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          CheckboxListTile(
            value: _resetData,
            onChanged: _isResetting
                ? null
                : (value) => setState(() => _resetData = value ?? false),
            title: Text(context.l10n.detailResetUserData),
            subtitle: Text(context.l10n.detailResetUserDataSubtitle),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          ),
          CheckboxListTile(
            value: _resetWifi,
            onChanged: _isResetting
                ? null
                : (value) => setState(() => _resetWifi = value ?? false),
            title: Text(context.l10n.detailResetWifi),
            subtitle: Text(context.l10n.detailResetWifiSubtitle),
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
          OutlinedButton.icon(
            onPressed: _isResetting ? null : _performFactoryReset,
            icon: const Icon(Icons.warning_amber_rounded),
            label: Text(context.l10n.detailFactoryReset),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: _isResetting ? null : () => Navigator.of(context).pop(),
          child: Text(context.l10n.commonCancel),
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
              : Text(context.l10n.detailReset),
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
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
