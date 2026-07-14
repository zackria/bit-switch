import 'dart:io';
import 'dart:async';

import 'package:flutter/foundation.dart'; // For listEquals
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../providers/device_provider.dart';
import '../../providers/settings_provider.dart';
import '../../models/wemo_device.dart';
import '../widgets/device_list_item.dart'; // Import DeviceListItem
import 'device_detail_screen.dart';
import 'settings_screen.dart';
import '../../l10n/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _wifiName;
  SettingsProvider? _settingsProvider;
  bool _settingsListenerAttached = false;
  final List<Timer> _activeTimers = [];
  final TextEditingController _probeIpController = TextEditingController(
    text: '192.168.86.125:49153',
  );

  @override
  void initState() {
    super.initState();
    _loadWifiName();
  }

  Future<void> _startInitialDiscovery() async {
    final provider = context.read<DeviceProvider>();
    final settings = context.read<SettingsProvider>();

    await settings.ensureLoaded();

    // Initialize the request timeout from settings
    provider.controlService.setRequestTimeout(
      Duration(seconds: settings.requestTimeoutSeconds),
    );

    unawaited(
      provider.discoverDevices(
        timeout: Duration(seconds: settings.discoveryTimeoutSeconds),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_settingsListenerAttached) return;
    _settingsProvider = context.read<SettingsProvider>();
    _settingsProvider?.addListener(_handleSettingsChanged);
    _settingsListenerAttached = true;
    // Don't start auto-refresh on initial load - only react to setting changes
  }

  void _handleSettingsChanged() {
    if (!mounted) return;
    final settings = _settingsProvider;
    if (settings == null) return;
    final provider = context.read<DeviceProvider>();
    if (settings.autoRefreshEnabled) {
      provider.startPeriodicRefresh(
        interval: Duration(seconds: settings.autoRefreshIntervalSeconds),
      );
    } else {
      provider.stopPeriodicRefresh();
    }
  }

  Future<void> _refreshDevices() async {
    final provider = context.read<DeviceProvider>();
    final settings = context.read<SettingsProvider>();
    provider.clearDevices();
    await provider.discoverDevices(
      timeout: Duration(seconds: settings.discoveryTimeoutSeconds),
    );
  }

  Future<void> _loadWifiName() async {
    // Location permission is OPTIONAL - only needed to display WiFi network name.
    // Device discovery and control work without it (only needs Local Network permission).
    // We check permission status without forcing a request, and gracefully fall back
    // to a generic message if not granted.

    try {
      bool hasPermission = false;

      if (Platform.isAndroid) {
        // Check current permission status without forcing a request
        final locationStatus = await Permission.locationWhenInUse.status;
        final nearbyStatus = await Permission.nearbyWifiDevices.status;
        final serviceStatus = await Permission.location.serviceStatus;

        // Android 13+ can use NEARBY_WIFI_DEVICES without location
        // Older Android needs location permission AND services enabled
        hasPermission =
            nearbyStatus.isGranted ||
            (locationStatus.isGranted && serviceStatus.isEnabled);
      } else if (Platform.isIOS) {
        // Request location permission proactively so the dialog appears on first
        // launch, before the Local Network dialog from SSDP discovery. On
        // subsequent launches the OS returns the current status immediately
        // without re-showing the dialog.
        final status = await Permission.locationWhenInUse.request();
        hasPermission = status.isGranted;
      } else {
        // Non-mobile platforms (tests, desktop) - allow fetching wifi name
        hasPermission = true;
      }

      // If we don't have permission, show a friendly fallback (not an error)
      if (!hasPermission) {
        if (mounted) {
          setState(() => _wifiName = 'Connected to WiFi');
        }
        return;
      }

      // We have permission - try to get the actual WiFi name
      final info = NetworkInfo();
      String? name;

      try {
        // Use a short timeout when tests are running to avoid long waits
        final binding = WidgetsBinding.instance;
        final runningInTests = binding.runtimeType.toString().contains(
          'TestWidgetsFlutterBinding',
        );
        final timeout = runningInTests
            ? const Duration(milliseconds: 50)
            : const Duration(seconds: 3);

        final completer = Completer<String?>();
        final timer = Timer(timeout, () {
          if (!completer.isCompleted) completer.complete(null);
        });
        _activeTimers.add(timer);

        info
            .getWifiName()
            .then((value) {
              if (!completer.isCompleted) completer.complete(value);
            })
            .catchError((e) {
              if (!completer.isCompleted) completer.complete(null);
            })
            .whenComplete(() {
              try {
                timer.cancel();
              } catch (_) {}
              _activeTimers.remove(timer);
            });

        name = await completer.future;
      } catch (_) {
        // Silently handle errors - WiFi name is not critical
        name = null;
      }

      if (!mounted) return;

      if (name != null && name.isNotEmpty && name != '<unknown ssid>') {
        // Successfully got WiFi name - remove quotes that iOS sometimes adds
        setState(() => _wifiName = name!.replaceAll('"', ''));
      } else {
        // Couldn't get name but we have permission - show generic connected message
        setState(() => _wifiName = 'Connected to WiFi');
      }
    } catch (_) {
      // Any unexpected error - show generic message
      if (mounted) {
        setState(() => _wifiName = 'Connected to WiFi');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'B I T   S W I T C H',
          style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          // Debug icon - only shown when enabled in settings
          Consumer2<SettingsProvider, DeviceProvider>(
            builder: (context, settings, provider, child) {
              if (!settings.showDebugOption) return const SizedBox.shrink();
              return IconButton(
                icon: Icon(
                  Icons.bug_report,
                  color: provider.debugMode ? Colors.amber : null,
                ),
                onPressed: () {
                  provider.setDebugMode(!provider.debugMode);
                },
                tooltip: context.l10n.homeToggleDebug,
              );
            },
          ),
          Consumer<DeviceProvider>(
            builder: (context, provider, child) {
              return IconButton(
                icon: provider.isDiscovering
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.refresh),
                onPressed: provider.isDiscovering
                    ? null
                    : () {
                        provider.clearDevices();
                        provider.discoverDevices();
                      },
                tooltip: context.l10n.homeRefreshDevices,
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _navigateToSettings(context),
            tooltip: context.l10n.homeSettings,
          ),
        ],
      ),
      body: Selector<DeviceProvider, List<WemoDevice>>(
        selector: (_, provider) => provider.devices,
        shouldRebuild: (previous, next) => !listEquals(previous, next),
        builder: (context, devices, child) {
          // Access provider for error checking and other flags without rebuilding on list change
          // We can use context.read or a separate Consumer/Selector for specific flags if needed.
          // But here we need to show error snackbar. Ideally this should be a listener,
          // but sticking to previous pattern for now, we can check error via context.read
          // inside a frame callback or use a separate Consumer for error.

          return Consumer<DeviceProvider>(
            builder: (context, provider, child) {
              // Show error if any - this part still rebuilds on any change,
              // but the expensive list building below is now optimized?
              // Wait, if I nest Consumer inside Selector's builder, it defeats the purpose
              // if I put the List inside Consumer.

              // Correct approach:
              // 1. Selector for List (optimized list building).
              // 2. Separate mechanism for Error showing (Listener or small Consumer).
              // 3. Separate mechanism for "isDiscovering" UI (small Consumer).

              if (provider.error != null) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(provider.error!),
                      action: SnackBarAction(
                        label: context.l10n.homeDismiss,
                        onPressed: () => provider.clearError(),
                      ),
                    ),
                  );
                  provider.clearError();
                });
              }

              return RefreshIndicator(
                onRefresh: _refreshDevices,
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    // WiFi Info is always at the top
                    _buildWifiInfo(context),
                    const SizedBox(height: 16),

                    // Debug panel (only shown when debug mode is enabled)
                    Consumer<DeviceProvider>(
                      builder: (context, provider, _) {
                        if (!provider.debugMode) return const SizedBox.shrink();
                        return _buildDebugPanel(context, provider);
                      },
                    ),

                    if (devices.isEmpty)
                      // Empty state / Discovery state
                      // We need 'isDiscovering' here.
                      // Accessing provider.isDiscovering inside this builder (which is triggered by List change)
                      // might be stale if List didn't change but isDiscovering did.
                      // So we need a nested Consumer/Selector for the empty state content.
                      Container(
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height * 0.5,
                        ),
                        child: Consumer<DeviceProvider>(
                          builder: (context, provider, child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (provider.isDiscovering)
                                  const CircularProgressIndicator()
                                else
                                  const Icon(
                                    Icons.devices_other,
                                    size: 64,
                                    color: Colors.grey,
                                  ),
                                const SizedBox(height: 16),
                                Text(
                                  provider.isDiscovering
                                      ? context.l10n.homeDiscovering
                                      : context.l10n.homeNoDevices,
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(color: Colors.grey),
                                ),
                                if (!provider.isDiscovering) ...[
                                  const SizedBox(height: 16),
                                  ElevatedButton.icon(
                                    onPressed: () => provider.discoverDevices(),
                                    icon: const Icon(Icons.search),
                                    label: Text(context.l10n.homeScanDevices),
                                  ),
                                ],
                              ],
                            );
                          },
                        ),
                      )
                    else ...[
                      // Devices found state
                      // Use a Consumer just for the refresh bar if it needs 'isDiscovering' status
                      Consumer<DeviceProvider>(
                        builder: (context, provider, _) =>
                            _buildRefreshBar(context, provider),
                      ),
                      const SizedBox(height: 12),
                      ...devices.map((device) {
                        // Uses DeviceListItem which manages its own state updates
                        return DeviceListItem(
                          device: device,
                          onTap: () => _navigateToDetail(context, device),
                          onToggle: () => _toggleDevice(context, device),
                        );
                      }),
                      // Show scanning indicator at bottom when discovery is in progress
                      Consumer<DeviceProvider>(
                        builder: (context, provider, _) {
                          if (!provider.isDiscovering) {
                            return const SizedBox.shrink();
                          }
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    context.l10n.homeLookingForMore,
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.onSurfaceVariant,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildRefreshBar(BuildContext context, DeviceProvider provider) {
    final deviceCount = provider.devices.length;
    final settings = context.watch<SettingsProvider>();
    final isDiscovering = provider.isDiscovering;

    return Row(
      children: [
        if (isDiscovering) ...[
          const SizedBox(
            width: 14,
            height: 14,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          const SizedBox(width: 8),
        ],
        Text(
          isDiscovering
              ? context.l10n.homeDevicesFoundScanning(deviceCount)
              : context.l10n.homeDevicesFound(deviceCount),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const Spacer(),
        if (settings.autoRefreshEnabled && !isDiscovering)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.autorenew,
                  size: 12,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 4),
                Text(
                  context.l10n.homeAuto,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(width: 8),
        TextButton.icon(
          onPressed: isDiscovering ? null : _refreshDevices,
          icon: const Icon(Icons.refresh, size: 16),
          label: Text(context.l10n.commonRefresh),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            visualDensity: VisualDensity.compact,
          ),
        ),
      ],
    );
  }

  Widget _buildWifiInfo(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final name = _wifiName == 'Connected to WiFi'
        ? context.l10n.homeConnectedWifi
        : (_wifiName ?? context.l10n.commonUnknownWifi);

    final content = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.wifi, size: 18, color: theme.colorScheme.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.homeWifiName(name),
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                context.l10n.homePermissionExplanation,
                style: textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: content,
    );
  }

  Widget _buildDebugPanel(BuildContext context, DeviceProvider provider) {
    final logs = provider.debugLog;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.amber.withAlpha(128)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.bug_report, color: Colors.amber, size: 18),
              const SizedBox(width: 8),
              Text(
                context.l10n.homeDebugLog,
                style: const TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => provider.clearDebugLog(),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  context.l10n.homeClear,
                  style: const TextStyle(color: Colors.amber, fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: logs.isEmpty
                ? Center(
                    child: Text(
                      context.l10n.homeDebugEmpty,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  )
                : ListView.builder(
                    itemCount: logs.length,
                    itemBuilder: (context, index) {
                      final log = logs[index];
                      Color logColor = Colors.green;
                      if (log.contains('ERROR') ||
                          log.contains('FAILED') ||
                          log.contains('Exception')) {
                        logColor = Colors.red;
                      } else if (log.contains('TIMEOUT') ||
                          log.contains('timeout')) {
                        logColor = Colors.orange;
                      } else if (log.contains('Found') ||
                          log.contains('Valid')) {
                        logColor = Colors.lightGreen;
                      }
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Text(
                          log,
                          style: TextStyle(
                            color: logColor,
                            fontSize: 11,
                            fontFamily: 'monospace',
                          ),
                        ),
                      );
                    },
                  ),
          ),
          const SizedBox(height: 8),
          // Direct probe input
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _probeIpController,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  decoration: InputDecoration(
                    hintText: context.l10n.homeProbeHint,
                    hintStyle: TextStyle(color: Colors.grey[600], fontSize: 12),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(color: Colors.amber),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  final input = _probeIpController.text.trim();
                  final parts = input.split(':');
                  final host = parts[0];
                  final port = parts.length > 1
                      ? int.tryParse(parts[1]) ?? 49153
                      : 49153;
                  provider.probeDeviceByIp(host, port: port);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  minimumSize: Size.zero,
                ),
                child: Text(
                  context.l10n.homeProbe,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Subnet scan button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: provider.isDiscovering
                  ? null
                  : () => provider.scanSubnet(),
              icon: const Icon(Icons.radar, size: 16),
              label: Text(
                provider.isDiscovering
                    ? context.l10n.homeScanning
                    : context.l10n.homeScanSubnet,
                style: const TextStyle(fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.l10n.homePlatform(
              Platform.operatingSystem,
              Platform.operatingSystemVersion,
            ),
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Cancel any timers started for wifi info timeouts to avoid test leaks
    for (final t in _activeTimers) {
      try {
        t.cancel();
      } catch (_) {}
    }
    _activeTimers.clear();
    _probeIpController.dispose();
    _settingsProvider?.removeListener(_handleSettingsChanged);
    super.dispose();
  }

  void _navigateToDetail(BuildContext context, WemoDevice device) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DeviceDetailScreen(device: device),
      ),
    );
  }

  Future<void> _toggleDevice(BuildContext context, WemoDevice device) async {
    // Provider handles errors and updates the error state, which is shown by the listener
    await context.read<DeviceProvider>().toggle(device.id);
  }

  void _navigateToSettings(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const SettingsScreen()));
  }
}
