// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'The device does not support this action.';

  @override
  String get errInvalidArgs => 'Invalid arguments were sent to the device.';

  @override
  String get errActionFailed =>
      'The device failed to perform the requested action.';

  @override
  String get errInvalidValue => 'An invalid value was provided.';

  @override
  String get errValueOutOfRange => 'The value is out of the acceptable range.';

  @override
  String get errFeatureNotAvailable =>
      'This feature is not available on this device.';

  @override
  String get errOutOfMemory => 'The device is out of memory. Try again later.';

  @override
  String get errManualActionRequired =>
      'Manual action is required on the device.';

  @override
  String get errActionNotAuthorized => 'This action is not authorized.';

  @override
  String get errUnexpected => 'An unexpected error occurred. Please try again.';

  @override
  String get errDeviceUnreachableOffline =>
      'Unable to reach the device. It may be offline or on a different network.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Request timed out after $attempts attempts. The device may be offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Request timed out. The device may be offline.';

  @override
  String get errNoRouteToHost =>
      'Cannot reach the device. Please check your WiFi connection.';

  @override
  String get errHostUnreachable =>
      'The device is unreachable. Please ensure it is powered on and connected to WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Unable to communicate with device after $attempts attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Network error: Unable to communicate with device.';

  @override
  String get errActionNotAuthorizedDevice =>
      'This action is not authorized on the device.';

  @override
  String get errDeviceServiceNotFound =>
      'Device service not found. The device may need a firmware update.';

  @override
  String get errDeviceEncounteredError =>
      'The device encountered an error processing the request.';

  @override
  String get errDeviceInternalError => 'The device returned an internal error.';

  @override
  String get errDeviceTempUnavailable =>
      'The device is temporarily unavailable. Please try again.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Device returned an error (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Failed to $action on the device.';
  }

  @override
  String get errDeviceReturnedError => 'The device returned an error.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'The $operation operation timed out. Please try again.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Operation timed out after $seconds seconds.';
  }

  @override
  String get errOperationTimedOut => 'Operation timed out. Please try again.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Please enable Local Network permission in Settings to find devices.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Cannot access local network. Please enable Local Network permission in Settings.';

  @override
  String get errCheckWifiConnection =>
      'Unable to discover devices. Please check your WiFi connection.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Discovery interrupted. $count device(s) found.';
  }

  @override
  String get errNoDevicesFound =>
      'No devices found. Please ensure devices are powered on and connected to your network.';

  @override
  String get actionGetDeviceState => 'get device state';

  @override
  String get actionSetDeviceState => 'set device state';

  @override
  String get actionGetEnergyData => 'get energy data';

  @override
  String get actionScanNetworks => 'scan for networks';

  @override
  String get actionConnectWifi => 'connect to WiFi';

  @override
  String get actionCheckConnection => 'check connection status';

  @override
  String get actionResetDevice => 'reset device';

  @override
  String get actionPerform => 'perform action';

  @override
  String get suggestTryRefreshing =>
      'Try refreshing the device list or check if the device is responding.';

  @override
  String get suggestEnsurePoweredOn =>
      'Ensure the device is powered on and connected to your WiFi network.';

  @override
  String get suggestMakeSureSameWifi =>
      'Make sure your phone is connected to the same WiFi network as your devices.';

  @override
  String get suggestCheckPhysical =>
      'Check the physical device for any buttons or switches that need attention.';

  @override
  String get suggestWaitAndTry => 'Wait a moment and try again.';

  @override
  String get suggestDeviceBusy =>
      'The device may be busy. Try again in a few seconds.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonClose => 'Close';

  @override
  String get commonDone => 'Done';

  @override
  String get commonLater => 'Later';

  @override
  String get commonRefresh => 'Refresh';

  @override
  String get commonTryAgain => 'Try Again';

  @override
  String get commonOpenSettings => 'Open Settings';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Fix';

  @override
  String get commonOn => 'On';

  @override
  String get commonOff => 'Off';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Name';

  @override
  String get commonType => 'Type';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Manufacturer';

  @override
  String get commonSerial => 'Serial';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Host';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Password';

  @override
  String get commonUnknownWifi => 'Unknown Wi-Fi';

  @override
  String get commonNotConnected => 'Not connected';

  @override
  String commonSecondsShort(int seconds) {
    return '${seconds}s';
  }

  @override
  String commonMinutesShort(int minutes) {
    return '${minutes}m';
  }

  @override
  String commonHoursMinutesShort(int hours, int minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String commonDaysHoursShort(int days, int hours) {
    return '${days}d ${hours}h';
  }

  @override
  String commonSeconds(int seconds) {
    String _temp0 = intl.Intl.pluralLogic(
      seconds,
      locale: localeName,
      other: '$seconds seconds',
      one: '1 second',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Smart Switch';

  @override
  String get deviceTypeLightSwitch => 'Light Switch';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Motion Sensor';

  @override
  String get deviceTypeMaker => 'Maker';

  @override
  String get deviceTypeBridge => 'Bridge';

  @override
  String get deviceTypeCoffeeMaker => 'Coffee Maker';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Humidifier';

  @override
  String get deviceTypeOutdoorPlug => 'Outdoor Plug';

  @override
  String get deviceTypeUnknown => 'Unknown Device';

  @override
  String get pairingStepGetStarted => 'Get Started';

  @override
  String get pairingStepConnectToDevice => 'Connect to Device';

  @override
  String get pairingStepFindDevice => 'Find Device';

  @override
  String get pairingStepSelectNetwork => 'Select Network';

  @override
  String get pairingStepConfiguring => 'Configuring';

  @override
  String get pairingStepReconnect => 'Reconnect';

  @override
  String get pairingStepFinalizing => 'Finalizing';

  @override
  String get pairingStepSuccess => 'Success';

  @override
  String get pairingStepError => 'Error';

  @override
  String get homeToggleDebug => 'Toggle debug mode';

  @override
  String get homeRefreshDevices => 'Refresh devices';

  @override
  String get homeSettings => 'Settings';

  @override
  String get homeDismiss => 'Dismiss';

  @override
  String get homeDiscovering => 'Discovering devices...';

  @override
  String get homeNoDevices => 'No devices found';

  @override
  String get homeScanDevices => 'Scan for devices';

  @override
  String get homeLookingForMore => 'Looking for more devices...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count devices found',
      one: '1 device found',
      zero: 'No devices found',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count devices found, scanning...',
      one: '1 device found, scanning...',
      zero: 'No devices found, scanning...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Auto';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Connected to WiFi';

  @override
  String get homePermissionExplanation =>
      'Location information is used to find your Wi-Fi details. Local network access allows you to control your smart switches and devices.';

  @override
  String get homeDebugLog => 'Debug Log';

  @override
  String get homeClear => 'Clear';

  @override
  String get homeDebugEmpty => 'Tap refresh to start discovery and see logs...';

  @override
  String get homeProbeHint => 'IP:Port (e.g. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Probe';

  @override
  String get homeScanning => 'Scanning...';

  @override
  String get homeScanSubnet => 'Scan Entire Subnet (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platform: $platform $version';
  }

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsSectionNetwork => 'Network';

  @override
  String get settingsSectionDeviceSetup => 'Device Setup';

  @override
  String get settingsSectionDiscovery => 'Discovery';

  @override
  String get settingsSectionAbout => 'About';

  @override
  String get settingsSectionDebug => 'Debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Permission granted! WiFi name: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Location granted, but Local Network permission also needed. Check Settings.';

  @override
  String get settingsLocationRequired => 'Location Permission Required';

  @override
  String get settingsLocationRequiredBody =>
      'To display your WiFi network name, iOS requires Location permission.';

  @override
  String get settingsRequiredPermissions => 'Required Permissions:';

  @override
  String get settingsPermissionList =>
      '1. Location Services (\"While Using the App\")\n2. Local Network';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Note: Device discovery works without location permission. This permission is only used to display your WiFi network name.';

  @override
  String get settingsEnableLocation => 'Enable Location in Settings';

  @override
  String get settingsLocationDeniedBody =>
      'Location permission was denied. You can enable it from the system settings.';

  @override
  String get settingsStepsToEnable => 'Steps to enable:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Open Settings\n2. Scroll to \"Bit Switch\"\n3. Tap \"Location\"\n4. Select \"While Using the App\"\n5. Return to this app and tap the refresh button';

  @override
  String get settingsLocationOnlyWifiName =>
      'Note: Location permission is only needed to display the WiFi name. Device discovery works without it.';

  @override
  String get settingsAdditionalPermission => 'Additional Permission Needed';

  @override
  String get settingsLocalNetworkBody =>
      'Local Network permission is required to discover and control Wemo devices.';

  @override
  String get settingsWifiNameNotVisible =>
      'You have Location permission, but the WiFi name isn\'t visible yet.';

  @override
  String get settingsPleaseEnable => 'Please enable:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Go to iPhone Settings\n2. Scroll down to \"Bit Switch\"\n3. Enable \"Local Network\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Local Network permission is required for both device discovery and WiFi name access on iOS.';

  @override
  String get settingsPairNewDevice => 'Pair New Device';

  @override
  String get settingsPairNewDeviceSubtitle => 'Set up a new Wemo device';

  @override
  String get settingsDiscoveryTimeout => 'Discovery Timeout';

  @override
  String get settingsRequestTimeout => 'Request Timeout';

  @override
  String get settingsAutoRefresh => 'Auto-refresh';

  @override
  String get settingsAutoRefreshOn =>
      'On - Device states refresh automatically';

  @override
  String get settingsAutoRefreshOff => 'Off - Use manual refresh button';

  @override
  String get settingsAutoRefreshInterval => 'Auto-refresh Interval';

  @override
  String get settingsAbout => 'About Bit Switch';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsNetworkDiagnostics => 'Network Diagnostics';

  @override
  String get settingsShowDebug => 'Show Debug Mode';

  @override
  String get settingsShowDebugSubtitle =>
      'Show debug controls and network diagnostics on the home screen';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Show debug icon on the home screen for troubleshooting';

  @override
  String get settingsCurrentNetwork => 'Current Network';

  @override
  String get settingsNetworkAccessStatus => 'Network Access Status';

  @override
  String get settingsNetworkAccessGranted =>
      'Local network access is available';

  @override
  String get settingsNetworkAccessMissing =>
      'Additional permissions may be required';

  @override
  String get settingsChecking => 'Checking...';

  @override
  String get settingsEnableLocalNetwork => 'Enable Local Network in Settings';

  @override
  String get settingsNotConnectedWifi => 'Not connected to WiFi';

  @override
  String get settingsPermissionRequiredView => 'Permission required to view';

  @override
  String get settingsAllPermissionsGranted => 'All permissions granted';

  @override
  String get settingsLocalNetworkNeeded => 'Local Network permission needed';

  @override
  String get settingsLocationNeeded => 'Location permission needed';

  @override
  String get settingsRefreshPermissions => 'Refresh permissions';

  @override
  String get settingsAboutWifiPermission => 'About WiFi Name Permission';

  @override
  String get settingsWifiPermissionExplanation =>
      'Your WiFi name helps confirm that your phone and Wemo devices are on the same network.';

  @override
  String get settingsWifiPermissionIos =>
      'On iOS, displaying your WiFi network name requires location permission.';

  @override
  String get settingsImportant => 'Important:';

  @override
  String get settingsPrivacyNote =>
      '• Your location is never tracked\n• No location data is collected or stored';

  @override
  String get settingsWifiPermissionImportant =>
      '• Device discovery works WITHOUT this permission\n• This is only needed to show the WiFi name\n• No location data is collected or stored';

  @override
  String get settingsGrantPermission => 'Grant Permission';

  @override
  String get settingsHowLongScan => 'How long to scan for devices:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Discovery timeout set to $seconds seconds';
  }

  @override
  String get settingsHowLongResponses =>
      'How long to wait for device responses:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Increase this value if you see \"Connection closed\" errors.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Request timeout set to $seconds seconds';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Set the interval for automatic state refresh:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Refresh interval set to $seconds seconds';
  }

  @override
  String get settingsAboutTagline =>
      'A clean, private local controller for your Wemo devices.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch uses local network discovery to find and control devices without cloud dependencies.';

  @override
  String get settingsVersionValue => 'Version 1.0.1';

  @override
  String get settingsProtocol => 'Protocol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast Address: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Device Ports: 49152-49159';

  @override
  String get settingsControlProtocol => 'Control Protocol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tip: Ensure your device is on the same network as your Wemo devices and that UDP multicast is not blocked.';

  @override
  String get settingsDevicePaired => 'Device paired! Refreshing device list...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds seconds per request';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Refreshing every ${seconds}s';
  }

  @override
  String get pairingTitle => 'Pair New Device';

  @override
  String get pairingSetupTitle => 'Set Up Your Wemo Device';

  @override
  String get pairingBeforeBegin =>
      'Before you begin, make sure your Wemo device is in setup mode:';

  @override
  String get pairingPlugInTitle => 'Plug in your Wemo device';

  @override
  String get pairingPlugInBody =>
      'Connect it to power and wait for it to start up.';

  @override
  String get pairingBlinkingLedTitle => 'Look for the blinking LED';

  @override
  String get pairingBlinkingLedBody =>
      'A blinking LED indicates the device is in setup mode.';

  @override
  String get pairingCheckWifiTitle => 'Check for the WiFi network';

  @override
  String get pairingCheckWifiBody =>
      'The device will broadcast a network named \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'If the LED is solid, hold the reset button for 5 seconds to enter setup mode.';

  @override
  String get pairingStart => 'Start Pairing';

  @override
  String get pairingConnectWifiTitle => 'Connect to Device WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Open your phone\'s WiFi settings and connect to the network that starts with \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Current Network';

  @override
  String get pairingConnectedToDevice => 'Connected to Wemo device!';

  @override
  String get pairingOpenWifiSettings => 'Open WiFi Settings';

  @override
  String get pairingConnectedButton => 'I\'ve Connected';

  @override
  String get pairingLookingForDevice => 'Looking for your Wemo device...';

  @override
  String get pairingManualIpPrompt => 'Or enter the device IP manually:';

  @override
  String get pairingDeviceIp => 'Device IP Address';

  @override
  String get pairingConnectToIp => 'Connect to IP';

  @override
  String get pairingSelectHomeWifi => 'Select your home WiFi network:';

  @override
  String get pairingRefreshNetworks => 'Refresh networks';

  @override
  String get pairingIosScanLimitation =>
      'iOS strictly prohibits third-party apps from scanning for nearby Wi-Fi networks. You may need to enter the network SSID manually.';

  @override
  String get pairingNoNetworks => 'No networks found';

  @override
  String get pairingScanAgain => 'Scan Again';

  @override
  String get pairingWifiPassword => 'WiFi Password';

  @override
  String get pairingConnect => 'Connect';

  @override
  String get pairingEnterNetworkManually => 'Enter network manually';

  @override
  String get pairingEnterNetworkName => 'Enter network name:';

  @override
  String get pairingNetworkName => 'Network Name (SSID)';

  @override
  String get pairingUseNetwork => 'Use This Network';

  @override
  String get pairingConfiguringDevice => 'Configuring device...';

  @override
  String get pairingConfiguringWait =>
      'Please wait while the device connects to your network.';

  @override
  String get pairingReconnectTitle => 'Reconnect to Your Network';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Your Wemo device is now connecting to \"$ssid\". Please reconnect your phone to the same network.';
  }

  @override
  String get pairingBackOnHome => 'Back on home network!';

  @override
  String get pairingReconnectedButton => 'I\'ve Reconnected';

  @override
  String get pairingFinalizingSetup => 'Finalizing setup...';

  @override
  String get pairingSetupComplete => 'Setup Complete!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Connected to $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Your device is now set up and will appear on the home screen.';

  @override
  String get pairingSomethingWrong => 'Something Went Wrong';

  @override
  String get pairingStartOver => 'Start Over';

  @override
  String get pairingErrorOpenWifi =>
      'Could not open WiFi settings. Please open them manually.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Your phone is still connected to \"$ssid\". Please open WiFi settings, connect to the WeMo device network, then try again.';
  }

  @override
  String get pairingLoadingLooking => 'Looking for device...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Could not find the WeMo device at $ip. Make sure your phone is connected to the WeMo WiFi network, then try again. You can also enter the device IP manually.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Error discovering device: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Connecting to $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'No device found at $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Error connecting to $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Scanning for networks...';

  @override
  String pairingErrorScanning(String error) {
    return 'Could not scan networks: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Please select a network and enter the password.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Sending network credentials...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Waiting for device to connect...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Failed to configure network: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Password too short. Please check and try again.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Failed to connect. Please check the password.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Connection timed out. Please try again.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Error finalizing setup: $error';
  }

  @override
  String get detailRefreshState => 'Refresh state';

  @override
  String get detailDeviceInfo => 'Device info';

  @override
  String get detailAdvanced => 'Advanced';

  @override
  String get detailWifiSetup => 'WiFi Setup';

  @override
  String get detailReset => 'Reset';

  @override
  String get detailUnreachable =>
      'Device is unreachable. Check network connection.';

  @override
  String detailFailedToggle(String error) {
    return 'Failed to toggle: $error';
  }

  @override
  String get detailDeviceInformation => 'Device Information';

  @override
  String get detailPermissionScan =>
      'Permission is required to scan WiFi networks.';

  @override
  String get detailScanFailedManual =>
      'Could not scan networks. Enter the network name manually.';

  @override
  String get detailEnterNetworkNameError =>
      'Please enter or select a network name';

  @override
  String get detailEnterPasswordError => 'Please enter the network password';

  @override
  String get detailWifiSuccess => 'WiFi configured successfully!';

  @override
  String get detailScanNetworks => 'Scan for networks';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configure the WiFi network for \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Available Networks';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS strictly prohibits third-party apps from scanning for nearby Wi-Fi networks. Please enter your network name manually below.';

  @override
  String get detailTapRefreshScan => 'Tap refresh to scan for networks';

  @override
  String get detailEnterNetworkBelow => 'Enter your network name below';

  @override
  String get detailNetworkCredentials => 'Network Credentials';

  @override
  String get detailConnecting => 'Connecting to network...';

  @override
  String get detailConnected => 'Connected successfully!';

  @override
  String get detailPasswordShort => 'Password is too short';

  @override
  String get detailAuthenticationFailed =>
      'Authentication failed - check password';

  @override
  String get detailConnectionFailed => 'Connection failed';

  @override
  String get detailSelectReset => 'Please select what to reset';

  @override
  String get detailResetSchedulesWarning =>
      '• All schedules and automation rules will be deleted';

  @override
  String get detailResetWifiWarning => '• WiFi settings will be erased';

  @override
  String get detailSetupAgainWarning =>
      '• You will need to set up the device again';

  @override
  String get detailUnreachableWarning =>
      '• The device may become temporarily unreachable';

  @override
  String get detailConfirmReset => 'Confirm Reset';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Are you sure you want to reset \"$device\"?';
  }

  @override
  String get detailThisWill => 'This will:';

  @override
  String get detailCannotUndo => 'This action cannot be undone.';

  @override
  String get detailYesReset => 'Yes, Reset';

  @override
  String get detailResetSuccess => 'Device reset successfully';

  @override
  String get detailResetRemote => 'Device will reset remotely';

  @override
  String get detailResetFailed => 'Reset failed';

  @override
  String get detailFactoryReset => 'Factory Reset';

  @override
  String get detailFactoryResetWarning =>
      'This will erase ALL settings and restore the device to factory defaults. You will need to set up the device again.\n\nThis action cannot be undone.';

  @override
  String get detailFactoryResetInitiated => 'Factory reset initiated';

  @override
  String get detailResetDevice => 'Reset Device';

  @override
  String detailResetOptionsFor(String device) {
    return 'Reset options for \"$device\"';
  }

  @override
  String get detailResetUserData => 'Reset User Data';

  @override
  String get detailResetUserDataSubtitle => 'Clears schedules and rules';

  @override
  String get detailResetWifi => 'Reset WiFi Settings';

  @override
  String get detailResetWifiSubtitle => 'Device will need to be set up again';

  @override
  String get widgetBrightness => 'Brightness';

  @override
  String get widgetEnergyStatistics => 'Energy Statistics';

  @override
  String get widgetCurrentPower => 'Current Power';

  @override
  String get widgetToday => 'Today';

  @override
  String get widgetTotal => 'Total';

  @override
  String get widgetOnTimeToday => 'On Time Today';

  @override
  String get widgetTotalOnTime => 'Total On Time';

  @override
  String get widgetStandby => 'Standby';

  @override
  String get widgetUnknown => 'Unknown';

  @override
  String get widgetOpenNetwork => 'Open network';

  @override
  String get widgetWepInsecure => 'WEP (insecure)';
}
