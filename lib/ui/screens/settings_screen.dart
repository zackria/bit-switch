import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_settings/app_settings.dart';
import '../../providers/settings_provider.dart';
import '../../providers/device_provider.dart';
import '../../providers/pairing_provider.dart';
import '../../services/wifi_detection_service.dart';
import 'device_pairing_screen.dart';
import '../../l10n/l10n.dart';

class SettingsScreen extends StatefulWidget {
  final WifiDetectionService? wifiService;
  final bool? isMobilePlatform;
  final bool? isIOSPlatform;
  final Future<void> Function()? openAppSettings;

  const SettingsScreen({
    super.key,
    this.wifiService,
    this.isMobilePlatform,
    this.isIOSPlatform,
    this.openAppSettings,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final WifiDetectionService _wifiService;
  String? _currentSsid;
  bool _hasLocationPermission = false;
  bool _isCheckingPermissions = false;

  bool get _isIOS => widget.isIOSPlatform ?? Platform.isIOS;
  bool get _isMobile =>
      widget.isMobilePlatform ?? (Platform.isIOS || Platform.isAndroid);

  Future<void> _openAppSettings() async {
    final callback = widget.openAppSettings;
    if (callback != null) {
      await callback();
      return;
    }
    AppSettings.openAppSettings(type: AppSettingsType.settings);
  }

  @override
  void initState() {
    super.initState();
    _wifiService = widget.wifiService ?? WifiDetectionService();
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
              content: Text(context.l10n.settingsPermissionGrantedWifi(ssid)),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          // Has location but no SSID - needs Local Network too
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(context.l10n.settingsLocalNetworkAlsoNeeded),
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
        title: Text(context.l10n.settingsLocationRequired),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.l10n.settingsLocationRequiredBody),
            const SizedBox(height: 12),
            Text(
              context.l10n.settingsRequiredPermissions,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              context.l10n.settingsPermissionList,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.settingsDiscoveryWithoutLocation,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.commonCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              _requestPermissions();
            },
            child: Text(context.l10n.commonTryAgain),
          ),
        ],
      ),
    );
  }

  void _showPermanentlyDeniedDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.settingsEnableLocation),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.l10n.settingsLocationDeniedBody),
            const SizedBox(height: 12),
            Text(
              context.l10n.settingsStepsToEnable,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              context.l10n.settingsEnableLocationSteps,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.settingsLocationOnlyWifiName,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.commonLater),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              _openAppSettings();
            },
            child: Text(context.l10n.commonOpenSettings),
          ),
        ],
      ),
    );
  }

  void _showLocalNetworkPermissionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.settingsAdditionalPermission),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.l10n.settingsWifiNameNotVisible),
            const SizedBox(height: 12),
            Text(
              context.l10n.settingsPleaseEnable,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              context.l10n.settingsEnableLocalNetworkSteps,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.settingsLocalNetworkIosReason,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.commonCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              _openAppSettings();
            },
            child: Text(context.l10n.commonOpenSettings),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.settingsTitle)),
      body: Consumer2<SettingsProvider, DeviceProvider>(
        builder: (context, settings, devices, child) {
          return ListView(
            children: [
              // Network information and permissions
              if (_isMobile) ...[
                _buildSectionHeader(
                  context,
                  context.l10n.settingsSectionNetwork,
                ),
                _buildWifiInfoTile(context),
                _buildPermissionStatusTile(context),
                const Divider(),
              ],

              // Device pairing (iOS and Android only)
              if (_isMobile) ...[
                _buildSectionHeader(
                  context,
                  context.l10n.settingsSectionDeviceSetup,
                ),
                ListTile(
                  leading: const Icon(Icons.add_circle_outline),
                  title: Text(context.l10n.settingsPairNewDevice),
                  subtitle: Text(context.l10n.settingsPairNewDeviceSubtitle),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _openPairingScreen(context),
                ),
                const Divider(),
              ],
              _buildSectionHeader(
                context,
                context.l10n.settingsSectionDiscovery,
              ),
              ListTile(
                leading: const Icon(Icons.timer_outlined),
                title: Text(context.l10n.settingsDiscoveryTimeout),
                subtitle: Text(
                  context.l10n.commonSeconds(settings.discoveryTimeoutSeconds),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _showDiscoveryTimeoutDialog(context, settings),
              ),
              ListTile(
                leading: const Icon(Icons.network_ping),
                title: Text(context.l10n.settingsRequestTimeout),
                subtitle: Text(
                  context.l10n.settingsSecondsPerRequest(
                    settings.requestTimeoutSeconds,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _showRequestTimeoutDialog(context, settings),
              ),
              SwitchListTile(
                secondary: const Icon(Icons.autorenew),
                title: Text(context.l10n.settingsAutoRefresh),
                subtitle: Text(
                  settings.autoRefreshEnabled
                      ? context.l10n.settingsRefreshingEvery(
                          settings.autoRefreshIntervalSeconds,
                        )
                      : context.l10n.settingsAutoRefreshOff,
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
                  title: Text(context.l10n.settingsAutoRefreshInterval),
                  subtitle: Text(
                    context.l10n.commonSeconds(
                      settings.autoRefreshIntervalSeconds,
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () =>
                      _showRefreshIntervalDialog(context, settings, devices),
                ),
              const Divider(),
              _buildSectionHeader(context, context.l10n.settingsSectionAbout),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: Text(context.l10n.settingsAbout),
                onTap: () => _showAboutDialog(context),
              ),
              ListTile(
                leading: const Icon(Icons.code),
                title: Text(context.l10n.settingsVersion),
                subtitle: const Text('1.0.1'),
              ),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: Text(context.l10n.settingsNetworkDiagnostics),
                onTap: () => _showDiagnosticsDialog(context),
              ),
              const Divider(),
              _buildSectionHeader(context, context.l10n.settingsSectionDebug),
              SwitchListTile(
                secondary: const Icon(Icons.bug_report),
                title: Text(context.l10n.settingsShowDebug),
                subtitle: Text(context.l10n.settingsShowDebugHomeSubtitle),
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
      subtitle = context.l10n.settingsChecking;
    } else if (_currentSsid != null) {
      subtitle = _currentSsid!;
    } else if (_hasLocationPermission) {
      // Has location permission but still no SSID - likely missing Local Network permission
      subtitle = _isIOS
          ? context.l10n.settingsEnableLocalNetwork
          : context.l10n.settingsNotConnectedWifi;
    } else {
      subtitle = context.l10n.settingsPermissionRequiredView;
    }

    return ListTile(
      leading: Icon(
        _currentSsid != null ? Icons.wifi : Icons.wifi_off,
        color: _currentSsid != null ? theme.colorScheme.primary : null,
      ),
      title: Text(context.l10n.settingsCurrentNetwork),
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
              tooltip: context.l10n.commonRefresh,
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
      title: Text(context.l10n.settingsNetworkAccessStatus),
      subtitle: Text(
        fullyGranted
            ? context.l10n.settingsAllPermissionsGranted
            : partiallyGranted && _isIOS
            ? context.l10n.settingsLocalNetworkNeeded
            : context.l10n.settingsLocationNeeded,
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
            tooltip: context.l10n.settingsRefreshPermissions,
          ),
          const SizedBox(width: 4),
          // Action button based on status
          if (!_hasLocationPermission)
            FilledButton.icon(
              onPressed: _isCheckingPermissions ? null : _requestPermissions,
              icon: const Icon(Icons.lock_open, size: 18),
              label: Text(context.l10n.commonGrant),
            )
          else if (partiallyGranted && _isIOS)
            OutlinedButton.icon(
              onPressed: () => _showLocalNetworkPermissionDialog(),
              icon: const Icon(Icons.settings, size: 18),
              label: Text(context.l10n.commonFix),
            ),
        ],
      ),
      onTap: _hasLocationPermission
          ? null
          : () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(context.l10n.settingsAboutWifiPermission),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(context.l10n.settingsWifiPermissionIos),
                      const SizedBox(height: 8),
                      Text(
                        context.l10n.settingsImportant,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        context.l10n.settingsWifiPermissionImportant,
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(context.l10n.commonCancel),
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _requestPermissions();
                      },
                      child: Text(context.l10n.settingsGrantPermission),
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
        title: Text(context.l10n.settingsDiscoveryTimeout),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.l10n.settingsHowLongScan),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [5, 10, 30, 60, 120].map((seconds) {
                return ChoiceChip(
                  label: Text(
                    seconds < 60
                        ? context.l10n.commonSecondsShort(seconds)
                        : context.l10n.commonMinutesShort(seconds ~/ 60),
                  ),
                  selected: seconds == settings.discoveryTimeoutSeconds,
                  onSelected: (selected) async {
                    await settings.setDiscoveryTimeoutSeconds(seconds);
                    if (context.mounted) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            context.l10n.settingsDiscoveryTimeoutSet(seconds),
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
            child: Text(context.l10n.commonCancel),
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
        title: Text(context.l10n.settingsRequestTimeout),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.l10n.settingsHowLongResponses),
            const SizedBox(height: 8),
            Text(
              context.l10n.settingsIncreaseTimeoutHint,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [2, 3, 5, 8, 10].map((seconds) {
                return ChoiceChip(
                  label: Text(context.l10n.commonSecondsShort(seconds)),
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
                            context.l10n.settingsRequestTimeoutSet(seconds),
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
            child: Text(context.l10n.commonCancel),
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
        title: Text(context.l10n.settingsAutoRefreshInterval),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.l10n.settingsSetRefreshInterval),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [15, 30, 60, 120].map((seconds) {
                return ChoiceChip(
                  label: Text(context.l10n.commonSecondsShort(seconds)),
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
                            context.l10n.settingsRefreshIntervalSet(seconds),
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
            child: Text(context.l10n.commonCancel),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.settingsAbout),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.settingsAboutTagline,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Text(
              context.l10n.settingsAboutDescription,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              context.l10n.settingsVersionValue,
              style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.commonClose),
          ),
        ],
      ),
    );
  }

  void _showDiagnosticsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.settingsNetworkDiagnostics),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.l10n.settingsProtocol),
            const SizedBox(height: 8),
            Text(context.l10n.settingsMulticastAddress),
            const SizedBox(height: 8),
            Text(context.l10n.settingsDevicePorts),
            const SizedBox(height: 8),
            Text(context.l10n.settingsControlProtocol),
            const SizedBox(height: 16),
            Text(
              context.l10n.settingsDiagnosticsTip,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.commonClose),
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
          create: (_) => PairingProvider(localizations: context.l10n),
          child: const DevicePairingScreen(),
        ),
      ),
    ).then((result) {
      // If a device was paired, refresh the device list
      if (result != null && context.mounted) {
        final deviceProvider = context.read<DeviceProvider>();
        deviceProvider.discoverDevices();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.l10n.settingsDevicePaired)),
        );
      }
    });
  }
}
