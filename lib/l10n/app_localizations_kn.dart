// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'ಸಾಧನವು ಈ ಕ್ರಿಯೆಯನ್ನು ಬೆಂಬಲಿಸುವುದಿಲ್ಲ.';

  @override
  String get errInvalidArgs =>
      'ಸಾಧನಕ್ಕೆ ಅಮಾನ್ಯವಾದ ಆರ್ಗ್ಯುಮೆಂಟ್‌ಗಳನ್ನು ಕಳುಹಿಸಲಾಗಿದೆ.';

  @override
  String get errActionFailed =>
      'ವಿನಂತಿಸಿದ ಕ್ರಿಯೆಯನ್ನು ನಿರ್ವಹಿಸಲು ಸಾಧನವು ವಿಫಲವಾಗಿದೆ.';

  @override
  String get errInvalidValue => 'ಅಮಾನ್ಯ ಮೌಲ್ಯವನ್ನು ಒದಗಿಸಲಾಗಿದೆ.';

  @override
  String get errValueOutOfRange => 'ಮೌಲ್ಯವು ಸ್ವೀಕಾರಾರ್ಹ ವ್ಯಾಪ್ತಿಯಿಂದ ಹೊರಗಿದೆ.';

  @override
  String get errFeatureNotAvailable => 'ಈ ಸಾಧನದಲ್ಲಿ ಈ ವೈಶಿಷ್ಟ್ಯವು ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get errOutOfMemory =>
      'ಸಾಧನವು ಮೆಮೊರಿಯಿಂದ ಹೊರಗಿದೆ. ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get errManualActionRequired =>
      'ಸಾಧನದಲ್ಲಿ ಹಸ್ತಚಾಲಿತ ಕ್ರಿಯೆಯ ಅಗತ್ಯವಿದೆ.';

  @override
  String get errActionNotAuthorized => 'ಈ ಕ್ರಿಯೆಯನ್ನು ಅಧಿಕೃತಗೊಳಿಸಲಾಗಿಲ್ಲ.';

  @override
  String get errUnexpected =>
      'ಅನಿರೀಕ್ಷಿತ ದೋಷ ಸಂಭವಿಸಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get errDeviceUnreachableOffline =>
      'ಸಾಧನವನ್ನು ತಲುಪಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಇದು ಆಫ್‌ಲೈನ್ ಅಥವಾ ಬೇರೆ ನೆಟ್‌ವರ್ಕ್‌ನಲ್ಲಿರಬಹುದು.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts ಪ್ರಯತ್ನಗಳ ನಂತರ ವಿನಂತಿಯ ಸಮಯ ಮೀರಿದೆ. ಸಾಧನವು ಆಫ್‌ಲೈನ್ ಆಗಿರಬಹುದು.';
  }

  @override
  String get errRequestTimedOut =>
      'ವಿನಂತಿಯ ಸಮಯ ಮೀರಿದೆ. ಸಾಧನವು ಆಫ್‌ಲೈನ್ ಆಗಿರಬಹುದು.';

  @override
  String get errNoRouteToHost =>
      'ಸಾಧನವನ್ನು ತಲುಪಲು ಸಾಧ್ಯವಿಲ್ಲ. ದಯವಿಟ್ಟು ನಿಮ್ಮ WiFi ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get errHostUnreachable =>
      'ಸಾಧನವನ್ನು ತಲುಪಲಾಗುವುದಿಲ್ಲ. ದಯವಿಟ್ಟು ಅದು ಆನ್ ಆಗಿದೆಯೇ ಮತ್ತು WiFi ಗೆ ಸಂಪರ್ಕಗೊಂಡಿದೆಯೇ ಎಂಬುದನ್ನು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts ಪ್ರಯತ್ನಗಳ ನಂತರ ಸಾಧನದೊಂದಿಗೆ ಸಂವಹನ ನಡೆಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';
  }

  @override
  String get errNetworkErrorComm =>
      'ನೆಟ್‌ವರ್ಕ್ ದೋಷ: ಸಾಧನದೊಂದಿಗೆ ಸಂವಹನ ನಡೆಸಲು ಸಾಧ್ಯವಾಗುತ್ತಿಲ್ಲ.';

  @override
  String get errActionNotAuthorizedDevice =>
      'ಸಾಧನದಲ್ಲಿ ಈ ಕ್ರಿಯೆಯನ್ನು ಅಧಿಕೃತಗೊಳಿಸಲಾಗಿಲ್ಲ.';

  @override
  String get errDeviceServiceNotFound =>
      'ಸಾಧನ ಸೇವೆ ಕಂಡುಬಂದಿಲ್ಲ. ಸಾಧನಕ್ಕೆ ಫರ್ಮ್‌ವೇರ್ ನವೀಕರಣದ ಅಗತ್ಯವಿರಬಹುದು.';

  @override
  String get errDeviceEncounteredError =>
      'ವಿನಂತಿಯನ್ನು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುವಲ್ಲಿ ಸಾಧನವು ದೋಷವನ್ನು ಎದುರಿಸಿದೆ.';

  @override
  String get errDeviceInternalError => 'ಸಾಧನವು ಆಂತರಿಕ ದೋಷವನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ.';

  @override
  String get errDeviceTempUnavailable =>
      'ಸಾಧನವು ತಾತ್ಕಾಲಿಕವಾಗಿ ಲಭ್ಯವಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ಸಾಧನವು ದೋಷವನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ಸಾಧನದಲ್ಲಿ $action ವಿಫಲವಾಗಿದೆ.';
  }

  @override
  String get errDeviceReturnedError => 'ಸಾಧನವು ದೋಷವನ್ನು ಹಿಂತಿರುಗಿಸಿದೆ.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation ಕಾರ್ಯಾಚರಣೆಯ ಅವಧಿ ಮೀರಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds ಸೆಕೆಂಡುಗಳ ನಂತರ ಕಾರ್ಯಾಚರಣೆಯ ಸಮಯ ಮೀರಿದೆ.';
  }

  @override
  String get errOperationTimedOut =>
      'ಕಾರ್ಯಾಚರಣೆಯ ಸಮಯ ಮೀರಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'ಸಾಧನಗಳನ್ನು ಹುಡುಕಲು ದಯವಿಟ್ಟು ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನುಮತಿಯನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ.';

  @override
  String get errCannotAccessLocalNetwork =>
      'ಸ್ಥಳೀಯ ನೆಟ್ವರ್ಕ್ ಅನ್ನು ಪ್ರವೇಶಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ. ದಯವಿಟ್ಟು ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನುಮತಿಯನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ.';

  @override
  String get errCheckWifiConnection =>
      'ಸಾಧನಗಳನ್ನು ಅನ್ವೇಷಿಸಲು ಸಾಧ್ಯವಾಗುತ್ತಿಲ್ಲ. ದಯವಿಟ್ಟು ನಿಮ್ಮ WiFi ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'ಅನ್ವೇಷಣೆಗೆ ಅಡ್ಡಿಯಾಯಿತು. $count ಸಾಧನ(ಗಳು) ಕಂಡುಬಂದಿವೆ.';
  }

  @override
  String get errNoDevicesFound =>
      'ಯಾವುದೇ ಸಾಧನಗಳು ಕಂಡುಬಂದಿಲ್ಲ. ಸಾಧನಗಳು ಆನ್ ಆಗಿವೆ ಮತ್ತು ನಿಮ್ಮ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಗೊಂಡಿವೆ ಎಂಬುದನ್ನು ದಯವಿಟ್ಟು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get actionGetDeviceState => 'ಸಾಧನ ಸ್ಥಿತಿಯನ್ನು ಪಡೆಯಿರಿ';

  @override
  String get actionSetDeviceState => 'ಸಾಧನ ಸ್ಥಿತಿಯನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get actionGetEnergyData => 'ಶಕ್ತಿ ಡೇಟಾವನ್ನು ಪಡೆಯಿರಿ';

  @override
  String get actionScanNetworks => 'ನೆಟ್ವರ್ಕ್ಗಳಿಗಾಗಿ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get actionConnectWifi => 'WiFi ಗೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get actionCheckConnection => 'ಸಂಪರ್ಕ ಸ್ಥಿತಿಯನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get actionResetDevice => 'ಸಾಧನವನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get actionPerform => 'ಕ್ರಿಯೆಯನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get suggestTryRefreshing =>
      'ಸಾಧನ ಪಟ್ಟಿಯನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಲು ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ ಸಾಧನವು ಪ್ರತಿಕ್ರಿಯಿಸುತ್ತಿದೆಯೇ ಎಂದು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get suggestEnsurePoweredOn =>
      'ಸಾಧನವು ಚಾಲಿತವಾಗಿದೆ ಮತ್ತು ನಿಮ್ಮ WiFi ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಗೊಂಡಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get suggestMakeSureSameWifi =>
      'ನಿಮ್ಮ ಫೋನ್ ನಿಮ್ಮ ಸಾಧನಗಳಂತೆಯೇ ಅದೇ WiFi ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಗೊಂಡಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get suggestCheckPhysical =>
      'ಗಮನ ಅಗತ್ಯವಿರುವ ಯಾವುದೇ ಬಟನ್‌ಗಳು ಅಥವಾ ಸ್ವಿಚ್‌ಗಳಿಗಾಗಿ ಭೌತಿಕ ಸಾಧನವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get suggestWaitAndTry =>
      'ಒಂದು ಕ್ಷಣ ನಿರೀಕ್ಷಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get suggestDeviceBusy =>
      'ಸಾಧನವು ಕಾರ್ಯನಿರತವಾಗಿರಬಹುದು. ಕೆಲವು ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'ರದ್ದುಮಾಡು';

  @override
  String get commonClose => 'ಮುಚ್ಚಿ';

  @override
  String get commonDone => 'ಮುಗಿದಿದೆ';

  @override
  String get commonLater => 'ನಂತರ';

  @override
  String get commonRefresh => 'ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get commonTryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get commonOpenSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get commonGrant => 'ಅನುದಾನ';

  @override
  String get commonFix => 'ಸರಿಪಡಿಸಿ';

  @override
  String get commonOn => 'ಆನ್';

  @override
  String get commonOff => 'ಆಫ್';

  @override
  String get commonOffline => 'ಆಫ್‌ಲೈನ್';

  @override
  String get commonStatus => 'ಸ್ಥಿತಿ';

  @override
  String get commonName => 'ಹೆಸರು';

  @override
  String get commonType => 'ಟೈಪ್ ಮಾಡಿ';

  @override
  String get commonModel => 'ಮಾದರಿ';

  @override
  String get commonManufacturer => 'ತಯಾರಕ';

  @override
  String get commonSerial => 'ಧಾರಾವಾಹಿ';

  @override
  String get commonFirmware => 'ಫರ್ಮ್ವೇರ್';

  @override
  String get commonHost => 'ಹೋಸ್ಟ್';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'ಪಾಸ್ವರ್ಡ್';

  @override
  String get commonUnknownWifi => 'ಅಜ್ಞಾತ Wi-Fi';

  @override
  String get commonNotConnected => 'ಸಂಪರ್ಕಗೊಂಡಿಲ್ಲ';

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
      other: '$seconds ಸೆಕೆಂಡುಗಳು',
      one: '1 ಸೆಕೆಂಡ್',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'ಸ್ಮಾರ್ಟ್ ಸ್ವಿಚ್';

  @override
  String get deviceTypeLightSwitch => 'ಲೈಟ್ ಸ್ವಿಚ್';

  @override
  String get deviceTypeDimmer => 'ಡಿಮ್ಮರ್';

  @override
  String get deviceTypeInsightPlug => 'ಒಳನೋಟ ಪ್ಲಗ್';

  @override
  String get deviceTypeMotionSensor => 'ಮೋಷನ್ ಸೆನ್ಸರ್';

  @override
  String get deviceTypeMaker => 'ಮೇಕರ್';

  @override
  String get deviceTypeBridge => 'ಸೇತುವೆ';

  @override
  String get deviceTypeCoffeeMaker => 'ಕಾಫಿ ಮೇಕರ್';

  @override
  String get deviceTypeCrockpot => 'ಕ್ರೋಕ್ಪಾಟ್';

  @override
  String get deviceTypeHumidifier => 'ಆರ್ದ್ರಕ';

  @override
  String get deviceTypeOutdoorPlug => 'ಹೊರಾಂಗಣ ಪ್ಲಗ್';

  @override
  String get deviceTypeUnknown => 'ಅಜ್ಞಾತ ಸಾಧನ';

  @override
  String get pairingStepGetStarted => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get pairingStepConnectToDevice => 'ಸಾಧನಕ್ಕೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get pairingStepFindDevice => 'ಸಾಧನವನ್ನು ಹುಡುಕಿ';

  @override
  String get pairingStepSelectNetwork => 'ನೆಟ್‌ವರ್ಕ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get pairingStepConfiguring => 'ಕಾನ್ಫಿಗರ್ ಮಾಡಲಾಗುತ್ತಿದೆ';

  @override
  String get pairingStepReconnect => 'ಮರುಸಂಪರ್ಕಿಸಿ';

  @override
  String get pairingStepFinalizing => 'ಅಂತಿಮಗೊಳಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get pairingStepSuccess => 'ಯಶಸ್ಸು';

  @override
  String get pairingStepError => 'ದೋಷ';

  @override
  String get homeToggleDebug => 'ಡೀಬಗ್ ಮೋಡ್ ಅನ್ನು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get homeRefreshDevices => 'ಸಾಧನಗಳನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get homeSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get homeDismiss => 'ವಜಾಗೊಳಿಸಿ';

  @override
  String get homeDiscovering => 'ಸಾಧನಗಳನ್ನು ಅನ್ವೇಷಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get homeNoDevices => 'ಯಾವುದೇ ಸಾಧನಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get homeScanDevices => 'ಸಾಧನಗಳಿಗಾಗಿ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get homeLookingForMore => 'ಹೆಚ್ಚಿನ ಸಾಧನಗಳನ್ನು ಹುಡುಕಲಾಗುತ್ತಿದೆ...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸಾಧನಗಳು ಕಂಡುಬಂದಿವೆ',
      one: '1 ಸಾಧನ ಕಂಡುಬಂದಿದೆ',
      zero: 'ಯಾವುದೇ ಸಾಧನಗಳು ಕಂಡುಬಂದಿಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸಾಧನಗಳು ಕಂಡುಬಂದಿವೆ, ಸ್ಕ್ಯಾನ್ ಮಾಡಲಾಗುತ್ತಿದೆ...',
      one: '1 ಸಾಧನ ಕಂಡುಬಂದಿದೆ, ಸ್ಕ್ಯಾನ್ ಮಾಡಲಾಗುತ್ತಿದೆ...',
      zero: 'ಯಾವುದೇ ಸಾಧನಗಳು ಕಂಡುಬಂದಿಲ್ಲ, ಸ್ಕ್ಯಾನ್ ಮಾಡಲಾಗುತ್ತಿದೆ...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ಆಟೋ';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi ಗೆ ಸಂಪರ್ಕಿಸಲಾಗಿದೆ';

  @override
  String get homePermissionExplanation =>
      'ನಿಮ್ಮ Wi-Fi ವಿವರಗಳನ್ನು ಹುಡುಕಲು ಸ್ಥಳ ಮಾಹಿತಿಯನ್ನು ಬಳಸಲಾಗುತ್ತದೆ. ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಪ್ರವೇಶವು ನಿಮ್ಮ ಸ್ಮಾರ್ಟ್ ಸ್ವಿಚ್‌ಗಳು ಮತ್ತು ಸಾಧನಗಳನ್ನು ನಿಯಂತ್ರಿಸಲು ನಿಮಗೆ ಅನುಮತಿಸುತ್ತದೆ.';

  @override
  String get homeDebugLog => 'ಡೀಬಗ್ ಲಾಗ್';

  @override
  String get homeClear => 'ತೆರವುಗೊಳಿಸಿ';

  @override
  String get homeDebugEmpty =>
      'ಅನ್ವೇಷಣೆಯನ್ನು ಪ್ರಾರಂಭಿಸಲು ಮತ್ತು ಲಾಗ್‌ಗಳನ್ನು ನೋಡಲು ರಿಫ್ರೆಶ್ ಟ್ಯಾಪ್ ಮಾಡಿ...';

  @override
  String get homeProbeHint => 'IP:ಪೋರ್ಟ್ (ಉದಾ. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'ತನಿಖೆ';

  @override
  String get homeScanning => 'ಸ್ಕ್ಯಾನ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get homeScanSubnet => 'ಸಂಪೂರ್ಣ ಸಬ್‌ನೆಟ್ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ (iOS ಫಿಕ್ಸ್)';

  @override
  String homePlatform(String platform, String version) {
    return 'ವೇದಿಕೆ: $platform $version';
  }

  @override
  String get settingsTitle => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get settingsSectionNetwork => 'ನೆಟ್ವರ್ಕ್';

  @override
  String get settingsSectionDeviceSetup => 'ಸಾಧನ ಸೆಟಪ್';

  @override
  String get settingsSectionDiscovery => 'ಅನ್ವೇಷಣೆ';

  @override
  String get settingsSectionAbout => 'ಬಗ್ಗೆ';

  @override
  String get settingsSectionDebug => 'ಡೀಬಗ್ ಮಾಡಿ';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'ಅನುಮತಿ ನೀಡಲಾಗಿದೆ! WiFi ಹೆಸರು: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'ಸ್ಥಳವನ್ನು ನೀಡಲಾಗಿದೆ, ಆದರೆ ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನುಮತಿಯ ಅಗತ್ಯವಿದೆ. ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get settingsLocationRequired => 'ಸ್ಥಳ ಅನುಮತಿ ಅಗತ್ಯವಿದೆ';

  @override
  String get settingsLocationRequiredBody =>
      'ನಿಮ್ಮ WiFi ನೆಟ್‌ವರ್ಕ್ ಹೆಸರನ್ನು ಪ್ರದರ್ಶಿಸಲು, iOS ಗೆ ಸ್ಥಳ ಅನುಮತಿಯ ಅಗತ್ಯವಿದೆ.';

  @override
  String get settingsRequiredPermissions => 'ಅಗತ್ಯವಿರುವ ಅನುಮತಿಗಳು:';

  @override
  String get settingsPermissionList =>
      '1. ಸ್ಥಳ ಸೇವೆಗಳು (\"ಅಪ್ಲಿಕೇಶನ್ ಬಳಸುವಾಗ\")\n2. ಸ್ಥಳೀಯ ನೆಟ್ವರ್ಕ್';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'ಗಮನಿಸಿ: ಸ್ಥಳ ಅನುಮತಿಯಿಲ್ಲದೆ ಸಾಧನ ಅನ್ವೇಷಣೆ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ. ಈ ಅನುಮತಿಯನ್ನು ನಿಮ್ಮ WiFi ನೆಟ್‌ವರ್ಕ್ ಹೆಸರನ್ನು ಪ್ರದರ್ಶಿಸಲು ಮಾತ್ರ ಬಳಸಲಾಗುತ್ತದೆ.';

  @override
  String get settingsEnableLocation =>
      'ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಸ್ಥಳವನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get settingsLocationDeniedBody =>
      'ಸ್ಥಳದ ಅನುಮತಿಯನ್ನು ನಿರಾಕರಿಸಲಾಗಿದೆ. ಸಿಸ್ಟಮ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳಿಂದ ನೀವು ಅದನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಬಹುದು.';

  @override
  String get settingsStepsToEnable => 'ಸಕ್ರಿಯಗೊಳಿಸಲು ಕ್ರಮಗಳು:';

  @override
  String get settingsEnableLocationSteps =>
      '1. ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ\n2. \"Bit Switch\" ಗೆ ಸ್ಕ್ರಾಲ್ ಮಾಡಿ\n3. \"ಸ್ಥಳ\" ಟ್ಯಾಪ್ ಮಾಡಿ\n4. \"ಅಪ್ಲಿಕೇಶನ್ ಬಳಸುವಾಗ\" ಆಯ್ಕೆಮಾಡಿ\n5. ಈ ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ಹಿಂತಿರುಗಿ ಮತ್ತು ರಿಫ್ರೆಶ್ ಬಟನ್ ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get settingsLocationOnlyWifiName =>
      'ಗಮನಿಸಿ: WiFi ಹೆಸರನ್ನು ಪ್ರದರ್ಶಿಸಲು ಮಾತ್ರ ಸ್ಥಳ ಅನುಮತಿ ಅಗತ್ಯವಿದೆ. ಸಾಧನ ಅನ್ವೇಷಣೆ ಅದು ಇಲ್ಲದೆ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ.';

  @override
  String get settingsAdditionalPermission => 'ಹೆಚ್ಚುವರಿ ಅನುಮತಿ ಅಗತ್ಯವಿದೆ';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo ಸಾಧನಗಳನ್ನು ಅನ್ವೇಷಿಸಲು ಮತ್ತು ನಿಯಂತ್ರಿಸಲು ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನುಮತಿಯ ಅಗತ್ಯವಿದೆ.';

  @override
  String get settingsWifiNameNotVisible =>
      'ನೀವು ಸ್ಥಳ ಅನುಮತಿಯನ್ನು ಹೊಂದಿರುವಿರಿ, ಆದರೆ WiFi ಹೆಸರು ಇನ್ನೂ ಗೋಚರಿಸುವುದಿಲ್ಲ.';

  @override
  String get settingsPleaseEnable => 'ದಯವಿಟ್ಟು ಸಕ್ರಿಯಗೊಳಿಸಿ:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. ಐಫೋನ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳಿಗೆ ಹೋಗಿ\n2. \"Bit Switch\" ಗೆ ಕೆಳಗೆ ಸ್ಕ್ರಾಲ್ ಮಾಡಿ\n3. \"ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್\" ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS ನಲ್ಲಿ ಸಾಧನ ಅನ್ವೇಷಣೆ ಮತ್ತು WiFi ಹೆಸರು ಪ್ರವೇಶ ಎರಡಕ್ಕೂ ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನುಮತಿಯ ಅಗತ್ಯವಿದೆ.';

  @override
  String get settingsPairNewDevice => 'ಹೊಸ ಸಾಧನವನ್ನು ಜೋಡಿಸಿ';

  @override
  String get settingsPairNewDeviceSubtitle => 'ಹೊಸ Wemo ಸಾಧನವನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get settingsDiscoveryTimeout => 'ಡಿಸ್ಕವರಿ ಟೈಮ್‌ಔಟ್';

  @override
  String get settingsRequestTimeout => 'ವಿನಂತಿ ಸಮಯ ಮೀರಿದೆ';

  @override
  String get settingsAutoRefresh => 'ಸ್ವಯಂ ರಿಫ್ರೆಶ್';

  @override
  String get settingsAutoRefreshOn =>
      'ಆನ್ - ಸಾಧನ ಸ್ಥಿತಿಗಳು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ರಿಫ್ರೆಶ್ ಆಗುತ್ತವೆ';

  @override
  String get settingsAutoRefreshOff => 'ಆಫ್ - ಹಸ್ತಚಾಲಿತ ರಿಫ್ರೆಶ್ ಬಟನ್ ಬಳಸಿ';

  @override
  String get settingsAutoRefreshInterval => 'ಸ್ವಯಂ ರಿಫ್ರೆಶ್ ಮಧ್ಯಂತರ';

  @override
  String get settingsAbout => 'Bit Switch ಕುರಿತು';

  @override
  String get settingsVersion => 'ಆವೃತ್ತಿ';

  @override
  String get settingsNetworkDiagnostics => 'ನೆಟ್‌ವರ್ಕ್ ಡಯಾಗ್ನೋಸ್ಟಿಕ್ಸ್';

  @override
  String get settingsShowDebug => 'ಡೀಬಗ್ ಮೋಡ್ ತೋರಿಸಿ';

  @override
  String get settingsShowDebugSubtitle =>
      'ಮುಖಪುಟ ಪರದೆಯಲ್ಲಿ ಡೀಬಗ್ ನಿಯಂತ್ರಣಗಳು ಮತ್ತು ನೆಟ್‌ವರ್ಕ್ ಡಯಾಗ್ನೋಸ್ಟಿಕ್‌ಗಳನ್ನು ತೋರಿಸಿ';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'ದೋಷನಿವಾರಣೆಗಾಗಿ ಮುಖಪುಟ ಪರದೆಯಲ್ಲಿ ಡೀಬಗ್ ಐಕಾನ್ ತೋರಿಸಿ';

  @override
  String get settingsCurrentNetwork => 'ಪ್ರಸ್ತುತ ನೆಟ್‌ವರ್ಕ್';

  @override
  String get settingsNetworkAccessStatus => 'ನೆಟ್‌ವರ್ಕ್ ಪ್ರವೇಶ ಸ್ಥಿತಿ';

  @override
  String get settingsNetworkAccessGranted =>
      'ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಪ್ರವೇಶ ಲಭ್ಯವಿದೆ';

  @override
  String get settingsNetworkAccessMissing => 'ಹೆಚ್ಚುವರಿ ಅನುಮತಿಗಳು ಬೇಕಾಗಬಹುದು';

  @override
  String get settingsChecking => 'ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get settingsEnableLocalNetwork =>
      'ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get settingsNotConnectedWifi => 'WiFi ಗೆ ಸಂಪರ್ಕಗೊಂಡಿಲ್ಲ';

  @override
  String get settingsPermissionRequiredView => 'ವೀಕ್ಷಿಸಲು ಅನುಮತಿ ಅಗತ್ಯವಿದೆ';

  @override
  String get settingsAllPermissionsGranted => 'ಎಲ್ಲಾ ಅನುಮತಿಗಳನ್ನು ನೀಡಲಾಗಿದೆ';

  @override
  String get settingsLocalNetworkNeeded => 'ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನುಮತಿ ಅಗತ್ಯವಿದೆ';

  @override
  String get settingsLocationNeeded => 'ಸ್ಥಳ ಅನುಮತಿ ಅಗತ್ಯವಿದೆ';

  @override
  String get settingsRefreshPermissions => 'ಅನುಮತಿಗಳನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get settingsAboutWifiPermission => 'WiFi ಹೆಸರು ಅನುಮತಿ ಬಗ್ಗೆ';

  @override
  String get settingsWifiPermissionExplanation =>
      'ನಿಮ್ಮ WiFi ಹೆಸರು ನಿಮ್ಮ ಫೋನ್ ಮತ್ತು Wemo ಸಾಧನಗಳು ಒಂದೇ ನೆಟ್‌ವರ್ಕ್‌ನಲ್ಲಿವೆ ಎಂಬುದನ್ನು ಖಚಿತಪಡಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.';

  @override
  String get settingsWifiPermissionIos =>
      'iOS ನಲ್ಲಿ, ನಿಮ್ಮ WiFi ನೆಟ್‌ವರ್ಕ್ ಹೆಸರನ್ನು ಪ್ರದರ್ಶಿಸಲು ಸ್ಥಳ ಅನುಮತಿಯ ಅಗತ್ಯವಿದೆ.';

  @override
  String get settingsImportant => 'ಪ್ರಮುಖ:';

  @override
  String get settingsPrivacyNote =>
      '• ನಿಮ್ಮ ಸ್ಥಳವನ್ನು ಎಂದಿಗೂ ಟ್ರ್ಯಾಕ್ ಮಾಡಲಾಗುವುದಿಲ್ಲ\n• ಯಾವುದೇ ಸ್ಥಳ ಡೇಟಾವನ್ನು ಸಂಗ್ರಹಿಸಲಾಗಿಲ್ಲ ಅಥವಾ ಸಂಗ್ರಹಿಸಲಾಗಿಲ್ಲ';

  @override
  String get settingsWifiPermissionImportant =>
      '• ಈ ಅನುಮತಿಯಿಲ್ಲದೆ ಸಾಧನ ಅನ್ವೇಷಣೆ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತದೆ\n• WiFi ಹೆಸರನ್ನು ತೋರಿಸಲು ಮಾತ್ರ ಇದು ಅಗತ್ಯವಿದೆ\n• ಯಾವುದೇ ಸ್ಥಳ ಡೇಟಾವನ್ನು ಸಂಗ್ರಹಿಸಲಾಗಿಲ್ಲ ಅಥವಾ ಸಂಗ್ರಹಿಸಲಾಗಿಲ್ಲ';

  @override
  String get settingsGrantPermission => 'ಅನುಮತಿ ನೀಡಿ';

  @override
  String get settingsHowLongScan => 'ಸಾಧನಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಲು ಎಷ್ಟು ಸಮಯ:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'ಡಿಸ್ಕವರಿ ಟೈಮ್‌ಔಟ್ ಅನ್ನು $seconds ಸೆಕೆಂಡುಗಳಿಗೆ ಹೊಂದಿಸಲಾಗಿದೆ';
  }

  @override
  String get settingsHowLongResponses =>
      'ಸಾಧನದ ಪ್ರತಿಕ್ರಿಯೆಗಳಿಗಾಗಿ ಎಷ್ಟು ಸಮಯ ಕಾಯಬೇಕು:';

  @override
  String get settingsIncreaseTimeoutHint =>
      '\"ಸಂಪರ್ಕವನ್ನು ಮುಚ್ಚಲಾಗಿದೆ\" ದೋಷಗಳನ್ನು ನೀವು ನೋಡಿದರೆ ಈ ಮೌಲ್ಯವನ್ನು ಹೆಚ್ಚಿಸಿ.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'ವಿನಂತಿಯ ಅವಧಿ ಮೀರುವಿಕೆಯನ್ನು $seconds ಸೆಕೆಂಡುಗಳಿಗೆ ಹೊಂದಿಸಲಾಗಿದೆ';
  }

  @override
  String get settingsSetRefreshInterval =>
      'ಸ್ವಯಂಚಾಲಿತ ಸ್ಥಿತಿಯ ರಿಫ್ರೆಶ್‌ಗಾಗಿ ಮಧ್ಯಂತರವನ್ನು ಹೊಂದಿಸಿ:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'ರಿಫ್ರೆಶ್ ಮಧ್ಯಂತರವನ್ನು $seconds ಸೆಕೆಂಡುಗಳಿಗೆ ಹೊಂದಿಸಲಾಗಿದೆ';
  }

  @override
  String get settingsAboutTagline =>
      'ನಿಮ್ಮ Wemo ಸಾಧನಗಳಿಗೆ ಶುದ್ಧ, ಖಾಸಗಿ ಸ್ಥಳೀಯ ನಿಯಂತ್ರಕ.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch ಕ್ಲೌಡ್ ಅವಲಂಬನೆಗಳಿಲ್ಲದೆ ಸಾಧನಗಳನ್ನು ಹುಡುಕಲು ಮತ್ತು ನಿಯಂತ್ರಿಸಲು ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್ ಅನ್ವೇಷಣೆಯನ್ನು ಬಳಸುತ್ತದೆ.';

  @override
  String get settingsVersionValue => 'ಆವೃತ್ತಿ 1.0.1';

  @override
  String get settingsProtocol => 'ಪ್ರೋಟೋಕಾಲ್: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'ಮಲ್ಟಿಕಾಸ್ಟ್ ವಿಳಾಸ: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'ಸಾಧನ ಪೋರ್ಟ್‌ಗಳು: 49152-49159';

  @override
  String get settingsControlProtocol => 'ನಿಯಂತ್ರಣ ಪ್ರೋಟೋಕಾಲ್: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'ಸಲಹೆ: ನಿಮ್ಮ ಸಾಧನವು ನಿಮ್ಮ Wemo ಸಾಧನಗಳಂತೆಯೇ ಅದೇ ನೆಟ್‌ವರ್ಕ್‌ನಲ್ಲಿದೆ ಮತ್ತು UDP ಮಲ್ಟಿಕಾಸ್ಟ್ ಅನ್ನು ನಿರ್ಬಂಧಿಸಲಾಗಿಲ್ಲ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get settingsDevicePaired =>
      'ಸಾಧನವನ್ನು ಜೋಡಿಸಲಾಗಿದೆ! ಸಾಧನ ಪಟ್ಟಿಯನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'ಪ್ರತಿ ವಿನಂತಿಗೆ $seconds ಸೆಕೆಂಡುಗಳು';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'ಪ್ರತಿ $seconds ಗಳನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಲಾಗುತ್ತಿದೆ';
  }

  @override
  String get pairingTitle => 'ಹೊಸ ಸಾಧನವನ್ನು ಜೋಡಿಸಿ';

  @override
  String get pairingSetupTitle => 'ನಿಮ್ಮ Wemo ಸಾಧನವನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get pairingBeforeBegin =>
      'ನೀವು ಪ್ರಾರಂಭಿಸುವ ಮೊದಲು, ನಿಮ್ಮ Wemo ಸಾಧನವು ಸೆಟಪ್ ಮೋಡ್‌ನಲ್ಲಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ:';

  @override
  String get pairingPlugInTitle => 'ನಿಮ್ಮ Wemo ಸಾಧನವನ್ನು ಪ್ಲಗ್ ಇನ್ ಮಾಡಿ';

  @override
  String get pairingPlugInBody =>
      'ಅದನ್ನು ಪವರ್‌ಗೆ ಸಂಪರ್ಕಿಸಿ ಮತ್ತು ಅದು ಪ್ರಾರಂಭವಾಗುವವರೆಗೆ ಕಾಯಿರಿ.';

  @override
  String get pairingBlinkingLedTitle => 'ಮಿಟುಕಿಸುವ ಎಲ್ಇಡಿಗಾಗಿ ನೋಡಿ';

  @override
  String get pairingBlinkingLedBody =>
      'ಮಿಟುಕಿಸುವ ಎಲ್ಇಡಿ ಸಾಧನವು ಸೆಟಪ್ ಮೋಡ್ನಲ್ಲಿದೆ ಎಂದು ಸೂಚಿಸುತ್ತದೆ.';

  @override
  String get pairingCheckWifiTitle => 'WiFi ನೆಟ್‌ವರ್ಕ್‌ಗಾಗಿ ಪರಿಶೀಲಿಸಿ';

  @override
  String get pairingCheckWifiBody =>
      'ಸಾಧನವು \"WeMo.XXXXX\" ಹೆಸರಿನ ನೆಟ್‌ವರ್ಕ್ ಅನ್ನು ಪ್ರಸಾರ ಮಾಡುತ್ತದೆ.';

  @override
  String get pairingSolidLedHint =>
      'ಎಲ್ಇಡಿ ಘನವಾಗಿದ್ದರೆ, ಸೆಟಪ್ ಮೋಡ್ ಅನ್ನು ಪ್ರವೇಶಿಸಲು ಮರುಹೊಂದಿಸುವ ಬಟನ್ ಅನ್ನು 5 ಸೆಕೆಂಡುಗಳ ಕಾಲ ಹಿಡಿದುಕೊಳ್ಳಿ.';

  @override
  String get pairingStart => 'ಜೋಡಿಸುವಿಕೆಯನ್ನು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get pairingConnectWifiTitle => 'WiFi ಸಾಧನಕ್ಕೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get pairingConnectWifiBody =>
      'ನಿಮ್ಮ ಫೋನ್‌ನ WiFi ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ ಮತ್ತು \"WeMo\" ನೊಂದಿಗೆ ಪ್ರಾರಂಭವಾಗುವ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಪಡಿಸಿ.';

  @override
  String get pairingCurrentNetwork => 'ಪ್ರಸ್ತುತ ನೆಟ್‌ವರ್ಕ್';

  @override
  String get pairingConnectedToDevice => 'Wemo ಸಾಧನಕ್ಕೆ ಸಂಪರ್ಕಗೊಂಡಿದೆ!';

  @override
  String get pairingOpenWifiSettings => 'WiFi ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get pairingConnectedButton => 'ನಾನು ಕನೆಕ್ಟ್ ಮಾಡಿದ್ದೇನೆ';

  @override
  String get pairingLookingForDevice =>
      'ನಿಮ್ಮ Wemo ಸಾಧನವನ್ನು ಹುಡುಕಲಾಗುತ್ತಿದೆ...';

  @override
  String get pairingManualIpPrompt =>
      'ಅಥವಾ IP ಸಾಧನವನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಿ:';

  @override
  String get pairingDeviceIp => 'ಸಾಧನ IP ವಿಳಾಸ';

  @override
  String get pairingConnectToIp => 'IP ಗೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get pairingSelectHomeWifi => 'ನಿಮ್ಮ ಮನೆಯ WiFi ನೆಟ್‌ವರ್ಕ್ ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String get pairingRefreshNetworks => 'ನೆಟ್‌ವರ್ಕ್‌ಗಳನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get pairingIosScanLimitation =>
      'ಹತ್ತಿರದ Wi-Fi ನೆಟ್‌ವರ್ಕ್‌ಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡುವುದರಿಂದ ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಅಪ್ಲಿಕೇಶನ್‌ಗಳನ್ನು iOS ಕಟ್ಟುನಿಟ್ಟಾಗಿ ನಿಷೇಧಿಸುತ್ತದೆ. ನೀವು SSID ನೆಟ್ವರ್ಕ್ ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಬೇಕಾಗಬಹುದು.';

  @override
  String get pairingNoNetworks => 'ಯಾವುದೇ ನೆಟ್‌ವರ್ಕ್‌ಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get pairingScanAgain => 'ಮತ್ತೊಮ್ಮೆ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get pairingWifiPassword => 'WiFi ಪಾಸ್‌ವರ್ಡ್';

  @override
  String get pairingConnect => 'ಸಂಪರ್ಕಿಸಿ';

  @override
  String get pairingEnterNetworkManually =>
      'ನೆಟ್‌ವರ್ಕ್ ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಿ';

  @override
  String get pairingEnterNetworkName => 'ನೆಟ್‌ವರ್ಕ್ ಹೆಸರನ್ನು ನಮೂದಿಸಿ:';

  @override
  String get pairingNetworkName => 'ನೆಟ್‌ವರ್ಕ್ ಹೆಸರು (SSID)';

  @override
  String get pairingUseNetwork => 'ಈ ನೆಟ್‌ವರ್ಕ್ ಬಳಸಿ';

  @override
  String get pairingConfiguringDevice => 'ಸಾಧನವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get pairingConfiguringWait =>
      'ಸಾಧನವು ನಿಮ್ಮ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಗೊಳ್ಳುವವರೆಗೆ ದಯವಿಟ್ಟು ನಿರೀಕ್ಷಿಸಿ.';

  @override
  String get pairingReconnectTitle => 'ನಿಮ್ಮ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಮರುಸಂಪರ್ಕಿಸಿ';

  @override
  String pairingReconnectBody(String ssid) {
    return 'ನಿಮ್ಮ Wemo ಸಾಧನವು ಈಗ \"$ssid\" ಗೆ ಸಂಪರ್ಕಗೊಳ್ಳುತ್ತಿದೆ. ದಯವಿಟ್ಟು ನಿಮ್ಮ ಫೋನ್ ಅನ್ನು ಅದೇ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಮರುಸಂಪರ್ಕಿಸಿ.';
  }

  @override
  String get pairingBackOnHome => 'ಹೋಮ್ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಹಿಂತಿರುಗಿ!';

  @override
  String get pairingReconnectedButton => 'ನಾನು ಮರುಸಂಪರ್ಕಿಸಿದ್ದೇನೆ';

  @override
  String get pairingFinalizingSetup => 'ಸೆಟಪ್ ಅನ್ನು ಅಂತಿಮಗೊಳಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get pairingSetupComplete => 'ಸೆಟಪ್ ಪೂರ್ಣಗೊಂಡಿದೆ!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid ಗೆ ಸಂಪರ್ಕಿಸಲಾಗಿದೆ';
  }

  @override
  String get pairingDeviceReady =>
      'ನಿಮ್ಮ ಸಾಧನವನ್ನು ಈಗ ಹೊಂದಿಸಲಾಗಿದೆ ಮತ್ತು ಮುಖಪುಟ ಪರದೆಯಲ್ಲಿ ಗೋಚರಿಸುತ್ತದೆ.';

  @override
  String get pairingSomethingWrong => 'ಏನೋ ತಪ್ಪಾಗಿದೆ';

  @override
  String get pairingStartOver => 'ಮತ್ತೆ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಅವುಗಳನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ತೆರೆಯಿರಿ.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'ನಿಮ್ಮ ಫೋನ್ ಇನ್ನೂ \"$ssid\" ಗೆ ಸಂಪರ್ಕಗೊಂಡಿದೆ. ದಯವಿಟ್ಟು WiFi ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ, WeMo ಸಾಧನ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಿಸಿ, ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
  }

  @override
  String get pairingLoadingLooking => 'ಸಾಧನವನ್ನು ಹುಡುಕಲಾಗುತ್ತಿದೆ...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip ನಲ್ಲಿ WeMo ಸಾಧನವನ್ನು ಕಂಡುಹಿಡಿಯಲಾಗಲಿಲ್ಲ. ನಿಮ್ಮ ಫೋನ್ WeMo WiFi ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಗೊಂಡಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ, ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ. ನೀವು IP ಸಾಧನವನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ಸಹ ನಮೂದಿಸಬಹುದು.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'ಸಾಧನವನ್ನು ಕಂಡುಹಿಡಿಯುವಲ್ಲಿ ದೋಷ: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip ಗೆ ಸಂಪರ್ಕಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip ನಲ್ಲಿ ಯಾವುದೇ ಸಾಧನ ಕಂಡುಬಂದಿಲ್ಲ';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip ಗೆ ಸಂಪರ್ಕಿಸುವಲ್ಲಿ ದೋಷ: $error';
  }

  @override
  String get pairingLoadingScanning =>
      'ನೆಟ್‌ವರ್ಕ್‌ಗಳಿಗಾಗಿ ಸ್ಕ್ಯಾನ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String pairingErrorScanning(String error) {
    return 'ನೆಟ್‌ವರ್ಕ್‌ಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'ದಯವಿಟ್ಟು ನೆಟ್‌ವರ್ಕ್ ಆಯ್ಕೆಮಾಡಿ ಮತ್ತು ಪಾಸ್‌ವರ್ಡ್ ನಮೂದಿಸಿ.';

  @override
  String get pairingLoadingSendingCredentials =>
      'ನೆಟ್‌ವರ್ಕ್ ರುಜುವಾತುಗಳನ್ನು ಕಳುಹಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get pairingLoadingWaitingConnection =>
      'ಸಾಧನವನ್ನು ಸಂಪರ್ಕಿಸಲು ನಿರೀಕ್ಷಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String pairingErrorConfigure(String error) {
    return 'ನೆಟ್‌ವರ್ಕ್ ಅನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'ಪಾಸ್‌ವರ್ಡ್ ತುಂಬಾ ಚಿಕ್ಕದಾಗಿದೆ. ದಯವಿಟ್ಟು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'ಸಂಪರ್ಕಿಸಲು ವಿಫಲವಾಗಿದೆ. ದಯವಿಟ್ಟು ಪಾಸ್‌ವರ್ಡ್ ಪರಿಶೀಲಿಸಿ.';

  @override
  String get pairingErrorConnectionTimeout =>
      'ಸಂಪರ್ಕದ ಅವಧಿ ಮೀರಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'ಸೆಟಪ್ ಅನ್ನು ಅಂತಿಮಗೊಳಿಸುವಲ್ಲಿ ದೋಷ: $error';
  }

  @override
  String get detailRefreshState => 'ಸ್ಥಿತಿಯನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get detailDeviceInfo => 'ಸಾಧನದ ಮಾಹಿತಿ';

  @override
  String get detailAdvanced => 'ಸುಧಾರಿತ';

  @override
  String get detailWifiSetup => 'WiFi ಸೆಟಪ್';

  @override
  String get detailReset => 'ಮರುಹೊಂದಿಸಿ';

  @override
  String get detailUnreachable =>
      'ಸಾಧನವನ್ನು ತಲುಪಲಾಗುವುದಿಲ್ಲ. ನೆಟ್ವರ್ಕ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String detailFailedToggle(String error) {
    return 'ಟಾಗಲ್ ಮಾಡಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get detailDeviceInformation => 'ಸಾಧನ ಮಾಹಿತಿ';

  @override
  String get detailPermissionScan =>
      'WiFi ನೆಟ್‌ವರ್ಕ್‌ಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಲು ಅನುಮತಿಯ ಅಗತ್ಯವಿದೆ.';

  @override
  String get detailScanFailedManual =>
      'ನೆಟ್‌ವರ್ಕ್‌ಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ನೆಟ್ವರ್ಕ್ ಹೆಸರನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಿ.';

  @override
  String get detailEnterNetworkNameError =>
      'ದಯವಿಟ್ಟು ನೆಟ್‌ವರ್ಕ್ ಹೆಸರನ್ನು ನಮೂದಿಸಿ ಅಥವಾ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get detailEnterPasswordError =>
      'ದಯವಿಟ್ಟು ನೆಟ್‌ವರ್ಕ್ ಪಾಸ್‌ವರ್ಡ್ ನಮೂದಿಸಿ';

  @override
  String get detailWifiSuccess => 'WiFi ಯಶಸ್ವಿಯಾಗಿ ಕಾನ್ಫಿಗರ್ ಮಾಡಲಾಗಿದೆ!';

  @override
  String get detailScanNetworks => 'ನೆಟ್ವರ್ಕ್ಗಳಿಗಾಗಿ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" ಗಾಗಿ WiFi ನೆಟ್ವರ್ಕ್ ಅನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿ';
  }

  @override
  String get detailAvailableNetworks => 'ಲಭ್ಯವಿರುವ ನೆಟ್‌ವರ್ಕ್‌ಗಳು';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'ಹತ್ತಿರದ Wi-Fi ನೆಟ್‌ವರ್ಕ್‌ಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡುವುದರಿಂದ ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಅಪ್ಲಿಕೇಶನ್‌ಗಳನ್ನು iOS ಕಟ್ಟುನಿಟ್ಟಾಗಿ ನಿಷೇಧಿಸುತ್ತದೆ. ದಯವಿಟ್ಟು ಕೆಳಗೆ ನಿಮ್ಮ ನೆಟ್‌ವರ್ಕ್ ಹೆಸರನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ನಮೂದಿಸಿ.';

  @override
  String get detailTapRefreshScan =>
      'ನೆಟ್‌ವರ್ಕ್‌ಗಳಿಗಾಗಿ ಸ್ಕ್ಯಾನ್ ಮಾಡಲು ರಿಫ್ರೆಶ್ ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get detailEnterNetworkBelow =>
      'ನಿಮ್ಮ ನೆಟ್‌ವರ್ಕ್ ಹೆಸರನ್ನು ಕೆಳಗೆ ನಮೂದಿಸಿ';

  @override
  String get detailNetworkCredentials => 'ನೆಟ್‌ವರ್ಕ್ ರುಜುವಾತುಗಳು';

  @override
  String get detailConnecting => 'ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get detailConnected => 'ಯಶಸ್ವಿಯಾಗಿ ಸಂಪರ್ಕಿಸಲಾಗಿದೆ!';

  @override
  String get detailPasswordShort => 'ಪಾಸ್ವರ್ಡ್ ತುಂಬಾ ಚಿಕ್ಕದಾಗಿದೆ';

  @override
  String get detailAuthenticationFailed =>
      'ದೃಢೀಕರಣ ವಿಫಲವಾಗಿದೆ - ಪಾಸ್ವರ್ಡ್ ಪರಿಶೀಲಿಸಿ';

  @override
  String get detailConnectionFailed => 'ಸಂಪರ್ಕ ವಿಫಲವಾಗಿದೆ';

  @override
  String get detailSelectReset =>
      'ದಯವಿಟ್ಟು ಯಾವುದನ್ನು ಮರುಹೊಂದಿಸಬೇಕೆಂದು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get detailResetSchedulesWarning =>
      '• ಎಲ್ಲಾ ವೇಳಾಪಟ್ಟಿಗಳು ಮತ್ತು ಯಾಂತ್ರೀಕೃತಗೊಂಡ ನಿಯಮಗಳನ್ನು ಅಳಿಸಲಾಗುತ್ತದೆ';

  @override
  String get detailResetWifiWarning => '• WiFi ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಅಳಿಸಲಾಗುತ್ತದೆ';

  @override
  String get detailSetupAgainWarning =>
      '• ನೀವು ಮತ್ತೆ ಸಾಧನವನ್ನು ಹೊಂದಿಸಬೇಕಾಗುತ್ತದೆ';

  @override
  String get detailUnreachableWarning =>
      '• ಸಾಧನವು ತಾತ್ಕಾಲಿಕವಾಗಿ ತಲುಪಲು ಸಾಧ್ಯವಾಗದಿರಬಹುದು';

  @override
  String get detailConfirmReset => 'ಮರುಹೊಂದಿಸಿ ದೃಢೀಕರಿಸಿ';

  @override
  String detailConfirmResetDevice(String device) {
    return '\"$device\" ಅನ್ನು ಮರುಹೊಂದಿಸಲು ನೀವು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ?';
  }

  @override
  String get detailThisWill => 'ಇದು:';

  @override
  String get detailCannotUndo => 'ಈ ಕ್ರಿಯೆಯನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get detailYesReset => 'ಹೌದು, ಮರುಹೊಂದಿಸಿ';

  @override
  String get detailResetSuccess => 'ಸಾಧನವನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಮರುಹೊಂದಿಸಲಾಗಿದೆ';

  @override
  String get detailResetRemote => 'ಸಾಧನವನ್ನು ರಿಮೋಟ್ ಆಗಿ ಮರುಹೊಂದಿಸಲಾಗುತ್ತದೆ';

  @override
  String get detailResetFailed => 'ಮರುಹೊಂದಿಸಲು ವಿಫಲವಾಗಿದೆ';

  @override
  String get detailFactoryReset => 'ಫ್ಯಾಕ್ಟರಿ ಮರುಹೊಂದಿಸಿ';

  @override
  String get detailFactoryResetWarning =>
      'ಇದು ಎಲ್ಲಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಅಳಿಸುತ್ತದೆ ಮತ್ತು ಸಾಧನವನ್ನು ಫ್ಯಾಕ್ಟರಿ ಡೀಫಾಲ್ಟ್‌ಗಳಿಗೆ ಮರುಸ್ಥಾಪಿಸುತ್ತದೆ. ನೀವು ಮತ್ತೆ ಸಾಧನವನ್ನು ಹೊಂದಿಸಬೇಕಾಗುತ್ತದೆ.\n\nಈ ಕ್ರಿಯೆಯನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get detailFactoryResetInitiated =>
      'ಫ್ಯಾಕ್ಟರಿ ಮರುಹೊಂದಿಕೆಯನ್ನು ಪ್ರಾರಂಭಿಸಲಾಗಿದೆ';

  @override
  String get detailResetDevice => 'ಸಾಧನವನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" ಗಾಗಿ ಆಯ್ಕೆಗಳನ್ನು ಮರುಹೊಂದಿಸಿ';
  }

  @override
  String get detailResetUserData => 'ಬಳಕೆದಾರರ ಡೇಟಾವನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get detailResetUserDataSubtitle =>
      'ವೇಳಾಪಟ್ಟಿಗಳು ಮತ್ತು ನಿಯಮಗಳನ್ನು ತೆರವುಗೊಳಿಸುತ್ತದೆ';

  @override
  String get detailResetWifi => 'WiFi ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get detailResetWifiSubtitle => 'ಸಾಧನವನ್ನು ಮತ್ತೆ ಹೊಂದಿಸುವ ಅಗತ್ಯವಿದೆ';

  @override
  String get widgetBrightness => 'ಹೊಳಪು';

  @override
  String get widgetEnergyStatistics => 'ಶಕ್ತಿಯ ಅಂಕಿಅಂಶಗಳು';

  @override
  String get widgetCurrentPower => 'ಪ್ರಸ್ತುತ ಶಕ್ತಿ';

  @override
  String get widgetToday => 'ಇಂದು';

  @override
  String get widgetTotal => 'ಒಟ್ಟು';

  @override
  String get widgetOnTimeToday => 'ಇಂದು ಸಮಯಕ್ಕೆ';

  @override
  String get widgetTotalOnTime => 'ಒಟ್ಟು ಸಮಯಕ್ಕೆ';

  @override
  String get widgetStandby => 'ಸ್ಟ್ಯಾಂಡ್ಬೈ';

  @override
  String get widgetUnknown => 'ಅಜ್ಞಾತ';

  @override
  String get widgetOpenNetwork => 'ನೆಟ್‌ವರ್ಕ್ ತೆರೆಯಿರಿ';

  @override
  String get widgetWepInsecure => 'WEP (ಅಸುರಕ್ಷಿತ)';
}
