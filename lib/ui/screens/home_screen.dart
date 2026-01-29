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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _wifiName;
  SettingsProvider? _settingsProvider;
  bool _settingsListenerAttached = false;

  @override
  void initState() {
    super.initState();
    // Start device discovery when the screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startInitialDiscovery();
    });
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

    unawaited(provider.discoverDevices(
      timeout: Duration(seconds: settings.discoveryTimeoutSeconds),
    ));
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
    try {
      // For network_info_plus to work on modern OS:
      // - iOS: Location permission required + Access WiFi Information entitlement
      // - Android < 13: Location permission required + Location services enabled
      // - Android 13+: NEARBY_WIFI_DEVICES permission OR Location permission

      if (Platform.isAndroid) {
        // Check location service status first (required for older Android)
        final serviceStatus = await Permission.location.serviceStatus;
        final locationServicesEnabled = serviceStatus.isEnabled;

        // Request permissions
        Map<Permission, PermissionStatus> statuses = await [
          Permission.locationWhenInUse,
          Permission.nearbyWifiDevices,
        ].request();

        final locationGranted = statuses[Permission.locationWhenInUse]?.isGranted ?? false;
        final nearbyGranted = statuses[Permission.nearbyWifiDevices]?.isGranted ?? false;

        // Android 13+ can use NEARBY_WIFI_DEVICES without location
        // Older Android needs location permission AND services enabled
        final hasPermission = nearbyGranted || (locationGranted && locationServicesEnabled);

        if (!hasPermission) {
          if (mounted) {
            if (!locationServicesEnabled && !nearbyGranted) {
              setState(() => _wifiName = 'Location Services Disabled');
            } else {
              setState(() => _wifiName = 'Permission Denied');
            }
          }
          return;
        }
      } else if (Platform.isIOS) {
        // On iOS, request location permission first
        // The permission_handler serviceStatus check is unreliable on iOS 26+
        PermissionStatus status = await Permission.locationWhenInUse.status;
        
        if (status.isDenied) {
          status = await Permission.locationWhenInUse.request();
        }
        
        if (status.isPermanentlyDenied) {
          if (mounted) {
            setState(() => _wifiName = 'Enable Location in Settings');
          }
          return;
        }
        
        // Even if status shows denied, try to get WiFi name anyway
        // (iOS may still provide it depending on system settings)
      }

      // Try to get WiFi name directly
      final info = NetworkInfo();
      String? name = await info.getWifiName();

      if (!mounted) return;

      if (name == null || name.isEmpty || name == '<unknown ssid>') {
        // Couldn't get WiFi name - check if we're connected at all
        final wifiIP = await info.getWifiIP();
        if (wifiIP != null && wifiIP.isNotEmpty) {
          // We have an IP, so we're connected but can't get SSID
          setState(() => _wifiName = 'Connected to WiFi');
        } else {
          setState(() => _wifiName = 'Not Connected');
        }
      } else {
        // Remove quotes that iOS sometimes adds
        setState(() => _wifiName = name.replaceAll('"', ''));
      }
    } catch (e) {
      if (mounted) {
        // Try to determine if we're at least connected
        try {
          final info = NetworkInfo();
          final wifiIP = await info.getWifiIP();
          if (wifiIP != null && wifiIP.isNotEmpty) {
            setState(() => _wifiName = 'Connected');
          } else {
            setState(() => _wifiName = 'WiFi Status Unknown');
          }
        } catch (_) {
          setState(() => _wifiName = 'WiFi Status Unknown');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'B I T   S W I T C H',
          style: TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
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
                tooltip: 'Refresh devices',
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _navigateToSettings(context),
            tooltip: 'Settings',
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
                        label: 'Dismiss',
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
                                      ? 'Discovering devices...'
                                      : 'No devices found',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                        color: Colors.grey,
                                      ),
                                ),
                                if (!provider.isDiscovering) ...[
                                  const SizedBox(height: 16),
                                  ElevatedButton.icon(
                                    onPressed: () => provider.discoverDevices(),
                                    icon: const Icon(Icons.search),
                                    label: const Text('Scan for devices'),
                                  ),
                                ],
                              ],
                            );
                          }
                        ),
                      )
                    else ...[
                      // Devices found state
                      // Use a Consumer just for the refresh bar if it needs 'isDiscovering' status
                      Consumer<DeviceProvider>(
                        builder: (context, provider, _) => _buildRefreshBar(context, provider),
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
                          if (!provider.isDiscovering) return const SizedBox.shrink();
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(strokeWidth: 2),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Looking for more devices...',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context).colorScheme.onSurfaceVariant,
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
            }
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
              ? '$deviceCount device${deviceCount == 1 ? '' : 's'} found, scanning...'
              : '$deviceCount device${deviceCount == 1 ? '' : 's'} found',
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
                  'Auto',
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
          label: const Text('Refresh'),
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
    final colors = theme.colorScheme;
    final name = _wifiName ?? 'Unknown Wi-Fi';

    final content = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: colors.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.wifi,
            size: 18,
            color: colors.primary,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wi-Fi: $name',
                style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(
                'This app finds devices connected to the same Wi-Fi network.',
                style: textTheme.bodySmall?.copyWith(color: colors.onSurfaceVariant),
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
        color: colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colors.outlineVariant),
      ),
      child: content,
    );
  }

  @override
  void dispose() {
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
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  }
}
