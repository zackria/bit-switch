// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'ઉપકરણ આ ક્રિયાને સમર્થન કરતું નથી.';

  @override
  String get errInvalidArgs => 'ઉપકરણ પર અમાન્ય દલીલો મોકલવામાં આવી હતી.';

  @override
  String get errActionFailed => 'ઉપકરણ વિનંતી કરેલ ક્રિયા કરવામાં નિષ્ફળ થયું.';

  @override
  String get errInvalidValue => 'અમાન્ય મૂલ્ય પ્રદાન કરવામાં આવ્યું હતું.';

  @override
  String get errValueOutOfRange => 'મૂલ્ય સ્વીકાર્ય શ્રેણીની બહાર છે.';

  @override
  String get errFeatureNotAvailable => 'આ સુવિધા આ ઉપકરણ પર ઉપલબ્ધ નથી.';

  @override
  String get errOutOfMemory => 'ઉપકરણ મેમરી બહાર છે. પછીથી ફરી પ્રયાસ કરો.';

  @override
  String get errManualActionRequired => 'ઉપકરણ પર મેન્યુઅલ ક્રિયા જરૂરી છે.';

  @override
  String get errActionNotAuthorized => 'આ ક્રિયા અધિકૃત નથી.';

  @override
  String get errUnexpected => 'એક અણધારી ભૂલ આવી. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get errDeviceUnreachableOffline =>
      'ઉપકરણ સુધી પહોંચવામાં અસમર્થ. તે ઑફલાઇન અથવા અલગ નેટવર્ક પર હોઈ શકે છે.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts પ્રયાસો પછી વિનંતીનો સમય સમાપ્ત થયો. ઉપકરણ ઑફલાઇન હોઈ શકે છે.';
  }

  @override
  String get errRequestTimedOut =>
      'વિનંતીનો સમય સમાપ્ત થયો. ઉપકરણ ઑફલાઇન હોઈ શકે છે.';

  @override
  String get errNoRouteToHost =>
      'ઉપકરણ સુધી પહોંચી શકાતું નથી. કૃપા કરીને તમારું WiFi કનેક્શન તપાસો.';

  @override
  String get errHostUnreachable =>
      'ઉપકરણ અગમ્ય છે. કૃપા કરીને ખાતરી કરો કે તે ચાલુ છે અને WiFi સાથે જોડાયેલ છે.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts પ્રયાસો પછી ઉપકરણ સાથે વાતચીત કરવામાં અસમર્થ.';
  }

  @override
  String get errNetworkErrorComm =>
      'નેટવર્ક ભૂલ: ઉપકરણ સાથે વાતચીત કરવામાં અસમર્થ.';

  @override
  String get errActionNotAuthorizedDevice => 'આ ક્રિયા ઉપકરણ પર અધિકૃત નથી.';

  @override
  String get errDeviceServiceNotFound =>
      'ઉપકરણ સેવા મળી નથી. ઉપકરણને ફર્મવેર અપડેટની જરૂર પડી શકે છે.';

  @override
  String get errDeviceEncounteredError =>
      'ઉપકરણને વિનંતી પર પ્રક્રિયા કરવામાં ભૂલ આવી.';

  @override
  String get errDeviceInternalError => 'ઉપકરણે આંતરિક ભૂલ પરત કરી.';

  @override
  String get errDeviceTempUnavailable =>
      'ઉપકરણ અસ્થાયી રૂપે અનુપલબ્ધ છે. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ઉપકરણે ભૂલ પરત કરી (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ઉપકરણ પર $action કરવામાં નિષ્ફળ.';
  }

  @override
  String get errDeviceReturnedError => 'ઉપકરણે ભૂલ પરત કરી.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation ઑપરેશનનો સમય સમાપ્ત થયો. કૃપા કરીને ફરી પ્રયાસ કરો.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds સેકન્ડ પછી ઓપરેશનનો સમય સમાપ્ત થયો.';
  }

  @override
  String get errOperationTimedOut =>
      'ઓપરેશનનો સમય સમાપ્ત થયો. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'ઉપકરણો શોધવા માટે કૃપા કરીને સેટિંગ્સમાં સ્થાનિક નેટવર્ક પરવાનગી ચાલુ કરો.';

  @override
  String get errCannotAccessLocalNetwork =>
      'સ્થાનિક નેટવર્કને ઍક્સેસ કરી શકાતું નથી. કૃપા કરીને સેટિંગ્સમાં સ્થાનિક નેટવર્ક પરવાનગી સક્ષમ કરો.';

  @override
  String get errCheckWifiConnection =>
      'ઉપકરણો શોધવામાં અસમર્થ. કૃપા કરીને તમારું WiFi કનેક્શન તપાસો.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'શોધ વિક્ષેપિત. $count ઉપકરણ(ઓ) મળ્યાં.';
  }

  @override
  String get errNoDevicesFound =>
      'કોઈ ઉપકરણો મળ્યાં નથી. કૃપા કરીને ખાતરી કરો કે ઉપકરણો ચાલુ છે અને તમારા નેટવર્ક સાથે જોડાયેલા છે.';

  @override
  String get actionGetDeviceState => 'ઉપકરણ સ્થિતિ મેળવો';

  @override
  String get actionSetDeviceState => 'ઉપકરણ સ્થિતિ સેટ કરો';

  @override
  String get actionGetEnergyData => 'ઊર્જા ડેટા મેળવો';

  @override
  String get actionScanNetworks => 'નેટવર્ક્સ માટે સ્કેન કરો';

  @override
  String get actionConnectWifi => 'WiFi થી કનેક્ટ કરો';

  @override
  String get actionCheckConnection => 'કનેક્શન સ્થિતિ તપાસો';

  @override
  String get actionResetDevice => 'ઉપકરણ રીસેટ કરો';

  @override
  String get actionPerform => 'ક્રિયા કરો';

  @override
  String get suggestTryRefreshing =>
      'ઉપકરણ સૂચિને તાજું કરવાનો પ્રયાસ કરો અથવા તપાસો કે ઉપકરણ પ્રતિસાદ આપી રહ્યું છે કે નહીં.';

  @override
  String get suggestEnsurePoweredOn =>
      'ખાતરી કરો કે ઉપકરણ ચાલુ છે અને તમારા WiFi નેટવર્ક સાથે જોડાયેલ છે.';

  @override
  String get suggestMakeSureSameWifi =>
      'ખાતરી કરો કે તમારો ફોન તમારા ઉપકરણોની જેમ જ WiFi નેટવર્ક સાથે જોડાયેલ છે.';

  @override
  String get suggestCheckPhysical =>
      'ધ્યાનની જરૂર હોય તેવા કોઈપણ બટનો અથવા સ્વીચો માટે ભૌતિક ઉપકરણ તપાસો.';

  @override
  String get suggestWaitAndTry => 'થોડીવાર રાહ જુઓ અને ફરી પ્રયાસ કરો.';

  @override
  String get suggestDeviceBusy =>
      'ઉપકરણ વ્યસ્ત હોઈ શકે છે. થોડીવારમાં ફરી પ્રયાસ કરો.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'રદ કરો';

  @override
  String get commonClose => 'બંધ કરો';

  @override
  String get commonDone => 'થઈ ગયું';

  @override
  String get commonLater => 'બાદમાં';

  @override
  String get commonRefresh => 'તાજું કરો';

  @override
  String get commonTryAgain => 'ફરી પ્રયાસ કરો';

  @override
  String get commonOpenSettings => 'સેટિંગ્સ ખોલો';

  @override
  String get commonGrant => 'ગ્રાન્ટ';

  @override
  String get commonFix => 'ઠીક કરો';

  @override
  String get commonOn => 'ચાલુ';

  @override
  String get commonOff => 'બંધ';

  @override
  String get commonOffline => 'ઑફલાઇન';

  @override
  String get commonStatus => 'સ્થિતિ';

  @override
  String get commonName => 'નામ';

  @override
  String get commonType => 'પ્રકાર';

  @override
  String get commonModel => 'મોડલ';

  @override
  String get commonManufacturer => 'ઉત્પાદક';

  @override
  String get commonSerial => 'સીરીયલ';

  @override
  String get commonFirmware => 'ફર્મવેર';

  @override
  String get commonHost => 'યજમાન';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'પાસવર્ડ';

  @override
  String get commonUnknownWifi => 'અજ્ઞાત Wi-Fi';

  @override
  String get commonNotConnected => 'જોડાયેલ નથી';

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
      other: '$seconds સેકન્ડ',
      one: '1 સેકન્ડ',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'સ્માર્ટ સ્વિચ';

  @override
  String get deviceTypeLightSwitch => 'લાઇટ સ્વિચ';

  @override
  String get deviceTypeDimmer => 'ડિમર';

  @override
  String get deviceTypeInsightPlug => 'ઇનસાઇટ પ્લગ';

  @override
  String get deviceTypeMotionSensor => 'મોશન સેન્સર';

  @override
  String get deviceTypeMaker => 'નિર્માતા';

  @override
  String get deviceTypeBridge => 'પુલ';

  @override
  String get deviceTypeCoffeeMaker => 'કોફી મેકર';

  @override
  String get deviceTypeCrockpot => 'ક્રોકપોટ';

  @override
  String get deviceTypeHumidifier => 'હ્યુમિડિફાયર';

  @override
  String get deviceTypeOutdoorPlug => 'આઉટડોર પ્લગ';

  @override
  String get deviceTypeUnknown => 'અજ્ઞાત ઉપકરણ';

  @override
  String get pairingStepGetStarted => 'પ્રારંભ કરો';

  @override
  String get pairingStepConnectToDevice => 'ઉપકરણ સાથે કનેક્ટ કરો';

  @override
  String get pairingStepFindDevice => 'ઉપકરણ શોધો';

  @override
  String get pairingStepSelectNetwork => 'નેટવર્ક પસંદ કરો';

  @override
  String get pairingStepConfiguring => 'રૂપરેખાંકિત કરી રહ્યું છે';

  @override
  String get pairingStepReconnect => 'ફરીથી કનેક્ટ કરો';

  @override
  String get pairingStepFinalizing => 'ફાઇનલ કરી રહ્યા છીએ';

  @override
  String get pairingStepSuccess => 'સફળતા';

  @override
  String get pairingStepError => 'ભૂલ';

  @override
  String get homeToggleDebug => 'ડીબગ મોડને ટૉગલ કરો';

  @override
  String get homeRefreshDevices => 'ઉપકરણોને તાજું કરો';

  @override
  String get homeSettings => 'સેટિંગ્સ';

  @override
  String get homeDismiss => 'કાઢી નાખો';

  @override
  String get homeDiscovering => 'ઉપકરણો શોધી રહ્યાં છીએ...';

  @override
  String get homeNoDevices => 'કોઈ ઉપકરણો મળ્યાં નથી';

  @override
  String get homeScanDevices => 'ઉપકરણો માટે સ્કેન કરો';

  @override
  String get homeLookingForMore => 'વધુ ઉપકરણો શોધી રહ્યાં છીએ...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ઉપકરણો મળ્યાં',
      one: '1 ઉપકરણ મળ્યું',
      zero: 'કોઈ ઉપકરણો મળ્યાં નથી',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ઉપકરણો મળ્યાં, સ્કેન કરી રહ્યું છે...',
      one: '1 ઉપકરણ મળ્યું, સ્કેન કરી રહ્યું છે...',
      zero: 'કોઈ ઉપકરણ મળ્યું નથી, સ્કેન કરી રહ્યું છે...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ઓટો';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi થી કનેક્ટેડ';

  @override
  String get homePermissionExplanation =>
      'તમારી Wi-Fi વિગતો શોધવા માટે સ્થાન માહિતીનો ઉપયોગ કરવામાં આવે છે. સ્થાનિક નેટવર્ક ઍક્સેસ તમને તમારા સ્માર્ટ સ્વીચો અને ઉપકરણોને નિયંત્રિત કરવાની મંજૂરી આપે છે.';

  @override
  String get homeDebugLog => 'ડીબગ લોગ';

  @override
  String get homeClear => 'સાફ કરો';

  @override
  String get homeDebugEmpty =>
      'શોધ શરૂ કરવા અને લૉગ જોવા માટે રિફ્રેશ પર ટૅપ કરો...';

  @override
  String get homeProbeHint => 'IP:પોર્ટ (દા.ત. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'તપાસ';

  @override
  String get homeScanning => 'સ્કેન કરી રહ્યું છે...';

  @override
  String get homeScanSubnet => 'સમગ્ર સબનેટ સ્કેન કરો (iOS ફિક્સ)';

  @override
  String homePlatform(String platform, String version) {
    return 'પ્લેટફોર્મ: $platform $version';
  }

  @override
  String get settingsTitle => 'સેટિંગ્સ';

  @override
  String get settingsSectionNetwork => 'નેટવર્ક';

  @override
  String get settingsSectionDeviceSetup => 'ઉપકરણ સેટઅપ';

  @override
  String get settingsSectionDiscovery => 'શોધ';

  @override
  String get settingsSectionAbout => 'વિશે';

  @override
  String get settingsSectionDebug => 'ડીબગ';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'પરવાનગી મંજૂર! WiFi નામ: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'સ્થાન મંજૂર, પરંતુ સ્થાનિક નેટવર્ક પરવાનગી પણ જરૂરી છે. સેટિંગ્સ તપાસો.';

  @override
  String get settingsLocationRequired => 'સ્થાન પરવાનગી જરૂરી છે';

  @override
  String get settingsLocationRequiredBody =>
      'તમારું WiFi નેટવર્ક નામ પ્રદર્શિત કરવા માટે, iOS ને સ્થાન પરવાનગીની જરૂર છે.';

  @override
  String get settingsRequiredPermissions => 'જરૂરી પરવાનગીઓ:';

  @override
  String get settingsPermissionList =>
      '1. સ્થાન સેવાઓ (\"એપનો ઉપયોગ કરતી વખતે\")\n2. સ્થાનિક નેટવર્ક';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'નોંધ: ઉપકરણ શોધ સ્થાનની પરવાનગી વિના કાર્ય કરે છે. આ પરવાનગીનો ઉપયોગ ફક્ત તમારું WiFi નેટવર્ક નામ પ્રદર્શિત કરવા માટે થાય છે.';

  @override
  String get settingsEnableLocation => 'સેટિંગ્સમાં સ્થાન સક્ષમ કરો';

  @override
  String get settingsLocationDeniedBody =>
      'સ્થાનની પરવાનગી નકારી હતી. તમે તેને સિસ્ટમ સેટિંગ્સમાંથી સક્ષમ કરી શકો છો.';

  @override
  String get settingsStepsToEnable => 'સક્ષમ કરવાનાં પગલાં:';

  @override
  String get settingsEnableLocationSteps =>
      '1. સેટિંગ્સ ખોલો\n2. \"Bit Switch\" સુધી સ્ક્રોલ કરો\n3. \"સ્થાન\" પર ટૅપ કરો\n4. \"એપનો ઉપયોગ કરતી વખતે\" પસંદ કરો\n5. આ એપ્લિકેશન પર પાછા ફરો અને રિફ્રેશ બટનને ટેપ કરો';

  @override
  String get settingsLocationOnlyWifiName =>
      'નોંધ: સ્થાન પરવાનગી માત્ર WiFi નામ દર્શાવવા માટે જરૂરી છે. ઉપકરણ શોધ તેના વિના કાર્ય કરે છે.';

  @override
  String get settingsAdditionalPermission => 'વધારાની પરવાનગીની જરૂર છે';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo ઉપકરણોને શોધવા અને નિયંત્રિત કરવા માટે સ્થાનિક નેટવર્કની પરવાનગી જરૂરી છે.';

  @override
  String get settingsWifiNameNotVisible =>
      'તમારી પાસે સ્થાનની પરવાનગી છે, પરંતુ WiFi નામ હજુ સુધી દેખાતું નથી.';

  @override
  String get settingsPleaseEnable => 'કૃપા કરીને સક્ષમ કરો:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. iPhone સેટિંગ્સ પર જાઓ\n2. \"Bit Switch\" સુધી નીચે સ્ક્રોલ કરો\n3. \"સ્થાનિક નેટવર્ક\" સક્ષમ કરો';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS પર ઉપકરણ શોધ અને WiFi નામની ઍક્સેસ બંને માટે સ્થાનિક નેટવર્કની પરવાનગી જરૂરી છે.';

  @override
  String get settingsPairNewDevice => 'નવું ઉપકરણ જોડો';

  @override
  String get settingsPairNewDeviceSubtitle => 'નવું Wemo ઉપકરણ સેટ કરો';

  @override
  String get settingsDiscoveryTimeout => 'ડિસ્કવરી ટાઈમઆઉટ';

  @override
  String get settingsRequestTimeout => 'વિનંતી સમયસમાપ્ત';

  @override
  String get settingsAutoRefresh => 'સ્વતઃ-તાજું કરો';

  @override
  String get settingsAutoRefreshOn =>
      'ચાલુ - ઉપકરણની સ્થિતિ આપમેળે તાજું થાય છે';

  @override
  String get settingsAutoRefreshOff => 'બંધ - મેન્યુઅલ રિફ્રેશ બટનનો ઉપયોગ કરો';

  @override
  String get settingsAutoRefreshInterval => 'સ્વતઃ-તાજું અંતરાલ';

  @override
  String get settingsAbout => 'Bit Switch વિશે';

  @override
  String get settingsVersion => 'સંસ્કરણ';

  @override
  String get settingsNetworkDiagnostics => 'નેટવર્ક ડાયગ્નોસ્ટિક્સ';

  @override
  String get settingsShowDebug => 'ડીબગ મોડ બતાવો';

  @override
  String get settingsShowDebugSubtitle =>
      'હોમ સ્ક્રીન પર ડીબગ નિયંત્રણો અને નેટવર્ક ડાયગ્નોસ્ટિક્સ બતાવો';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'સમસ્યાનિવારણ માટે હોમ સ્ક્રીન પર ડીબગ આઇકન બતાવો';

  @override
  String get settingsCurrentNetwork => 'વર્તમાન નેટવર્ક';

  @override
  String get settingsNetworkAccessStatus => 'નેટવર્ક એક્સેસ સ્ટેટસ';

  @override
  String get settingsNetworkAccessGranted => 'સ્થાનિક નેટવર્ક ઍક્સેસ ઉપલબ્ધ છે';

  @override
  String get settingsNetworkAccessMissing =>
      'વધારાની પરવાનગીઓની જરૂર પડી શકે છે';

  @override
  String get settingsChecking => 'તપાસી રહ્યું છે...';

  @override
  String get settingsEnableLocalNetwork =>
      'સેટિંગ્સમાં સ્થાનિક નેટવર્કને સક્ષમ કરો';

  @override
  String get settingsNotConnectedWifi => 'WiFi સાથે જોડાયેલ નથી';

  @override
  String get settingsPermissionRequiredView => 'જોવા માટે પરવાનગી જરૂરી છે';

  @override
  String get settingsAllPermissionsGranted => 'તમામ પરવાનગીઓ મંજૂર';

  @override
  String get settingsLocalNetworkNeeded => 'સ્થાનિક નેટવર્ક પરવાનગી જરૂરી છે';

  @override
  String get settingsLocationNeeded => 'સ્થાન પરવાનગી જરૂરી છે';

  @override
  String get settingsRefreshPermissions => 'પરવાનગીઓ તાજી કરો';

  @override
  String get settingsAboutWifiPermission => 'WiFi નામની પરવાનગી વિશે';

  @override
  String get settingsWifiPermissionExplanation =>
      'તમારું WiFi નામ એ પુષ્ટિ કરવામાં મદદ કરે છે કે તમારો ફોન અને Wemo ઉપકરણો સમાન નેટવર્ક પર છે.';

  @override
  String get settingsWifiPermissionIos =>
      'iOS પર, તમારું WiFi નેટવર્ક નામ પ્રદર્શિત કરવા માટે સ્થાન પરવાનગીની જરૂર છે.';

  @override
  String get settingsImportant => 'મહત્વપૂર્ણ:';

  @override
  String get settingsPrivacyNote =>
      '• તમારું સ્થાન ક્યારેય ટ્રેક કરવામાં આવતું નથી\n• કોઈ સ્થાન ડેટા એકત્રિત અથવા સંગ્રહિત કરવામાં આવતો નથી';

  @override
  String get settingsWifiPermissionImportant =>
      '• ઉપકરણ શોધ આ પરવાનગી વિના કામ કરે છે\n• આ ફક્ત WiFi નામ બતાવવા માટે જરૂરી છે\n• કોઈ સ્થાન ડેટા એકત્રિત અથવા સંગ્રહિત કરવામાં આવતો નથી';

  @override
  String get settingsGrantPermission => 'પરવાનગી આપો';

  @override
  String get settingsHowLongScan => 'ઉપકરણો માટે કેટલા સમય સુધી સ્કેન કરવું:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'ડિસ્કવરી સમયસમાપ્તિ $seconds સેકન્ડ પર સેટ છે';
  }

  @override
  String get settingsHowLongResponses =>
      'ઉપકરણ પ્રતિસાદો માટે કેટલો સમય રાહ જોવી:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'જો તમને \"કનેક્શન બંધ\" ભૂલો દેખાય તો આ મૂલ્ય વધારો.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'વિનંતી સમયસમાપ્તિ $seconds સેકન્ડ પર સેટ છે';
  }

  @override
  String get settingsSetRefreshInterval =>
      'સ્વચાલિત સ્થિતિ રિફ્રેશ માટે અંતરાલ સેટ કરો:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'રિફ્રેશ અંતરાલ $seconds સેકન્ડ પર સેટ કર્યો';
  }

  @override
  String get settingsAboutTagline =>
      'તમારા Wemo ઉપકરણો માટે સ્વચ્છ, ખાનગી સ્થાનિક નિયંત્રક.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch મેઘ નિર્ભરતા વિના ઉપકરણોને શોધવા અને નિયંત્રિત કરવા માટે સ્થાનિક નેટવર્ક શોધનો ઉપયોગ કરે છે.';

  @override
  String get settingsVersionValue => 'સંસ્કરણ 1.0.1';

  @override
  String get settingsProtocol => 'પ્રોટોકોલ: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'મલ્ટિકાસ્ટ સરનામું: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'ઉપકરણ પોર્ટ્સ: 49152-49159';

  @override
  String get settingsControlProtocol => 'નિયંત્રણ પ્રોટોકોલ: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'ટીપ: ખાતરી કરો કે તમારું ઉપકરણ તમારા Wemo ઉપકરણો જેવા જ નેટવર્ક પર છે અને UDP મલ્ટિકાસ્ટ અવરોધિત નથી.';

  @override
  String get settingsDevicePaired =>
      'ઉપકરણ જોડી! ઉપકરણ સૂચિને તાજું કરી રહ્યું છે...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'વિનંતી દીઠ $seconds સેકન્ડ';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'દરેક $seconds ને તાજું કરી રહ્યું છે';
  }

  @override
  String get pairingTitle => 'નવું ઉપકરણ જોડો';

  @override
  String get pairingSetupTitle => 'તમારું Wemo ઉપકરણ સેટ કરો';

  @override
  String get pairingBeforeBegin =>
      'તમે પ્રારંભ કરો તે પહેલાં, ખાતરી કરો કે તમારું Wemo ઉપકરણ સેટઅપ મોડમાં છે:';

  @override
  String get pairingPlugInTitle => 'તમારા Wemo ઉપકરણને પ્લગ ઇન કરો';

  @override
  String get pairingPlugInBody =>
      'તેને પાવર સાથે કનેક્ટ કરો અને તે શરૂ થવાની રાહ જુઓ.';

  @override
  String get pairingBlinkingLedTitle => 'ઝબકતી LED માટે જુઓ';

  @override
  String get pairingBlinkingLedBody =>
      'એક ઝબકતો LED સૂચવે છે કે ઉપકરણ સેટઅપ મોડમાં છે.';

  @override
  String get pairingCheckWifiTitle => 'WiFi નેટવર્ક માટે તપાસો';

  @override
  String get pairingCheckWifiBody =>
      'ઉપકરણ \"WeMo.XXXX\" નામના નેટવર્કનું પ્રસારણ કરશે.';

  @override
  String get pairingSolidLedHint =>
      'જો LED નક્કર હોય, તો સેટઅપ મોડમાં દાખલ થવા માટે રીસેટ બટનને 5 સેકન્ડ માટે પકડી રાખો.';

  @override
  String get pairingStart => 'જોડી બનાવવાનું શરૂ કરો';

  @override
  String get pairingConnectWifiTitle => 'ઉપકરણ WiFi થી કનેક્ટ કરો';

  @override
  String get pairingConnectWifiBody =>
      'તમારા ફોનની WiFi સેટિંગ્સ ખોલો અને \"WeMo\" થી શરૂ થતા નેટવર્કથી કનેક્ટ થાઓ.';

  @override
  String get pairingCurrentNetwork => 'વર્તમાન નેટવર્ક';

  @override
  String get pairingConnectedToDevice => 'Wemo ઉપકરણ સાથે કનેક્ટેડ!';

  @override
  String get pairingOpenWifiSettings => 'WiFi સેટિંગ્સ ખોલો';

  @override
  String get pairingConnectedButton => 'મેં કનેક્ટ કર્યું છે';

  @override
  String get pairingLookingForDevice => 'તમારું Wemo ઉપકરણ શોધી રહ્યાં છીએ...';

  @override
  String get pairingManualIpPrompt => 'અથવા ઉપકરણ IP મેન્યુઅલી દાખલ કરો:';

  @override
  String get pairingDeviceIp => 'ઉપકરણ IP સરનામું';

  @override
  String get pairingConnectToIp => 'IP થી કનેક્ટ કરો';

  @override
  String get pairingSelectHomeWifi => 'તમારું ઘર WiFi નેટવર્ક પસંદ કરો:';

  @override
  String get pairingRefreshNetworks => 'નેટવર્ક્સ તાજું કરો';

  @override
  String get pairingIosScanLimitation =>
      'iOS તૃતીય-પક્ષ એપ્લિકેશન્સને નજીકના Wi-Fi નેટવર્ક્સ માટે સ્કેન કરવાથી સખત રીતે પ્રતિબંધિત કરે છે. તમારે નેટવર્ક SSID મેન્યુઅલી દાખલ કરવાની જરૂર પડી શકે છે.';

  @override
  String get pairingNoNetworks => 'કોઈ નેટવર્ક મળ્યું નથી';

  @override
  String get pairingScanAgain => 'ફરીથી સ્કેન કરો';

  @override
  String get pairingWifiPassword => 'WiFi પાસવર્ડ';

  @override
  String get pairingConnect => 'કનેક્ટ કરો';

  @override
  String get pairingEnterNetworkManually => 'મેન્યુઅલી નેટવર્ક દાખલ કરો';

  @override
  String get pairingEnterNetworkName => 'નેટવર્ક નામ દાખલ કરો:';

  @override
  String get pairingNetworkName => 'નેટવર્ક નામ (SSID)';

  @override
  String get pairingUseNetwork => 'આ નેટવર્કનો ઉપયોગ કરો';

  @override
  String get pairingConfiguringDevice => 'ઉપકરણ ગોઠવી રહ્યું છે...';

  @override
  String get pairingConfiguringWait =>
      'ઉપકરણ તમારા નેટવર્ક સાથે કનેક્ટ થાય ત્યાં સુધી કૃપા કરીને રાહ જુઓ.';

  @override
  String get pairingReconnectTitle => 'તમારા નેટવર્ક સાથે ફરીથી કનેક્ટ કરો';

  @override
  String pairingReconnectBody(String ssid) {
    return 'તમારું Wemo ઉપકરણ હવે \"$ssid\" થી કનેક્ટ થઈ રહ્યું છે. કૃપા કરીને તમારા ફોનને સમાન નેટવર્કથી ફરીથી કનેક્ટ કરો.';
  }

  @override
  String get pairingBackOnHome => 'હોમ નેટવર્ક પર પાછા!';

  @override
  String get pairingReconnectedButton => 'હું ફરીથી કનેક્ટ થયો છું';

  @override
  String get pairingFinalizingSetup => 'સેટઅપને અંતિમ સ્વરૂપ આપી રહ્યું છે...';

  @override
  String get pairingSetupComplete => 'સેટઅપ પૂર્ણ!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid થી કનેક્ટેડ';
  }

  @override
  String get pairingDeviceReady =>
      'તમારું ઉપકરણ હવે સેટ થઈ ગયું છે અને હોમ સ્ક્રીન પર દેખાશે.';

  @override
  String get pairingSomethingWrong => 'કંઈક ખોટું થયું';

  @override
  String get pairingStartOver => 'સ્ટાર્ટ ઓવર';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi સેટિંગ્સ ખોલી શકાઈ નથી. કૃપા કરીને તેમને મેન્યુઅલી ખોલો.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'તમારો ફોન હજુ પણ \"$ssid\" સાથે જોડાયેલ છે. કૃપા કરીને WiFi સેટિંગ્સ ખોલો, WeMo ઉપકરણ નેટવર્કથી કનેક્ટ કરો, પછી ફરી પ્રયાસ કરો.';
  }

  @override
  String get pairingLoadingLooking => 'ઉપકરણ શોધી રહ્યાં છીએ...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip પર WeMo ઉપકરણ શોધી શકાયું નથી. ખાતરી કરો કે તમારો ફોન WeMo WiFi નેટવર્ક સાથે જોડાયેલ છે, પછી ફરી પ્રયાસ કરો. તમે ઉપકરણ IP મેન્યુઅલી પણ દાખલ કરી શકો છો.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'ઉપકરણ શોધવામાં ભૂલ: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip થી કનેક્ટ થઈ રહ્યું છે...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip પર કોઈ ઉપકરણ મળ્યું નથી';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip થી કનેક્ટ કરવામાં ભૂલ: $error';
  }

  @override
  String get pairingLoadingScanning => 'નેટવર્ક્સ માટે સ્કેન કરી રહ્યું છે...';

  @override
  String pairingErrorScanning(String error) {
    return 'નેટવર્ક્સ સ્કેન કરી શક્યાં નથી: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'કૃપા કરીને નેટવર્ક પસંદ કરો અને પાસવર્ડ દાખલ કરો.';

  @override
  String get pairingLoadingSendingCredentials =>
      'નેટવર્ક ઓળખપત્ર મોકલી રહ્યું છે...';

  @override
  String get pairingLoadingWaitingConnection =>
      'ઉપકરણ કનેક્ટ થાય તેની રાહ જોઈ રહ્યાં છીએ...';

  @override
  String pairingErrorConfigure(String error) {
    return 'નેટવર્ક ગોઠવવામાં નિષ્ફળ: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'પાસવર્ડ ઘણો નાનો છે. કૃપા કરીને તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'કનેક્ટ કરવામાં નિષ્ફળ. કૃપા કરીને પાસવર્ડ તપાસો.';

  @override
  String get pairingErrorConnectionTimeout =>
      'કનેક્શનનો સમય સમાપ્ત થયો. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'સેટઅપને અંતિમ સ્વરૂપ આપવામાં ભૂલ: $error';
  }

  @override
  String get detailRefreshState => 'સ્થિતિ તાજું કરો';

  @override
  String get detailDeviceInfo => 'ઉપકરણ માહિતી';

  @override
  String get detailAdvanced => 'ઉન્નત';

  @override
  String get detailWifiSetup => 'WiFi સેટઅપ';

  @override
  String get detailReset => 'રીસેટ કરો';

  @override
  String get detailUnreachable => 'ઉપકરણ અગમ્ય છે. નેટવર્ક કનેક્શન તપાસો.';

  @override
  String detailFailedToggle(String error) {
    return 'ટૉગલ કરવામાં નિષ્ફળ: $error';
  }

  @override
  String get detailDeviceInformation => 'ઉપકરણ માહિતી';

  @override
  String get detailPermissionScan =>
      'WiFi નેટવર્ક્સને સ્કેન કરવા માટે પરવાનગી જરૂરી છે.';

  @override
  String get detailScanFailedManual =>
      'નેટવર્ક્સ સ્કેન કરી શક્યાં નથી. નેટવર્ક નામ જાતે દાખલ કરો.';

  @override
  String get detailEnterNetworkNameError =>
      'કૃપા કરીને નેટવર્ક નામ દાખલ કરો અથવા પસંદ કરો';

  @override
  String get detailEnterPasswordError => 'કૃપા કરીને નેટવર્ક પાસવર્ડ દાખલ કરો';

  @override
  String get detailWifiSuccess => 'WiFi સફળતાપૂર્વક ગોઠવ્યું!';

  @override
  String get detailScanNetworks => 'નેટવર્ક્સ માટે સ્કેન કરો';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" માટે WiFi નેટવર્કને ગોઠવો';
  }

  @override
  String get detailAvailableNetworks => 'ઉપલબ્ધ નેટવર્ક્સ';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS તૃતીય-પક્ષ એપ્લિકેશન્સને નજીકના Wi-Fi નેટવર્ક્સ માટે સ્કેન કરવાથી સખત રીતે પ્રતિબંધિત કરે છે. કૃપા કરીને તમારું નેટવર્ક નામ મેન્યુઅલી નીચે દાખલ કરો.';

  @override
  String get detailTapRefreshScan =>
      'નેટવર્ક્સ માટે સ્કેન કરવા માટે રિફ્રેશ પર ટૅપ કરો';

  @override
  String get detailEnterNetworkBelow => 'નીચે તમારા નેટવર્કનું નામ દાખલ કરો';

  @override
  String get detailNetworkCredentials => 'નેટવર્ક ઓળખપત્રો';

  @override
  String get detailConnecting => 'નેટવર્કથી કનેક્ટ થઈ રહ્યું છે...';

  @override
  String get detailConnected => 'સફળતાપૂર્વક કનેક્ટ થયું!';

  @override
  String get detailPasswordShort => 'પાસવર્ડ ઘણો નાનો છે';

  @override
  String get detailAuthenticationFailed =>
      'પ્રમાણીકરણ નિષ્ફળ થયું - પાસવર્ડ તપાસો';

  @override
  String get detailConnectionFailed => 'કનેક્શન નિષ્ફળ થયું';

  @override
  String get detailSelectReset => 'કૃપા કરીને શું રીસેટ કરવું તે પસંદ કરો';

  @override
  String get detailResetSchedulesWarning =>
      '• બધા સમયપત્રક અને ઓટોમેશન નિયમો કાઢી નાખવામાં આવશે';

  @override
  String get detailResetWifiWarning => '• WiFi સેટિંગ્સ ભૂંસી નાખવામાં આવશે';

  @override
  String get detailSetupAgainWarning =>
      '• તમારે ઉપકરણને ફરીથી સેટ કરવાની જરૂર પડશે';

  @override
  String get detailUnreachableWarning =>
      '• ઉપકરણ અસ્થાયી રૂપે અગમ્ય બની શકે છે';

  @override
  String get detailConfirmReset => 'રીસેટની પુષ્ટિ કરો';

  @override
  String detailConfirmResetDevice(String device) {
    return 'શું તમે ખરેખર \"$device\" રીસેટ કરવા માંગો છો?';
  }

  @override
  String get detailThisWill => 'આ કરશે:';

  @override
  String get detailCannotUndo => 'આ ક્રિયા પૂર્વવત્ કરી શકાતી નથી.';

  @override
  String get detailYesReset => 'હા, રીસેટ કરો';

  @override
  String get detailResetSuccess => 'ઉપકરણ સફળતાપૂર્વક રીસેટ';

  @override
  String get detailResetRemote => 'ઉપકરણ રિમોટલી રીસેટ થશે';

  @override
  String get detailResetFailed => 'રીસેટ નિષ્ફળ થયું';

  @override
  String get detailFactoryReset => 'ફેક્ટરી રીસેટ';

  @override
  String get detailFactoryResetWarning =>
      'આ તમામ સેટિંગ્સને ભૂંસી નાખશે અને ઉપકરણને ફેક્ટરી ડિફોલ્ટ્સ પર પુનઃસ્થાપિત કરશે. તમારે ઉપકરણને ફરીથી સેટ કરવાની જરૂર પડશે.\n\nઆ ક્રિયા પૂર્વવત્ કરી શકાતી નથી.';

  @override
  String get detailFactoryResetInitiated => 'ફેક્ટરી રીસેટ શરૂ કર્યું';

  @override
  String get detailResetDevice => 'ઉપકરણ રીસેટ કરો';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" માટે વિકલ્પો રીસેટ કરો';
  }

  @override
  String get detailResetUserData => 'વપરાશકર્તા ડેટા રીસેટ કરો';

  @override
  String get detailResetUserDataSubtitle => 'સમયપત્રક અને નિયમો સાફ કરે છે';

  @override
  String get detailResetWifi => 'WiFi સેટિંગ્સ રીસેટ કરો';

  @override
  String get detailResetWifiSubtitle => 'ઉપકરણને ફરીથી સેટ કરવાની જરૂર પડશે';

  @override
  String get widgetBrightness => 'તેજ';

  @override
  String get widgetEnergyStatistics => 'એનર્જી સ્ટેટિસ્ટિક્સ';

  @override
  String get widgetCurrentPower => 'વર્તમાન શક્તિ';

  @override
  String get widgetToday => 'આજે';

  @override
  String get widgetTotal => 'કુલ';

  @override
  String get widgetOnTimeToday => 'આજે સમય પર';

  @override
  String get widgetTotalOnTime => 'સમય પર કુલ';

  @override
  String get widgetStandby => 'સ્ટેન્ડબાય';

  @override
  String get widgetUnknown => 'અજ્ઞાત';

  @override
  String get widgetOpenNetwork => 'નેટવર્ક ખોલો';

  @override
  String get widgetWepInsecure => 'WEP (અસુરક્ષિત)';
}
