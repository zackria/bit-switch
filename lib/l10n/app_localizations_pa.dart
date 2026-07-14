// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'ਡਿਵਾਈਸ ਇਸ ਕਾਰਵਾਈ ਦਾ ਸਮਰਥਨ ਨਹੀਂ ਕਰਦੀ ਹੈ।';

  @override
  String get errInvalidArgs => 'ਡਿਵਾਈਸ \'ਤੇ ਅਵੈਧ ਆਰਗੂਮੈਂਟ ਭੇਜੇ ਗਏ ਸਨ।';

  @override
  String get errActionFailed => 'ਡਿਵਾਈਸ ਬੇਨਤੀ ਕੀਤੀ ਕਾਰਵਾਈ ਕਰਨ ਵਿੱਚ ਅਸਫਲ ਰਹੀ।';

  @override
  String get errInvalidValue => 'ਇੱਕ ਅਵੈਧ ਮੁੱਲ ਪ੍ਰਦਾਨ ਕੀਤਾ ਗਿਆ ਸੀ।';

  @override
  String get errValueOutOfRange => 'ਮੁੱਲ ਸਵੀਕਾਰਯੋਗ ਸੀਮਾ ਤੋਂ ਬਾਹਰ ਹੈ।';

  @override
  String get errFeatureNotAvailable =>
      'ਇਹ ਵਿਸ਼ੇਸ਼ਤਾ ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਉਪਲਬਧ ਨਹੀਂ ਹੈ।';

  @override
  String get errOutOfMemory =>
      'ਡਿਵਾਈਸ ਮੈਮੋਰੀ ਤੋਂ ਬਾਹਰ ਹੈ। ਬਾਅਦ ਵਿੱਚ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get errManualActionRequired => 'ਡਿਵਾਈਸ \'ਤੇ ਦਸਤੀ ਕਾਰਵਾਈ ਦੀ ਲੋੜ ਹੈ।';

  @override
  String get errActionNotAuthorized => 'ਇਹ ਕਾਰਵਾਈ ਅਧਿਕਾਰਤ ਨਹੀਂ ਹੈ।';

  @override
  String get errUnexpected =>
      'ਇੱਕ ਅਚਾਨਕ ਗਲਤੀ ਆਈ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get errDeviceUnreachableOffline =>
      'ਡਿਵਾਈਸ ਤੱਕ ਪਹੁੰਚਣ ਵਿੱਚ ਅਸਮਰੱਥ। ਇਹ ਔਫਲਾਈਨ ਜਾਂ ਕਿਸੇ ਵੱਖਰੇ ਨੈੱਟਵਰਕ \'ਤੇ ਹੋ ਸਕਦਾ ਹੈ।';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts ਕੋਸ਼ਿਸ਼ਾਂ ਤੋਂ ਬਾਅਦ ਬੇਨਤੀ ਦਾ ਸਮਾਂ ਸਮਾਪਤ ਹੋਇਆ। ਡਿਵਾਈਸ ਔਫਲਾਈਨ ਹੋ ਸਕਦੀ ਹੈ।';
  }

  @override
  String get errRequestTimedOut =>
      'ਬੇਨਤੀ ਦਾ ਸਮਾਂ ਸਮਾਪਤ ਹੋਇਆ। ਡਿਵਾਈਸ ਔਫਲਾਈਨ ਹੋ ਸਕਦੀ ਹੈ।';

  @override
  String get errNoRouteToHost =>
      'ਡਿਵਾਈਸ ਤੱਕ ਪਹੁੰਚ ਨਹੀਂ ਕੀਤੀ ਜਾ ਸਕਦੀ। ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ WiFi ਕਨੈਕਸ਼ਨ ਦੀ ਜਾਂਚ ਕਰੋ।';

  @override
  String get errHostUnreachable =>
      'ਡਿਵਾਈਸ ਪਹੁੰਚਯੋਗ ਨਹੀਂ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਇਹ ਚਾਲੂ ਹੈ ਅਤੇ WiFi ਨਾਲ ਕਨੈਕਟ ਹੈ।';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts ਕੋਸ਼ਿਸ਼ਾਂ ਤੋਂ ਬਾਅਦ ਡਿਵਾਈਸ ਨਾਲ ਸੰਚਾਰ ਕਰਨ ਵਿੱਚ ਅਸਮਰੱਥ।';
  }

  @override
  String get errNetworkErrorComm =>
      'ਨੈੱਟਵਰਕ ਗੜਬੜ: ਡੀਵਾਈਸ ਨਾਲ ਸੰਚਾਰ ਕਰਨ ਵਿੱਚ ਅਸਮਰੱਥ।';

  @override
  String get errActionNotAuthorizedDevice =>
      'ਇਹ ਕਾਰਵਾਈ ਡਿਵਾਈਸ \'ਤੇ ਅਧਿਕਾਰਤ ਨਹੀਂ ਹੈ।';

  @override
  String get errDeviceServiceNotFound =>
      'ਡਿਵਾਈਸ ਸੇਵਾ ਨਹੀਂ ਮਿਲੀ। ਡਿਵਾਈਸ ਨੂੰ ਇੱਕ ਫਰਮਵੇਅਰ ਅੱਪਡੇਟ ਦੀ ਲੋੜ ਹੋ ਸਕਦੀ ਹੈ।';

  @override
  String get errDeviceEncounteredError =>
      'ਡਿਵਾਈਸ ਨੂੰ ਬੇਨਤੀ ਦੀ ਪ੍ਰਕਿਰਿਆ ਕਰਦੇ ਸਮੇਂ ਇੱਕ ਤਰੁੱਟੀ ਦਾ ਸਾਹਮਣਾ ਕਰਨਾ ਪਿਆ।';

  @override
  String get errDeviceInternalError => 'ਡਿਵਾਈਸ ਨੇ ਇੱਕ ਅੰਦਰੂਨੀ ਗੜਬੜ ਵਾਪਸ ਕੀਤੀ।';

  @override
  String get errDeviceTempUnavailable =>
      'ਡਿਵਾਈਸ ਅਸਥਾਈ ਤੌਰ \'ਤੇ ਉਪਲਬਧ ਨਹੀਂ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ਡਿਵਾਈਸ ਨੇ ਇੱਕ ਤਰੁੱਟੀ ਵਾਪਸ ਕੀਤੀ (HTTP $code)।';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ਡਿਵਾਈਸ \'ਤੇ $action ਕਰਨ ਵਿੱਚ ਅਸਫਲ।';
  }

  @override
  String get errDeviceReturnedError => 'ਡਿਵਾਈਸ ਨੇ ਇੱਕ ਗਲਤੀ ਵਾਪਸ ਕੀਤੀ।';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation ਓਪਰੇਸ਼ਨ ਦਾ ਸਮਾਂ ਸਮਾਪਤ ਹੋਇਆ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds ਸਕਿੰਟਾਂ ਬਾਅਦ ਓਪਰੇਸ਼ਨ ਦਾ ਸਮਾਂ ਸਮਾਪਤ ਹੋਇਆ।';
  }

  @override
  String get errOperationTimedOut =>
      'ਓਪਰੇਸ਼ਨ ਦਾ ਸਮਾਂ ਸਮਾਪਤ ਹੋਇਆ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'ਕਿਰਪਾ ਕਰਕੇ ਡੀਵਾਈਸਾਂ ਨੂੰ ਲੱਭਣ ਲਈ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਅਨੁਮਤੀ ਨੂੰ ਚਾਲੂ ਕਰੋ।';

  @override
  String get errCannotAccessLocalNetwork =>
      'ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਤੱਕ ਪਹੁੰਚ ਨਹੀਂ ਕੀਤੀ ਜਾ ਸਕਦੀ। ਕਿਰਪਾ ਕਰਕੇ ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਅਨੁਮਤੀ ਨੂੰ ਚਾਲੂ ਕਰੋ।';

  @override
  String get errCheckWifiConnection =>
      'ਡਿਵਾਈਸਾਂ ਨੂੰ ਖੋਜਣ ਵਿੱਚ ਅਸਮਰੱਥ। ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ WiFi ਕਨੈਕਸ਼ਨ ਦੀ ਜਾਂਚ ਕਰੋ।';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'ਖੋਜ ਵਿੱਚ ਰੁਕਾਵਟ ਆਈ। $count ਯੰਤਰ ਲੱਭੇ।';
  }

  @override
  String get errNoDevicesFound =>
      'ਕੋਈ ਡੀਵਾਈਸ ਨਹੀਂ ਮਿਲੇ। ਕਿਰਪਾ ਕਰਕੇ ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਡਿਵਾਈਸਾਂ ਚਾਲੂ ਹਨ ਅਤੇ ਤੁਹਾਡੇ ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਹਨ।';

  @override
  String get actionGetDeviceState => 'ਡਿਵਾਈਸ ਸਥਿਤੀ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get actionSetDeviceState => 'ਡਿਵਾਈਸ ਸਥਿਤੀ ਸੈੱਟ ਕਰੋ';

  @override
  String get actionGetEnergyData => 'ਊਰਜਾ ਡਾਟਾ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get actionScanNetworks => 'ਨੈੱਟਵਰਕ ਲਈ ਸਕੈਨ';

  @override
  String get actionConnectWifi => 'WiFi ਨਾਲ ਜੁੜੋ';

  @override
  String get actionCheckConnection => 'ਕੁਨੈਕਸ਼ਨ ਸਥਿਤੀ ਦੀ ਜਾਂਚ ਕਰੋ';

  @override
  String get actionResetDevice => 'ਡਿਵਾਈਸ ਰੀਸੈਟ ਕਰੋ';

  @override
  String get actionPerform => 'ਕਾਰਵਾਈ ਕਰੋ';

  @override
  String get suggestTryRefreshing =>
      'ਡਿਵਾਈਸ ਸੂਚੀ ਨੂੰ ਤਾਜ਼ਾ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ ਜਾਂ ਜਾਂਚ ਕਰੋ ਕਿ ਕੀ ਡਿਵਾਈਸ ਜਵਾਬ ਦੇ ਰਹੀ ਹੈ।';

  @override
  String get suggestEnsurePoweredOn =>
      'ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਡਿਵਾਈਸ ਚਾਲੂ ਹੈ ਅਤੇ ਤੁਹਾਡੇ WiFi ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਹੈ।';

  @override
  String get suggestMakeSureSameWifi =>
      'ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਤੁਹਾਡਾ ਫ਼ੋਨ ਉਸੇ WiFi ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਹੈ ਜਿਸ ਨਾਲ ਤੁਹਾਡੀਆਂ ਡੀਵਾਈਸਾਂ ਹਨ।';

  @override
  String get suggestCheckPhysical =>
      'ਕਿਸੇ ਵੀ ਬਟਨਾਂ ਜਾਂ ਸਵਿੱਚਾਂ ਲਈ ਭੌਤਿਕ ਡਿਵਾਈਸ ਦੀ ਜਾਂਚ ਕਰੋ ਜਿਨ੍ਹਾਂ \'ਤੇ ਧਿਆਨ ਦੇਣ ਦੀ ਲੋੜ ਹੈ।';

  @override
  String get suggestWaitAndTry => 'ਇੱਕ ਪਲ ਉਡੀਕ ਕਰੋ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get suggestDeviceBusy =>
      'ਡਿਵਾਈਸ ਵਿਅਸਤ ਹੋ ਸਕਦੀ ਹੈ। ਕੁਝ ਸਕਿੰਟਾਂ ਵਿੱਚ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get commonClose => 'ਬੰਦ ਕਰੋ';

  @override
  String get commonDone => 'ਹੋ ਗਿਆ';

  @override
  String get commonLater => 'ਬਾਅਦ ਵਿੱਚ';

  @override
  String get commonRefresh => 'ਤਾਜ਼ਾ ਕਰੋ';

  @override
  String get commonTryAgain => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get commonOpenSettings => 'ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ';

  @override
  String get commonGrant => 'ਗ੍ਰਾਂਟ';

  @override
  String get commonFix => 'ਠੀਕ ਕਰੋ';

  @override
  String get commonOn => '\'ਤੇ';

  @override
  String get commonOff => 'ਬੰਦ';

  @override
  String get commonOffline => 'ਔਫਲਾਈਨ';

  @override
  String get commonStatus => 'ਸਥਿਤੀ';

  @override
  String get commonName => 'ਨਾਮ';

  @override
  String get commonType => 'ਟਾਈਪ ਕਰੋ';

  @override
  String get commonModel => 'ਮਾਡਲ';

  @override
  String get commonManufacturer => 'ਨਿਰਮਾਤਾ';

  @override
  String get commonSerial => 'ਸੀਰੀਅਲ';

  @override
  String get commonFirmware => 'ਫਰਮਵੇਅਰ';

  @override
  String get commonHost => 'ਮੇਜ਼ਬਾਨ';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'ਪਾਸਵਰਡ';

  @override
  String get commonUnknownWifi => 'ਅਗਿਆਤ Wi-Fi';

  @override
  String get commonNotConnected => 'ਕਨੈਕਟ ਨਹੀਂ ਹੈ';

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
      other: '$seconds ਸਕਿੰਟ',
      one: '1 ਸਕਿੰਟ',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'ਸਮਾਰਟ ਸਵਿੱਚ';

  @override
  String get deviceTypeLightSwitch => 'ਲਾਈਟ ਸਵਿੱਚ';

  @override
  String get deviceTypeDimmer => 'ਡਿਮਰ';

  @override
  String get deviceTypeInsightPlug => 'ਇਨਸਾਈਟ ਪਲੱਗ';

  @override
  String get deviceTypeMotionSensor => 'ਮੋਸ਼ਨ ਸੈਂਸਰ';

  @override
  String get deviceTypeMaker => 'ਬਣਾਉਣ ਵਾਲਾ';

  @override
  String get deviceTypeBridge => 'ਪੁਲ';

  @override
  String get deviceTypeCoffeeMaker => 'ਕੌਫੀ ਮੇਕਰ';

  @override
  String get deviceTypeCrockpot => 'ਕਰੌਕਪਾਟ';

  @override
  String get deviceTypeHumidifier => 'ਹਿਊਮਿਡੀਫਾਇਰ';

  @override
  String get deviceTypeOutdoorPlug => 'ਆਊਟਡੋਰ ਪਲੱਗ';

  @override
  String get deviceTypeUnknown => 'ਅਗਿਆਤ ਡਿਵਾਈਸ';

  @override
  String get pairingStepGetStarted => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get pairingStepConnectToDevice => 'ਡਿਵਾਈਸ ਨਾਲ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get pairingStepFindDevice => 'ਡਿਵਾਈਸ ਲੱਭੋ';

  @override
  String get pairingStepSelectNetwork => 'ਨੈੱਟਵਰਕ ਚੁਣੋ';

  @override
  String get pairingStepConfiguring => 'ਸੰਰਚਨਾ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ';

  @override
  String get pairingStepReconnect => 'ਮੁੜ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get pairingStepFinalizing => 'ਅੰਤਿਮ ਰੂਪ ਦੇਣਾ';

  @override
  String get pairingStepSuccess => 'ਸਫਲਤਾ';

  @override
  String get pairingStepError => 'ਗਲਤੀ';

  @override
  String get homeToggleDebug => 'ਡੀਬੱਗ ਮੋਡ ਨੂੰ ਟੌਗਲ ਕਰੋ';

  @override
  String get homeRefreshDevices => 'ਡਿਵਾਈਸਾਂ ਨੂੰ ਤਾਜ਼ਾ ਕਰੋ';

  @override
  String get homeSettings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get homeDismiss => 'ਖਾਰਜ ਕਰੋ';

  @override
  String get homeDiscovering => 'ਡਿਵਾਈਸਾਂ ਦੀ ਖੋਜ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String get homeNoDevices => 'ਕੋਈ ਡੀਵਾਈਸ ਨਹੀਂ ਮਿਲੇ';

  @override
  String get homeScanDevices => 'ਡਿਵਾਈਸਾਂ ਲਈ ਸਕੈਨ ਕਰੋ';

  @override
  String get homeLookingForMore => 'ਹੋਰ ਡਿਵਾਈਸਾਂ ਦੀ ਖੋਜ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਡਿਵਾਈਸਾਂ ਮਿਲੀਆਂ',
      one: '1 ਡੀਵਾਈਸ ਮਿਲਿਆ',
      zero: 'ਕੋਈ ਡੀਵਾਈਸ ਨਹੀਂ ਮਿਲੇ',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਡਿਵਾਈਸਾਂ ਮਿਲੀਆਂ, ਸਕੈਨ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...',
      one: '1 ਡੀਵਾਈਸ ਮਿਲਿਆ, ਸਕੈਨ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...',
      zero: 'ਕੋਈ ਡਿਵਾਈਸ ਨਹੀਂ ਮਿਲੀ, ਸਕੈਨ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ਆਟੋ';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi ਨਾਲ ਕਨੈਕਟ ਕੀਤਾ ਗਿਆ';

  @override
  String get homePermissionExplanation =>
      'ਸਥਾਨ ਜਾਣਕਾਰੀ ਦੀ ਵਰਤੋਂ ਤੁਹਾਡੇ Wi-Fi ਵੇਰਵਿਆਂ ਨੂੰ ਲੱਭਣ ਲਈ ਕੀਤੀ ਜਾਂਦੀ ਹੈ। ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਪਹੁੰਚ ਤੁਹਾਨੂੰ ਆਪਣੇ ਸਮਾਰਟ ਸਵਿੱਚਾਂ ਅਤੇ ਡਿਵਾਈਸਾਂ ਨੂੰ ਨਿਯੰਤਰਿਤ ਕਰਨ ਦੀ ਆਗਿਆ ਦਿੰਦੀ ਹੈ।';

  @override
  String get homeDebugLog => 'ਡੀਬੱਗ ਲੌਗ';

  @override
  String get homeClear => 'ਸਾਫ਼';

  @override
  String get homeDebugEmpty =>
      'ਖੋਜ ਸ਼ੁਰੂ ਕਰਨ ਅਤੇ ਲੌਗ ਦੇਖਣ ਲਈ ਰਿਫ੍ਰੈਸ਼ \'ਤੇ ਟੈਪ ਕਰੋ...';

  @override
  String get homeProbeHint => 'IP:ਪੋਰਟ (ਜਿਵੇਂ ਕਿ 192.168.1.100:49153)';

  @override
  String get homeProbe => 'ਪੜਤਾਲ';

  @override
  String get homeScanning => 'ਸਕੈਨ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get homeScanSubnet => 'ਪੂਰਾ ਸਬਨੈੱਟ ਸਕੈਨ ਕਰੋ (iOS ਫਿਕਸ)';

  @override
  String homePlatform(String platform, String version) {
    return 'ਪਲੇਟਫਾਰਮ: $platform $version';
  }

  @override
  String get settingsTitle => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get settingsSectionNetwork => 'ਨੈੱਟਵਰਕ';

  @override
  String get settingsSectionDeviceSetup => 'ਡਿਵਾਈਸ ਸੈੱਟਅੱਪ';

  @override
  String get settingsSectionDiscovery => 'ਖੋਜ';

  @override
  String get settingsSectionAbout => 'ਬਾਰੇ';

  @override
  String get settingsSectionDebug => 'ਡੀਬੱਗ ਕਰੋ';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'ਇਜਾਜ਼ਤ ਦਿੱਤੀ ਗਈ! WiFi ਨਾਮ: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'ਸਥਾਨ ਦਿੱਤਾ ਗਿਆ ਹੈ, ਪਰ ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਅਨੁਮਤੀ ਦੀ ਵੀ ਲੋੜ ਹੈ। ਸੈਟਿੰਗਾਂ ਦੀ ਜਾਂਚ ਕਰੋ।';

  @override
  String get settingsLocationRequired => 'ਟਿਕਾਣਾ ਇਜਾਜ਼ਤ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get settingsLocationRequiredBody =>
      'ਤੁਹਾਡੇ WiFi ਨੈੱਟਵਰਕ ਨਾਮ ਨੂੰ ਪ੍ਰਦਰਸ਼ਿਤ ਕਰਨ ਲਈ, iOS ਨੂੰ ਟਿਕਾਣਾ ਇਜਾਜ਼ਤ ਦੀ ਲੋੜ ਹੈ।';

  @override
  String get settingsRequiredPermissions => 'ਲੋੜੀਂਦੀਆਂ ਇਜਾਜ਼ਤਾਂ:';

  @override
  String get settingsPermissionList =>
      '1. ਸਥਾਨ ਸੇਵਾਵਾਂ (\"ਐਪ ਦੀ ਵਰਤੋਂ ਕਰਦੇ ਸਮੇਂ\")\n2. ਸਥਾਨਕ ਨੈੱਟਵਰਕ';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'ਨੋਟ: ਡਿਵਾਈਸ ਖੋਜ ਸਥਾਨ ਦੀ ਇਜਾਜ਼ਤ ਤੋਂ ਬਿਨਾਂ ਕੰਮ ਕਰਦੀ ਹੈ। ਇਹ ਅਨੁਮਤੀ ਸਿਰਫ਼ ਤੁਹਾਡੇ WiFi ਨੈੱਟਵਰਕ ਨਾਮ ਨੂੰ ਦਿਖਾਉਣ ਲਈ ਵਰਤੀ ਜਾਂਦੀ ਹੈ।';

  @override
  String get settingsEnableLocation => 'ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਟਿਕਾਣਾ ਚਾਲੂ ਕਰੋ';

  @override
  String get settingsLocationDeniedBody =>
      'ਟਿਕਾਣਾ ਇਜਾਜ਼ਤ ਅਸਵੀਕਾਰ ਕੀਤੀ ਗਈ ਸੀ। ਤੁਸੀਂ ਇਸਨੂੰ ਸਿਸਟਮ ਸੈਟਿੰਗਾਂ ਤੋਂ ਸਮਰੱਥ ਕਰ ਸਕਦੇ ਹੋ।';

  @override
  String get settingsStepsToEnable => 'ਯੋਗ ਕਰਨ ਲਈ ਕਦਮ:';

  @override
  String get settingsEnableLocationSteps =>
      '1. ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ\n2. \"Bit Switch\" ਤੱਕ ਸਕ੍ਰੋਲ ਕਰੋ\n3. \"ਟਿਕਾਣਾ\" \'ਤੇ ਟੈਪ ਕਰੋ\n4. \"ਐਪ ਦੀ ਵਰਤੋਂ ਕਰਦੇ ਸਮੇਂ\" ਚੁਣੋ\n5. ਇਸ ਐਪ \'ਤੇ ਵਾਪਸ ਜਾਓ ਅਤੇ ਰਿਫ੍ਰੈਸ਼ ਬਟਨ \'ਤੇ ਟੈਪ ਕਰੋ';

  @override
  String get settingsLocationOnlyWifiName =>
      'ਨੋਟ: ਸਥਾਨ ਅਨੁਮਤੀ ਸਿਰਫ WiFi ਨਾਮ ਪ੍ਰਦਰਸ਼ਿਤ ਕਰਨ ਲਈ ਲੋੜੀਂਦੀ ਹੈ। ਡਿਵਾਈਸ ਖੋਜ ਇਸ ਤੋਂ ਬਿਨਾਂ ਕੰਮ ਕਰਦੀ ਹੈ।';

  @override
  String get settingsAdditionalPermission => 'ਵਾਧੂ ਇਜਾਜ਼ਤ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo ਡਿਵਾਈਸਾਂ ਨੂੰ ਖੋਜਣ ਅਤੇ ਕੰਟਰੋਲ ਕਰਨ ਲਈ ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਅਨੁਮਤੀ ਦੀ ਲੋੜ ਹੁੰਦੀ ਹੈ।';

  @override
  String get settingsWifiNameNotVisible =>
      'ਤੁਹਾਡੇ ਕੋਲ ਟਿਕਾਣਾ ਅਨੁਮਤੀ ਹੈ, ਪਰ WiFi ਨਾਮ ਅਜੇ ਦਿਖਾਈ ਨਹੀਂ ਦੇ ਰਿਹਾ ਹੈ।';

  @override
  String get settingsPleaseEnable => 'ਕਿਰਪਾ ਕਰਕੇ ਯੋਗ ਕਰੋ:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. ਆਈਫੋਨ ਸੈਟਿੰਗਾਂ \'ਤੇ ਜਾਓ\n2. \"Bit Switch\" ਤੱਕ ਹੇਠਾਂ ਸਕ੍ਰੋਲ ਕਰੋ\n3. \"ਸਥਾਨਕ ਨੈੱਟਵਰਕ\" ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS \'ਤੇ ਡਿਵਾਈਸ ਖੋਜ ਅਤੇ WiFi ਨਾਮ ਪਹੁੰਚ ਦੋਵਾਂ ਲਈ ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਅਨੁਮਤੀ ਦੀ ਲੋੜ ਹੈ।';

  @override
  String get settingsPairNewDevice => 'ਨਵੀਂ ਡਿਵਾਈਸ ਪੇਅਰ ਕਰੋ';

  @override
  String get settingsPairNewDeviceSubtitle => 'ਇੱਕ ਨਵੀਂ Wemo ਡਿਵਾਈਸ ਸੈਟ ਅਪ ਕਰੋ';

  @override
  String get settingsDiscoveryTimeout => 'ਖੋਜ ਸਮਾਂ ਸਮਾਪਤ';

  @override
  String get settingsRequestTimeout => 'ਬੇਨਤੀ ਸਮਾਂ ਸਮਾਪਤ';

  @override
  String get settingsAutoRefresh => 'ਸਵੈ-ਤਾਜ਼ਾ';

  @override
  String get settingsAutoRefreshOn =>
      'ਚਾਲੂ - ਡਿਵਾਈਸ ਸਥਿਤੀਆਂ ਆਪਣੇ ਆਪ ਰਿਫ੍ਰੈਸ਼ ਹੁੰਦੀਆਂ ਹਨ';

  @override
  String get settingsAutoRefreshOff => 'ਬੰਦ - ਮੈਨੁਅਲ ਰਿਫਰੈਸ਼ ਬਟਨ ਦੀ ਵਰਤੋਂ ਕਰੋ';

  @override
  String get settingsAutoRefreshInterval => 'ਸਵੈ-ਤਾਜ਼ਾ ਅੰਤਰਾਲ';

  @override
  String get settingsAbout => 'Bit Switch ਬਾਰੇ';

  @override
  String get settingsVersion => 'ਸੰਸਕਰਣ';

  @override
  String get settingsNetworkDiagnostics => 'ਨੈੱਟਵਰਕ ਡਾਇਗਨੌਸਟਿਕਸ';

  @override
  String get settingsShowDebug => 'ਡੀਬੱਗ ਮੋਡ ਦਿਖਾਓ';

  @override
  String get settingsShowDebugSubtitle =>
      'ਹੋਮ ਸਕ੍ਰੀਨ \'ਤੇ ਡੀਬੱਗ ਕੰਟਰੋਲ ਅਤੇ ਨੈੱਟਵਰਕ ਡਾਇਗਨੌਸਟਿਕਸ ਦਿਖਾਓ';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'ਸਮੱਸਿਆ ਨਿਪਟਾਰੇ ਲਈ ਹੋਮ ਸਕ੍ਰੀਨ \'ਤੇ ਡੀਬੱਗ ਆਈਕਨ ਦਿਖਾਓ';

  @override
  String get settingsCurrentNetwork => 'ਮੌਜੂਦਾ ਨੈੱਟਵਰਕ';

  @override
  String get settingsNetworkAccessStatus => 'ਨੈੱਟਵਰਕ ਪਹੁੰਚ ਸਥਿਤੀ';

  @override
  String get settingsNetworkAccessGranted => 'ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਪਹੁੰਚ ਉਪਲਬਧ ਹੈ';

  @override
  String get settingsNetworkAccessMissing => 'ਵਾਧੂ ਅਨੁਮਤੀਆਂ ਦੀ ਲੋੜ ਹੋ ਸਕਦੀ ਹੈ';

  @override
  String get settingsChecking => 'ਜਾਂਚ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String get settingsEnableLocalNetwork =>
      'ਸੈਟਿੰਗਾਂ ਵਿੱਚ ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ';

  @override
  String get settingsNotConnectedWifi => 'WiFi ਨਾਲ ਕਨੈਕਟ ਨਹੀਂ ਹੈ';

  @override
  String get settingsPermissionRequiredView => 'ਦੇਖਣ ਲਈ ਇਜਾਜ਼ਤ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get settingsAllPermissionsGranted => 'ਸਾਰੀਆਂ ਇਜਾਜ਼ਤਾਂ ਦਿੱਤੀਆਂ ਗਈਆਂ';

  @override
  String get settingsLocalNetworkNeeded => 'ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਅਨੁਮਤੀ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get settingsLocationNeeded => 'ਟਿਕਾਣਾ ਇਜਾਜ਼ਤ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get settingsRefreshPermissions => 'ਇਜਾਜ਼ਤਾਂ ਨੂੰ ਤਾਜ਼ਾ ਕਰੋ';

  @override
  String get settingsAboutWifiPermission => 'WiFi ਨਾਮ ਦੀ ਇਜਾਜ਼ਤ ਬਾਰੇ';

  @override
  String get settingsWifiPermissionExplanation =>
      'ਤੁਹਾਡਾ WiFi ਨਾਮ ਇਹ ਪੁਸ਼ਟੀ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ ਕਿ ਤੁਹਾਡਾ ਫ਼ੋਨ ਅਤੇ Wemo ਡੀਵਾਈਸ ਇੱਕੋ ਨੈੱਟਵਰਕ \'ਤੇ ਹਨ।';

  @override
  String get settingsWifiPermissionIos =>
      'iOS \'ਤੇ, ਤੁਹਾਡੇ WiFi ਨੈੱਟਵਰਕ ਨਾਮ ਨੂੰ ਦਿਖਾਉਣ ਲਈ ਟਿਕਾਣਾ ਇਜਾਜ਼ਤ ਦੀ ਲੋੜ ਹੁੰਦੀ ਹੈ।';

  @override
  String get settingsImportant => 'ਮਹੱਤਵਪੂਰਨ:';

  @override
  String get settingsPrivacyNote =>
      '• ਤੁਹਾਡਾ ਟਿਕਾਣਾ ਕਦੇ ਵੀ ਟਰੈਕ ਨਹੀਂ ਕੀਤਾ ਜਾਂਦਾ ਹੈ\n• ਕੋਈ ਟਿਕਾਣਾ ਡਾਟਾ ਇਕੱਠਾ ਜਾਂ ਸਟੋਰ ਨਹੀਂ ਕੀਤਾ ਜਾਂਦਾ ਹੈ';

  @override
  String get settingsWifiPermissionImportant =>
      '• ਡਿਵਾਈਸ ਖੋਜ ਇਸ ਇਜਾਜ਼ਤ ਤੋਂ ਬਿਨਾਂ ਕੰਮ ਕਰਦੀ ਹੈ\n• ਇਹ ਸਿਰਫ਼ WiFi ਨਾਮ ਦਿਖਾਉਣ ਲਈ ਲੋੜੀਂਦਾ ਹੈ\n• ਕੋਈ ਟਿਕਾਣਾ ਡਾਟਾ ਇਕੱਠਾ ਜਾਂ ਸਟੋਰ ਨਹੀਂ ਕੀਤਾ ਜਾਂਦਾ ਹੈ';

  @override
  String get settingsGrantPermission => 'ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get settingsHowLongScan => 'ਡਿਵਾਈਸਾਂ ਲਈ ਕਿੰਨੀ ਦੇਰ ਤੱਕ ਸਕੈਨ ਕਰਨਾ ਹੈ:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'ਖੋਜ ਸਮਾਂ ਸਮਾਪਤ $seconds ਸਕਿੰਟਾਂ \'ਤੇ ਸੈੱਟ ਕੀਤਾ ਗਿਆ';
  }

  @override
  String get settingsHowLongResponses =>
      'ਡਿਵਾਈਸ ਦੇ ਜਵਾਬਾਂ ਲਈ ਕਿੰਨੀ ਦੇਰ ਉਡੀਕ ਕਰਨੀ ਹੈ:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'ਜੇਕਰ ਤੁਸੀਂ \"ਕੁਨੈਕਸ਼ਨ ਬੰਦ\" ਤਰੁੱਟੀਆਂ ਦੇਖਦੇ ਹੋ ਤਾਂ ਇਸ ਮੁੱਲ ਨੂੰ ਵਧਾਓ।';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'ਬੇਨਤੀ ਦਾ ਸਮਾਂ ਸਮਾਪਤ $seconds ਸਕਿੰਟਾਂ \'ਤੇ ਸੈੱਟ ਕੀਤਾ ਗਿਆ';
  }

  @override
  String get settingsSetRefreshInterval =>
      'ਆਟੋਮੈਟਿਕ ਸਟੇਟ ਰਿਫਰੈਸ਼ ਲਈ ਅੰਤਰਾਲ ਸੈਟ ਕਰੋ:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'ਰਿਫ੍ਰੈਸ਼ ਅੰਤਰਾਲ $seconds ਸਕਿੰਟਾਂ \'ਤੇ ਸੈੱਟ ਕੀਤਾ ਗਿਆ';
  }

  @override
  String get settingsAboutTagline =>
      'ਤੁਹਾਡੇ Wemo ਡਿਵਾਈਸਾਂ ਲਈ ਇੱਕ ਸਾਫ਼, ਨਿੱਜੀ ਸਥਾਨਕ ਕੰਟਰੋਲਰ।';

  @override
  String get settingsAboutDescription =>
      'Bit Switch ਕਲਾਉਡ ਨਿਰਭਰਤਾ ਤੋਂ ਬਿਨਾਂ ਡਿਵਾਈਸਾਂ ਨੂੰ ਲੱਭਣ ਅਤੇ ਨਿਯੰਤਰਣ ਕਰਨ ਲਈ ਸਥਾਨਕ ਨੈਟਵਰਕ ਖੋਜ ਦੀ ਵਰਤੋਂ ਕਰਦਾ ਹੈ।';

  @override
  String get settingsVersionValue => 'ਸੰਸਕਰਣ 1.0.1';

  @override
  String get settingsProtocol => 'ਪ੍ਰੋਟੋਕੋਲ: SSDP/UPnP';

  @override
  String get settingsMulticastAddress => 'ਮਲਟੀਕਾਸਟ ਪਤਾ: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'ਡਿਵਾਈਸ ਪੋਰਟ: 49152-49159';

  @override
  String get settingsControlProtocol => 'ਕੰਟਰੋਲ ਪ੍ਰੋਟੋਕੋਲ: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'ਸੁਝਾਅ: ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਤੁਹਾਡੀ ਡਿਵਾਈਸ ਉਸੇ ਨੈੱਟਵਰਕ \'ਤੇ ਹੈ ਜੋ ਤੁਹਾਡੀ Wemo ਡਿਵਾਈਸਾਂ \'ਤੇ ਹੈ ਅਤੇ UDP ਮਲਟੀਕਾਸਟ ਬਲੌਕ ਨਹੀਂ ਹੈ।';

  @override
  String get settingsDevicePaired =>
      'ਡਿਵਾਈਸ ਪੇਅਰ ਕੀਤੀ ਗਈ! ਡਿਵਾਈਸ ਸੂਚੀ ਨੂੰ ਤਾਜ਼ਾ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'ਪ੍ਰਤੀ ਬੇਨਤੀ $seconds ਸਕਿੰਟ';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'ਹਰ ${seconds}s ਨੂੰ ਤਾਜ਼ਾ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ';
  }

  @override
  String get pairingTitle => 'ਨਵੀਂ ਡਿਵਾਈਸ ਪੇਅਰ ਕਰੋ';

  @override
  String get pairingSetupTitle => 'ਆਪਣੀ Wemo ਡਿਵਾਈਸ ਸੈਟ ਅਪ ਕਰੋ';

  @override
  String get pairingBeforeBegin =>
      'ਸ਼ੁਰੂ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ, ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਤੁਹਾਡੀ Wemo ਡਿਵਾਈਸ ਸੈੱਟਅੱਪ ਮੋਡ ਵਿੱਚ ਹੈ:';

  @override
  String get pairingPlugInTitle => 'ਆਪਣੀ Wemo ਡਿਵਾਈਸ ਨੂੰ ਪਲੱਗ ਇਨ ਕਰੋ';

  @override
  String get pairingPlugInBody =>
      'ਇਸਨੂੰ ਪਾਵਰ ਨਾਲ ਕਨੈਕਟ ਕਰੋ ਅਤੇ ਇਸਦੇ ਚਾਲੂ ਹੋਣ ਦੀ ਉਡੀਕ ਕਰੋ।';

  @override
  String get pairingBlinkingLedTitle => 'ਬਲਿੰਕਿੰਗ LED ਲਈ ਵੇਖੋ';

  @override
  String get pairingBlinkingLedBody =>
      'ਇੱਕ ਝਪਕਦੀ LED ਦੱਸਦੀ ਹੈ ਕਿ ਡਿਵਾਈਸ ਸੈੱਟਅੱਪ ਮੋਡ ਵਿੱਚ ਹੈ।';

  @override
  String get pairingCheckWifiTitle => 'WiFi ਨੈੱਟਵਰਕ ਦੀ ਜਾਂਚ ਕਰੋ';

  @override
  String get pairingCheckWifiBody =>
      'ਡਿਵਾਈਸ \"WeMo.XXXX\" ਨਾਮ ਦੇ ਇੱਕ ਨੈਟਵਰਕ ਨੂੰ ਪ੍ਰਸਾਰਿਤ ਕਰੇਗੀ।';

  @override
  String get pairingSolidLedHint =>
      'ਜੇਕਰ LED ਠੋਸ ਹੈ, ਤਾਂ ਸੈੱਟਅੱਪ ਮੋਡ ਵਿੱਚ ਦਾਖਲ ਹੋਣ ਲਈ ਰੀਸੈਟ ਬਟਨ ਨੂੰ 5 ਸਕਿੰਟਾਂ ਲਈ ਦਬਾ ਕੇ ਰੱਖੋ।';

  @override
  String get pairingStart => 'ਪੇਅਰਿੰਗ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get pairingConnectWifiTitle => 'ਡਿਵਾਈਸ WiFi ਨਾਲ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get pairingConnectWifiBody =>
      'ਆਪਣੇ ਫ਼ੋਨ ਦੀਆਂ WiFi ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ ਅਤੇ \"WeMo\" ਨਾਲ ਸ਼ੁਰੂ ਹੋਣ ਵਾਲੇ ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਕਰੋ।';

  @override
  String get pairingCurrentNetwork => 'ਮੌਜੂਦਾ ਨੈੱਟਵਰਕ';

  @override
  String get pairingConnectedToDevice => 'Wemo ਡਿਵਾਈਸ ਨਾਲ ਕਨੈਕਟ ਕੀਤਾ ਗਿਆ!';

  @override
  String get pairingOpenWifiSettings => 'WiFi ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ';

  @override
  String get pairingConnectedButton => 'ਮੈਂ ਕਨੈਕਟ ਕੀਤਾ ਹੈ';

  @override
  String get pairingLookingForDevice => 'ਤੁਹਾਡੀ Wemo ਡਿਵਾਈਸ ਲੱਭ ਰਹੀ ਹੈ...';

  @override
  String get pairingManualIpPrompt => 'ਜਾਂ ਡਿਵਾਈਸ IP ਦਸਤੀ ਦਰਜ ਕਰੋ:';

  @override
  String get pairingDeviceIp => 'ਡਿਵਾਈਸ IP ਪਤਾ';

  @override
  String get pairingConnectToIp => 'IP ਨਾਲ ਜੁੜੋ';

  @override
  String get pairingSelectHomeWifi => 'ਆਪਣਾ ਘਰ WiFi ਨੈੱਟਵਰਕ ਚੁਣੋ:';

  @override
  String get pairingRefreshNetworks => 'ਨੈੱਟਵਰਕ ਤਾਜ਼ਾ ਕਰੋ';

  @override
  String get pairingIosScanLimitation =>
      'iOS ਤੀਜੀ-ਧਿਰ ਦੀਆਂ ਐਪਾਂ ਨੂੰ ਨੇੜਲੇ Wi-Fi ਨੈੱਟਵਰਕਾਂ ਲਈ ਸਕੈਨ ਕਰਨ ਤੋਂ ਸਖ਼ਤੀ ਨਾਲ ਵਰਜਦਾ ਹੈ। ਤੁਹਾਨੂੰ ਨੈੱਟਵਰਕ SSID ਨੂੰ ਹੱਥੀਂ ਦਾਖਲ ਕਰਨ ਦੀ ਲੋੜ ਹੋ ਸਕਦੀ ਹੈ।';

  @override
  String get pairingNoNetworks => 'ਕੋਈ ਨੈੱਟਵਰਕ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get pairingScanAgain => 'ਦੁਬਾਰਾ ਸਕੈਨ ਕਰੋ';

  @override
  String get pairingWifiPassword => 'WiFi ਪਾਸਵਰਡ';

  @override
  String get pairingConnect => 'ਜੁੜੋ';

  @override
  String get pairingEnterNetworkManually => 'ਹੱਥੀਂ ਨੈੱਟਵਰਕ ਦਾਖਲ ਕਰੋ';

  @override
  String get pairingEnterNetworkName => 'ਨੈੱਟਵਰਕ ਨਾਮ ਦਰਜ ਕਰੋ:';

  @override
  String get pairingNetworkName => 'ਨੈੱਟਵਰਕ ਨਾਮ (SSID)';

  @override
  String get pairingUseNetwork => 'ਇਸ ਨੈੱਟਵਰਕ ਦੀ ਵਰਤੋਂ ਕਰੋ';

  @override
  String get pairingConfiguringDevice => 'ਡਿਵਾਈਸ ਕੌਂਫਿਗਰ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String get pairingConfiguringWait =>
      'ਕਿਰਪਾ ਕਰਕੇ ਇੰਤਜ਼ਾਰ ਕਰੋ ਜਦੋਂ ਤੱਕ ਡਿਵਾਈਸ ਤੁਹਾਡੇ ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਹੁੰਦੀ ਹੈ।';

  @override
  String get pairingReconnectTitle => 'ਆਪਣੇ ਨੈੱਟਵਰਕ ਨਾਲ ਮੁੜ ਕਨੈਕਟ ਕਰੋ';

  @override
  String pairingReconnectBody(String ssid) {
    return 'ਤੁਹਾਡੀ Wemo ਡਿਵਾਈਸ ਹੁਣ \"$ssid\" ਨਾਲ ਕਨੈਕਟ ਹੋ ਰਹੀ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਫ਼ੋਨ ਨੂੰ ਉਸੇ ਨੈੱਟਵਰਕ ਨਾਲ ਮੁੜ-ਕਨੈਕਟ ਕਰੋ।';
  }

  @override
  String get pairingBackOnHome => 'ਹੋਮ ਨੈੱਟਵਰਕ \'ਤੇ ਵਾਪਸ!';

  @override
  String get pairingReconnectedButton => 'ਮੈਂ ਮੁੜ ਕਨੈਕਟ ਕੀਤਾ ਹੈ';

  @override
  String get pairingFinalizingSetup =>
      'ਸੈੱਟਅੱਪ ਨੂੰ ਅੰਤਿਮ ਰੂਪ ਦਿੱਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get pairingSetupComplete => 'ਸੈੱਟਅੱਪ ਪੂਰਾ ਹੋਇਆ!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid ਨਾਲ ਕਨੈਕਟ ਕੀਤਾ ਗਿਆ';
  }

  @override
  String get pairingDeviceReady =>
      'ਤੁਹਾਡੀ ਡਿਵਾਈਸ ਹੁਣ ਸੈੱਟਅੱਪ ਹੋ ਗਈ ਹੈ ਅਤੇ ਹੋਮ ਸਕ੍ਰੀਨ \'ਤੇ ਦਿਖਾਈ ਦੇਵੇਗੀ।';

  @override
  String get pairingSomethingWrong => 'ਕੁਝ ਗਲਤ ਹੋ ਗਿਆ';

  @override
  String get pairingStartOver => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi ਸੈਟਿੰਗਾਂ ਨੂੰ ਖੋਲ੍ਹਿਆ ਨਹੀਂ ਜਾ ਸਕਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਉਹਨਾਂ ਨੂੰ ਹੱਥੀਂ ਖੋਲ੍ਹੋ।';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'ਤੁਹਾਡਾ ਫ਼ੋਨ ਅਜੇ ਵੀ \"$ssid\" ਨਾਲ ਕਨੈਕਟ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ WiFi ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ, WeMo ਡਿਵਾਈਸ ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਕਰੋ, ਫਿਰ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
  }

  @override
  String get pairingLoadingLooking => 'ਡਿਵਾਈਸ ਲੱਭ ਰਿਹਾ ਹੈ...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'WeMo ਡਿਵਾਈਸ ਨੂੰ $ip \'ਤੇ ਨਹੀਂ ਲੱਭ ਸਕਿਆ। ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਤੁਹਾਡਾ ਫ਼ੋਨ WeMo WiFi ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਹੈ, ਫਿਰ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ। ਤੁਸੀਂ ਡਿਵਾਈਸ IP ਨੂੰ ਹੱਥੀਂ ਵੀ ਦਾਖਲ ਕਰ ਸਕਦੇ ਹੋ।';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'ਡਿਵਾਈਸ ਖੋਜਣ ਵਿੱਚ ਤਰੁੱਟੀ: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip ਨਾਲ ਕਨੈਕਟ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip \'ਤੇ ਕੋਈ ਡਿਵਾਈਸ ਨਹੀਂ ਮਿਲੀ';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip ਨਾਲ ਕਨੈਕਟ ਕਰਨ ਵਿੱਚ ਤਰੁੱਟੀ: $error';
  }

  @override
  String get pairingLoadingScanning => 'ਨੈੱਟਵਰਕਾਂ ਲਈ ਸਕੈਨ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String pairingErrorScanning(String error) {
    return 'ਨੈੱਟਵਰਕਾਂ ਨੂੰ ਸਕੈਨ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਿਆ: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਨੈੱਟਵਰਕ ਚੁਣੋ ਅਤੇ ਪਾਸਵਰਡ ਦਾਖਲ ਕਰੋ।';

  @override
  String get pairingLoadingSendingCredentials =>
      'ਨੈੱਟਵਰਕ ਪ੍ਰਮਾਣ ਪੱਤਰ ਭੇਜੇ ਜਾ ਰਹੇ ਹਨ...';

  @override
  String get pairingLoadingWaitingConnection =>
      'ਡਿਵਾਈਸ ਦੇ ਕਨੈਕਟ ਹੋਣ ਦੀ ਉਡੀਕ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String pairingErrorConfigure(String error) {
    return 'ਨੈੱਟਵਰਕ ਕੌਂਫਿਗਰ ਕਰਨ ਵਿੱਚ ਅਸਫਲ: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'ਪਾਸਵਰਡ ਬਹੁਤ ਛੋਟਾ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਜਾਂਚ ਕਰੋ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get pairingErrorPasswordIncorrect =>
      'ਕਨੈਕਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ। ਕਿਰਪਾ ਕਰਕੇ ਪਾਸਵਰਡ ਦੀ ਜਾਂਚ ਕਰੋ।';

  @override
  String get pairingErrorConnectionTimeout =>
      'ਕਨੈਕਸ਼ਨ ਦਾ ਸਮਾਂ ਸਮਾਪਤ ਹੋਇਆ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String pairingErrorFinalizing(String error) {
    return 'ਸੈੱਟਅੱਪ ਨੂੰ ਅੰਤਿਮ ਰੂਪ ਦੇਣ ਵਿੱਚ ਤਰੁੱਟੀ: $error';
  }

  @override
  String get detailRefreshState => 'ਸਥਿਤੀ ਨੂੰ ਤਾਜ਼ਾ ਕਰੋ';

  @override
  String get detailDeviceInfo => 'ਡਿਵਾਈਸ ਜਾਣਕਾਰੀ';

  @override
  String get detailAdvanced => 'ਉੱਨਤ';

  @override
  String get detailWifiSetup => 'WiFi ਸੈੱਟਅੱਪ';

  @override
  String get detailReset => 'ਰੀਸੈਟ ਕਰੋ';

  @override
  String get detailUnreachable =>
      'ਡਿਵਾਈਸ ਪਹੁੰਚ ਤੋਂ ਬਾਹਰ ਹੈ। ਨੈੱਟਵਰਕ ਕਨੈਕਸ਼ਨ ਦੀ ਜਾਂਚ ਕਰੋ।';

  @override
  String detailFailedToggle(String error) {
    return 'ਟੌਗਲ ਕਰਨ ਵਿੱਚ ਅਸਫਲ: $error';
  }

  @override
  String get detailDeviceInformation => 'ਡਿਵਾਈਸ ਜਾਣਕਾਰੀ';

  @override
  String get detailPermissionScan =>
      'WiFi ਨੈੱਟਵਰਕਾਂ ਨੂੰ ਸਕੈਨ ਕਰਨ ਲਈ ਇਜਾਜ਼ਤ ਦੀ ਲੋੜ ਹੈ।';

  @override
  String get detailScanFailedManual =>
      'ਨੈੱਟਵਰਕਾਂ ਨੂੰ ਸਕੈਨ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਿਆ। ਨੈੱਟਵਰਕ ਦਾ ਨਾਮ ਹੱਥੀਂ ਦਰਜ ਕਰੋ।';

  @override
  String get detailEnterNetworkNameError =>
      'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਨੈੱਟਵਰਕ ਨਾਮ ਦਾਖਲ ਕਰੋ ਜਾਂ ਚੁਣੋ';

  @override
  String get detailEnterPasswordError => 'ਕਿਰਪਾ ਕਰਕੇ ਨੈੱਟਵਰਕ ਪਾਸਵਰਡ ਦਾਖਲ ਕਰੋ';

  @override
  String get detailWifiSuccess => 'WiFi ਸਫਲਤਾਪੂਰਵਕ ਕੌਂਫਿਗਰ ਕੀਤਾ ਗਿਆ!';

  @override
  String get detailScanNetworks => 'ਨੈੱਟਵਰਕਾਂ ਲਈ ਸਕੈਨ ਕਰੋ';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" ਲਈ WiFi ਨੈੱਟਵਰਕ ਨੂੰ ਕੌਂਫਿਗਰ ਕਰੋ';
  }

  @override
  String get detailAvailableNetworks => 'ਉਪਲਬਧ ਨੈੱਟਵਰਕ';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS ਤੀਜੀ-ਧਿਰ ਦੀਆਂ ਐਪਾਂ ਨੂੰ ਨੇੜਲੇ Wi-Fi ਨੈੱਟਵਰਕਾਂ ਲਈ ਸਕੈਨ ਕਰਨ ਤੋਂ ਸਖ਼ਤੀ ਨਾਲ ਵਰਜਦਾ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਹੇਠਾਂ ਹੱਥੀਂ ਆਪਣਾ ਨੈੱਟਵਰਕ ਨਾਮ ਦਰਜ ਕਰੋ।';

  @override
  String get detailTapRefreshScan =>
      'ਨੈੱਟਵਰਕਾਂ ਲਈ ਸਕੈਨ ਕਰਨ ਲਈ ਰਿਫ੍ਰੈਸ਼ \'ਤੇ ਟੈਪ ਕਰੋ';

  @override
  String get detailEnterNetworkBelow => 'ਹੇਠਾਂ ਆਪਣਾ ਨੈੱਟਵਰਕ ਨਾਮ ਦਰਜ ਕਰੋ';

  @override
  String get detailNetworkCredentials => 'ਨੈੱਟਵਰਕ ਪ੍ਰਮਾਣ ਪੱਤਰ';

  @override
  String get detailConnecting => 'ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get detailConnected => 'ਸਫਲਤਾਪੂਰਵਕ ਕਨੈਕਟ ਕੀਤਾ ਗਿਆ!';

  @override
  String get detailPasswordShort => 'ਪਾਸਵਰਡ ਬਹੁਤ ਛੋਟਾ ਹੈ';

  @override
  String get detailAuthenticationFailed =>
      'ਪ੍ਰਮਾਣਿਕਤਾ ਅਸਫਲ - ਪਾਸਵਰਡ ਦੀ ਜਾਂਚ ਕਰੋ';

  @override
  String get detailConnectionFailed => 'ਕਨੈਕਸ਼ਨ ਅਸਫਲ ਰਿਹਾ';

  @override
  String get detailSelectReset => 'ਕਿਰਪਾ ਕਰਕੇ ਚੁਣੋ ਕਿ ਕੀ ਰੀਸੈਟ ਕਰਨਾ ਹੈ';

  @override
  String get detailResetSchedulesWarning =>
      '• ਸਾਰੇ ਸਮਾਂ-ਸਾਰਣੀ ਅਤੇ ਆਟੋਮੇਸ਼ਨ ਨਿਯਮ ਮਿਟਾ ਦਿੱਤੇ ਜਾਣਗੇ';

  @override
  String get detailResetWifiWarning => '• WiFi ਸੈਟਿੰਗਾਂ ਮਿਟਾ ਦਿੱਤੀਆਂ ਜਾਣਗੀਆਂ';

  @override
  String get detailSetupAgainWarning =>
      '• ਤੁਹਾਨੂੰ ਡਿਵਾਈਸ ਨੂੰ ਦੁਬਾਰਾ ਸੈੱਟਅੱਪ ਕਰਨ ਦੀ ਲੋੜ ਪਵੇਗੀ';

  @override
  String get detailUnreachableWarning =>
      '• ਡਿਵਾਈਸ ਅਸਥਾਈ ਤੌਰ \'ਤੇ ਪਹੁੰਚ ਤੋਂ ਬਾਹਰ ਹੋ ਸਕਦੀ ਹੈ';

  @override
  String get detailConfirmReset => 'ਰੀਸੈਟ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ';

  @override
  String detailConfirmResetDevice(String device) {
    return 'ਕੀ ਤੁਸੀਂ ਯਕੀਨੀ ਤੌਰ \'ਤੇ \"$device\" ਨੂੰ ਰੀਸੈਟ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';
  }

  @override
  String get detailThisWill => 'ਇਹ ਕਰੇਗਾ:';

  @override
  String get detailCannotUndo => 'ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਅਣਕੀਤਾ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get detailYesReset => 'ਹਾਂ, ਰੀਸੈਟ ਕਰੋ';

  @override
  String get detailResetSuccess => 'ਡਿਵਾਈਸ ਸਫਲਤਾਪੂਰਵਕ ਰੀਸੈਟ ਕੀਤੀ ਗਈ';

  @override
  String get detailResetRemote => 'ਡਿਵਾਈਸ ਰਿਮੋਟਲੀ ਰੀਸੈਟ ਹੋ ਜਾਵੇਗੀ';

  @override
  String get detailResetFailed => 'ਰੀਸੈਟ ਅਸਫਲ ਰਿਹਾ';

  @override
  String get detailFactoryReset => 'ਫੈਕਟਰੀ ਰੀਸੈੱਟ';

  @override
  String get detailFactoryResetWarning =>
      'ਇਹ ਸਾਰੀਆਂ ਸੈਟਿੰਗਾਂ ਨੂੰ ਮਿਟਾ ਦੇਵੇਗਾ ਅਤੇ ਡਿਵਾਈਸ ਨੂੰ ਫੈਕਟਰੀ ਡਿਫੌਲਟ \'ਤੇ ਰੀਸਟੋਰ ਕਰ ਦੇਵੇਗਾ। ਤੁਹਾਨੂੰ ਡਿਵਾਈਸ ਨੂੰ ਦੁਬਾਰਾ ਸੈਟ ਅਪ ਕਰਨ ਦੀ ਲੋੜ ਪਵੇਗੀ।\n\nਇਸ ਕਾਰਵਾਈ ਨੂੰ ਅਣਕੀਤਾ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get detailFactoryResetInitiated => 'ਫੈਕਟਰੀ ਰੀਸੈਟ ਸ਼ੁਰੂ ਕੀਤਾ ਗਿਆ';

  @override
  String get detailResetDevice => 'ਡਿਵਾਈਸ ਰੀਸੈਟ ਕਰੋ';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" ਲਈ ਵਿਕਲਪ ਰੀਸੈਟ ਕਰੋ';
  }

  @override
  String get detailResetUserData => 'ਉਪਭੋਗਤਾ ਡੇਟਾ ਰੀਸੈਟ ਕਰੋ';

  @override
  String get detailResetUserDataSubtitle =>
      'ਸਮਾਂ-ਸਾਰਣੀ ਅਤੇ ਨਿਯਮਾਂ ਨੂੰ ਸਾਫ਼ ਕਰਦਾ ਹੈ';

  @override
  String get detailResetWifi => 'WiFi ਸੈਟਿੰਗਾਂ ਰੀਸੈਟ ਕਰੋ';

  @override
  String get detailResetWifiSubtitle =>
      'ਡੀਵਾਈਸ ਨੂੰ ਦੁਬਾਰਾ ਸੈੱਟਅੱਪ ਕਰਨ ਦੀ ਲੋੜ ਹੋਵੇਗੀ';

  @override
  String get widgetBrightness => 'ਚਮਕ';

  @override
  String get widgetEnergyStatistics => 'ਊਰਜਾ ਅੰਕੜੇ';

  @override
  String get widgetCurrentPower => 'ਮੌਜੂਦਾ ਪਾਵਰ';

  @override
  String get widgetToday => 'ਅੱਜ';

  @override
  String get widgetTotal => 'ਕੁੱਲ';

  @override
  String get widgetOnTimeToday => 'ਅੱਜ ਦੇ ਸਮੇਂ \'ਤੇ';

  @override
  String get widgetTotalOnTime => 'ਸਮੇਂ \'ਤੇ ਕੁੱਲ';

  @override
  String get widgetStandby => 'ਸਟੈਂਡਬਾਏ';

  @override
  String get widgetUnknown => 'ਅਗਿਆਤ';

  @override
  String get widgetOpenNetwork => 'ਨੈੱਟਵਰਕ ਖੋਲ੍ਹੋ';

  @override
  String get widgetWepInsecure => 'WEP (ਅਸੁਰੱਖਿਅਤ)';
}
