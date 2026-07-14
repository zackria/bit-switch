// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'சாதனம் இந்த செயலை ஆதரிக்கவில்லை.';

  @override
  String get errInvalidArgs =>
      'தவறான மதிப்புருக்கள் சாதனத்திற்கு அனுப்பப்பட்டன.';

  @override
  String get errActionFailed =>
      'கோரப்பட்ட செயலைச் செய்ய சாதனம் தோல்வியடைந்தது.';

  @override
  String get errInvalidValue => 'தவறான மதிப்பு வழங்கப்பட்டது.';

  @override
  String get errValueOutOfRange =>
      'மதிப்பு ஏற்றுக்கொள்ளக்கூடிய வரம்பிற்கு வெளியே உள்ளது.';

  @override
  String get errFeatureNotAvailable => 'இந்த அம்சம் இந்த சாதனத்தில் இல்லை.';

  @override
  String get errOutOfMemory =>
      'சாதனம் நினைவகத்தில் இல்லை. பிறகு முயற்சிக்கவும்.';

  @override
  String get errManualActionRequired =>
      'சாதனத்தில் கைமுறையாகச் செயல்பட வேண்டும்.';

  @override
  String get errActionNotAuthorized => 'இந்த நடவடிக்கை அங்கீகரிக்கப்படவில்லை.';

  @override
  String get errUnexpected =>
      'எதிர்பாராத பிழை ஏற்பட்டது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errDeviceUnreachableOffline =>
      'சாதனத்தை அடைய முடியவில்லை. இது ஆஃப்லைனில் இருக்கலாம் அல்லது வேறு நெட்வொர்க்கில் இருக்கலாம்.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts முயற்சிகளுக்குப் பிறகு கோரிக்கை நேரம் முடிந்தது. சாதனம் ஆஃப்லைனில் இருக்கலாம்.';
  }

  @override
  String get errRequestTimedOut =>
      'கோரிக்கை நேரம் முடிந்தது. சாதனம் ஆஃப்லைனில் இருக்கலாம்.';

  @override
  String get errNoRouteToHost =>
      'சாதனத்தை அடைய முடியவில்லை. உங்கள் WiFi இணைப்பைச் சரிபார்க்கவும்.';

  @override
  String get errHostUnreachable =>
      'சாதனத்தை அணுக முடியவில்லை. இது இயக்கப்பட்டு WiFi உடன் இணைக்கப்பட்டுள்ளதை உறுதிசெய்யவும்.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts முயற்சிகளுக்குப் பிறகு சாதனத்துடன் தொடர்பு கொள்ள முடியவில்லை.';
  }

  @override
  String get errNetworkErrorComm =>
      'நெட்வொர்க் பிழை: சாதனத்துடன் தொடர்பு கொள்ள முடியவில்லை.';

  @override
  String get errActionNotAuthorizedDevice =>
      'இந்தச் செயல் சாதனத்தில் அங்கீகரிக்கப்படவில்லை.';

  @override
  String get errDeviceServiceNotFound =>
      'சாதன சேவை கிடைக்கவில்லை. சாதனத்திற்கு ஃபார்ம்வேர் புதுப்பிப்பு தேவைப்படலாம்.';

  @override
  String get errDeviceEncounteredError =>
      'கோரிக்கையைச் செயலாக்குவதில் சாதனம் பிழையை எதிர்கொண்டது.';

  @override
  String get errDeviceInternalError => 'சாதனம் உள் பிழையை வழங்கியது.';

  @override
  String get errDeviceTempUnavailable =>
      'சாதனம் தற்காலிகமாக கிடைக்கவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'சாதனம் பிழையை வழங்கியது (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'சாதனத்தில் $action இல் தோல்வி.';
  }

  @override
  String get errDeviceReturnedError => 'சாதனத்தில் பிழை ஏற்பட்டது.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation செயல்பாட்டின் நேரம் முடிந்தது. மீண்டும் முயற்சிக்கவும்.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds வினாடிகளுக்குப் பிறகு செயல்பாடு முடிந்தது.';
  }

  @override
  String get errOperationTimedOut =>
      'அறுவை சிகிச்சை நேரம் முடிந்தது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'சாதனங்களைக் கண்டறிய, அமைப்புகளில் உள்ளூர் நெட்வொர்க் அனுமதியை இயக்கவும்.';

  @override
  String get errCannotAccessLocalNetwork =>
      'உள்ளூர் நெட்வொர்க்கை அணுக முடியவில்லை. அமைப்புகளில் லோக்கல் நெட்வொர்க் அனுமதியை இயக்கவும்.';

  @override
  String get errCheckWifiConnection =>
      'சாதனங்களைக் கண்டறிய முடியவில்லை. உங்கள் WiFi இணைப்பைச் சரிபார்க்கவும்.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'கண்டுபிடிப்பு தடைபட்டது. $count சாதனம்(கள்) கண்டறியப்பட்டது.';
  }

  @override
  String get errNoDevicesFound =>
      'சாதனங்கள் எதுவும் இல்லை. சாதனங்கள் இயக்கப்பட்டு உங்கள் நெட்வொர்க்குடன் இணைக்கப்பட்டுள்ளதை உறுதிசெய்யவும்.';

  @override
  String get actionGetDeviceState => 'சாதன நிலையைப் பெறுங்கள்';

  @override
  String get actionSetDeviceState => 'சாதன நிலையை அமைக்கவும்';

  @override
  String get actionGetEnergyData => 'ஆற்றல் தரவு கிடைக்கும்';

  @override
  String get actionScanNetworks => 'நெட்வொர்க்குகளை ஸ்கேன் செய்யவும்';

  @override
  String get actionConnectWifi => 'WiFi உடன் இணைக்கவும்';

  @override
  String get actionCheckConnection => 'இணைப்பு நிலையை சரிபார்க்கவும்';

  @override
  String get actionResetDevice => 'சாதனத்தை மீட்டமை';

  @override
  String get actionPerform => 'செயலைச் செய்யவும்';

  @override
  String get suggestTryRefreshing =>
      'சாதனப் பட்டியலைப் புதுப்பிக்க முயற்சிக்கவும் அல்லது சாதனம் பதிலளிக்கிறதா எனச் சரிபார்க்கவும்.';

  @override
  String get suggestEnsurePoweredOn =>
      'சாதனம் இயக்கப்பட்டு உங்கள் WiFi நெட்வொர்க்குடன் இணைக்கப்பட்டுள்ளதை உறுதிசெய்யவும்.';

  @override
  String get suggestMakeSureSameWifi =>
      'உங்கள் சாதனங்கள் இணைக்கப்பட்டுள்ள அதே WiFi நெட்வொர்க்குடன் உங்கள் ஃபோன் இணைக்கப்பட்டுள்ளதை உறுதிசெய்யவும்.';

  @override
  String get suggestCheckPhysical =>
      'கவனம் தேவைப்படும் பொத்தான்கள் அல்லது சுவிட்சுகள் உள்ளதா என இயற்பியல் சாதனத்தைச் சரிபார்க்கவும்.';

  @override
  String get suggestWaitAndTry =>
      'சிறிது நேரம் காத்திருந்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get suggestDeviceBusy =>
      'சாதனம் பிஸியாக இருக்கலாம். சில நொடிகளில் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'ரத்து செய்';

  @override
  String get commonClose => 'மூடு';

  @override
  String get commonDone => 'முடிந்தது';

  @override
  String get commonLater => 'பின்னர்';

  @override
  String get commonRefresh => 'புதுப்பிக்கவும்';

  @override
  String get commonTryAgain => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get commonOpenSettings => 'அமைப்புகளைத் திறக்கவும்';

  @override
  String get commonGrant => 'மானியம்';

  @override
  String get commonFix => 'சரி';

  @override
  String get commonOn => 'அன்று';

  @override
  String get commonOff => 'ஆஃப்';

  @override
  String get commonOffline => 'ஆஃப்லைன்';

  @override
  String get commonStatus => 'நிலை';

  @override
  String get commonName => 'பெயர்';

  @override
  String get commonType => 'வகை';

  @override
  String get commonModel => 'மாதிரி';

  @override
  String get commonManufacturer => 'உற்பத்தியாளர்';

  @override
  String get commonSerial => 'தொடர்';

  @override
  String get commonFirmware => 'நிலைபொருள்';

  @override
  String get commonHost => 'புரவலன்';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'கடவுச்சொல்';

  @override
  String get commonUnknownWifi => 'தெரியவில்லை Wi-Fi';

  @override
  String get commonNotConnected => 'இணைக்கப்படவில்லை';

  @override
  String commonSecondsShort(int seconds) {
    return '$secondsகள்';
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
      other: '$seconds வினாடிகள்',
      one: '1 வினாடி',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'ஸ்மார்ட் ஸ்விட்ச்';

  @override
  String get deviceTypeLightSwitch => 'ஒளி சுவிட்ச்';

  @override
  String get deviceTypeDimmer => 'மங்கலான';

  @override
  String get deviceTypeInsightPlug => 'இன்சைட் பிளக்';

  @override
  String get deviceTypeMotionSensor => 'மோஷன் சென்சார்';

  @override
  String get deviceTypeMaker => 'தயாரிப்பாளர்';

  @override
  String get deviceTypeBridge => 'பாலம்';

  @override
  String get deviceTypeCoffeeMaker => 'காபி மேக்கர்';

  @override
  String get deviceTypeCrockpot => 'கிராக்பாட்';

  @override
  String get deviceTypeHumidifier => 'ஈரப்பதமூட்டி';

  @override
  String get deviceTypeOutdoorPlug => 'வெளிப்புற பிளக்';

  @override
  String get deviceTypeUnknown => 'தெரியாத சாதனம்';

  @override
  String get pairingStepGetStarted => 'தொடங்குங்கள்';

  @override
  String get pairingStepConnectToDevice => 'சாதனத்துடன் இணைக்கவும்';

  @override
  String get pairingStepFindDevice => 'சாதனத்தைக் கண்டுபிடி';

  @override
  String get pairingStepSelectNetwork => 'நெட்வொர்க்கைத் தேர்ந்தெடுக்கவும்';

  @override
  String get pairingStepConfiguring => 'கட்டமைக்கிறது';

  @override
  String get pairingStepReconnect => 'மீண்டும் இணைக்கவும்';

  @override
  String get pairingStepFinalizing => 'இறுதிப்படுத்துதல்';

  @override
  String get pairingStepSuccess => 'வெற்றி';

  @override
  String get pairingStepError => 'பிழை';

  @override
  String get homeToggleDebug => 'பிழைத்திருத்த பயன்முறையை நிலைமாற்று';

  @override
  String get homeRefreshDevices => 'சாதனங்களைப் புதுப்பிக்கவும்';

  @override
  String get homeSettings => 'அமைப்புகள்';

  @override
  String get homeDismiss => 'நிராகரி';

  @override
  String get homeDiscovering => 'சாதனங்களைக் கண்டறிகிறது...';

  @override
  String get homeNoDevices => 'சாதனங்கள் எதுவும் இல்லை';

  @override
  String get homeScanDevices => 'சாதனங்களை ஸ்கேன் செய்யவும்';

  @override
  String get homeLookingForMore => 'மேலும் சாதனங்களைத் தேடுகிறது...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count சாதனங்கள் கண்டறியப்பட்டன',
      one: '1 சாதனம் கண்டறியப்பட்டது',
      zero: 'சாதனங்கள் எதுவும் இல்லை',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count சாதனங்கள் கண்டறியப்பட்டன, ஸ்கேன் செய்கிறது...',
      one: '1 சாதனம் கண்டறியப்பட்டது, ஸ்கேன் செய்கிறது...',
      zero: 'சாதனங்கள் எதுவும் இல்லை, ஸ்கேன் செய்கிறது...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ஆட்டோ';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi உடன் இணைக்கப்பட்டது';

  @override
  String get homePermissionExplanation =>
      'உங்கள் Wi-Fi விவரங்களைக் கண்டறிய இருப்பிடத் தகவல் பயன்படுத்தப்படுகிறது. உங்கள் ஸ்மார்ட் சுவிட்சுகள் மற்றும் சாதனங்களைக் கட்டுப்படுத்த உள்ளூர் நெட்வொர்க் அணுகல் உங்களை அனுமதிக்கிறது.';

  @override
  String get homeDebugLog => 'பிழைத்திருத்த பதிவு';

  @override
  String get homeClear => 'தெளிவு';

  @override
  String get homeDebugEmpty =>
      'கண்டுபிடிப்பைத் தொடங்கவும் பதிவுகளைப் பார்க்கவும் புதுப்பி என்பதைத் தட்டவும்...';

  @override
  String get homeProbeHint => 'IP:போர்ட் (எ.கா. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'ஆய்வு';

  @override
  String get homeScanning => 'ஸ்கேன் செய்கிறது...';

  @override
  String get homeScanSubnet => 'முழு சப்நெட்டை ஸ்கேன் செய்யவும் (iOS ஃபிக்ஸ்)';

  @override
  String homePlatform(String platform, String version) {
    return 'இயங்குதளம்: $platform $version';
  }

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get settingsSectionNetwork => 'நெட்வொர்க்';

  @override
  String get settingsSectionDeviceSetup => 'சாதன அமைப்பு';

  @override
  String get settingsSectionDiscovery => 'கண்டுபிடிப்பு';

  @override
  String get settingsSectionAbout => 'பற்றி';

  @override
  String get settingsSectionDebug => 'பிழைத்திருத்தம்';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'அனுமதி கிடைத்தது! WiFi பெயர்: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'இருப்பிடம் வழங்கப்பட்டது, ஆனால் லோக்கல் நெட்வொர்க் அனுமதியும் தேவை. அமைப்புகளைச் சரிபார்க்கவும்.';

  @override
  String get settingsLocationRequired => 'இருப்பிட அனுமதி தேவை';

  @override
  String get settingsLocationRequiredBody =>
      'உங்கள் WiFi நெட்வொர்க் பெயரைக் காட்ட, iOSக்கு இருப்பிட அனுமதி தேவை.';

  @override
  String get settingsRequiredPermissions => 'தேவையான அனுமதிகள்:';

  @override
  String get settingsPermissionList =>
      '1. இருப்பிடச் சேவைகள் (\"பயன்பாட்டைப் பயன்படுத்தும் போது\")\n2. உள்ளூர் நெட்வொர்க்';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'குறிப்பு: இருப்பிட அனுமதி இல்லாமல் சாதனக் கண்டுபிடிப்பு வேலை செய்கிறது. இந்த அனுமதி உங்கள் WiFi நெட்வொர்க் பெயரைக் காட்ட மட்டுமே பயன்படுத்தப்படும்.';

  @override
  String get settingsEnableLocation => 'அமைப்புகளில் இருப்பிடத்தை இயக்கவும்';

  @override
  String get settingsLocationDeniedBody =>
      'இருப்பிட அனுமதி மறுக்கப்பட்டது. கணினி அமைப்புகளில் இருந்து நீங்கள் அதை இயக்கலாம்.';

  @override
  String get settingsStepsToEnable => 'செயல்படுத்துவதற்கான படிகள்:';

  @override
  String get settingsEnableLocationSteps =>
      '1. அமைப்புகளைத் திறக்கவும்\n2. \"Bit Switch\"க்கு உருட்டவும்\n3. \"இருப்பிடம்\" என்பதைத் தட்டவும்\n4. \"பயன்பாட்டைப் பயன்படுத்தும் போது\" என்பதைத் தேர்ந்தெடுக்கவும்\n5. இந்தப் பயன்பாட்டிற்குத் திரும்பி, புதுப்பிப்பு பொத்தானைத் தட்டவும்';

  @override
  String get settingsLocationOnlyWifiName =>
      'குறிப்பு: WiFi பெயரைக் காட்ட மட்டுமே இருப்பிட அனுமதி தேவை. சாதன கண்டுபிடிப்பு அது இல்லாமல் வேலை செய்கிறது.';

  @override
  String get settingsAdditionalPermission => 'கூடுதல் அனுமதி தேவை';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo சாதனங்களைக் கண்டறிந்து கட்டுப்படுத்த உள்ளூர் நெட்வொர்க் அனுமதி தேவை.';

  @override
  String get settingsWifiNameNotVisible =>
      'உங்களிடம் இருப்பிட அனுமதி உள்ளது, ஆனால் WiFi பெயர் இன்னும் தெரியவில்லை.';

  @override
  String get settingsPleaseEnable => 'தயவுசெய்து செயல்படுத்தவும்:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. ஐபோன் அமைப்புகளுக்குச் செல்லவும்\n2. \"Bit Switch\"க்கு கீழே உருட்டவும்\n3. \"உள்ளூர் நெட்வொர்க்\" ஐ இயக்கு';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS இல் சாதனம் கண்டுபிடிப்பு மற்றும் WiFi பெயர் அணுகல் ஆகிய இரண்டிற்கும் உள்ளூர் நெட்வொர்க் அனுமதி தேவை.';

  @override
  String get settingsPairNewDevice => 'புதிய சாதனத்தை இணைக்கவும்';

  @override
  String get settingsPairNewDeviceSubtitle => 'புதிய Wemo சாதனத்தை அமைக்கவும்';

  @override
  String get settingsDiscoveryTimeout => 'டிஸ்கவரி டைம்அவுட்';

  @override
  String get settingsRequestTimeout => 'கோரிக்கை நேரம் முடிந்தது';

  @override
  String get settingsAutoRefresh => 'தானாக புதுப்பித்தல்';

  @override
  String get settingsAutoRefreshOn =>
      'ஆன் - சாதன நிலைகள் தானாகவே புதுப்பிக்கப்படும்';

  @override
  String get settingsAutoRefreshOff =>
      'ஆஃப் - கைமுறை புதுப்பிப்பு பொத்தானைப் பயன்படுத்தவும்';

  @override
  String get settingsAutoRefreshInterval => 'தானாக புதுப்பிக்கும் இடைவெளி';

  @override
  String get settingsAbout => 'சுமார் Bit Switch';

  @override
  String get settingsVersion => 'பதிப்பு';

  @override
  String get settingsNetworkDiagnostics => 'நெட்வொர்க் கண்டறிதல்';

  @override
  String get settingsShowDebug => 'பிழைத்திருத்த பயன்முறையைக் காட்டு';

  @override
  String get settingsShowDebugSubtitle =>
      'முகப்புத் திரையில் பிழைத்திருத்தக் கட்டுப்பாடுகள் மற்றும் நெட்வொர்க் கண்டறிதல்களைக் காட்டு';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'சரிசெய்தலுக்கு முகப்புத் திரையில் பிழைத்திருத்த ஐகானைக் காட்டு';

  @override
  String get settingsCurrentNetwork => 'தற்போதைய நெட்வொர்க்';

  @override
  String get settingsNetworkAccessStatus => 'பிணைய அணுகல் நிலை';

  @override
  String get settingsNetworkAccessGranted => 'உள்ளூர் நெட்வொர்க் அணுகல் உள்ளது';

  @override
  String get settingsNetworkAccessMissing => 'கூடுதல் அனுமதிகள் தேவைப்படலாம்';

  @override
  String get settingsChecking => 'சரிபார்க்கிறது...';

  @override
  String get settingsEnableLocalNetwork =>
      'அமைப்புகளில் உள்ளூர் நெட்வொர்க்கை இயக்கவும்';

  @override
  String get settingsNotConnectedWifi => 'WiFi உடன் இணைக்கப்படவில்லை';

  @override
  String get settingsPermissionRequiredView => 'பார்க்க அனுமதி தேவை';

  @override
  String get settingsAllPermissionsGranted =>
      'அனைத்து அனுமதிகளும் வழங்கப்பட்டுள்ளன';

  @override
  String get settingsLocalNetworkNeeded => 'உள்ளூர் நெட்வொர்க் அனுமதி தேவை';

  @override
  String get settingsLocationNeeded => 'இருப்பிட அனுமதி தேவை';

  @override
  String get settingsRefreshPermissions => 'அனுமதிகளைப் புதுப்பிக்கவும்';

  @override
  String get settingsAboutWifiPermission => 'WiFi பெயர் அனுமதி பற்றி';

  @override
  String get settingsWifiPermissionExplanation =>
      'உங்கள் தொலைபேசி மற்றும் Wemo சாதனங்கள் ஒரே நெட்வொர்க்கில் இருப்பதை உறுதிப்படுத்த உங்கள் WiFi பெயர் உதவுகிறது.';

  @override
  String get settingsWifiPermissionIos =>
      'iOS இல், உங்கள் WiFi நெட்வொர்க் பெயரைக் காண்பிக்க, இருப்பிட அனுமதி தேவை.';

  @override
  String get settingsImportant => 'முக்கியமானது:';

  @override
  String get settingsPrivacyNote =>
      '• உங்கள் இருப்பிடம் கண்காணிக்கப்படாது\n• இருப்பிடத் தரவு எதுவும் சேகரிக்கப்படவில்லை அல்லது சேமிக்கப்படவில்லை';

  @override
  String get settingsWifiPermissionImportant =>
      '• இந்த அனுமதியின்றி சாதன கண்டுபிடிப்பு வேலை செய்கிறது\n• இது WiFi பெயரைக் காட்ட மட்டுமே தேவை\n• இருப்பிடத் தரவு எதுவும் சேகரிக்கப்படவில்லை அல்லது சேமிக்கப்படவில்லை';

  @override
  String get settingsGrantPermission => 'அனுமதி வழங்கவும்';

  @override
  String get settingsHowLongScan => 'சாதனங்களை எவ்வளவு நேரம் ஸ்கேன் செய்வது:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'கண்டுபிடிப்பு நேரம் முடிந்தது $seconds வினாடிகள்';
  }

  @override
  String get settingsHowLongResponses =>
      'சாதன பதில்களுக்காக எவ்வளவு நேரம் காத்திருக்க வேண்டும்:';

  @override
  String get settingsIncreaseTimeoutHint =>
      '\"இணைப்பு மூடப்பட்டது\" பிழைகளைக் கண்டால், இந்த மதிப்பை அதிகரிக்கவும்.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'கோரிக்கை காலக்கெடு $seconds வினாடிகளுக்கு அமைக்கப்பட்டுள்ளது';
  }

  @override
  String get settingsSetRefreshInterval =>
      'தானியங்கி நிலை புதுப்பிப்புக்கான இடைவெளியை அமைக்கவும்:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'புதுப்பிப்பு இடைவெளி $seconds வினாடிகளுக்கு அமைக்கப்பட்டது';
  }

  @override
  String get settingsAboutTagline =>
      'உங்கள் Wemo சாதனங்களுக்கான சுத்தமான, தனிப்பட்ட உள்ளூர் கட்டுப்படுத்தி.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch கிளவுட் சார்புகள் இல்லாமல் சாதனங்களைக் கண்டறிந்து கட்டுப்படுத்த உள்ளூர் நெட்வொர்க் கண்டுபிடிப்பைப் பயன்படுத்துகிறது.';

  @override
  String get settingsVersionValue => 'பதிப்பு 1.0.1';

  @override
  String get settingsProtocol => 'நெறிமுறை: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'மல்டிகாஸ்ட் முகவரி: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'சாதன துறைமுகங்கள்: 49152-49159';

  @override
  String get settingsControlProtocol =>
      'கட்டுப்பாட்டு நெறிமுறை: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'உதவிக்குறிப்பு: உங்கள் சாதனம் உங்கள் Wemo சாதனங்கள் உள்ள அதே நெட்வொர்க்கில் இருப்பதையும் UDP மல்டிகாஸ்ட் தடுக்கப்படவில்லை என்பதையும் உறுதிப்படுத்தவும்.';

  @override
  String get settingsDevicePaired =>
      'சாதனம் இணைக்கப்பட்டது! சாதனப் பட்டியலைப் புதுப்பிக்கிறது...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'ஒரு கோரிக்கைக்கு $seconds வினாடிகள்';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'ஒவ்வொரு $secondsகளையும் புதுப்பிக்கிறது';
  }

  @override
  String get pairingTitle => 'புதிய சாதனத்தை இணைக்கவும்';

  @override
  String get pairingSetupTitle => 'உங்கள் Wemo சாதனத்தை அமைக்கவும்';

  @override
  String get pairingBeforeBegin =>
      'நீங்கள் தொடங்கும் முன், உங்கள் Wemo சாதனம் அமைவு பயன்முறையில் இருப்பதை உறுதிசெய்யவும்:';

  @override
  String get pairingPlugInTitle => 'உங்கள் Wemo சாதனத்தைச் செருகவும்';

  @override
  String get pairingPlugInBody =>
      'அதை சக்தியுடன் இணைத்து, அது தொடங்கும் வரை காத்திருக்கவும்.';

  @override
  String get pairingBlinkingLedTitle => 'ஒளிரும் எல்.ஈ.டி';

  @override
  String get pairingBlinkingLedBody =>
      'ஒளிரும் LED சாதனம் அமைவு பயன்முறையில் இருப்பதைக் குறிக்கிறது.';

  @override
  String get pairingCheckWifiTitle => 'WiFi நெட்வொர்க்கைச் சரிபார்க்கவும்';

  @override
  String get pairingCheckWifiBody =>
      'சாதனம் \"WeMo.XXXXX\" என்ற நெட்வொர்க்கை ஒளிபரப்பும்.';

  @override
  String get pairingSolidLedHint =>
      'எல்இடி திடமாக இருந்தால், அமைவு பயன்முறையில் நுழைய மீட்டமை பொத்தானை 5 விநாடிகள் வைத்திருங்கள்.';

  @override
  String get pairingStart => 'இணைக்கத் தொடங்கு';

  @override
  String get pairingConnectWifiTitle => 'WiFi சாதனத்துடன் இணைக்கவும்';

  @override
  String get pairingConnectWifiBody =>
      'உங்கள் ஃபோனின் WiFi அமைப்புகளைத் திறந்து, \"WeMo\" என்று தொடங்கும் நெட்வொர்க்குடன் இணைக்கவும்.';

  @override
  String get pairingCurrentNetwork => 'தற்போதைய நெட்வொர்க்';

  @override
  String get pairingConnectedToDevice => 'Wemo சாதனத்துடன் இணைக்கப்பட்டது!';

  @override
  String get pairingOpenWifiSettings => 'WiFi அமைப்புகளைத் திறக்கவும்';

  @override
  String get pairingConnectedButton => 'நான் இணைத்துவிட்டேன்';

  @override
  String get pairingLookingForDevice => 'உங்கள் Wemo சாதனத்தைத் தேடுகிறது...';

  @override
  String get pairingManualIpPrompt =>
      'அல்லது IP சாதனத்தை கைமுறையாக உள்ளிடவும்:';

  @override
  String get pairingDeviceIp => 'சாதனம் IP முகவரி';

  @override
  String get pairingConnectToIp => 'IP உடன் இணைக்கவும்';

  @override
  String get pairingSelectHomeWifi =>
      'உங்கள் வீட்டு WiFi நெட்வொர்க்கைத் தேர்ந்தெடுக்கவும்:';

  @override
  String get pairingRefreshNetworks => 'நெட்வொர்க்குகளைப் புதுப்பிக்கவும்';

  @override
  String get pairingIosScanLimitation =>
      'அருகிலுள்ள Wi-Fi நெட்வொர்க்குகளை ஸ்கேன் செய்வதிலிருந்து மூன்றாம் தரப்பு பயன்பாடுகளை iOS கண்டிப்பாக தடை செய்கிறது. நீங்கள் SSID நெட்வொர்க்கை கைமுறையாக உள்ளிட வேண்டும்.';

  @override
  String get pairingNoNetworks => 'நெட்வொர்க்குகள் இல்லை';

  @override
  String get pairingScanAgain => 'மீண்டும் ஸ்கேன் செய்யவும்';

  @override
  String get pairingWifiPassword => 'WiFi கடவுச்சொல்';

  @override
  String get pairingConnect => 'இணைக்கவும்';

  @override
  String get pairingEnterNetworkManually => 'பிணையத்தை கைமுறையாக உள்ளிடவும்';

  @override
  String get pairingEnterNetworkName => 'நெட்வொர்க் பெயரை உள்ளிடவும்:';

  @override
  String get pairingNetworkName => 'நெட்வொர்க் பெயர் (SSID)';

  @override
  String get pairingUseNetwork => 'இந்த நெட்வொர்க்கைப் பயன்படுத்தவும்';

  @override
  String get pairingConfiguringDevice => 'சாதனத்தை உள்ளமைக்கிறது...';

  @override
  String get pairingConfiguringWait =>
      'சாதனம் உங்கள் நெட்வொர்க்குடன் இணைக்கப்படும் வரை காத்திருக்கவும்.';

  @override
  String get pairingReconnectTitle =>
      'உங்கள் நெட்வொர்க்குடன் மீண்டும் இணைக்கவும்';

  @override
  String pairingReconnectBody(String ssid) {
    return 'உங்கள் Wemo சாதனம் இப்போது \"$ssid\" உடன் இணைக்கப்பட்டுள்ளது. உங்கள் மொபைலை அதே நெட்வொர்க்கில் மீண்டும் இணைக்கவும்.';
  }

  @override
  String get pairingBackOnHome => 'மீண்டும் வீட்டு நெட்வொர்க்கில்!';

  @override
  String get pairingReconnectedButton => 'நான் மீண்டும் இணைத்துவிட்டேன்';

  @override
  String get pairingFinalizingSetup => 'அமைவை முடிக்கிறது...';

  @override
  String get pairingSetupComplete => 'அமைவு முடிந்தது!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid உடன் இணைக்கப்பட்டது';
  }

  @override
  String get pairingDeviceReady =>
      'உங்கள் சாதனம் இப்போது அமைக்கப்பட்டு முகப்புத் திரையில் தோன்றும்.';

  @override
  String get pairingSomethingWrong => 'ஏதோ தவறாகிவிட்டது';

  @override
  String get pairingStartOver => 'மீண்டும் தொடங்குங்கள்';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi அமைப்புகளைத் திறக்க முடியவில்லை. அவற்றை கைமுறையாகத் திறக்கவும்.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'உங்கள் ஃபோன் இன்னும் \"$ssid\" உடன் இணைக்கப்பட்டுள்ளது. தயவுசெய்து WiFi அமைப்புகளைத் திறந்து, WeMo சாதன நெட்வொர்க்குடன் இணைத்து, மீண்டும் முயலவும்.';
  }

  @override
  String get pairingLoadingLooking => 'சாதனத்தைத் தேடுகிறது...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip இல் WeMo சாதனத்தைக் கண்டறிய முடியவில்லை. உங்கள் ஃபோன் WeMo WiFi நெட்வொர்க்குடன் இணைக்கப்பட்டுள்ளதை உறுதிசெய்து, மீண்டும் முயற்சிக்கவும். நீங்கள் IP சாதனத்தை கைமுறையாகவும் உள்ளிடலாம்.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'சாதனத்தைக் கண்டுபிடிப்பதில் பிழை: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip உடன் இணைக்கிறது...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip இல் எந்த சாதனமும் இல்லை';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip: $error உடன் இணைப்பதில் பிழை';
  }

  @override
  String get pairingLoadingScanning => 'நெட்வொர்க்குகளை ஸ்கேன் செய்கிறது...';

  @override
  String pairingErrorScanning(String error) {
    return 'நெட்வொர்க்குகளை ஸ்கேன் செய்ய முடியவில்லை: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'நெட்வொர்க்கைத் தேர்ந்தெடுத்து கடவுச்சொல்லை உள்ளிடவும்.';

  @override
  String get pairingLoadingSendingCredentials =>
      'நெட்வொர்க் சான்றுகளை அனுப்புகிறது...';

  @override
  String get pairingLoadingWaitingConnection =>
      'சாதனம் இணைக்க காத்திருக்கிறது...';

  @override
  String pairingErrorConfigure(String error) {
    return 'நெட்வொர்க்கை உள்ளமைப்பதில் தோல்வி: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'கடவுச்சொல் மிகவும் சிறியது. சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'இணைக்க முடியவில்லை. கடவுச்சொல்லை சரிபார்க்கவும்.';

  @override
  String get pairingErrorConnectionTimeout =>
      'இணைப்பு நேரம் முடிந்தது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'அமைப்பை இறுதி செய்வதில் பிழை: $error';
  }

  @override
  String get detailRefreshState => 'புதுப்பிப்பு நிலை';

  @override
  String get detailDeviceInfo => 'சாதனத் தகவல்';

  @override
  String get detailAdvanced => 'மேம்பட்டது';

  @override
  String get detailWifiSetup => 'WiFi அமைவு';

  @override
  String get detailReset => 'மீட்டமை';

  @override
  String get detailUnreachable =>
      'சாதனத்தை அணுக முடியவில்லை. பிணைய இணைப்பைச் சரிபார்க்கவும்.';

  @override
  String detailFailedToggle(String error) {
    return 'மாற்றுவதில் தோல்வி: $error';
  }

  @override
  String get detailDeviceInformation => 'சாதன தகவல்';

  @override
  String get detailPermissionScan =>
      'WiFi நெட்வொர்க்குகளை ஸ்கேன் செய்ய அனுமதி தேவை.';

  @override
  String get detailScanFailedManual =>
      'நெட்வொர்க்குகளை ஸ்கேன் செய்ய முடியவில்லை. நெட்வொர்க் பெயரை கைமுறையாக உள்ளிடவும்.';

  @override
  String get detailEnterNetworkNameError =>
      'நெட்வொர்க் பெயரை உள்ளிடவும் அல்லது தேர்ந்தெடுக்கவும்';

  @override
  String get detailEnterPasswordError => 'பிணைய கடவுச்சொல்லை உள்ளிடவும்';

  @override
  String get detailWifiSuccess => 'WiFi வெற்றிகரமாக உள்ளமைக்கப்பட்டது!';

  @override
  String get detailScanNetworks => 'நெட்வொர்க்குகளை ஸ்கேன் செய்யவும்';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\"க்கு WiFi நெட்வொர்க்கை உள்ளமைக்கவும்';
  }

  @override
  String get detailAvailableNetworks => 'கிடைக்கும் நெட்வொர்க்குகள்';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'அருகிலுள்ள Wi-Fi நெட்வொர்க்குகளை ஸ்கேன் செய்வதிலிருந்து மூன்றாம் தரப்பு பயன்பாடுகளை iOS கண்டிப்பாக தடை செய்கிறது. கீழே கைமுறையாக உங்கள் நெட்வொர்க் பெயரை உள்ளிடவும்.';

  @override
  String get detailTapRefreshScan =>
      'நெட்வொர்க்குகளை ஸ்கேன் செய்ய, புதுப்பி என்பதைத் தட்டவும்';

  @override
  String get detailEnterNetworkBelow =>
      'உங்கள் நெட்வொர்க் பெயரை கீழே உள்ளிடவும்';

  @override
  String get detailNetworkCredentials => 'பிணைய சான்றுகள்';

  @override
  String get detailConnecting => 'நெட்வொர்க்குடன் இணைக்கிறது...';

  @override
  String get detailConnected => 'வெற்றிகரமாக இணைக்கப்பட்டது!';

  @override
  String get detailPasswordShort => 'கடவுச்சொல் மிகவும் சிறியது';

  @override
  String get detailAuthenticationFailed =>
      'அங்கீகாரம் தோல்வி - கடவுச்சொல்லைச் சரிபார்க்கவும்';

  @override
  String get detailConnectionFailed => 'இணைப்பு தோல்வியடைந்தது';

  @override
  String get detailSelectReset =>
      'எதை மீட்டமைக்க வேண்டும் என்பதைத் தேர்ந்தெடுக்கவும்';

  @override
  String get detailResetSchedulesWarning =>
      '• அனைத்து அட்டவணைகளும் ஆட்டோமேஷன் விதிகளும் நீக்கப்படும்';

  @override
  String get detailResetWifiWarning => '• WiFi அமைப்புகள் அழிக்கப்படும்';

  @override
  String get detailSetupAgainWarning =>
      '• நீங்கள் சாதனத்தை மீண்டும் அமைக்க வேண்டும்';

  @override
  String get detailUnreachableWarning =>
      '• சாதனம் தற்காலிகமாக அணுக முடியாமல் போகலாம்';

  @override
  String get detailConfirmReset => 'மீட்டமைப்பை உறுதிப்படுத்தவும்';

  @override
  String detailConfirmResetDevice(String device) {
    return '\"$device\" ஐ நிச்சயமாக மீட்டமைக்க விரும்புகிறீர்களா?';
  }

  @override
  String get detailThisWill => 'இது:';

  @override
  String get detailCannotUndo => 'இந்தச் செயலைச் செயல்தவிர்க்க முடியாது.';

  @override
  String get detailYesReset => 'ஆம், மீட்டமை';

  @override
  String get detailResetSuccess => 'சாதனம் வெற்றிகரமாக மீட்டமைக்கப்பட்டது';

  @override
  String get detailResetRemote => 'சாதனம் தொலைநிலையில் மீட்டமைக்கப்படும்';

  @override
  String get detailResetFailed => 'மீட்டமைக்க முடியவில்லை';

  @override
  String get detailFactoryReset => 'தொழிற்சாலை மீட்டமைப்பு';

  @override
  String get detailFactoryResetWarning =>
      'இது அனைத்து அமைப்புகளையும் அழித்து, சாதனத்தை தொழிற்சாலை இயல்புநிலைக்கு மீட்டமைக்கும். நீங்கள் சாதனத்தை மீண்டும் அமைக்க வேண்டும்.\n\nஇந்தச் செயலைச் செயல்தவிர்க்க முடியாது.';

  @override
  String get detailFactoryResetInitiated =>
      'தொழிற்சாலை மீட்டமைப்பு தொடங்கப்பட்டது';

  @override
  String get detailResetDevice => 'சாதனத்தை மீட்டமைக்கவும்';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\"க்கான விருப்பங்களை மீட்டமைக்கவும்';
  }

  @override
  String get detailResetUserData => 'பயனர் தரவை மீட்டமைக்கவும்';

  @override
  String get detailResetUserDataSubtitle =>
      'அட்டவணைகள் மற்றும் விதிகளை அழிக்கிறது';

  @override
  String get detailResetWifi => 'WiFi அமைப்புகளை மீட்டமைக்கவும்';

  @override
  String get detailResetWifiSubtitle => 'சாதனத்தை மீண்டும் அமைக்க வேண்டும்';

  @override
  String get widgetBrightness => 'பிரகாசம்';

  @override
  String get widgetEnergyStatistics => 'ஆற்றல் புள்ளிவிவரங்கள்';

  @override
  String get widgetCurrentPower => 'தற்போதைய சக்தி';

  @override
  String get widgetToday => 'இன்று';

  @override
  String get widgetTotal => 'மொத்தம்';

  @override
  String get widgetOnTimeToday => 'இன்று சரியான நேரத்தில்';

  @override
  String get widgetTotalOnTime => 'மொத்த நேரம்';

  @override
  String get widgetStandby => 'காத்திருப்பு';

  @override
  String get widgetUnknown => 'தெரியவில்லை';

  @override
  String get widgetOpenNetwork => 'நெட்வொர்க்கைத் திறக்கவும்';

  @override
  String get widgetWepInsecure => 'WEP (பாதுகாப்பற்றது)';
}
