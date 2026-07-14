// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'ഉപകരണം ഈ പ്രവർത്തനത്തെ പിന്തുണയ്ക്കുന്നില്ല.';

  @override
  String get errInvalidArgs =>
      'ഉപകരണത്തിലേക്ക് അസാധുവായ ആർഗ്യുമെൻ്റുകൾ അയച്ചു.';

  @override
  String get errActionFailed =>
      'അഭ്യർത്ഥിച്ച പ്രവർത്തനം നിർവഹിക്കുന്നതിൽ ഉപകരണം പരാജയപ്പെട്ടു.';

  @override
  String get errInvalidValue => 'ഒരു അസാധുവായ മൂല്യം നൽകി.';

  @override
  String get errValueOutOfRange => 'മൂല്യം സ്വീകാര്യമായ പരിധിക്ക് പുറത്താണ്.';

  @override
  String get errFeatureNotAvailable => 'ഈ ഫീച്ചർ ഈ ഉപകരണത്തിൽ ലഭ്യമല്ല.';

  @override
  String get errOutOfMemory =>
      'ഉപകരണത്തിൻ്റെ മെമ്മറി തീർന്നു. പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get errManualActionRequired =>
      'ഉപകരണത്തിൽ സ്വമേധയാലുള്ള പ്രവർത്തനം ആവശ്യമാണ്.';

  @override
  String get errActionNotAuthorized => 'ഈ നടപടി അംഗീകരിക്കപ്പെട്ടിട്ടില്ല.';

  @override
  String get errUnexpected =>
      'ഒരു അപ്രതീക്ഷിത പിശക് സംഭവിച്ചു. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get errDeviceUnreachableOffline =>
      'ഉപകരണത്തിൽ എത്തിച്ചേരാനായില്ല. ഇത് ഓഫ്‌ലൈനോ മറ്റൊരു നെറ്റ്‌വർക്കിലോ ആകാം.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts ശ്രമങ്ങൾക്ക് ശേഷം അഭ്യർത്ഥന കാലഹരണപ്പെട്ടു. ഉപകരണം ഓഫ്‌ലൈനായിരിക്കാം.';
  }

  @override
  String get errRequestTimedOut =>
      'അഭ്യർത്ഥന സമയം കഴിഞ്ഞു. ഉപകരണം ഓഫ്‌ലൈനായിരിക്കാം.';

  @override
  String get errNoRouteToHost =>
      'ഉപകരണത്തിലേക്ക് എത്താൻ കഴിയുന്നില്ല. നിങ്ങളുടെ WiFi കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String get errHostUnreachable =>
      'ഉപകരണം ലഭ്യമല്ല. ഇത് പവർ ചെയ്‌തിട്ടുണ്ടെന്നും WiFi-ലേക്ക് കണക്‌റ്റ് ചെയ്‌തിട്ടുണ്ടെന്നും ഉറപ്പാക്കുക.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts ശ്രമങ്ങൾക്ക് ശേഷം ഉപകരണവുമായി ആശയവിനിമയം നടത്താൻ കഴിയുന്നില്ല.';
  }

  @override
  String get errNetworkErrorComm =>
      'നെറ്റ്‌വർക്ക് പിശക്: ഉപകരണവുമായി ആശയവിനിമയം നടത്താൻ കഴിയുന്നില്ല.';

  @override
  String get errActionNotAuthorizedDevice =>
      'ഈ പ്രവർത്തനത്തിന് ഉപകരണത്തിൽ അംഗീകാരമില്ല.';

  @override
  String get errDeviceServiceNotFound =>
      'ഉപകരണ സേവനം കണ്ടെത്തിയില്ല. ഉപകരണത്തിന് ഒരു ഫേംവെയർ അപ്ഡേറ്റ് ആവശ്യമായി വന്നേക്കാം.';

  @override
  String get errDeviceEncounteredError =>
      'അഭ്യർത്ഥന പ്രോസസ്സ് ചെയ്യുന്നതിൽ ഉപകരണത്തിന് ഒരു പിശക് നേരിട്ടു.';

  @override
  String get errDeviceInternalError => 'ഉപകരണം ഒരു ആന്തരിക പിശക് നൽകി.';

  @override
  String get errDeviceTempUnavailable =>
      'ഉപകരണം താൽക്കാലികമായി ലഭ്യമല്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ഉപകരണം ഒരു പിശക് നൽകി (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ഉപകരണത്തിൽ $action-ൽ പരാജയപ്പെട്ടു.';
  }

  @override
  String get errDeviceReturnedError => 'ഉപകരണം ഒരു പിശക് നൽകി.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation പ്രവർത്തനം കാലഹരണപ്പെട്ടു. ദയവായി വീണ്ടും ശ്രമിക്കുക.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds സെക്കൻഡുകൾക്ക് ശേഷം പ്രവർത്തനം അവസാനിച്ചു.';
  }

  @override
  String get errOperationTimedOut =>
      'ഓപ്പറേഷൻ സമയം കഴിഞ്ഞു. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'ഉപകരണങ്ങൾ കണ്ടെത്താൻ ക്രമീകരണങ്ങളിൽ ലോക്കൽ നെറ്റ്‌വർക്ക് അനുമതി പ്രവർത്തനക്ഷമമാക്കുക.';

  @override
  String get errCannotAccessLocalNetwork =>
      'പ്രാദേശിക നെറ്റ്‌വർക്ക് ആക്‌സസ് ചെയ്യാൻ കഴിയില്ല. ക്രമീകരണങ്ങളിൽ ലോക്കൽ നെറ്റ്‌വർക്ക് അനുമതി പ്രവർത്തനക്ഷമമാക്കുക.';

  @override
  String get errCheckWifiConnection =>
      'ഉപകരണങ്ങൾ കണ്ടെത്താനായില്ല. നിങ്ങളുടെ WiFi കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'കണ്ടെത്തൽ തടസ്സപ്പെട്ടു. $count ഉപകരണം(കൾ) കണ്ടെത്തി.';
  }

  @override
  String get errNoDevicesFound =>
      'ഉപകരണങ്ങളൊന്നും കണ്ടെത്തിയില്ല. ഉപകരണങ്ങൾ ഓണാക്കിയിട്ടുണ്ടെന്നും നിങ്ങളുടെ നെറ്റ്‌വർക്കിലേക്ക് കണക്‌റ്റ് ചെയ്‌തിട്ടുണ്ടെന്നും ഉറപ്പാക്കുക.';

  @override
  String get actionGetDeviceState => 'ഉപകരണ നില നേടുക';

  @override
  String get actionSetDeviceState => 'ഉപകരണ നില സജ്ജമാക്കുക';

  @override
  String get actionGetEnergyData => 'ഊർജ്ജ ഡാറ്റ നേടുക';

  @override
  String get actionScanNetworks => 'നെറ്റ്‌വർക്കുകൾക്കായി സ്കാൻ ചെയ്യുക';

  @override
  String get actionConnectWifi => 'WiFi-ലേക്ക് ബന്ധിപ്പിക്കുക';

  @override
  String get actionCheckConnection => 'കണക്ഷൻ നില പരിശോധിക്കുക';

  @override
  String get actionResetDevice => 'ഉപകരണം പുനഃസജ്ജമാക്കുക';

  @override
  String get actionPerform => 'പ്രവർത്തനം നടത്തുക';

  @override
  String get suggestTryRefreshing =>
      'ഉപകരണ ലിസ്റ്റ് പുതുക്കാൻ ശ്രമിക്കുക അല്ലെങ്കിൽ ഉപകരണം പ്രതികരിക്കുന്നുണ്ടോയെന്ന് പരിശോധിക്കുക.';

  @override
  String get suggestEnsurePoweredOn =>
      'ഉപകരണം ഓണാക്കിയിട്ടുണ്ടെന്നും നിങ്ങളുടെ WiFi നെറ്റ്‌വർക്കിലേക്ക് കണക്‌റ്റ് ചെയ്‌തിട്ടുണ്ടെന്നും ഉറപ്പാക്കുക.';

  @override
  String get suggestMakeSureSameWifi =>
      'നിങ്ങളുടെ ഫോണിൻ്റെ അതേ WiFi നെറ്റ്‌വർക്കിലേക്ക് നിങ്ങളുടെ ഫോൺ കണക്‌റ്റ് ചെയ്‌തിട്ടുണ്ടെന്ന് ഉറപ്പാക്കുക.';

  @override
  String get suggestCheckPhysical =>
      'ശ്രദ്ധ ആവശ്യമുള്ള ഏതെങ്കിലും ബട്ടണുകൾ അല്ലെങ്കിൽ സ്വിച്ചുകൾക്കായി ഫിസിക്കൽ ഉപകരണം പരിശോധിക്കുക.';

  @override
  String get suggestWaitAndTry => 'ഒരു നിമിഷം കാത്തിരുന്ന് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get suggestDeviceBusy =>
      'ഉപകരണം തിരക്കിലായിരിക്കാം. കുറച്ച് നിമിഷങ്ങൾക്കുള്ളിൽ വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'റദ്ദാക്കുക';

  @override
  String get commonClose => 'അടയ്ക്കുക';

  @override
  String get commonDone => 'ചെയ്തു';

  @override
  String get commonLater => 'പിന്നീട്';

  @override
  String get commonRefresh => 'പുതുക്കുക';

  @override
  String get commonTryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get commonOpenSettings => 'ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get commonGrant => 'ഗ്രാൻ്റ്';

  @override
  String get commonFix => 'പരിഹരിക്കുക';

  @override
  String get commonOn => 'ഓൺ';

  @override
  String get commonOff => 'ഓഫ്';

  @override
  String get commonOffline => 'ഓഫ്‌ലൈൻ';

  @override
  String get commonStatus => 'നില';

  @override
  String get commonName => 'പേര്';

  @override
  String get commonType => 'ടൈപ്പ് ചെയ്യുക';

  @override
  String get commonModel => 'മോഡൽ';

  @override
  String get commonManufacturer => 'നിർമ്മാതാവ്';

  @override
  String get commonSerial => 'സീരിയൽ';

  @override
  String get commonFirmware => 'ഫേംവെയർ';

  @override
  String get commonHost => 'ഹോസ്റ്റ്';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'രഹസ്യവാക്ക്';

  @override
  String get commonUnknownWifi => 'അജ്ഞാത Wi-Fi';

  @override
  String get commonNotConnected => 'ബന്ധിപ്പിച്ചിട്ടില്ല';

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
      other: '$seconds സെക്കൻഡ്',
      one: '1 സെക്കൻഡ്',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'സ്മാർട്ട് സ്വിച്ച്';

  @override
  String get deviceTypeLightSwitch => 'ലൈറ്റ് സ്വിച്ച്';

  @override
  String get deviceTypeDimmer => 'ഡിമ്മർ';

  @override
  String get deviceTypeInsightPlug => 'ഇൻസൈറ്റ് പ്ലഗ്';

  @override
  String get deviceTypeMotionSensor => 'മോഷൻ സെൻസർ';

  @override
  String get deviceTypeMaker => 'മേക്കർ';

  @override
  String get deviceTypeBridge => 'പാലം';

  @override
  String get deviceTypeCoffeeMaker => 'കോഫി മേക്കർ';

  @override
  String get deviceTypeCrockpot => 'ക്രോക്ക്പോട്ട്';

  @override
  String get deviceTypeHumidifier => 'ഹ്യുമിഡിഫയർ';

  @override
  String get deviceTypeOutdoorPlug => 'ഔട്ട്ഡോർ പ്ലഗ്';

  @override
  String get deviceTypeUnknown => 'അജ്ഞാത ഉപകരണം';

  @override
  String get pairingStepGetStarted => 'ആരംഭിക്കുക';

  @override
  String get pairingStepConnectToDevice => 'ഉപകരണത്തിലേക്ക് കണക്റ്റുചെയ്യുക';

  @override
  String get pairingStepFindDevice => 'ഉപകരണം കണ്ടെത്തുക';

  @override
  String get pairingStepSelectNetwork => 'നെറ്റ്‌വർക്ക് തിരഞ്ഞെടുക്കുക';

  @override
  String get pairingStepConfiguring => 'കോൺഫിഗർ ചെയ്യുന്നു';

  @override
  String get pairingStepReconnect => 'വീണ്ടും ബന്ധിപ്പിക്കുക';

  @override
  String get pairingStepFinalizing => 'അന്തിമമാക്കുന്നു';

  @override
  String get pairingStepSuccess => 'വിജയം';

  @override
  String get pairingStepError => 'പിശക്';

  @override
  String get homeToggleDebug => 'ഡീബഗ് മോഡ് ടോഗിൾ ചെയ്യുക';

  @override
  String get homeRefreshDevices => 'ഉപകരണങ്ങൾ പുതുക്കുക';

  @override
  String get homeSettings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get homeDismiss => 'പിരിച്ചുവിടുക';

  @override
  String get homeDiscovering => 'ഉപകരണങ്ങൾ കണ്ടെത്തുന്നു...';

  @override
  String get homeNoDevices => 'ഉപകരണങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get homeScanDevices => 'ഉപകരണങ്ങൾക്കായി സ്കാൻ ചെയ്യുക';

  @override
  String get homeLookingForMore => 'കൂടുതൽ ഉപകരണങ്ങൾക്കായി തിരയുന്നു...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഉപകരണങ്ങൾ കണ്ടെത്തി',
      one: 'ഒരു ഉപകരണം കണ്ടെത്തി',
      zero: 'ഉപകരണങ്ങളൊന്നും കണ്ടെത്തിയില്ല',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഉപകരണങ്ങൾ കണ്ടെത്തി, സ്കാൻ ചെയ്യുന്നു...',
      one: 'ഒരു ഉപകരണം കണ്ടെത്തി, സ്കാൻ ചെയ്യുന്നു...',
      zero: 'ഉപകരണങ്ങളൊന്നും കണ്ടെത്തിയില്ല, സ്കാൻ ചെയ്യുന്നു...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ഓട്ടോ';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi-ലേക്ക് കണക്‌റ്റ് ചെയ്‌തു';

  @override
  String get homePermissionExplanation =>
      'നിങ്ങളുടെ Wi-Fi വിശദാംശങ്ങൾ കണ്ടെത്താൻ ലൊക്കേഷൻ വിവരങ്ങൾ ഉപയോഗിക്കുന്നു. നിങ്ങളുടെ സ്മാർട്ട് സ്വിച്ചുകളും ഉപകരണങ്ങളും നിയന്ത്രിക്കാൻ പ്രാദേശിക നെറ്റ്‌വർക്ക് ആക്‌സസ് നിങ്ങളെ അനുവദിക്കുന്നു.';

  @override
  String get homeDebugLog => 'ഡീബഗ് ലോഗ്';

  @override
  String get homeClear => 'ക്ലിയർ';

  @override
  String get homeDebugEmpty =>
      'കണ്ടെത്തൽ ആരംഭിക്കാനും ലോഗുകൾ കാണാനും പുതുക്കുക ടാപ്പ് ചെയ്യുക...';

  @override
  String get homeProbeHint => 'IP:പോർട്ട് (ഉദാ. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'അന്വേഷണം';

  @override
  String get homeScanning => 'സ്കാൻ ചെയ്യുന്നു...';

  @override
  String get homeScanSubnet => 'മുഴുവൻ സബ്‌നെറ്റും സ്കാൻ ചെയ്യുക (iOS ഫിക്സ്)';

  @override
  String homePlatform(String platform, String version) {
    return 'പ്ലാറ്റ്ഫോം: $platform $version';
  }

  @override
  String get settingsTitle => 'ക്രമീകരണങ്ങൾ';

  @override
  String get settingsSectionNetwork => 'നെറ്റ്വർക്ക്';

  @override
  String get settingsSectionDeviceSetup => 'ഉപകരണ സജ്ജീകരണം';

  @override
  String get settingsSectionDiscovery => 'കണ്ടെത്തൽ';

  @override
  String get settingsSectionAbout => 'കുറിച്ച്';

  @override
  String get settingsSectionDebug => 'ഡീബഗ് ചെയ്യുക';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'അനുമതി ലഭിച്ചു! WiFi പേര്: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'ലൊക്കേഷൻ അനുവദിച്ചു, എന്നാൽ ലോക്കൽ നെറ്റ്‌വർക്ക് അനുമതിയും ആവശ്യമാണ്. ക്രമീകരണങ്ങൾ പരിശോധിക്കുക.';

  @override
  String get settingsLocationRequired => 'ലൊക്കേഷൻ അനുമതി ആവശ്യമാണ്';

  @override
  String get settingsLocationRequiredBody =>
      'നിങ്ങളുടെ WiFi നെറ്റ്‌വർക്ക് പേര് പ്രദർശിപ്പിക്കുന്നതിന്, iOS-ന് ലൊക്കേഷൻ അനുമതി ആവശ്യമാണ്.';

  @override
  String get settingsRequiredPermissions => 'ആവശ്യമായ അനുമതികൾ:';

  @override
  String get settingsPermissionList =>
      '1. ലൊക്കേഷൻ സേവനങ്ങൾ (\"ആപ്പ് ഉപയോഗിക്കുമ്പോൾ\")\n2. ലോക്കൽ നെറ്റ്‌വർക്ക്';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'ശ്രദ്ധിക്കുക: ലൊക്കേഷൻ അനുമതിയില്ലാതെ ഉപകരണം കണ്ടെത്തൽ പ്രവർത്തിക്കുന്നു. നിങ്ങളുടെ WiFi നെറ്റ്‌വർക്ക് നാമം പ്രദർശിപ്പിക്കാൻ മാത്രമാണ് ഈ അനുമതി ഉപയോഗിക്കുന്നത്.';

  @override
  String get settingsEnableLocation =>
      'ക്രമീകരണങ്ങളിൽ ലൊക്കേഷൻ പ്രവർത്തനക്ഷമമാക്കുക';

  @override
  String get settingsLocationDeniedBody =>
      'ലൊക്കേഷൻ അനുമതി നിഷേധിച്ചു. സിസ്റ്റം ക്രമീകരണങ്ങളിൽ നിന്ന് നിങ്ങൾക്ക് ഇത് പ്രവർത്തനക്ഷമമാക്കാം.';

  @override
  String get settingsStepsToEnable => 'പ്രവർത്തനക്ഷമമാക്കുന്നതിനുള്ള ഘട്ടങ്ങൾ:';

  @override
  String get settingsEnableLocationSteps =>
      '1. ക്രമീകരണങ്ങൾ തുറക്കുക\n2. \"Bit Switch\" എന്നതിലേക്ക് സ്ക്രോൾ ചെയ്യുക\n3. \"ലൊക്കേഷൻ\" ടാപ്പ് ചെയ്യുക\n4. \"ആപ്പ് ഉപയോഗിക്കുമ്പോൾ\" തിരഞ്ഞെടുക്കുക\n5. ഈ ആപ്പിലേക്ക് മടങ്ങി, പുതുക്കുക ബട്ടൺ ടാപ്പ് ചെയ്യുക';

  @override
  String get settingsLocationOnlyWifiName =>
      'ശ്രദ്ധിക്കുക: WiFi നാമം പ്രദർശിപ്പിക്കാൻ മാത്രം ലൊക്കേഷൻ അനുമതി ആവശ്യമാണ്. ഉപകരണ കണ്ടെത്തൽ ഇത് കൂടാതെ പ്രവർത്തിക്കുന്നു.';

  @override
  String get settingsAdditionalPermission => 'അധിക അനുമതി ആവശ്യമാണ്';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo ഉപകരണങ്ങൾ കണ്ടെത്തുന്നതിനും നിയന്ത്രിക്കുന്നതിനും ലോക്കൽ നെറ്റ്‌വർക്ക് അനുമതി ആവശ്യമാണ്.';

  @override
  String get settingsWifiNameNotVisible =>
      'നിങ്ങൾക്ക് ലൊക്കേഷൻ അനുമതിയുണ്ട്, എന്നാൽ WiFi പേര് ഇതുവരെ ദൃശ്യമല്ല.';

  @override
  String get settingsPleaseEnable => 'ദയവായി പ്രവർത്തനക്ഷമമാക്കുക:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. iPhone ക്രമീകരണങ്ങളിലേക്ക് പോകുക\n2. \"Bit Switch\" എന്നതിലേക്ക് താഴേക്ക് സ്ക്രോൾ ചെയ്യുക\n3. \"ലോക്കൽ നെറ്റ്‌വർക്ക്\" പ്രവർത്തനക്ഷമമാക്കുക';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS-ൽ ഉപകരണം കണ്ടെത്തുന്നതിനും WiFi നെയിം ആക്‌സസിനും ലോക്കൽ നെറ്റ്‌വർക്ക് അനുമതി ആവശ്യമാണ്.';

  @override
  String get settingsPairNewDevice => 'പുതിയ ഉപകരണം ജോടിയാക്കുക';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'ഒരു പുതിയ Wemo ഉപകരണം സജ്ജീകരിക്കുക';

  @override
  String get settingsDiscoveryTimeout => 'കണ്ടെത്തൽ സമയപരിധി';

  @override
  String get settingsRequestTimeout => 'അഭ്യർത്ഥന സമയപരിധി';

  @override
  String get settingsAutoRefresh => 'സ്വയമേവ പുതുക്കുക';

  @override
  String get settingsAutoRefreshOn =>
      'ഓൺ - ഡിവൈസ് സ്റ്റേറ്റുകൾ സ്വയമേവ പുതുക്കുന്നു';

  @override
  String get settingsAutoRefreshOff =>
      'ഓഫ് - മാനുവൽ പുതുക്കൽ ബട്ടൺ ഉപയോഗിക്കുക';

  @override
  String get settingsAutoRefreshInterval => 'സ്വയമേവ പുതുക്കിയ ഇടവേള';

  @override
  String get settingsAbout => 'ഏകദേശം Bit Switch';

  @override
  String get settingsVersion => 'പതിപ്പ്';

  @override
  String get settingsNetworkDiagnostics => 'നെറ്റ്‌വർക്ക് ഡയഗ്നോസ്റ്റിക്സ്';

  @override
  String get settingsShowDebug => 'ഡീബഗ് മോഡ് കാണിക്കുക';

  @override
  String get settingsShowDebugSubtitle =>
      'ഹോം സ്ക്രീനിൽ ഡീബഗ് നിയന്ത്രണങ്ങളും നെറ്റ്‌വർക്ക് ഡയഗ്നോസ്റ്റിക്സും കാണിക്കുക';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'ട്രബിൾഷൂട്ടിംഗിനായി ഹോം സ്ക്രീനിൽ ഡീബഗ് ഐക്കൺ കാണിക്കുക';

  @override
  String get settingsCurrentNetwork => 'നിലവിലെ നെറ്റ്‌വർക്ക്';

  @override
  String get settingsNetworkAccessStatus => 'നെറ്റ്‌വർക്ക് ആക്‌സസ് നില';

  @override
  String get settingsNetworkAccessGranted =>
      'പ്രാദേശിക നെറ്റ്‌വർക്ക് ആക്‌സസ് ലഭ്യമാണ്';

  @override
  String get settingsNetworkAccessMissing =>
      'അധിക അനുമതികൾ ആവശ്യമായി വന്നേക്കാം';

  @override
  String get settingsChecking => 'പരിശോധിക്കുന്നു...';

  @override
  String get settingsEnableLocalNetwork =>
      'ക്രമീകരണങ്ങളിൽ ലോക്കൽ നെറ്റ്‌വർക്ക് പ്രവർത്തനക്ഷമമാക്കുക';

  @override
  String get settingsNotConnectedWifi => 'WiFi-ലേക്ക് ബന്ധിപ്പിച്ചിട്ടില്ല';

  @override
  String get settingsPermissionRequiredView => 'കാണുന്നതിന് അനുമതി ആവശ്യമാണ്';

  @override
  String get settingsAllPermissionsGranted => 'എല്ലാ അനുമതികളും അനുവദിച്ചു';

  @override
  String get settingsLocalNetworkNeeded =>
      'ലോക്കൽ നെറ്റ്‌വർക്ക് അനുമതി ആവശ്യമാണ്';

  @override
  String get settingsLocationNeeded => 'ലൊക്കേഷൻ അനുമതി ആവശ്യമാണ്';

  @override
  String get settingsRefreshPermissions => 'അനുമതികൾ പുതുക്കുക';

  @override
  String get settingsAboutWifiPermission => 'WiFi നെയിം പെർമിഷനെ കുറിച്ച്';

  @override
  String get settingsWifiPermissionExplanation =>
      'നിങ്ങളുടെ ഫോണും Wemo ഉപകരണങ്ങളും ഒരേ നെറ്റ്‌വർക്കിലാണെന്ന് സ്ഥിരീകരിക്കാൻ നിങ്ങളുടെ WiFi പേര് സഹായിക്കുന്നു.';

  @override
  String get settingsWifiPermissionIos =>
      'iOS-ൽ, നിങ്ങളുടെ WiFi നെറ്റ്‌വർക്ക് പേര് പ്രദർശിപ്പിക്കുന്നതിന് ലൊക്കേഷൻ അനുമതി ആവശ്യമാണ്.';

  @override
  String get settingsImportant => 'പ്രധാനപ്പെട്ടത്:';

  @override
  String get settingsPrivacyNote =>
      '• നിങ്ങളുടെ ലൊക്കേഷൻ ഒരിക്കലും ട്രാക്ക് ചെയ്യപ്പെടില്ല\n• ലൊക്കേഷൻ ഡാറ്റയൊന്നും ശേഖരിക്കുകയോ സംഭരിക്കുകയോ ചെയ്യുന്നില്ല';

  @override
  String get settingsWifiPermissionImportant =>
      '• ഈ അനുമതിയില്ലാതെ ഉപകരണം കണ്ടെത്തൽ പ്രവർത്തിക്കുന്നു\n• WiFi പേര് കാണിക്കാൻ മാത്രമേ ഇത് ആവശ്യമുള്ളൂ\n• ലൊക്കേഷൻ ഡാറ്റയൊന്നും ശേഖരിക്കുകയോ സംഭരിക്കുകയോ ചെയ്യുന്നില്ല';

  @override
  String get settingsGrantPermission => 'അനുമതി നൽകുക';

  @override
  String get settingsHowLongScan => 'ഉപകരണങ്ങൾക്കായി സ്‌കാൻ ചെയ്യേണ്ട സമയം:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'ഡിസ്കവറി ടൈംഔട്ട് $seconds സെക്കൻഡ് ആയി സജ്ജീകരിച്ചു';
  }

  @override
  String get settingsHowLongResponses =>
      'ഉപകരണ പ്രതികരണങ്ങൾക്കായി എത്ര സമയം കാത്തിരിക്കണം:';

  @override
  String get settingsIncreaseTimeoutHint =>
      '\"കണക്ഷൻ അടച്ചു\" പിശകുകൾ കാണുകയാണെങ്കിൽ ഈ മൂല്യം വർദ്ധിപ്പിക്കുക.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'അഭ്യർത്ഥന ടൈംഔട്ട് $seconds സെക്കൻഡ് ആയി സജ്ജീകരിച്ചു';
  }

  @override
  String get settingsSetRefreshInterval =>
      'യാന്ത്രിക അവസ്ഥ പുതുക്കുന്നതിനുള്ള ഇടവേള സജ്ജമാക്കുക:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'പുതുക്കിയ ഇടവേള $seconds സെക്കൻഡിലേക്ക് സജ്ജമാക്കി';
  }

  @override
  String get settingsAboutTagline =>
      'നിങ്ങളുടെ Wemo ഉപകരണങ്ങൾക്കായി വൃത്തിയുള്ളതും സ്വകാര്യവുമായ പ്രാദേശിക കൺട്രോളർ.';

  @override
  String get settingsAboutDescription =>
      'ക്ലൗഡ് ഡിപൻഡൻസികളില്ലാതെ ഉപകരണങ്ങൾ കണ്ടെത്തുന്നതിനും നിയന്ത്രിക്കുന്നതിനും Bit Switch പ്രാദേശിക നെറ്റ്‌വർക്ക് കണ്ടെത്തൽ ഉപയോഗിക്കുന്നു.';

  @override
  String get settingsVersionValue => 'പതിപ്പ് 1.0.1';

  @override
  String get settingsProtocol => 'പ്രോട്ടോക്കോൾ: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'മൾട്ടികാസ്റ്റ് വിലാസം: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'ഉപകരണ പോർട്ടുകൾ: 49152-49159';

  @override
  String get settingsControlProtocol =>
      'നിയന്ത്രണ പ്രോട്ടോക്കോൾ: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'നുറുങ്ങ്: നിങ്ങളുടെ Wemo ഉപകരണങ്ങളുടെ അതേ നെറ്റ്‌വർക്കിലാണ് നിങ്ങളുടെ ഉപകരണമെന്നും UDP മൾട്ടികാസ്റ്റ് തടഞ്ഞിട്ടില്ലെന്നും ഉറപ്പാക്കുക.';

  @override
  String get settingsDevicePaired =>
      'ഉപകരണം ജോടിയാക്കി! ഉപകരണ ലിസ്റ്റ് പുതുക്കുന്നു...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'ഓരോ അഭ്യർത്ഥനയ്ക്കും $seconds സെക്കൻഡ്';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'ഓരോ $seconds-കളും പുതുക്കുന്നു';
  }

  @override
  String get pairingTitle => 'പുതിയ ഉപകരണം ജോടിയാക്കുക';

  @override
  String get pairingSetupTitle => 'നിങ്ങളുടെ Wemo ഉപകരണം സജ്ജീകരിക്കുക';

  @override
  String get pairingBeforeBegin =>
      'നിങ്ങൾ ആരംഭിക്കുന്നതിന് മുമ്പ്, നിങ്ങളുടെ Wemo ഉപകരണം സജ്ജീകരണ മോഡിലാണെന്ന് ഉറപ്പാക്കുക:';

  @override
  String get pairingPlugInTitle => 'നിങ്ങളുടെ Wemo ഉപകരണം പ്ലഗ് ഇൻ ചെയ്യുക';

  @override
  String get pairingPlugInBody =>
      'ഇത് പവറിലേക്ക് ബന്ധിപ്പിച്ച് അത് ആരംഭിക്കുന്നത് വരെ കാത്തിരിക്കുക.';

  @override
  String get pairingBlinkingLedTitle => 'മിന്നുന്ന LED നോക്കുക';

  @override
  String get pairingBlinkingLedBody =>
      'മിന്നുന്ന LED ഉപകരണം സജ്ജീകരണ മോഡിൽ ആണെന്ന് സൂചിപ്പിക്കുന്നു.';

  @override
  String get pairingCheckWifiTitle => 'WiFi നെറ്റ്‌വർക്കിനായി പരിശോധിക്കുക';

  @override
  String get pairingCheckWifiBody =>
      'ഉപകരണം \"WeMo.XXXXX\" എന്ന പേരിൽ ഒരു നെറ്റ്‌വർക്ക് പ്രക്ഷേപണം ചെയ്യും.';

  @override
  String get pairingSolidLedHint =>
      'LED സോളിഡ് ആണെങ്കിൽ, സജ്ജീകരണ മോഡിൽ പ്രവേശിക്കാൻ റീസെറ്റ് ബട്ടൺ 5 സെക്കൻഡ് പിടിക്കുക.';

  @override
  String get pairingStart => 'ജോടിയാക്കൽ ആരംഭിക്കുക';

  @override
  String get pairingConnectWifiTitle => 'WiFi ഉപകരണത്തിലേക്ക് കണക്റ്റുചെയ്യുക';

  @override
  String get pairingConnectWifiBody =>
      'നിങ്ങളുടെ ഫോണിൻ്റെ WiFi ക്രമീകരണങ്ങൾ തുറന്ന് \"WeMo\" എന്ന് തുടങ്ങുന്ന നെറ്റ്‌വർക്കിലേക്ക് കണക്റ്റുചെയ്യുക.';

  @override
  String get pairingCurrentNetwork => 'നിലവിലെ നെറ്റ്‌വർക്ക്';

  @override
  String get pairingConnectedToDevice =>
      'Wemo ഉപകരണത്തിലേക്ക് കണക്‌റ്റ് ചെയ്‌തു!';

  @override
  String get pairingOpenWifiSettings => 'WiFi ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get pairingConnectedButton => 'ഞാൻ ബന്ധിപ്പിച്ചു';

  @override
  String get pairingLookingForDevice =>
      'നിങ്ങളുടെ Wemo ഉപകരണത്തിനായി തിരയുന്നു...';

  @override
  String get pairingManualIpPrompt => 'അല്ലെങ്കിൽ IP ഉപകരണം സ്വമേധയാ നൽകുക:';

  @override
  String get pairingDeviceIp => 'ഉപകരണം IP വിലാസം';

  @override
  String get pairingConnectToIp => 'IP-ലേക്ക് കണക്റ്റുചെയ്യുക';

  @override
  String get pairingSelectHomeWifi =>
      'നിങ്ങളുടെ ഹോം WiFi നെറ്റ്‌വർക്ക് തിരഞ്ഞെടുക്കുക:';

  @override
  String get pairingRefreshNetworks => 'നെറ്റ്‌വർക്കുകൾ പുതുക്കുക';

  @override
  String get pairingIosScanLimitation =>
      'അടുത്തുള്ള Wi-Fi നെറ്റ്‌വർക്കുകൾക്കായി മൂന്നാം കക്ഷി ആപ്പുകൾ സ്കാൻ ചെയ്യുന്നതിൽ നിന്ന് iOS കർശനമായി വിലക്കുന്നു. നിങ്ങൾ SSID നെറ്റ്‌വർക്ക് സ്വമേധയാ നൽകേണ്ടി വന്നേക്കാം.';

  @override
  String get pairingNoNetworks => 'നെറ്റ്‌വർക്കുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get pairingScanAgain => 'വീണ്ടും സ്കാൻ ചെയ്യുക';

  @override
  String get pairingWifiPassword => 'WiFi പാസ്‌വേഡ്';

  @override
  String get pairingConnect => 'ബന്ധിപ്പിക്കുക';

  @override
  String get pairingEnterNetworkManually => 'നെറ്റ്‌വർക്ക് സ്വമേധയാ നൽകുക';

  @override
  String get pairingEnterNetworkName => 'നെറ്റ്‌വർക്ക് പേര് നൽകുക:';

  @override
  String get pairingNetworkName => 'നെറ്റ്‌വർക്കിൻ്റെ പേര് (SSID)';

  @override
  String get pairingUseNetwork => 'ഈ നെറ്റ്‌വർക്ക് ഉപയോഗിക്കുക';

  @override
  String get pairingConfiguringDevice => 'ഉപകരണം കോൺഫിഗർ ചെയ്യുന്നു...';

  @override
  String get pairingConfiguringWait =>
      'ഉപകരണം നിങ്ങളുടെ നെറ്റ്‌വർക്കിലേക്ക് കണക്‌റ്റ് ചെയ്യുമ്പോൾ ദയവായി കാത്തിരിക്കുക.';

  @override
  String get pairingReconnectTitle =>
      'നിങ്ങളുടെ നെറ്റ്‌വർക്കിലേക്ക് വീണ്ടും കണക്റ്റുചെയ്യുക';

  @override
  String pairingReconnectBody(String ssid) {
    return 'നിങ്ങളുടെ Wemo ഉപകരണം ഇപ്പോൾ \"$ssid\"-ലേക്ക് കണക്‌റ്റ് ചെയ്യുന്നു. അതേ നെറ്റ്‌വർക്കിലേക്ക് നിങ്ങളുടെ ഫോൺ വീണ്ടും കണക്‌റ്റ് ചെയ്യുക.';
  }

  @override
  String get pairingBackOnHome => 'തിരികെ ഹോം നെറ്റ്‌വർക്കിലേക്ക്!';

  @override
  String get pairingReconnectedButton => 'ഞാൻ വീണ്ടും കണക്‌റ്റ് ചെയ്‌തു';

  @override
  String get pairingFinalizingSetup => 'സജ്ജീകരണം പൂർത്തിയാക്കുന്നു...';

  @override
  String get pairingSetupComplete => 'സജ്ജീകരണം പൂർത്തിയായി!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid-ലേക്ക് കണക്‌റ്റ് ചെയ്‌തു';
  }

  @override
  String get pairingDeviceReady =>
      'നിങ്ങളുടെ ഉപകരണം ഇപ്പോൾ സജ്ജീകരിച്ചിരിക്കുന്നു, അത് ഹോം സ്ക്രീനിൽ ദൃശ്യമാകും.';

  @override
  String get pairingSomethingWrong => 'എന്തോ കുഴപ്പം സംഭവിച്ചു';

  @override
  String get pairingStartOver => 'വീണ്ടും ആരംഭിക്കുക';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi ക്രമീകരണങ്ങൾ തുറക്കാൻ കഴിഞ്ഞില്ല. ദയവായി അവ നേരിട്ട് തുറക്കുക.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'നിങ്ങളുടെ ഫോൺ ഇപ്പോഴും \"$ssid\"-ലേക്ക് കണക്‌റ്റ് ചെയ്‌തിരിക്കുന്നു. ദയവായി WiFi ക്രമീകരണങ്ങൾ തുറക്കുക, WeMo ഉപകരണ നെറ്റ്‌വർക്കിലേക്ക് കണക്‌റ്റ് ചെയ്‌തതിന് ശേഷം വീണ്ടും ശ്രമിക്കുക.';
  }

  @override
  String get pairingLoadingLooking => 'ഉപകരണത്തിനായി തിരയുന്നു...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip-ൽ WeMo ഉപകരണം കണ്ടെത്താൻ കഴിഞ്ഞില്ല. നിങ്ങളുടെ ഫോൺ WeMo WiFi നെറ്റ്‌വർക്കിലേക്ക് കണക്‌റ്റ് ചെയ്‌തിട്ടുണ്ടെന്ന് ഉറപ്പുവരുത്തുക, തുടർന്ന് വീണ്ടും ശ്രമിക്കുക. നിങ്ങൾക്ക് IP ഉപകരണം സ്വമേധയാ നൽകാനും കഴിയും.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'ഉപകരണം കണ്ടെത്തുന്നതിൽ പിശക്: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip-ലേക്ക് ബന്ധിപ്പിക്കുന്നു...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip-ൽ ഒരു ഉപകരണവും കണ്ടെത്തിയില്ല';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip-ലേക്ക് ബന്ധിപ്പിക്കുന്നതിൽ പിശക്: $error';
  }

  @override
  String get pairingLoadingScanning =>
      'നെറ്റ്‌വർക്കുകൾക്കായി സ്‌കാൻ ചെയ്യുന്നു...';

  @override
  String pairingErrorScanning(String error) {
    return 'നെറ്റ്‌വർക്കുകൾ സ്കാൻ ചെയ്യാൻ കഴിഞ്ഞില്ല: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'ദയവായി ഒരു നെറ്റ്‌വർക്ക് തിരഞ്ഞെടുത്ത് പാസ്‌വേഡ് നൽകുക.';

  @override
  String get pairingLoadingSendingCredentials =>
      'നെറ്റ്‌വർക്ക് ക്രെഡൻഷ്യലുകൾ അയയ്‌ക്കുന്നു...';

  @override
  String get pairingLoadingWaitingConnection =>
      'ഉപകരണം കണക്റ്റുചെയ്യുന്നതിനായി കാത്തിരിക്കുന്നു...';

  @override
  String pairingErrorConfigure(String error) {
    return 'നെറ്റ്‌വർക്ക് കോൺഫിഗർ ചെയ്യുന്നതിൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'പാസ്‌വേഡ് വളരെ ചെറുതാണ്. ദയവായി പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'ബന്ധിപ്പിക്കുന്നതിൽ പരാജയപ്പെട്ടു. ദയവായി പാസ്‌വേഡ് പരിശോധിക്കുക.';

  @override
  String get pairingErrorConnectionTimeout =>
      'കണക്ഷൻ കാലഹരണപ്പെട്ടു. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'സജ്ജീകരണം പൂർത്തിയാക്കുന്നതിൽ പിശക്: $error';
  }

  @override
  String get detailRefreshState => 'അവസ്ഥ പുതുക്കുക';

  @override
  String get detailDeviceInfo => 'ഉപകരണ വിവരം';

  @override
  String get detailAdvanced => 'വിപുലമായ';

  @override
  String get detailWifiSetup => 'WiFi സജ്ജീകരണം';

  @override
  String get detailReset => 'പുനഃസജ്ജമാക്കുക';

  @override
  String get detailUnreachable =>
      'ഉപകരണം ലഭ്യമല്ല. നെറ്റ്‌വർക്ക് കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String detailFailedToggle(String error) {
    return 'ടോഗിൾ ചെയ്യാനായില്ല: $error';
  }

  @override
  String get detailDeviceInformation => 'ഉപകരണ വിവരം';

  @override
  String get detailPermissionScan =>
      'WiFi നെറ്റ്‌വർക്കുകൾ സ്കാൻ ചെയ്യുന്നതിന് അനുമതി ആവശ്യമാണ്.';

  @override
  String get detailScanFailedManual =>
      'നെറ്റ്‌വർക്കുകൾ സ്കാൻ ചെയ്യാനായില്ല. നെറ്റ്‌വർക്കിൻ്റെ പേര് സ്വമേധയാ നൽകുക.';

  @override
  String get detailEnterNetworkNameError =>
      'ദയവായി ഒരു നെറ്റ്‌വർക്ക് പേര് നൽകുക അല്ലെങ്കിൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get detailEnterPasswordError => 'ദയവായി നെറ്റ്‌വർക്ക് പാസ്‌വേഡ് നൽകുക';

  @override
  String get detailWifiSuccess => 'WiFi വിജയകരമായി ക്രമീകരിച്ചു!';

  @override
  String get detailScanNetworks => 'നെറ്റ്‌വർക്കുകൾക്കായി സ്കാൻ ചെയ്യുക';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" എന്നതിനായി WiFi നെറ്റ്‌വർക്ക് കോൺഫിഗർ ചെയ്യുക';
  }

  @override
  String get detailAvailableNetworks => 'ലഭ്യമായ നെറ്റ്‌വർക്കുകൾ';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'അടുത്തുള്ള Wi-Fi നെറ്റ്‌വർക്കുകൾക്കായി മൂന്നാം കക്ഷി ആപ്പുകൾ സ്കാൻ ചെയ്യുന്നതിൽ നിന്ന് iOS കർശനമായി വിലക്കുന്നു. താഴെ നിങ്ങളുടെ നെറ്റ്‌വർക്കിൻ്റെ പേര് നേരിട്ട് നൽകുക.';

  @override
  String get detailTapRefreshScan =>
      'നെറ്റ്‌വർക്കുകൾക്കായി സ്കാൻ ചെയ്യാൻ പുതുക്കുക ടാപ്പ് ചെയ്യുക';

  @override
  String get detailEnterNetworkBelow =>
      'നിങ്ങളുടെ നെറ്റ്‌വർക്ക് പേര് ചുവടെ നൽകുക';

  @override
  String get detailNetworkCredentials => 'നെറ്റ്‌വർക്ക് ക്രെഡൻഷ്യലുകൾ';

  @override
  String get detailConnecting => 'നെറ്റ്‌വർക്കിലേക്ക് കണക്‌റ്റ് ചെയ്യുന്നു...';

  @override
  String get detailConnected => 'വിജയകരമായി ബന്ധിപ്പിച്ചു!';

  @override
  String get detailPasswordShort => 'പാസ്‌വേഡ് വളരെ ചെറുതാണ്';

  @override
  String get detailAuthenticationFailed =>
      'പ്രാമാണീകരണം പരാജയപ്പെട്ടു - പാസ്‌വേഡ് പരിശോധിക്കുക';

  @override
  String get detailConnectionFailed => 'കണക്ഷൻ പരാജയപ്പെട്ടു';

  @override
  String get detailSelectReset => 'റീസെറ്റ് ചെയ്യേണ്ടത് തിരഞ്ഞെടുക്കുക';

  @override
  String get detailResetSchedulesWarning =>
      '• എല്ലാ ഷെഡ്യൂളുകളും ഓട്ടോമേഷൻ നിയമങ്ങളും ഇല്ലാതാക്കപ്പെടും';

  @override
  String get detailResetWifiWarning => '• WiFi ക്രമീകരണങ്ങൾ മായ്‌ക്കപ്പെടും';

  @override
  String get detailSetupAgainWarning =>
      '• നിങ്ങൾ ഉപകരണം വീണ്ടും സജ്ജീകരിക്കേണ്ടതുണ്ട്';

  @override
  String get detailUnreachableWarning =>
      '• ഉപകരണം താൽക്കാലികമായി ലഭ്യമല്ലാതായി മാറിയേക്കാം';

  @override
  String get detailConfirmReset => 'റീസെറ്റ് സ്ഥിരീകരിക്കുക';

  @override
  String detailConfirmResetDevice(String device) {
    return '\"$device\" പുനഃസജ്ജമാക്കണമെന്ന് തീർച്ചയാണോ?';
  }

  @override
  String get detailThisWill => 'ഇത് ചെയ്യും:';

  @override
  String get detailCannotUndo => 'ഈ പ്രവർത്തനം പഴയപടിയാക്കാനാകില്ല.';

  @override
  String get detailYesReset => 'അതെ, റീസെറ്റ് ചെയ്യുക';

  @override
  String get detailResetSuccess => 'ഉപകരണം റീസെറ്റ് ചെയ്തു';

  @override
  String get detailResetRemote => 'ഉപകരണം വിദൂരമായി പുനഃസജ്ജമാക്കും';

  @override
  String get detailResetFailed => 'റീസെറ്റ് പരാജയപ്പെട്ടു';

  @override
  String get detailFactoryReset => 'ഫാക്ടറി റീസെറ്റ്';

  @override
  String get detailFactoryResetWarning =>
      'ഇത് എല്ലാ ക്രമീകരണങ്ങളും മായ്‌ക്കുകയും ഉപകരണത്തെ ഫാക്ടറി ഡിഫോൾട്ടുകളിലേക്ക് പുനഃസ്ഥാപിക്കുകയും ചെയ്യും. നിങ്ങൾ ഉപകരണം വീണ്ടും സജ്ജീകരിക്കേണ്ടതുണ്ട്.\n\nഈ പ്രവർത്തനം പഴയപടിയാക്കാനാകില്ല.';

  @override
  String get detailFactoryResetInitiated => 'ഫാക്ടറി റീസെറ്റ് ആരംഭിച്ചു';

  @override
  String get detailResetDevice => 'ഉപകരണം പുനഃസജ്ജമാക്കുക';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" എന്നതിനായുള്ള ഓപ്‌ഷനുകൾ പുനഃസജ്ജമാക്കുക';
  }

  @override
  String get detailResetUserData => 'ഉപയോക്തൃ ഡാറ്റ പുനഃസജ്ജമാക്കുക';

  @override
  String get detailResetUserDataSubtitle =>
      'ഷെഡ്യൂളുകളും നിയമങ്ങളും മായ്‌ക്കുന്നു';

  @override
  String get detailResetWifi => 'WiFi ക്രമീകരണങ്ങൾ പുനഃസജ്ജമാക്കുക';

  @override
  String get detailResetWifiSubtitle => 'ഉപകരണം വീണ്ടും സജ്ജീകരിക്കേണ്ടതുണ്ട്';

  @override
  String get widgetBrightness => 'തെളിച്ചം';

  @override
  String get widgetEnergyStatistics => 'എനർജി സ്റ്റാറ്റിസ്റ്റിക്സ്';

  @override
  String get widgetCurrentPower => 'നിലവിലെ ശക്തി';

  @override
  String get widgetToday => 'ഇന്ന്';

  @override
  String get widgetTotal => 'ആകെ';

  @override
  String get widgetOnTimeToday => 'ഇന്ന് കൃത്യസമയത്ത്';

  @override
  String get widgetTotalOnTime => 'ആകെ കൃത്യസമയത്ത്';

  @override
  String get widgetStandby => 'സ്റ്റാൻഡ്ബൈ';

  @override
  String get widgetUnknown => 'അജ്ഞാതം';

  @override
  String get widgetOpenNetwork => 'നെറ്റ്‌വർക്ക് തുറക്കുക';

  @override
  String get widgetWepInsecure => 'WEP (സുരക്ഷിതമല്ല)';
}
