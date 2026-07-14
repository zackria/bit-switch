// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'آلہ اس کارروائی کو سپورٹ نہیں کرتا ہے۔';

  @override
  String get errInvalidArgs => 'آلہ پر غلط دلائل بھیجے گئے۔';

  @override
  String get errActionFailed => 'آلہ مطلوبہ کارروائی انجام دینے میں ناکام رہا۔';

  @override
  String get errInvalidValue => 'ایک غلط قیمت فراہم کی گئی۔';

  @override
  String get errValueOutOfRange => 'قدر قابل قبول حد سے باہر ہے۔';

  @override
  String get errFeatureNotAvailable => 'یہ خصوصیت اس ڈیوائس پر دستیاب نہیں ہے۔';

  @override
  String get errOutOfMemory =>
      'آلہ میموری سے باہر ہے۔ بعد میں دوبارہ کوشش کریں۔';

  @override
  String get errManualActionRequired => 'ڈیوائس پر دستی کارروائی کی ضرورت ہے۔';

  @override
  String get errActionNotAuthorized => 'اس کارروائی کی اجازت نہیں ہے۔';

  @override
  String get errUnexpected =>
      'ایک غیر متوقع خرابی پیش آگئی۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get errDeviceUnreachableOffline =>
      'ڈیوائس تک پہنچنے سے قاصر۔ یہ آف لائن یا کسی مختلف نیٹ ورک پر ہو سکتا ہے۔';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts کوششوں کے بعد درخواست کا وقت ختم ہو گیا۔ آلہ آف لائن ہو سکتا ہے۔';
  }

  @override
  String get errRequestTimedOut =>
      'درخواست کا وقت ختم ہو گیا۔ آلہ آف لائن ہو سکتا ہے۔';

  @override
  String get errNoRouteToHost =>
      'ڈیوائس تک نہیں پہنچ سکتا۔ براہ کرم اپنا WiFi کنکشن چیک کریں۔';

  @override
  String get errHostUnreachable =>
      'آلہ ناقابل رسائی ہے۔ براہ کرم یقینی بنائیں کہ یہ آن ہے اور WiFi سے منسلک ہے۔';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts کوششوں کے بعد آلہ کے ساتھ مواصلت کرنے سے قاصر۔';
  }

  @override
  String get errNetworkErrorComm =>
      'نیٹ ورک کی خرابی: ڈیوائس کے ساتھ مواصلت کرنے سے قاصر۔';

  @override
  String get errActionNotAuthorizedDevice =>
      'ڈیوائس پر اس کارروائی کی اجازت نہیں ہے۔';

  @override
  String get errDeviceServiceNotFound =>
      'ڈیوائس سروس نہیں ملی۔ ڈیوائس کو فرم ویئر اپ ڈیٹ کی ضرورت ہو سکتی ہے۔';

  @override
  String get errDeviceEncounteredError =>
      'ڈیوائس کو درخواست پر کارروائی کرنے میں ایک خرابی کا سامنا کرنا پڑا۔';

  @override
  String get errDeviceInternalError => 'ڈیوائس نے ایک اندرونی خرابی لوٹائی۔';

  @override
  String get errDeviceTempUnavailable =>
      'آلہ عارضی طور پر دستیاب نہیں ہے۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ڈیوائس نے ایک خرابی لوٹائی (HTTP $code)۔';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ڈیوائس پر $action کرنے میں ناکام۔';
  }

  @override
  String get errDeviceReturnedError => 'ڈیوائس نے ایک خرابی لوٹائی۔';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation آپریشن کا وقت ختم ہو گیا۔ براہ کرم دوبارہ کوشش کریں۔';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds سیکنڈ کے بعد آپریشن کا وقت ختم ہو گیا۔';
  }

  @override
  String get errOperationTimedOut =>
      'آپریشن کا وقت ختم ہو گیا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'براہ کرم آلات تلاش کرنے کے لیے ترتیبات میں مقامی نیٹ ورک کی اجازت کو فعال کریں۔';

  @override
  String get errCannotAccessLocalNetwork =>
      'مقامی نیٹ ورک تک رسائی حاصل نہیں کر سکتے۔ براہ کرم ترتیبات میں مقامی نیٹ ورک کی اجازت کو فعال کریں۔';

  @override
  String get errCheckWifiConnection =>
      'آلات دریافت کرنے سے قاصر۔ براہ کرم اپنا WiFi کنکشن چیک کریں۔';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'دریافت میں خلل پڑا۔ $count آلہ ملا۔';
  }

  @override
  String get errNoDevicesFound =>
      'کوئی آلات نہیں ملے۔ براہ کرم یقینی بنائیں کہ ڈیوائسز آن ہیں اور آپ کے نیٹ ورک سے منسلک ہیں۔';

  @override
  String get actionGetDeviceState => 'ڈیوائس کی حالت حاصل کریں۔';

  @override
  String get actionSetDeviceState => 'ڈیوائس کی حالت سیٹ کریں۔';

  @override
  String get actionGetEnergyData => 'توانائی کا ڈیٹا حاصل کریں۔';

  @override
  String get actionScanNetworks => 'نیٹ ورکس کے لیے اسکین کریں۔';

  @override
  String get actionConnectWifi => 'WiFi سے جڑیں۔';

  @override
  String get actionCheckConnection => 'کنکشن کی حیثیت چیک کریں';

  @override
  String get actionResetDevice => 'آلہ ری سیٹ کریں';

  @override
  String get actionPerform => 'عمل انجام دیں';

  @override
  String get suggestTryRefreshing =>
      'آلہ کی فہرست کو تازہ کرنے کی کوشش کریں یا چیک کریں کہ آیا آلہ جواب دے رہا ہے۔';

  @override
  String get suggestEnsurePoweredOn =>
      'یقینی بنائیں کہ ڈیوائس آن ہے اور آپ کے WiFi نیٹ ورک سے منسلک ہے۔';

  @override
  String get suggestMakeSureSameWifi =>
      'یقینی بنائیں کہ آپ کا فون اسی WiFi نیٹ ورک سے جڑا ہوا ہے جس میں آپ کے آلات ہیں۔';

  @override
  String get suggestCheckPhysical =>
      'کسی بھی بٹن یا سوئچ کے لیے فزیکل ڈیوائس کو چیک کریں جن پر توجہ دینے کی ضرورت ہے۔';

  @override
  String get suggestWaitAndTry => 'ایک لمحہ انتظار کریں اور دوبارہ کوشش کریں۔';

  @override
  String get suggestDeviceBusy =>
      'آلہ مصروف ہو سکتا ہے۔ چند سیکنڈ میں دوبارہ کوشش کریں۔';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'منسوخ کریں۔';

  @override
  String get commonClose => 'بند';

  @override
  String get commonDone => 'ہو گیا';

  @override
  String get commonLater => 'بعد میں';

  @override
  String get commonRefresh => 'ریفریش کریں۔';

  @override
  String get commonTryAgain => 'دوبارہ کوشش کریں۔';

  @override
  String get commonOpenSettings => 'ترتیبات کھولیں۔';

  @override
  String get commonGrant => 'گرانٹ';

  @override
  String get commonFix => 'درست کریں۔';

  @override
  String get commonOn => 'پر';

  @override
  String get commonOff => 'آف';

  @override
  String get commonOffline => 'آف لائن';

  @override
  String get commonStatus => 'حیثیت';

  @override
  String get commonName => 'نام';

  @override
  String get commonType => 'قسم';

  @override
  String get commonModel => 'ماڈل';

  @override
  String get commonManufacturer => 'کارخانہ دار';

  @override
  String get commonSerial => 'سیریل';

  @override
  String get commonFirmware => 'فرم ویئر';

  @override
  String get commonHost => 'میزبان';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'پاس ورڈ';

  @override
  String get commonUnknownWifi => 'نامعلوم Wi-Fi';

  @override
  String get commonNotConnected => 'منسلک نہیں';

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
      other: '$seconds سیکنڈ',
      one: '1 سیکنڈ',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'اسمارٹ سوئچ';

  @override
  String get deviceTypeLightSwitch => 'لائٹ سوئچ';

  @override
  String get deviceTypeDimmer => 'مدھم';

  @override
  String get deviceTypeInsightPlug => 'بصیرت پلگ';

  @override
  String get deviceTypeMotionSensor => 'موشن سینسر';

  @override
  String get deviceTypeMaker => 'بنانے والا';

  @override
  String get deviceTypeBridge => 'پل';

  @override
  String get deviceTypeCoffeeMaker => 'کافی بنانے والا';

  @override
  String get deviceTypeCrockpot => 'کراک پاٹ';

  @override
  String get deviceTypeHumidifier => 'Humidifier';

  @override
  String get deviceTypeOutdoorPlug => 'آؤٹ ڈور پلگ';

  @override
  String get deviceTypeUnknown => 'نامعلوم آلہ';

  @override
  String get pairingStepGetStarted => 'شروع کریں';

  @override
  String get pairingStepConnectToDevice => 'ڈیوائس سے جڑیں۔';

  @override
  String get pairingStepFindDevice => 'ڈیوائس تلاش کریں۔';

  @override
  String get pairingStepSelectNetwork => 'نیٹ ورک کو منتخب کریں۔';

  @override
  String get pairingStepConfiguring => 'ترتیب دینا';

  @override
  String get pairingStepReconnect => 'دوبارہ جڑیں۔';

  @override
  String get pairingStepFinalizing => 'حتمی شکل دینا';

  @override
  String get pairingStepSuccess => 'کامیابی';

  @override
  String get pairingStepError => 'خرابی';

  @override
  String get homeToggleDebug => 'ڈیبگ موڈ کو ٹوگل کریں۔';

  @override
  String get homeRefreshDevices => 'آلات کو ریفریش کریں۔';

  @override
  String get homeSettings => 'ترتیبات';

  @override
  String get homeDismiss => 'برطرف کرنا';

  @override
  String get homeDiscovering => 'آلات دریافت ہو رہے ہیں...';

  @override
  String get homeNoDevices => 'کوئی آلات نہیں ملے';

  @override
  String get homeScanDevices => 'آلات کے لیے اسکین کریں۔';

  @override
  String get homeLookingForMore => 'مزید آلات تلاش کر رہے ہیں...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آلات ملے',
      one: '1 آلہ ملا',
      zero: 'کوئی آلات نہیں ملے',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آلات مل گئے، سکین ہو رہا ہے...',
      one: '1 آلہ ملا، سکین ہو رہا ہے...',
      zero: 'کوئی آلات نہیں ملے، اسکین ہو رہا ہے...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'آٹو';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi سے منسلک ہے۔';

  @override
  String get homePermissionExplanation =>
      'آپ کی Wi-Fi تفصیلات تلاش کرنے کے لیے مقام کی معلومات کا استعمال کیا جاتا ہے۔ مقامی نیٹ ورک تک رسائی آپ کو اپنے سمارٹ سوئچز اور آلات کو کنٹرول کرنے کی اجازت دیتی ہے۔';

  @override
  String get homeDebugLog => 'ڈیبگ لاگ';

  @override
  String get homeClear => 'صاف';

  @override
  String get homeDebugEmpty =>
      'دریافت شروع کرنے اور لاگز دیکھنے کے لیے ریفریش پر ٹیپ کریں...';

  @override
  String get homeProbeHint => 'IP:پورٹ (جیسے 192.168.1.100:49153)';

  @override
  String get homeProbe => 'تحقیقات';

  @override
  String get homeScanning => 'سکین ہو رہا ہے...';

  @override
  String get homeScanSubnet => 'پورے سب نیٹ کو اسکین کریں (iOS فکس)';

  @override
  String homePlatform(String platform, String version) {
    return 'پلیٹ فارم: $platform $version';
  }

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get settingsSectionNetwork => 'نیٹ ورک';

  @override
  String get settingsSectionDeviceSetup => 'ڈیوائس سیٹ اپ';

  @override
  String get settingsSectionDiscovery => 'دریافت';

  @override
  String get settingsSectionAbout => 'کے بارے میں';

  @override
  String get settingsSectionDebug => 'ڈیبگ';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'اجازت مل گئی! WiFi نام: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'مقام دیا گیا، لیکن مقامی نیٹ ورک کی اجازت بھی درکار ہے۔ سیٹنگز چیک کریں۔';

  @override
  String get settingsLocationRequired => 'مقام کی اجازت درکار ہے۔';

  @override
  String get settingsLocationRequiredBody =>
      'اپنے WiFi نیٹ ورک کا نام ظاہر کرنے کے لیے، iOS کو مقام کی اجازت درکار ہے۔';

  @override
  String get settingsRequiredPermissions => 'مطلوبہ اجازتیں:';

  @override
  String get settingsPermissionList =>
      '1. مقام کی خدمات (\"ایپ استعمال کرتے وقت\")\n2. مقامی نیٹ ورک';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'نوٹ: ڈیوائس کی دریافت مقام کی اجازت کے بغیر کام کرتی ہے۔ یہ اجازت صرف آپ کے WiFi نیٹ ورک کا نام ظاہر کرنے کے لیے استعمال ہوتی ہے۔';

  @override
  String get settingsEnableLocation => 'ترتیبات میں مقام کو فعال کریں۔';

  @override
  String get settingsLocationDeniedBody =>
      'مقام کی اجازت مسترد کر دی گئی۔ آپ اسے سسٹم کی ترتیبات سے فعال کر سکتے ہیں۔';

  @override
  String get settingsStepsToEnable => 'فعال کرنے کے اقدامات:';

  @override
  String get settingsEnableLocationSteps =>
      '1. ترتیبات کھولیں۔\n2. \"Bit Switch\" تک سکرول کریں\n3. \"مقام\" کو تھپتھپائیں\n4. \"ایپ استعمال کرتے وقت\" کو منتخب کریں\n5. اس ایپ پر واپس جائیں اور ریفریش بٹن کو تھپتھپائیں۔';

  @override
  String get settingsLocationOnlyWifiName =>
      'نوٹ: مقام کی اجازت صرف WiFi نام ظاہر کرنے کے لیے درکار ہے۔ ڈیوائس کی دریافت اس کے بغیر کام کرتی ہے۔';

  @override
  String get settingsAdditionalPermission => 'اضافی اجازت درکار ہے۔';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo آلات کو دریافت اور کنٹرول کرنے کے لیے مقامی نیٹ ورک کی اجازت درکار ہے۔';

  @override
  String get settingsWifiNameNotVisible =>
      'آپ کے پاس مقام کی اجازت ہے، لیکن WiFi نام ابھی تک نظر نہیں آیا۔';

  @override
  String get settingsPleaseEnable => 'براہ کرم فعال کریں:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. آئی فون کی ترتیبات پر جائیں۔\n2. نیچے \"Bit Switch\" تک سکرول کریں\n3. \"مقامی نیٹ ورک\" کو فعال کریں';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS پر ڈیوائس کی دریافت اور WiFi نام تک رسائی دونوں کے لیے مقامی نیٹ ورک کی اجازت درکار ہے۔';

  @override
  String get settingsPairNewDevice => 'نئے ڈیوائس کا جوڑا بنائیں';

  @override
  String get settingsPairNewDeviceSubtitle => 'ایک نیا Wemo آلہ ترتیب دیں۔';

  @override
  String get settingsDiscoveryTimeout => 'دریافت کا ٹائم آؤٹ';

  @override
  String get settingsRequestTimeout => 'ٹائم آؤٹ کی درخواست کریں۔';

  @override
  String get settingsAutoRefresh => 'آٹو ریفریش';

  @override
  String get settingsAutoRefreshOn =>
      'آن - ڈیوائس کی حالت خود بخود تازہ ہوجاتی ہے۔';

  @override
  String get settingsAutoRefreshOff => 'آف - دستی ریفریش بٹن استعمال کریں۔';

  @override
  String get settingsAutoRefreshInterval => 'آٹو ریفریش وقفہ';

  @override
  String get settingsAbout => 'Bit Switch کے بارے میں';

  @override
  String get settingsVersion => 'ورژن';

  @override
  String get settingsNetworkDiagnostics => 'نیٹ ورک کی تشخیص';

  @override
  String get settingsShowDebug => 'ڈیبگ موڈ دکھائیں۔';

  @override
  String get settingsShowDebugSubtitle =>
      'ہوم اسکرین پر ڈیبگ کنٹرولز اور نیٹ ورک کی تشخیص دکھائیں۔';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'ٹربل شوٹنگ کے لیے ہوم اسکرین پر ڈیبگ آئیکن دکھائیں۔';

  @override
  String get settingsCurrentNetwork => 'موجودہ نیٹ ورک';

  @override
  String get settingsNetworkAccessStatus => 'نیٹ ورک تک رسائی کی حیثیت';

  @override
  String get settingsNetworkAccessGranted =>
      'مقامی نیٹ ورک تک رسائی دستیاب ہے۔';

  @override
  String get settingsNetworkAccessMissing =>
      'اضافی اجازتوں کی ضرورت ہو سکتی ہے۔';

  @override
  String get settingsChecking => 'چیک کر رہا ہے...';

  @override
  String get settingsEnableLocalNetwork =>
      'ترتیبات میں مقامی نیٹ ورک کو فعال کریں۔';

  @override
  String get settingsNotConnectedWifi => 'WiFi سے منسلک نہیں ہے۔';

  @override
  String get settingsPermissionRequiredView => 'دیکھنے کے لیے اجازت درکار ہے۔';

  @override
  String get settingsAllPermissionsGranted => 'تمام اجازتیں دی گئیں۔';

  @override
  String get settingsLocalNetworkNeeded => 'مقامی نیٹ ورک کی اجازت درکار ہے۔';

  @override
  String get settingsLocationNeeded => 'مقام کی اجازت درکار ہے۔';

  @override
  String get settingsRefreshPermissions => 'اجازتیں تازہ کریں۔';

  @override
  String get settingsAboutWifiPermission => 'WiFi نام کی اجازت کے بارے میں';

  @override
  String get settingsWifiPermissionExplanation =>
      'آپ کا WiFi نام اس بات کی تصدیق کرنے میں مدد کرتا ہے کہ آپ کا فون اور Wemo آلات ایک ہی نیٹ ورک پر ہیں۔';

  @override
  String get settingsWifiPermissionIos =>
      'iOS پر، آپ کے WiFi نیٹ ورک کا نام ظاہر کرنے کے لیے مقام کی اجازت درکار ہوتی ہے۔';

  @override
  String get settingsImportant => 'اہم:';

  @override
  String get settingsPrivacyNote =>
      '• آپ کے مقام کو کبھی بھی ٹریک نہیں کیا جاتا ہے۔\n• مقام کا کوئی ڈیٹا اکٹھا یا ذخیرہ نہیں کیا جاتا ہے۔';

  @override
  String get settingsWifiPermissionImportant =>
      '• ڈیوائس کی دریافت اس اجازت کے بغیر کام کرتی ہے۔\n• یہ صرف WiFi نام دکھانے کے لیے ضروری ہے۔\n• مقام کا کوئی ڈیٹا اکٹھا یا ذخیرہ نہیں کیا جاتا ہے۔';

  @override
  String get settingsGrantPermission => 'اجازت دیں۔';

  @override
  String get settingsHowLongScan => 'آلات کے لیے کتنی دیر تک اسکین کرنا ہے:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'دریافت کا ٹائم آؤٹ $seconds سیکنڈز پر سیٹ ہے۔';
  }

  @override
  String get settingsHowLongResponses =>
      'ڈیوائس کے جوابات کا کتنا انتظار کرنا ہے:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'اگر آپ کو \"کنکشن بند\" کی خرابیاں نظر آئیں تو اس قدر میں اضافہ کریں۔';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'درخواست کا ٹائم آؤٹ $seconds سیکنڈ پر سیٹ ہے۔';
  }

  @override
  String get settingsSetRefreshInterval =>
      'خودکار حالت ریفریش کے لیے وقفہ سیٹ کریں:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'ریفریش وقفہ $seconds سیکنڈ پر سیٹ کر دیا گیا۔';
  }

  @override
  String get settingsAboutTagline =>
      'آپ کے Wemo آلات کے لیے ایک صاف، نجی مقامی کنٹرولر۔';

  @override
  String get settingsAboutDescription =>
      'Bit Switch کلاؤڈ انحصار کے بغیر آلات کو تلاش اور کنٹرول کرنے کے لیے مقامی نیٹ ورک کی دریافت کا استعمال کرتا ہے۔';

  @override
  String get settingsVersionValue => 'ورژن 1.0.1';

  @override
  String get settingsProtocol => 'پروٹوکول: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'ملٹی کاسٹ ایڈریس: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'ڈیوائس پورٹس: 49152-49159';

  @override
  String get settingsControlProtocol => 'کنٹرول پروٹوکول: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'مشورہ: یقینی بنائیں کہ آپ کا آلہ اسی نیٹ ورک پر ہے جس پر آپ کے Wemo آلات ہیں اور یہ کہ UDP ملٹی کاسٹ کو بلاک نہیں کیا گیا ہے۔';

  @override
  String get settingsDevicePaired =>
      'ڈیوائس کا جوڑا بنایا گیا! آلے کی فہرست کو تازہ کیا جا رہا ہے...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds سیکنڈ فی درخواست';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'ہر ${seconds}s کو تازہ کر رہا ہے۔';
  }

  @override
  String get pairingTitle => 'نئے ڈیوائس کا جوڑا بنائیں';

  @override
  String get pairingSetupTitle => 'اپنا Wemo ڈیوائس سیٹ اپ کریں۔';

  @override
  String get pairingBeforeBegin =>
      'شروع کرنے سے پہلے، یقینی بنائیں کہ آپ کا Wemo آلہ سیٹ اپ موڈ میں ہے:';

  @override
  String get pairingPlugInTitle => 'اپنے Wemo ڈیوائس کو پلگ ان کریں۔';

  @override
  String get pairingPlugInBody =>
      'اسے پاور سے جوڑیں اور اس کے شروع ہونے کا انتظار کریں۔';

  @override
  String get pairingBlinkingLedTitle => 'ٹمٹمانے والی ایل ای ڈی کو تلاش کریں۔';

  @override
  String get pairingBlinkingLedBody =>
      'ایک پلک جھپکتی ہوئی LED اشارہ کرتی ہے کہ ڈیوائس سیٹ اپ موڈ میں ہے۔';

  @override
  String get pairingCheckWifiTitle => 'WiFi نیٹ ورک چیک کریں۔';

  @override
  String get pairingCheckWifiBody =>
      'یہ آلہ \"WeMo.XXXXX\" نامی نیٹ ورک کو نشر کرے گا۔';

  @override
  String get pairingSolidLedHint =>
      'اگر ایل ای ڈی ٹھوس ہے تو سیٹ اپ موڈ میں داخل ہونے کے لیے ری سیٹ بٹن کو 5 سیکنڈ کے لیے دبائے رکھیں۔';

  @override
  String get pairingStart => 'جوڑا بنانا شروع کریں۔';

  @override
  String get pairingConnectWifiTitle => 'ڈیوائس WiFi سے جڑیں۔';

  @override
  String get pairingConnectWifiBody =>
      'اپنے فون کی WiFi سیٹنگیں کھولیں اور \"WeMo\" سے شروع ہونے والے نیٹ ورک سے جڑیں۔';

  @override
  String get pairingCurrentNetwork => 'موجودہ نیٹ ورک';

  @override
  String get pairingConnectedToDevice => 'Wemo ڈیوائس سے منسلک!';

  @override
  String get pairingOpenWifiSettings => 'WiFi کی ترتیبات کھولیں۔';

  @override
  String get pairingConnectedButton => 'میں جڑ گیا ہوں۔';

  @override
  String get pairingLookingForDevice => 'آپ کے Wemo ڈیوائس کی تلاش ہے...';

  @override
  String get pairingManualIpPrompt => 'یا آلہ IP دستی طور پر درج کریں:';

  @override
  String get pairingDeviceIp => 'ڈیوائس IP ایڈریس';

  @override
  String get pairingConnectToIp => 'IP سے جڑیں۔';

  @override
  String get pairingSelectHomeWifi => 'اپنا گھر WiFi نیٹ ورک منتخب کریں:';

  @override
  String get pairingRefreshNetworks => 'نیٹ ورکس کو ریفریش کریں۔';

  @override
  String get pairingIosScanLimitation =>
      'iOS تیسرے فریق ایپس کو قریبی Wi-Fi نیٹ ورکس کے لیے اسکین کرنے سے سختی سے منع کرتا ہے۔ آپ کو نیٹ ورک SSID دستی طور پر داخل کرنے کی ضرورت پڑ سکتی ہے۔';

  @override
  String get pairingNoNetworks => 'کوئی نیٹ ورک نہیں ملا';

  @override
  String get pairingScanAgain => 'دوبارہ اسکین کریں۔';

  @override
  String get pairingWifiPassword => 'WiFi پاس ورڈ';

  @override
  String get pairingConnect => 'جڑیں۔';

  @override
  String get pairingEnterNetworkManually => 'دستی طور پر نیٹ ورک داخل کریں۔';

  @override
  String get pairingEnterNetworkName => 'نیٹ ورک کا نام درج کریں:';

  @override
  String get pairingNetworkName => 'نیٹ ورک کا نام (SSID)';

  @override
  String get pairingUseNetwork => 'یہ نیٹ ورک استعمال کریں۔';

  @override
  String get pairingConfiguringDevice => 'آلہ کنفیگر ہو رہا ہے...';

  @override
  String get pairingConfiguringWait =>
      'براہ کرم اس وقت تک انتظار کریں جب تک کہ آلہ آپ کے نیٹ ورک سے منسلک ہو۔';

  @override
  String get pairingReconnectTitle => 'اپنے نیٹ ورک سے دوبارہ جڑیں۔';

  @override
  String pairingReconnectBody(String ssid) {
    return 'آپ کا Wemo آلہ اب \"$ssid\" سے منسلک ہو رہا ہے۔ براہ کرم اپنے فون کو اسی نیٹ ورک سے دوبارہ جوڑیں۔';
  }

  @override
  String get pairingBackOnHome => 'ہوم نیٹ ورک پر واپس!';

  @override
  String get pairingReconnectedButton => 'میں دوبارہ جڑ گیا ہوں۔';

  @override
  String get pairingFinalizingSetup => 'سیٹ اپ کو حتمی شکل دی جا رہی ہے...';

  @override
  String get pairingSetupComplete => 'سیٹ اپ مکمل!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid سے منسلک ہے۔';
  }

  @override
  String get pairingDeviceReady =>
      'آپ کا آلہ اب سیٹ اپ ہے اور ہوم اسکرین پر ظاہر ہوگا۔';

  @override
  String get pairingSomethingWrong => 'کچھ غلط ہو گیا۔';

  @override
  String get pairingStartOver => 'دوبارہ شروع کریں۔';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi کی ترتیبات نہیں کھول سکیں۔ براہ کرم انہیں دستی طور پر کھولیں۔';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'آپ کا فون اب بھی \"$ssid\" سے منسلک ہے۔ براہ کرم WiFi کی ترتیبات کھولیں، WeMo ڈیوائس نیٹ ورک سے جڑیں، پھر دوبارہ کوشش کریں۔';
  }

  @override
  String get pairingLoadingLooking => 'آلہ تلاش کر رہا ہے...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'WeMo آلہ $ip پر نہیں مل سکا۔ یقینی بنائیں کہ آپ کا فون WeMo WiFi نیٹ ورک سے منسلک ہے، پھر دوبارہ کوشش کریں۔ آپ آلہ IP دستی طور پر بھی داخل کر سکتے ہیں۔';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'آلہ دریافت کرنے میں خرابی: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip سے منسلک ہو رہا ہے...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip پر کوئی آلہ نہیں ملا';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip سے منسلک ہونے میں خرابی: $error';
  }

  @override
  String get pairingLoadingScanning => 'نیٹ ورکس کے لیے اسکین کیا جا رہا ہے...';

  @override
  String pairingErrorScanning(String error) {
    return 'نیٹ ورکس کو اسکین نہیں کیا جا سکا: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'براہ کرم ایک نیٹ ورک منتخب کریں اور پاس ورڈ درج کریں۔';

  @override
  String get pairingLoadingSendingCredentials =>
      'نیٹ ورک کی اسناد بھیجی جا رہی ہیں...';

  @override
  String get pairingLoadingWaitingConnection =>
      'آلہ کے منسلک ہونے کا انتظار کر رہا ہے...';

  @override
  String pairingErrorConfigure(String error) {
    return 'نیٹ ورک کنفیگر کرنے میں ناکام: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'پاس ورڈ بہت چھوٹا ہے۔ براہ کرم چیک کریں اور دوبارہ کوشش کریں۔';

  @override
  String get pairingErrorPasswordIncorrect =>
      'رابطہ قائم کرنے میں ناکام۔ براہ کرم پاس ورڈ چیک کریں۔';

  @override
  String get pairingErrorConnectionTimeout =>
      'کنکشن کا وقت ختم ہو گیا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String pairingErrorFinalizing(String error) {
    return 'سیٹ اپ کو حتمی شکل دینے میں خرابی: $error';
  }

  @override
  String get detailRefreshState => 'حالت کو تازہ کریں۔';

  @override
  String get detailDeviceInfo => 'ڈیوائس کی معلومات';

  @override
  String get detailAdvanced => 'اعلی درجے کی';

  @override
  String get detailWifiSetup => 'WiFi سیٹ اپ';

  @override
  String get detailReset => 'دوبارہ ترتیب دیں۔';

  @override
  String get detailUnreachable =>
      'آلہ ناقابل رسائی ہے۔ نیٹ ورک کنکشن چیک کریں۔';

  @override
  String detailFailedToggle(String error) {
    return 'ٹوگل کرنے میں ناکام: $error';
  }

  @override
  String get detailDeviceInformation => 'ڈیوائس کی معلومات';

  @override
  String get detailPermissionScan =>
      'WiFi نیٹ ورکس کو اسکین کرنے کے لیے اجازت درکار ہے۔';

  @override
  String get detailScanFailedManual =>
      'نیٹ ورکس کو اسکین نہیں کیا جا سکا۔ نیٹ ورک کا نام دستی طور پر درج کریں۔';

  @override
  String get detailEnterNetworkNameError =>
      'براہ کرم نیٹ ورک کا نام درج کریں یا منتخب کریں۔';

  @override
  String get detailEnterPasswordError => 'براہ کرم نیٹ ورک پاس ورڈ درج کریں۔';

  @override
  String get detailWifiSuccess => 'WiFi کامیابی سے کنفیگر ہو گیا!';

  @override
  String get detailScanNetworks => 'نیٹ ورکس کے لیے اسکین کریں۔';

  @override
  String detailConfigureWifiFor(String device) {
    return 'WiFi نیٹ ورک کو \"$device\" کے لیے ترتیب دیں';
  }

  @override
  String get detailAvailableNetworks => 'دستیاب نیٹ ورکس';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS تیسرے فریق ایپس کو قریبی Wi-Fi نیٹ ورکس کے لیے اسکین کرنے سے سختی سے منع کرتا ہے۔ براہ کرم نیچے اپنے نیٹ ورک کا نام دستی طور پر درج کریں۔';

  @override
  String get detailTapRefreshScan =>
      'نیٹ ورکس کو اسکین کرنے کے لیے ریفریش پر ٹیپ کریں۔';

  @override
  String get detailEnterNetworkBelow => 'نیچے اپنے نیٹ ورک کا نام درج کریں۔';

  @override
  String get detailNetworkCredentials => 'نیٹ ورک کی اسناد';

  @override
  String get detailConnecting => 'نیٹ ورک سے منسلک ہو رہا ہے...';

  @override
  String get detailConnected => 'کامیابی سے جڑ گیا!';

  @override
  String get detailPasswordShort => 'پاس ورڈ بہت چھوٹا ہے۔';

  @override
  String get detailAuthenticationFailed =>
      'تصدیق ناکام ہو گئی - پاس ورڈ چیک کریں۔';

  @override
  String get detailConnectionFailed => 'کنکشن ناکام ہو گیا۔';

  @override
  String get detailSelectReset => 'براہ کرم منتخب کریں کہ کیا ری سیٹ کرنا ہے۔';

  @override
  String get detailResetSchedulesWarning =>
      '• تمام نظام الاوقات اور آٹومیشن قواعد حذف کر دیے جائیں گے۔';

  @override
  String get detailResetWifiWarning => '• WiFi کی ترتیبات مٹ جائیں گی۔';

  @override
  String get detailSetupAgainWarning =>
      '• آپ کو آلہ دوبارہ ترتیب دینے کی ضرورت ہوگی۔';

  @override
  String get detailUnreachableWarning =>
      'آلہ عارضی طور پر ناقابل رسائی ہو سکتا ہے۔';

  @override
  String get detailConfirmReset => 'ری سیٹ کی تصدیق کریں۔';

  @override
  String detailConfirmResetDevice(String device) {
    return 'کیا آپ واقعی \"$device\" کو دوبارہ ترتیب دینا چاہتے ہیں؟';
  }

  @override
  String get detailThisWill => 'یہ کرے گا:';

  @override
  String get detailCannotUndo => 'اس کارروائی کو کالعدم نہیں کیا جا سکتا۔';

  @override
  String get detailYesReset => 'ہاں، دوبارہ ترتیب دیں۔';

  @override
  String get detailResetSuccess => 'آلہ کامیابی سے ری سیٹ ہو گیا۔';

  @override
  String get detailResetRemote => 'آلہ دور سے ری سیٹ ہو جائے گا۔';

  @override
  String get detailResetFailed => 'ری سیٹ ناکام ہو گیا۔';

  @override
  String get detailFactoryReset => 'فیکٹری ری سیٹ';

  @override
  String get detailFactoryResetWarning =>
      'یہ تمام ترتیبات کو مٹا دے گا اور آلہ کو فیکٹری ڈیفالٹس پر بحال کر دے گا۔ آپ کو آلہ دوبارہ ترتیب دینے کی ضرورت ہوگی۔\n\nاس کارروائی کو کالعدم نہیں کیا جا سکتا۔';

  @override
  String get detailFactoryResetInitiated => 'فیکٹری ری سیٹ شروع کر دیا گیا۔';

  @override
  String get detailResetDevice => 'ڈیوائس کو ری سیٹ کریں۔';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" کے لیے اختیارات کو دوبارہ ترتیب دیں';
  }

  @override
  String get detailResetUserData => 'صارف کا ڈیٹا ری سیٹ کریں۔';

  @override
  String get detailResetUserDataSubtitle =>
      'نظام الاوقات اور قواعد کو صاف کرتا ہے۔';

  @override
  String get detailResetWifi => 'WiFi سیٹنگز کو ری سیٹ کریں۔';

  @override
  String get detailResetWifiSubtitle =>
      'آلہ کو دوبارہ ترتیب دینے کی ضرورت ہوگی۔';

  @override
  String get widgetBrightness => 'چمک';

  @override
  String get widgetEnergyStatistics => 'توانائی کے اعدادوشمار';

  @override
  String get widgetCurrentPower => 'کرنٹ پاور';

  @override
  String get widgetToday => 'آج';

  @override
  String get widgetTotal => 'کل';

  @override
  String get widgetOnTimeToday => 'آج کے وقت پر';

  @override
  String get widgetTotalOnTime => 'ٹوٹل آن ٹائم';

  @override
  String get widgetStandby => 'اسٹینڈ بائی';

  @override
  String get widgetUnknown => 'نامعلوم';

  @override
  String get widgetOpenNetwork => 'نیٹ ورک کھولیں۔';

  @override
  String get widgetWepInsecure => 'WEP (غیر محفوظ)';
}
