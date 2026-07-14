// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'పరికరం ఈ చర్యకు మద్దతు ఇవ్వదు.';

  @override
  String get errInvalidArgs => 'పరికరానికి చెల్లని వాదనలు పంపబడ్డాయి.';

  @override
  String get errActionFailed =>
      'అభ్యర్థించిన చర్యను అమలు చేయడంలో పరికరం విఫలమైంది.';

  @override
  String get errInvalidValue => 'చెల్లని విలువ అందించబడింది.';

  @override
  String get errValueOutOfRange => 'విలువ ఆమోదయోగ్యమైన పరిధికి మించి ఉంది.';

  @override
  String get errFeatureNotAvailable => 'ఈ పరికరంలో ఈ ఫీచర్ అందుబాటులో లేదు.';

  @override
  String get errOutOfMemory =>
      'పరికరం మెమరీ అయిపోయింది. తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get errManualActionRequired => 'పరికరంలో మాన్యువల్ చర్య అవసరం.';

  @override
  String get errActionNotAuthorized => 'ఈ చర్యకు అధికారం లేదు.';

  @override
  String get errUnexpected =>
      'ఊహించని లోపం సంభవించింది. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get errDeviceUnreachableOffline =>
      'పరికరాన్ని చేరుకోవడం సాధ్యపడలేదు. ఇది ఆఫ్‌లైన్‌లో లేదా వేరే నెట్‌వర్క్‌లో ఉండవచ్చు.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts ప్రయత్నాల తర్వాత అభ్యర్థన సమయం ముగిసింది. పరికరం ఆఫ్‌లైన్‌లో ఉండవచ్చు.';
  }

  @override
  String get errRequestTimedOut =>
      'అభ్యర్థన సమయం ముగిసింది. పరికరం ఆఫ్‌లైన్‌లో ఉండవచ్చు.';

  @override
  String get errNoRouteToHost =>
      'పరికరాన్ని చేరుకోలేరు. దయచేసి మీ WiFi కనెక్షన్‌ని తనిఖీ చేయండి.';

  @override
  String get errHostUnreachable =>
      'పరికరం అందుబాటులో లేదు. దయచేసి ఇది ఆన్ చేయబడిందని మరియు WiFiకి కనెక్ట్ చేయబడిందని నిర్ధారించుకోండి.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts ప్రయత్నాల తర్వాత పరికరంతో కమ్యూనికేట్ చేయడం సాధ్యపడలేదు.';
  }

  @override
  String get errNetworkErrorComm =>
      'నెట్‌వర్క్ లోపం: పరికరంతో కమ్యూనికేట్ చేయడం సాధ్యపడలేదు.';

  @override
  String get errActionNotAuthorizedDevice => 'పరికరంలో ఈ చర్యకు అధికారం లేదు.';

  @override
  String get errDeviceServiceNotFound =>
      'పరికర సేవ కనుగొనబడలేదు. పరికరానికి ఫర్మ్‌వేర్ నవీకరణ అవసరం కావచ్చు.';

  @override
  String get errDeviceEncounteredError =>
      'పరికరం అభ్యర్థనను ప్రాసెస్ చేయడంలో లోపాన్ని ఎదుర్కొంది.';

  @override
  String get errDeviceInternalError => 'పరికరం అంతర్గత లోపాన్ని అందించింది.';

  @override
  String get errDeviceTempUnavailable =>
      'పరికరం తాత్కాలికంగా అందుబాటులో లేదు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'పరికరం లోపాన్ని అందించింది (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'పరికరంలో $action విఫలమైంది.';
  }

  @override
  String get errDeviceReturnedError => 'పరికరం లోపాన్ని అందించింది.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation ఆపరేషన్ సమయం ముగిసింది. దయచేసి మళ్లీ ప్రయత్నించండి.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds సెకన్ల తర్వాత ఆపరేషన్ సమయం ముగిసింది.';
  }

  @override
  String get errOperationTimedOut =>
      'ఆపరేషన్ సమయం ముగిసింది. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'పరికరాలను కనుగొనడానికి దయచేసి సెట్టింగ్‌లలో స్థానిక నెట్‌వర్క్ అనుమతిని ప్రారంభించండి.';

  @override
  String get errCannotAccessLocalNetwork =>
      'స్థానిక నెట్‌వర్క్‌ని యాక్సెస్ చేయలేరు. దయచేసి సెట్టింగ్‌లలో స్థానిక నెట్‌వర్క్ అనుమతిని ప్రారంభించండి.';

  @override
  String get errCheckWifiConnection =>
      'పరికరాలను కనుగొనడం సాధ్యం కాలేదు. దయచేసి మీ WiFi కనెక్షన్‌ని తనిఖీ చేయండి.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'డిస్కవరీకి అంతరాయం ఏర్పడింది. $count పరికరం(లు) కనుగొనబడ్డాయి.';
  }

  @override
  String get errNoDevicesFound =>
      'పరికరాలు ఏవీ కనుగొనబడలేదు. దయచేసి పరికరాలు పవర్ ఆన్ చేయబడి, మీ నెట్‌వర్క్‌కి కనెక్ట్ చేయబడి ఉన్నాయని నిర్ధారించుకోండి.';

  @override
  String get actionGetDeviceState => 'పరికర స్థితిని పొందండి';

  @override
  String get actionSetDeviceState => 'పరికర స్థితిని సెట్ చేయండి';

  @override
  String get actionGetEnergyData => 'శక్తి డేటా పొందండి';

  @override
  String get actionScanNetworks => 'నెట్‌వర్క్‌ల కోసం స్కాన్ చేయండి';

  @override
  String get actionConnectWifi => 'WiFiకి కనెక్ట్ చేయండి';

  @override
  String get actionCheckConnection => 'కనెక్షన్ స్థితిని తనిఖీ చేయండి';

  @override
  String get actionResetDevice => 'పరికరాన్ని రీసెట్ చేయండి';

  @override
  String get actionPerform => 'చర్య జరుపుము';

  @override
  String get suggestTryRefreshing =>
      'పరికర జాబితాను రిఫ్రెష్ చేయడానికి ప్రయత్నించండి లేదా పరికరం ప్రతిస్పందిస్తుందో లేదో తనిఖీ చేయండి.';

  @override
  String get suggestEnsurePoweredOn =>
      'పరికరం పవర్ ఆన్ చేయబడిందని మరియు మీ WiFi నెట్‌వర్క్‌కి కనెక్ట్ చేయబడిందని నిర్ధారించుకోండి.';

  @override
  String get suggestMakeSureSameWifi =>
      'మీ ఫోన్ మీ పరికరాల వలె అదే WiFi నెట్‌వర్క్‌కి కనెక్ట్ చేయబడిందని నిర్ధారించుకోండి.';

  @override
  String get suggestCheckPhysical =>
      'శ్రద్ధ వహించాల్సిన బటన్లు లేదా స్విచ్‌ల కోసం భౌతిక పరికరాన్ని తనిఖీ చేయండి.';

  @override
  String get suggestWaitAndTry => 'ఒక క్షణం వేచి ఉండి, మళ్లీ ప్రయత్నించండి.';

  @override
  String get suggestDeviceBusy =>
      'పరికరం బిజీగా ఉండవచ్చు. కొన్ని సెకన్లలో మళ్లీ ప్రయత్నించండి.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'రద్దు చేయి';

  @override
  String get commonClose => 'మూసివేయి';

  @override
  String get commonDone => 'పూర్తయింది';

  @override
  String get commonLater => 'తరువాత';

  @override
  String get commonRefresh => 'రిఫ్రెష్ చేయండి';

  @override
  String get commonTryAgain => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get commonOpenSettings => 'సెట్టింగ్‌లను తెరవండి';

  @override
  String get commonGrant => 'గ్రాంట్';

  @override
  String get commonFix => 'పరిష్కరించండి';

  @override
  String get commonOn => 'ఆన్';

  @override
  String get commonOff => 'ఆఫ్';

  @override
  String get commonOffline => 'ఆఫ్‌లైన్';

  @override
  String get commonStatus => 'స్థితి';

  @override
  String get commonName => 'పేరు';

  @override
  String get commonType => 'టైప్ చేయండి';

  @override
  String get commonModel => 'మోడల్';

  @override
  String get commonManufacturer => 'తయారీదారు';

  @override
  String get commonSerial => 'సీరియల్';

  @override
  String get commonFirmware => 'ఫర్మ్‌వేర్';

  @override
  String get commonHost => 'హోస్ట్';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'పాస్వర్డ్';

  @override
  String get commonUnknownWifi => 'తెలియదు Wi-Fi';

  @override
  String get commonNotConnected => 'కనెక్ట్ కాలేదు';

  @override
  String commonSecondsShort(int seconds) {
    return '$secondsలు';
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
      other: '$seconds సెకన్లు',
      one: '1 సెకను',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'స్మార్ట్ స్విచ్';

  @override
  String get deviceTypeLightSwitch => 'లైట్ స్విచ్';

  @override
  String get deviceTypeDimmer => 'డిమ్మర్';

  @override
  String get deviceTypeInsightPlug => 'అంతర్దృష్టి ప్లగ్';

  @override
  String get deviceTypeMotionSensor => 'మోషన్ సెన్సార్';

  @override
  String get deviceTypeMaker => 'మేకర్';

  @override
  String get deviceTypeBridge => 'వంతెన';

  @override
  String get deviceTypeCoffeeMaker => 'కాఫీ మేకర్';

  @override
  String get deviceTypeCrockpot => 'క్రోక్పాట్';

  @override
  String get deviceTypeHumidifier => 'హ్యూమిడిఫైయర్';

  @override
  String get deviceTypeOutdoorPlug => 'అవుట్‌డోర్ ప్లగ్';

  @override
  String get deviceTypeUnknown => 'తెలియని పరికరం';

  @override
  String get pairingStepGetStarted => 'ప్రారంభించండి';

  @override
  String get pairingStepConnectToDevice => 'పరికరానికి కనెక్ట్ చేయండి';

  @override
  String get pairingStepFindDevice => 'పరికరాన్ని కనుగొనండి';

  @override
  String get pairingStepSelectNetwork => 'నెట్‌వర్క్‌ని ఎంచుకోండి';

  @override
  String get pairingStepConfiguring => 'కాన్ఫిగర్ చేస్తోంది';

  @override
  String get pairingStepReconnect => 'మళ్లీ కనెక్ట్ చేయండి';

  @override
  String get pairingStepFinalizing => 'ఖరారు చేస్తోంది';

  @override
  String get pairingStepSuccess => 'విజయం';

  @override
  String get pairingStepError => 'లోపం';

  @override
  String get homeToggleDebug => 'డీబగ్ మోడ్‌ని టోగుల్ చేయండి';

  @override
  String get homeRefreshDevices => 'పరికరాలను రిఫ్రెష్ చేయండి';

  @override
  String get homeSettings => 'సెట్టింగ్‌లు';

  @override
  String get homeDismiss => 'తొలగించు';

  @override
  String get homeDiscovering => 'పరికరాలను కనుగొంటోంది...';

  @override
  String get homeNoDevices => 'పరికరాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get homeScanDevices => 'పరికరాల కోసం స్కాన్ చేయండి';

  @override
  String get homeLookingForMore => 'మరిన్ని పరికరాల కోసం వెతుకుతోంది...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count పరికరాలు కనుగొనబడ్డాయి',
      one: '1 పరికరం కనుగొనబడింది',
      zero: 'పరికరాలు ఏవీ కనుగొనబడలేదు',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count పరికరాలు కనుగొనబడ్డాయి, స్కాన్ చేస్తోంది...',
      one: '1 పరికరం కనుగొనబడింది, స్కాన్ చేస్తోంది...',
      zero: 'పరికరాలు ఏవీ కనుగొనబడలేదు, స్కాన్ చేస్తోంది...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ఆటో';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFiకి కనెక్ట్ చేయబడింది';

  @override
  String get homePermissionExplanation =>
      'మీ Wi-Fi వివరాలను కనుగొనడానికి స్థాన సమాచారం ఉపయోగించబడుతుంది. స్థానిక నెట్‌వర్క్ యాక్సెస్ మీ స్మార్ట్ స్విచ్‌లు మరియు పరికరాలను నియంత్రించడానికి మిమ్మల్ని అనుమతిస్తుంది.';

  @override
  String get homeDebugLog => 'డీబగ్ లాగ్';

  @override
  String get homeClear => 'క్లియర్';

  @override
  String get homeDebugEmpty =>
      'ఆవిష్కరణను ప్రారంభించడానికి మరియు లాగ్‌లను చూడటానికి రిఫ్రెష్ చేయి నొక్కండి...';

  @override
  String get homeProbeHint => 'IP:పోర్ట్ (ఉదా. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'ప్రోబ్';

  @override
  String get homeScanning => 'స్కాన్ చేస్తోంది...';

  @override
  String get homeScanSubnet => 'మొత్తం సబ్‌నెట్‌ని స్కాన్ చేయండి (iOS ఫిక్స్)';

  @override
  String homePlatform(String platform, String version) {
    return 'ప్లాట్‌ఫారమ్: $platform $version';
  }

  @override
  String get settingsTitle => 'సెట్టింగ్‌లు';

  @override
  String get settingsSectionNetwork => 'నెట్‌వర్క్';

  @override
  String get settingsSectionDeviceSetup => 'పరికర సెటప్';

  @override
  String get settingsSectionDiscovery => 'ఆవిష్కరణ';

  @override
  String get settingsSectionAbout => 'గురించి';

  @override
  String get settingsSectionDebug => 'డీబగ్ చేయండి';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'అనుమతి లభించింది! WiFi పేరు: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'స్థానం మంజూరు చేయబడింది, కానీ స్థానిక నెట్‌వర్క్ అనుమతి కూడా అవసరం. సెట్టింగ్‌లను తనిఖీ చేయండి.';

  @override
  String get settingsLocationRequired => 'స్థాన అనుమతి అవసరం';

  @override
  String get settingsLocationRequiredBody =>
      'మీ WiFi నెట్‌వర్క్ పేరును ప్రదర్శించడానికి, iOSకి స్థాన అనుమతి అవసరం.';

  @override
  String get settingsRequiredPermissions => 'అవసరమైన అనుమతులు:';

  @override
  String get settingsPermissionList =>
      '1. స్థాన సేవలు (\"యాప్‌ని ఉపయోగిస్తున్నప్పుడు\")\n2. స్థానిక నెట్‌వర్క్';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'గమనిక: స్థాన అనుమతి లేకుండా పరికర ఆవిష్కరణ పని చేస్తుంది. ఈ అనుమతి మీ WiFi నెట్‌వర్క్ పేరును ప్రదర్శించడానికి మాత్రమే ఉపయోగించబడుతుంది.';

  @override
  String get settingsEnableLocation => 'సెట్టింగ్‌లలో స్థానాన్ని ప్రారంభించండి';

  @override
  String get settingsLocationDeniedBody =>
      'స్థాన అనుమతి నిరాకరించబడింది. మీరు సిస్టమ్ సెట్టింగ్‌ల నుండి దీన్ని ప్రారంభించవచ్చు.';

  @override
  String get settingsStepsToEnable => 'ఎనేబుల్ చేయడానికి దశలు:';

  @override
  String get settingsEnableLocationSteps =>
      '1. సెట్టింగ్‌లను తెరవండి\n2. \"Bit Switch\"కి స్క్రోల్ చేయండి\n3. \"స్థానం\" నొక్కండి\n4. \"యాప్‌ని ఉపయోగిస్తున్నప్పుడు\" ఎంచుకోండి\n5. ఈ యాప్‌కి తిరిగి వెళ్లి, రిఫ్రెష్ బటన్‌ను నొక్కండి';

  @override
  String get settingsLocationOnlyWifiName =>
      'గమనిక: WiFi పేరును ప్రదర్శించడానికి మాత్రమే స్థాన అనుమతి అవసరం. పరికర ఆవిష్కరణ అది లేకుండా పని చేస్తుంది.';

  @override
  String get settingsAdditionalPermission => 'అదనపు అనుమతి అవసరం';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo పరికరాలను కనుగొనడానికి మరియు నియంత్రించడానికి స్థానిక నెట్‌వర్క్ అనుమతి అవసరం.';

  @override
  String get settingsWifiNameNotVisible =>
      'మీకు స్థాన అనుమతి ఉంది, కానీ WiFi పేరు ఇంకా కనిపించలేదు.';

  @override
  String get settingsPleaseEnable => 'దయచేసి ప్రారంభించండి:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. iPhone సెట్టింగ్‌లకు వెళ్లండి\n2. \"Bit Switch\"కి క్రిందికి స్క్రోల్ చేయండి\n3. \"లోకల్ నెట్‌వర్క్\"ని ప్రారంభించండి';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOSలో పరికర ఆవిష్కరణ మరియు WiFi పేరు యాక్సెస్ రెండింటికీ స్థానిక నెట్‌వర్క్ అనుమతి అవసరం.';

  @override
  String get settingsPairNewDevice => 'కొత్త పరికరాన్ని జత చేయండి';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'కొత్త Wemo పరికరాన్ని సెటప్ చేయండి';

  @override
  String get settingsDiscoveryTimeout => 'డిస్కవరీ సమయం ముగిసింది';

  @override
  String get settingsRequestTimeout => 'అభ్యర్థన గడువు ముగిసింది';

  @override
  String get settingsAutoRefresh => 'ఆటో-రిఫ్రెష్';

  @override
  String get settingsAutoRefreshOn =>
      'ఆన్ - పరికర స్థితి స్వయంచాలకంగా రిఫ్రెష్ అవుతుంది';

  @override
  String get settingsAutoRefreshOff =>
      'ఆఫ్ - మాన్యువల్ రిఫ్రెష్ బటన్ ఉపయోగించండి';

  @override
  String get settingsAutoRefreshInterval => 'స్వయంచాలకంగా రిఫ్రెష్ విరామం';

  @override
  String get settingsAbout => 'Bit Switch గురించి';

  @override
  String get settingsVersion => 'వెర్షన్';

  @override
  String get settingsNetworkDiagnostics => 'నెట్‌వర్క్ డయాగ్నోస్టిక్స్';

  @override
  String get settingsShowDebug => 'డీబగ్ మోడ్‌ని చూపించు';

  @override
  String get settingsShowDebugSubtitle =>
      'హోమ్ స్క్రీన్‌లో డీబగ్ నియంత్రణలు మరియు నెట్‌వర్క్ విశ్లేషణలను చూపండి';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'ట్రబుల్షూటింగ్ కోసం హోమ్ స్క్రీన్‌పై డీబగ్ చిహ్నాన్ని చూపండి';

  @override
  String get settingsCurrentNetwork => 'ప్రస్తుత నెట్‌వర్క్';

  @override
  String get settingsNetworkAccessStatus => 'నెట్‌వర్క్ యాక్సెస్ స్థితి';

  @override
  String get settingsNetworkAccessGranted =>
      'స్థానిక నెట్‌వర్క్ యాక్సెస్ అందుబాటులో ఉంది';

  @override
  String get settingsNetworkAccessMissing => 'అదనపు అనుమతులు అవసరం కావచ్చు';

  @override
  String get settingsChecking => 'తనిఖీ చేస్తోంది...';

  @override
  String get settingsEnableLocalNetwork =>
      'సెట్టింగ్‌లలో లోకల్ నెట్‌వర్క్‌ని ప్రారంభించండి';

  @override
  String get settingsNotConnectedWifi => 'WiFiకి కనెక్ట్ చేయబడలేదు';

  @override
  String get settingsPermissionRequiredView => 'వీక్షించడానికి అనుమతి అవసరం';

  @override
  String get settingsAllPermissionsGranted =>
      'అన్ని అనుమతులు మంజూరు చేయబడ్డాయి';

  @override
  String get settingsLocalNetworkNeeded => 'స్థానిక నెట్‌వర్క్ అనుమతి అవసరం';

  @override
  String get settingsLocationNeeded => 'స్థాన అనుమతి అవసరం';

  @override
  String get settingsRefreshPermissions => 'అనుమతులను రిఫ్రెష్ చేయండి';

  @override
  String get settingsAboutWifiPermission => 'WiFi పేరు అనుమతి గురించి';

  @override
  String get settingsWifiPermissionExplanation =>
      'మీ WiFi పేరు మీ ఫోన్ మరియు Wemo పరికరాలు ఒకే నెట్‌వర్క్‌లో ఉన్నాయని నిర్ధారించడంలో సహాయపడుతుంది.';

  @override
  String get settingsWifiPermissionIos =>
      'iOSలో, మీ WiFi నెట్‌వర్క్ పేరును ప్రదర్శించడానికి స్థాన అనుమతి అవసరం.';

  @override
  String get settingsImportant => 'ముఖ్యమైన:';

  @override
  String get settingsPrivacyNote =>
      '• మీ స్థానం ఎప్పుడూ ట్రాక్ చేయబడదు\n• స్థాన డేటా ఏదీ సేకరించబడదు లేదా నిల్వ చేయబడదు';

  @override
  String get settingsWifiPermissionImportant =>
      '• పరికర ఆవిష్కరణ ఈ అనుమతి లేకుండా పని చేస్తుంది\n• ఇది WiFi పేరును చూపడానికి మాత్రమే అవసరం\n• స్థాన డేటా ఏదీ సేకరించబడదు లేదా నిల్వ చేయబడదు';

  @override
  String get settingsGrantPermission => 'అనుమతి ఇవ్వండి';

  @override
  String get settingsHowLongScan => 'పరికరాల కోసం ఎంత సమయం స్కాన్ చేయాలి:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'డిస్కవరీ సమయం ముగిసింది $seconds సెకన్లకు సెట్ చేయబడింది';
  }

  @override
  String get settingsHowLongResponses =>
      'పరికర ప్రతిస్పందనల కోసం ఎంతసేపు వేచి ఉండాలి:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'మీరు \"కనెక్షన్ మూసివేయబడింది\" లోపాలు కనిపిస్తే ఈ విలువను పెంచండి.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'అభ్యర్థన గడువు ముగింపు $seconds సెకన్లకు సెట్ చేయబడింది';
  }

  @override
  String get settingsSetRefreshInterval =>
      'స్వయంచాలక స్థితి రిఫ్రెష్ కోసం విరామాన్ని సెట్ చేయండి:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'రిఫ్రెష్ విరామం $seconds సెకన్లకు సెట్ చేయబడింది';
  }

  @override
  String get settingsAboutTagline =>
      'మీ Wemo పరికరాల కోసం శుభ్రమైన, ప్రైవేట్ స్థానిక కంట్రోలర్.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch క్లౌడ్ డిపెండెన్సీలు లేకుండా పరికరాలను కనుగొనడానికి మరియు నియంత్రించడానికి స్థానిక నెట్‌వర్క్ ఆవిష్కరణను ఉపయోగిస్తుంది.';

  @override
  String get settingsVersionValue => 'వెర్షన్ 1.0.1';

  @override
  String get settingsProtocol => 'ప్రోటోకాల్: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'బహుళ ప్రసార చిరునామా: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'పరికర పోర్ట్‌లు: 49152-49159';

  @override
  String get settingsControlProtocol => 'నియంత్రణ ప్రోటోకాల్: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'చిట్కా: మీ పరికరం మీ Wemo పరికరాలు ఉన్న అదే నెట్‌వర్క్‌లో ఉందని మరియు UDP మల్టీక్యాస్ట్ బ్లాక్ చేయబడలేదని నిర్ధారించుకోండి.';

  @override
  String get settingsDevicePaired =>
      'పరికరం జత చేయబడింది! పరికర జాబితాను రిఫ్రెష్ చేస్తోంది...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'ప్రతి అభ్యర్థనకు $seconds సెకన్లు';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'ప్రతి $secondsలను రిఫ్రెష్ చేస్తోంది';
  }

  @override
  String get pairingTitle => 'కొత్త పరికరాన్ని జత చేయండి';

  @override
  String get pairingSetupTitle => 'మీ Wemo పరికరాన్ని సెటప్ చేయండి';

  @override
  String get pairingBeforeBegin =>
      'మీరు ప్రారంభించడానికి ముందు, మీ Wemo పరికరం సెటప్ మోడ్‌లో ఉందని నిర్ధారించుకోండి:';

  @override
  String get pairingPlugInTitle => 'మీ Wemo పరికరాన్ని ప్లగ్ ఇన్ చేయండి';

  @override
  String get pairingPlugInBody =>
      'దీన్ని పవర్‌కి కనెక్ట్ చేయండి మరియు అది ప్రారంభమయ్యే వరకు వేచి ఉండండి.';

  @override
  String get pairingBlinkingLedTitle => 'మెరిసే LED కోసం చూడండి';

  @override
  String get pairingBlinkingLedBody =>
      'మెరిసే LED పరికరం సెటప్ మోడ్‌లో ఉందని సూచిస్తుంది.';

  @override
  String get pairingCheckWifiTitle => 'WiFi నెట్‌వర్క్ కోసం తనిఖీ చేయండి';

  @override
  String get pairingCheckWifiBody =>
      'పరికరం \"WeMo.XXXXX\" పేరుతో నెట్‌వర్క్‌ని ప్రసారం చేస్తుంది.';

  @override
  String get pairingSolidLedHint =>
      'LED పటిష్టంగా ఉంటే, సెటప్ మోడ్‌లోకి ప్రవేశించడానికి రీసెట్ బటన్‌ను 5 సెకన్ల పాటు పట్టుకోండి.';

  @override
  String get pairingStart => 'జత చేయడం ప్రారంభించండి';

  @override
  String get pairingConnectWifiTitle => 'పరికరానికి కనెక్ట్ చేయండి WiFi';

  @override
  String get pairingConnectWifiBody =>
      'మీ ఫోన్ WiFi సెట్టింగ్‌లను తెరిచి, \"WeMo\"తో ప్రారంభమయ్యే నెట్‌వర్క్‌కి కనెక్ట్ చేయండి.';

  @override
  String get pairingCurrentNetwork => 'ప్రస్తుత నెట్‌వర్క్';

  @override
  String get pairingConnectedToDevice => 'Wemo పరికరానికి కనెక్ట్ చేయబడింది!';

  @override
  String get pairingOpenWifiSettings => 'WiFi సెట్టింగ్‌లను తెరవండి';

  @override
  String get pairingConnectedButton => 'నేను కనెక్ట్ అయ్యాను';

  @override
  String get pairingLookingForDevice => 'మీ Wemo పరికరం కోసం వెతుకుతోంది...';

  @override
  String get pairingManualIpPrompt =>
      'లేదా IP పరికరాన్ని మాన్యువల్‌గా నమోదు చేయండి:';

  @override
  String get pairingDeviceIp => 'పరికరం IP చిరునామా';

  @override
  String get pairingConnectToIp => 'IPకి కనెక్ట్ చేయండి';

  @override
  String get pairingSelectHomeWifi => 'మీ ఇంటి WiFi నెట్‌వర్క్‌ని ఎంచుకోండి:';

  @override
  String get pairingRefreshNetworks => 'నెట్‌వర్క్‌లను రిఫ్రెష్ చేయండి';

  @override
  String get pairingIosScanLimitation =>
      'iOS సమీపంలోని Wi-Fi నెట్‌వర్క్‌ల కోసం స్కాన్ చేయకుండా థర్డ్-పార్టీ యాప్‌లను ఖచ్చితంగా నిషేధిస్తుంది. మీరు SSID నెట్‌వర్క్‌ను మాన్యువల్‌గా నమోదు చేయాల్సి రావచ్చు.';

  @override
  String get pairingNoNetworks => 'నెట్‌వర్క్‌లు ఏవీ కనుగొనబడలేదు';

  @override
  String get pairingScanAgain => 'మళ్లీ స్కాన్ చేయండి';

  @override
  String get pairingWifiPassword => 'WiFi పాస్‌వర్డ్';

  @override
  String get pairingConnect => 'కనెక్ట్ చేయండి';

  @override
  String get pairingEnterNetworkManually =>
      'నెట్‌వర్క్‌ని మాన్యువల్‌గా నమోదు చేయండి';

  @override
  String get pairingEnterNetworkName => 'నెట్‌వర్క్ పేరును నమోదు చేయండి:';

  @override
  String get pairingNetworkName => 'నెట్‌వర్క్ పేరు (SSID)';

  @override
  String get pairingUseNetwork => 'ఈ నెట్‌వర్క్‌ని ఉపయోగించండి';

  @override
  String get pairingConfiguringDevice => 'పరికరాన్ని కాన్ఫిగర్ చేస్తోంది...';

  @override
  String get pairingConfiguringWait =>
      'పరికరం మీ నెట్‌వర్క్‌కి కనెక్ట్ అయ్యే వరకు దయచేసి వేచి ఉండండి.';

  @override
  String get pairingReconnectTitle => 'మీ నెట్‌వర్క్‌కి మళ్లీ కనెక్ట్ చేయండి';

  @override
  String pairingReconnectBody(String ssid) {
    return 'మీ Wemo పరికరం ఇప్పుడు \"$ssid\"కి కనెక్ట్ చేయబడుతోంది. దయచేసి మీ ఫోన్‌ని అదే నెట్‌వర్క్‌కి మళ్లీ కనెక్ట్ చేయండి.';
  }

  @override
  String get pairingBackOnHome => 'తిరిగి హోమ్ నెట్‌వర్క్‌లోకి!';

  @override
  String get pairingReconnectedButton => 'నేను మళ్లీ కనెక్ట్ అయ్యాను';

  @override
  String get pairingFinalizingSetup => 'సెటప్‌ని పూర్తి చేస్తోంది...';

  @override
  String get pairingSetupComplete => 'సెటప్ పూర్తయింది!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssidకి కనెక్ట్ చేయబడింది';
  }

  @override
  String get pairingDeviceReady =>
      'మీ పరికరం ఇప్పుడు సెటప్ చేయబడింది మరియు హోమ్ స్క్రీన్‌పై కనిపిస్తుంది.';

  @override
  String get pairingSomethingWrong => 'ఏదో తప్పు జరిగింది';

  @override
  String get pairingStartOver => 'ప్రారంభించండి';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi సెట్టింగ్‌లను తెరవడం సాధ్యపడలేదు. దయచేసి వాటిని మాన్యువల్‌గా తెరవండి.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'మీ ఫోన్ ఇప్పటికీ \"$ssid\"కి కనెక్ట్ చేయబడింది. దయచేసి WiFi సెట్టింగ్‌లను తెరిచి, WeMo పరికర నెట్‌వర్క్‌కి కనెక్ట్ చేసి, ఆపై మళ్లీ ప్రయత్నించండి.';
  }

  @override
  String get pairingLoadingLooking => 'పరికరం కోసం వెతుకుతోంది...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip వద్ద WeMo పరికరాన్ని కనుగొనడం సాధ్యపడలేదు. మీ ఫోన్ WeMo WiFi నెట్‌వర్క్‌కి కనెక్ట్ చేయబడిందని నిర్ధారించుకోండి, ఆపై మళ్లీ ప్రయత్నించండి. మీరు IP పరికరాన్ని మాన్యువల్‌గా కూడా నమోదు చేయవచ్చు.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'పరికరాన్ని కనుగొనడంలో లోపం: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ipకి కనెక్ట్ చేస్తోంది...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip వద్ద పరికరం ఏదీ కనుగొనబడలేదు';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip: $errorకి కనెక్ట్ చేయడంలో లోపం';
  }

  @override
  String get pairingLoadingScanning => 'నెట్‌వర్క్‌ల కోసం స్కాన్ చేస్తోంది...';

  @override
  String pairingErrorScanning(String error) {
    return 'నెట్‌వర్క్‌లను స్కాన్ చేయడం సాధ్యపడలేదు: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'దయచేసి నెట్‌వర్క్‌ని ఎంచుకుని, పాస్‌వర్డ్‌ను నమోదు చేయండి.';

  @override
  String get pairingLoadingSendingCredentials =>
      'నెట్‌వర్క్ ఆధారాలను పంపుతోంది...';

  @override
  String get pairingLoadingWaitingConnection =>
      'పరికరం కనెక్ట్ కావడానికి వేచి ఉంది...';

  @override
  String pairingErrorConfigure(String error) {
    return 'నెట్‌వర్క్‌ను కాన్ఫిగర్ చేయడంలో విఫలమైంది: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'పాస్‌వర్డ్ చాలా చిన్నది. దయచేసి తనిఖీ చేసి, మళ్లీ ప్రయత్నించండి.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'కనెక్ట్ చేయడంలో విఫలమైంది. దయచేసి పాస్‌వర్డ్‌ని తనిఖీ చేయండి.';

  @override
  String get pairingErrorConnectionTimeout =>
      'కనెక్షన్ సమయం ముగిసింది. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'సెటప్‌ని ఖరారు చేయడంలో లోపం: $error';
  }

  @override
  String get detailRefreshState => 'స్థితిని రిఫ్రెష్ చేయండి';

  @override
  String get detailDeviceInfo => 'పరికర సమాచారం';

  @override
  String get detailAdvanced => 'అధునాతనమైనది';

  @override
  String get detailWifiSetup => 'WiFi సెటప్';

  @override
  String get detailReset => 'రీసెట్ చేయండి';

  @override
  String get detailUnreachable =>
      'పరికరం అందుబాటులో లేదు. నెట్‌వర్క్ కనెక్షన్‌ని తనిఖీ చేయండి.';

  @override
  String detailFailedToggle(String error) {
    return 'టోగుల్ చేయడంలో విఫలమైంది: $error';
  }

  @override
  String get detailDeviceInformation => 'పరికర సమాచారం';

  @override
  String get detailPermissionScan =>
      'WiFi నెట్‌వర్క్‌లను స్కాన్ చేయడానికి అనుమతి అవసరం.';

  @override
  String get detailScanFailedManual =>
      'నెట్‌వర్క్‌లను స్కాన్ చేయడం సాధ్యపడలేదు. నెట్‌వర్క్ పేరును మాన్యువల్‌గా నమోదు చేయండి.';

  @override
  String get detailEnterNetworkNameError =>
      'దయచేసి నెట్‌వర్క్ పేరును నమోదు చేయండి లేదా ఎంచుకోండి';

  @override
  String get detailEnterPasswordError =>
      'దయచేసి నెట్‌వర్క్ పాస్‌వర్డ్‌ను నమోదు చేయండి';

  @override
  String get detailWifiSuccess => 'WiFi విజయవంతంగా కాన్ఫిగర్ చేయబడింది!';

  @override
  String get detailScanNetworks => 'నెట్‌వర్క్‌ల కోసం స్కాన్ చేయండి';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" కోసం WiFi నెట్‌వర్క్‌ను కాన్ఫిగర్ చేయండి';
  }

  @override
  String get detailAvailableNetworks => 'అందుబాటులో ఉన్న నెట్‌వర్క్‌లు';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS సమీపంలోని Wi-Fi నెట్‌వర్క్‌ల కోసం స్కాన్ చేయకుండా థర్డ్-పార్టీ యాప్‌లను ఖచ్చితంగా నిషేధిస్తుంది. దయచేసి దిగువన మాన్యువల్‌గా మీ నెట్‌వర్క్ పేరును నమోదు చేయండి.';

  @override
  String get detailTapRefreshScan =>
      'నెట్‌వర్క్‌ల కోసం స్కాన్ చేయడానికి రిఫ్రెష్ చేయి నొక్కండి';

  @override
  String get detailEnterNetworkBelow =>
      'మీ నెట్‌వర్క్ పేరును క్రింద నమోదు చేయండి';

  @override
  String get detailNetworkCredentials => 'నెట్‌వర్క్ ఆధారాలు';

  @override
  String get detailConnecting => 'నెట్‌వర్క్‌కి కనెక్ట్ చేస్తోంది...';

  @override
  String get detailConnected => 'విజయవంతంగా కనెక్ట్ చేయబడింది!';

  @override
  String get detailPasswordShort => 'పాస్‌వర్డ్ చాలా చిన్నది';

  @override
  String get detailAuthenticationFailed =>
      'ప్రమాణీకరణ విఫలమైంది - పాస్‌వర్డ్‌ని తనిఖీ చేయండి';

  @override
  String get detailConnectionFailed => 'కనెక్షన్ విఫలమైంది';

  @override
  String get detailSelectReset => 'దయచేసి ఏమి రీసెట్ చేయాలో ఎంచుకోండి';

  @override
  String get detailResetSchedulesWarning =>
      '• అన్ని షెడ్యూల్‌లు మరియు ఆటోమేషన్ నియమాలు తొలగించబడతాయి';

  @override
  String get detailResetWifiWarning => '• WiFi సెట్టింగ్‌లు తొలగించబడతాయి';

  @override
  String get detailSetupAgainWarning => '• మీరు పరికరాన్ని మళ్లీ సెటప్ చేయాలి';

  @override
  String get detailUnreachableWarning =>
      '• పరికరం తాత్కాలికంగా అందుబాటులోకి రాకపోవచ్చు';

  @override
  String get detailConfirmReset => 'రీసెట్‌ని నిర్ధారించండి';

  @override
  String detailConfirmResetDevice(String device) {
    return 'మీరు ఖచ్చితంగా \"$device\"ని రీసెట్ చేయాలనుకుంటున్నారా?';
  }

  @override
  String get detailThisWill => 'ఇది చేస్తుంది:';

  @override
  String get detailCannotUndo => 'ఈ చర్య రద్దు చేయబడదు.';

  @override
  String get detailYesReset => 'అవును, రీసెట్ చేయండి';

  @override
  String get detailResetSuccess => 'పరికరం విజయవంతంగా రీసెట్ చేయబడింది';

  @override
  String get detailResetRemote => 'పరికరం రిమోట్‌గా రీసెట్ చేయబడుతుంది';

  @override
  String get detailResetFailed => 'రీసెట్ విఫలమైంది';

  @override
  String get detailFactoryReset => 'ఫ్యాక్టరీ రీసెట్';

  @override
  String get detailFactoryResetWarning =>
      'ఇది అన్ని సెట్టింగ్‌లను తొలగిస్తుంది మరియు పరికరాన్ని ఫ్యాక్టరీ డిఫాల్ట్‌లకు పునరుద్ధరిస్తుంది. మీరు పరికరాన్ని మళ్లీ సెటప్ చేయాలి.\n\nఈ చర్య రద్దు చేయబడదు.';

  @override
  String get detailFactoryResetInitiated => 'ఫ్యాక్టరీ రీసెట్ ప్రారంభించబడింది';

  @override
  String get detailResetDevice => 'పరికరాన్ని రీసెట్ చేయండి';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" కోసం రీసెట్ ఎంపికలు';
  }

  @override
  String get detailResetUserData => 'వినియోగదారు డేటాను రీసెట్ చేయండి';

  @override
  String get detailResetUserDataSubtitle =>
      'షెడ్యూల్‌లు మరియు నియమాలను క్లియర్ చేస్తుంది';

  @override
  String get detailResetWifi => 'WiFi సెట్టింగ్‌లను రీసెట్ చేయండి';

  @override
  String get detailResetWifiSubtitle => 'పరికరాన్ని మళ్లీ సెటప్ చేయాలి';

  @override
  String get widgetBrightness => 'ప్రకాశం';

  @override
  String get widgetEnergyStatistics => 'శక్తి గణాంకాలు';

  @override
  String get widgetCurrentPower => 'ప్రస్తుత శక్తి';

  @override
  String get widgetToday => 'ఈరోజు';

  @override
  String get widgetTotal => 'మొత్తం';

  @override
  String get widgetOnTimeToday => 'ఈరోజు సమయానికి';

  @override
  String get widgetTotalOnTime => 'మొత్తం సమయానికి';

  @override
  String get widgetStandby => 'స్టాండ్‌బై';

  @override
  String get widgetUnknown => 'తెలియదు';

  @override
  String get widgetOpenNetwork => 'నెట్‌వర్క్‌ని తెరవండి';

  @override
  String get widgetWepInsecure => 'WEP (అసురక్షిత)';
}
