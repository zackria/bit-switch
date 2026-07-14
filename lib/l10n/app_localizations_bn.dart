// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'ডিভাইস এই কর্ম সমর্থন করে না.';

  @override
  String get errInvalidArgs => 'ডিভাইসে অবৈধ আর্গুমেন্ট পাঠানো হয়েছে।';

  @override
  String get errActionFailed =>
      'ডিভাইসটি অনুরোধ করা ক্রিয়া সম্পাদন করতে ব্যর্থ হয়েছে৷';

  @override
  String get errInvalidValue => 'একটি অবৈধ মান প্রদান করা হয়েছে.';

  @override
  String get errValueOutOfRange => 'মানটি গ্রহণযোগ্য সীমার বাইরে।';

  @override
  String get errFeatureNotAvailable => 'এই বৈশিষ্ট্যটি এই ডিভাইসে উপলব্ধ নয়৷';

  @override
  String get errOutOfMemory => 'ডিভাইসটি মেমরির বাইরে। পরে আবার চেষ্টা করুন.';

  @override
  String get errManualActionRequired => 'ডিভাইসে ম্যানুয়াল অ্যাকশন প্রয়োজন।';

  @override
  String get errActionNotAuthorized => 'এই কর্ম অনুমোদিত নয়.';

  @override
  String get errUnexpected =>
      'একটি অপ্রত্যাশিত ত্রুটি ঘটেছে৷ আবার চেষ্টা করুন.';

  @override
  String get errDeviceUnreachableOffline =>
      'ডিভাইসে পৌঁছাতে অক্ষম। এটি অফলাইন বা অন্য কোনো নেটওয়ার্কে হতে পারে।';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts প্রচেষ্টার পরে অনুরোধের সময় শেষ হয়েছে৷ ডিভাইসটি অফলাইনে থাকতে পারে।';
  }

  @override
  String get errRequestTimedOut =>
      'অনুরোধের সময় শেষ। ডিভাইসটি অফলাইনে থাকতে পারে।';

  @override
  String get errNoRouteToHost =>
      'ডিভাইসে পৌঁছানো যাচ্ছে না। অনুগ্রহ করে আপনার WiFi সংযোগ পরীক্ষা করুন।';

  @override
  String get errHostUnreachable =>
      'ডিভাইসটি পাওয়া যাচ্ছে না। অনুগ্রহ করে নিশ্চিত করুন যে এটি চালু আছে এবং WiFi এর সাথে সংযুক্ত আছে।';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts প্রচেষ্টার পরে ডিভাইসের সাথে যোগাযোগ করতে অক্ষম৷';
  }

  @override
  String get errNetworkErrorComm =>
      'নেটওয়ার্ক ত্রুটি: ডিভাইসের সাথে যোগাযোগ করতে অক্ষম৷';

  @override
  String get errActionNotAuthorizedDevice =>
      'এই ক্রিয়াটি ডিভাইসে অনুমোদিত নয়৷';

  @override
  String get errDeviceServiceNotFound =>
      'ডিভাইস পরিষেবা পাওয়া যায়নি. ডিভাইসটির একটি ফার্মওয়্যার আপডেটের প্রয়োজন হতে পারে।';

  @override
  String get errDeviceEncounteredError =>
      'অনুরোধটি প্রক্রিয়া করার সময় ডিভাইসটি একটি ত্রুটির সম্মুখীন হয়েছে৷';

  @override
  String get errDeviceInternalError =>
      'ডিভাইসটি একটি অভ্যন্তরীণ ত্রুটি ফিরিয়ে দিয়েছে৷';

  @override
  String get errDeviceTempUnavailable =>
      'ডিভাইসটি সাময়িকভাবে অনুপলব্ধ। আবার চেষ্টা করুন.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ডিভাইস একটি ত্রুটি ফেরত দিয়েছে (HTTP $code)।';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ডিভাইসে $action করতে ব্যর্থ হয়েছে৷';
  }

  @override
  String get errDeviceReturnedError => 'ডিভাইসটি একটি ত্রুটি ফিরিয়ে দিয়েছে৷';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation অপারেশনের সময় শেষ হয়েছে৷ আবার চেষ্টা করুন.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds সেকেন্ড পরে অপারেশনের সময় শেষ হয়েছে৷';
  }

  @override
  String get errOperationTimedOut =>
      'অপারেশন সময় শেষ হয়েছে. আবার চেষ্টা করুন.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'ডিভাইস খুঁজতে সেটিংসে স্থানীয় নেটওয়ার্ক অনুমতি সক্ষম করুন।';

  @override
  String get errCannotAccessLocalNetwork =>
      'স্থানীয় নেটওয়ার্ক অ্যাক্সেস করতে পারবেন না. অনুগ্রহ করে সেটিংসে স্থানীয় নেটওয়ার্ক অনুমতি সক্ষম করুন৷';

  @override
  String get errCheckWifiConnection =>
      'ডিভাইসগুলি আবিষ্কার করতে অক্ষম৷ অনুগ্রহ করে আপনার WiFi সংযোগ পরীক্ষা করুন৷';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'আবিষ্কার বাধাপ্রাপ্ত. $count ডিভাইস(গুলি) পাওয়া গেছে।';
  }

  @override
  String get errNoDevicesFound =>
      'কোনো ডিভাইস পাওয়া যায়নি। অনুগ্রহ করে নিশ্চিত করুন যে ডিভাইসগুলি চালু আছে এবং আপনার নেটওয়ার্কের সাথে সংযুক্ত আছে।';

  @override
  String get actionGetDeviceState => 'ডিভাইসের অবস্থা পান';

  @override
  String get actionSetDeviceState => 'ডিভাইসের অবস্থা সেট করুন';

  @override
  String get actionGetEnergyData => 'শক্তি ডেটা পান';

  @override
  String get actionScanNetworks => 'নেটওয়ার্কের জন্য স্ক্যান করুন';

  @override
  String get actionConnectWifi => 'WiFi এর সাথে সংযোগ করুন';

  @override
  String get actionCheckConnection => 'সংযোগ স্থিতি পরীক্ষা করুন';

  @override
  String get actionResetDevice => 'ডিভাইস রিসেট করুন';

  @override
  String get actionPerform => 'কর্ম সঞ্চালন';

  @override
  String get suggestTryRefreshing =>
      'ডিভাইসের তালিকা রিফ্রেশ করার চেষ্টা করুন বা ডিভাইসটি সাড়া দিচ্ছে কিনা তা পরীক্ষা করুন।';

  @override
  String get suggestEnsurePoweredOn =>
      'ডিভাইসটি চালু আছে এবং আপনার WiFi নেটওয়ার্কের সাথে সংযুক্ত আছে তা নিশ্চিত করুন।';

  @override
  String get suggestMakeSureSameWifi =>
      'নিশ্চিত করুন যে আপনার ফোনটি আপনার ডিভাইসগুলির মতো একই WiFi নেটওয়ার্কের সাথে সংযুক্ত রয়েছে৷';

  @override
  String get suggestCheckPhysical =>
      'যেকোন বোতাম বা সুইচের জন্য শারীরিক ডিভাইসটি পরীক্ষা করুন যাতে মনোযোগ প্রয়োজন।';

  @override
  String get suggestWaitAndTry => 'কিছুক্ষণ অপেক্ষা করুন এবং আবার চেষ্টা করুন।';

  @override
  String get suggestDeviceBusy =>
      'ডিভাইস ব্যস্ত হতে পারে. কয়েক সেকেন্ডের মধ্যে আবার চেষ্টা করুন।';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'বাতিল করুন';

  @override
  String get commonClose => 'বন্ধ';

  @override
  String get commonDone => 'সম্পন্ন';

  @override
  String get commonLater => 'পরে';

  @override
  String get commonRefresh => 'রিফ্রেশ';

  @override
  String get commonTryAgain => 'আবার চেষ্টা করুন';

  @override
  String get commonOpenSettings => 'সেটিংস খুলুন';

  @override
  String get commonGrant => 'অনুদান';

  @override
  String get commonFix => 'ঠিক করুন';

  @override
  String get commonOn => 'চালু';

  @override
  String get commonOff => 'বন্ধ';

  @override
  String get commonOffline => 'অফলাইন';

  @override
  String get commonStatus => 'স্ট্যাটাস';

  @override
  String get commonName => 'নাম';

  @override
  String get commonType => 'টাইপ';

  @override
  String get commonModel => 'মডেল';

  @override
  String get commonManufacturer => 'প্রস্তুতকারক';

  @override
  String get commonSerial => 'সিরিয়াল';

  @override
  String get commonFirmware => 'ফার্মওয়্যার';

  @override
  String get commonHost => 'হোস্ট';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'পাসওয়ার্ড';

  @override
  String get commonUnknownWifi => 'অজানা Wi-Fi';

  @override
  String get commonNotConnected => 'সংযুক্ত নয়';

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
      other: '$seconds সেকেন্ড',
      one: '1 সেকেন্ড',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'স্মার্ট সুইচ';

  @override
  String get deviceTypeLightSwitch => 'হালকা সুইচ';

  @override
  String get deviceTypeDimmer => 'ম্লান';

  @override
  String get deviceTypeInsightPlug => 'ইনসাইট প্লাগ';

  @override
  String get deviceTypeMotionSensor => 'মোশন সেন্সর';

  @override
  String get deviceTypeMaker => 'মেকার';

  @override
  String get deviceTypeBridge => 'সেতু';

  @override
  String get deviceTypeCoffeeMaker => 'কফি মেকার';

  @override
  String get deviceTypeCrockpot => 'ক্রকপট';

  @override
  String get deviceTypeHumidifier => 'হিউমিডিফায়ার';

  @override
  String get deviceTypeOutdoorPlug => 'আউটডোর প্লাগ';

  @override
  String get deviceTypeUnknown => 'অজানা ডিভাইস';

  @override
  String get pairingStepGetStarted => 'শুরু করুন';

  @override
  String get pairingStepConnectToDevice => 'ডিভাইসে সংযোগ করুন';

  @override
  String get pairingStepFindDevice => 'ডিভাইস খুঁজুন';

  @override
  String get pairingStepSelectNetwork => 'নেটওয়ার্ক নির্বাচন করুন';

  @override
  String get pairingStepConfiguring => 'কনফিগার করা হচ্ছে';

  @override
  String get pairingStepReconnect => 'পুনরায় সংযোগ করুন';

  @override
  String get pairingStepFinalizing => 'চূড়ান্ত করা';

  @override
  String get pairingStepSuccess => 'সফলতা';

  @override
  String get pairingStepError => 'ত্রুটি';

  @override
  String get homeToggleDebug => 'ডিবাগ মোড টগল করুন';

  @override
  String get homeRefreshDevices => 'ডিভাইস রিফ্রেশ করুন';

  @override
  String get homeSettings => 'সেটিংস';

  @override
  String get homeDismiss => 'খারিজ';

  @override
  String get homeDiscovering => 'ডিভাইসগুলি আবিষ্কার করা হচ্ছে...';

  @override
  String get homeNoDevices => 'কোনো ডিভাইস পাওয়া যায়নি';

  @override
  String get homeScanDevices => 'ডিভাইসের জন্য স্ক্যান করুন';

  @override
  String get homeLookingForMore => 'আরও ডিভাইস খুঁজছেন...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ডিভাইস পাওয়া গেছে',
      one: '১টি ডিভাইস পাওয়া গেছে',
      zero: 'কোনো ডিভাইস পাওয়া যায়নি',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ডিভাইস পাওয়া গেছে, স্ক্যান করা হচ্ছে...',
      one: '1টি ডিভাইস পাওয়া গেছে, স্ক্যান করা হচ্ছে...',
      zero: 'কোনো ডিভাইস পাওয়া যায়নি, স্ক্যান করা হচ্ছে...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'অটো';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi এর সাথে সংযুক্ত';

  @override
  String get homePermissionExplanation =>
      'আপনার Wi-Fi বিবরণ খুঁজে পেতে অবস্থানের তথ্য ব্যবহার করা হয়। স্থানীয় নেটওয়ার্ক অ্যাক্সেস আপনাকে আপনার স্মার্ট সুইচ এবং ডিভাইসগুলি নিয়ন্ত্রণ করতে দেয়৷';

  @override
  String get homeDebugLog => 'ডিবাগ লগ';

  @override
  String get homeClear => 'পরিষ্কার';

  @override
  String get homeDebugEmpty =>
      'আবিষ্কার শুরু করতে এবং লগ দেখতে রিফ্রেশ ট্যাপ করুন...';

  @override
  String get homeProbeHint => 'IP:পোর্ট (যেমন 192.168.1.100:49153)';

  @override
  String get homeProbe => 'অনুসন্ধান';

  @override
  String get homeScanning => 'স্ক্যান করা হচ্ছে...';

  @override
  String get homeScanSubnet => 'পুরো সাবনেট স্ক্যান করুন (iOS ফিক্স)';

  @override
  String homePlatform(String platform, String version) {
    return 'প্ল্যাটফর্ম: $platform $version';
  }

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get settingsSectionNetwork => 'নেটওয়ার্ক';

  @override
  String get settingsSectionDeviceSetup => 'ডিভাইস সেটআপ';

  @override
  String get settingsSectionDiscovery => 'আবিষ্কার';

  @override
  String get settingsSectionAbout => 'সম্পর্কে';

  @override
  String get settingsSectionDebug => 'ডিবাগ';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'অনুমতি দেওয়া হয়েছে! WiFi নাম: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'অবস্থান দেওয়া হয়েছে, কিন্তু স্থানীয় নেটওয়ার্কের অনুমতিও প্রয়োজন৷ সেটিংস চেক করুন।';

  @override
  String get settingsLocationRequired => 'অবস্থান অনুমতি প্রয়োজন';

  @override
  String get settingsLocationRequiredBody =>
      'আপনার WiFi নেটওয়ার্ক নাম প্রদর্শন করতে, iOS-এর অবস্থানের অনুমতি প্রয়োজন৷';

  @override
  String get settingsRequiredPermissions => 'প্রয়োজনীয় অনুমতি:';

  @override
  String get settingsPermissionList =>
      '1. অবস্থান পরিষেবা (\"অ্যাপ ব্যবহার করার সময়\")\n2. স্থানীয় নেটওয়ার্ক';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'দ্রষ্টব্য: ডিভাইস আবিষ্কার অবস্থান অনুমতি ছাড়া কাজ করে. এই অনুমতি শুধুমাত্র আপনার WiFi নেটওয়ার্ক নাম প্রদর্শন করতে ব্যবহৃত হয়.';

  @override
  String get settingsEnableLocation => 'সেটিংসে অবস্থান সক্ষম করুন৷';

  @override
  String get settingsLocationDeniedBody =>
      'অবস্থান অনুমতি অস্বীকার করা হয়েছে. আপনি সিস্টেম সেটিংস থেকে এটি সক্ষম করতে পারেন।';

  @override
  String get settingsStepsToEnable => 'সক্ষম করার পদক্ষেপ:';

  @override
  String get settingsEnableLocationSteps =>
      '1. সেটিংস খুলুন\n2. \"Bit Switch\" এ স্ক্রোল করুন\n3. \"অবস্থান\" আলতো চাপুন\n4. \"অ্যাপ ব্যবহার করার সময়\" নির্বাচন করুন\n5. এই অ্যাপে ফিরে যান এবং রিফ্রেশ বোতামে আলতো চাপুন';

  @override
  String get settingsLocationOnlyWifiName =>
      'দ্রষ্টব্য: অবস্থানের অনুমতি শুধুমাত্র WiFi নাম প্রদর্শনের জন্য প্রয়োজন। ডিভাইস আবিষ্কার এটি ছাড়া কাজ করে।';

  @override
  String get settingsAdditionalPermission => 'অতিরিক্ত অনুমতি প্রয়োজন';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo ডিভাইসগুলি আবিষ্কার ও নিয়ন্ত্রণ করতে স্থানীয় নেটওয়ার্কের অনুমতি প্রয়োজন৷';

  @override
  String get settingsWifiNameNotVisible =>
      'আপনার কাছে অবস্থানের অনুমতি আছে, কিন্তু WiFi নামটি এখনও দৃশ্যমান নয়৷';

  @override
  String get settingsPleaseEnable => 'অনুগ্রহ করে সক্ষম করুন:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. আইফোন সেটিংসে যান\n2. \"Bit Switch\" এ স্ক্রোল করুন\n3. \"স্থানীয় নেটওয়ার্ক\" সক্ষম করুন';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS-এ ডিভাইস আবিষ্কার এবং WiFi নাম অ্যাক্সেস উভয়ের জন্য স্থানীয় নেটওয়ার্ক অনুমতি প্রয়োজন।';

  @override
  String get settingsPairNewDevice => 'নতুন ডিভাইস পেয়ার করুন';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'একটি নতুন Wemo ডিভাইস সেট আপ করুন৷';

  @override
  String get settingsDiscoveryTimeout => 'আবিষ্কারের সময়সীমা';

  @override
  String get settingsRequestTimeout => 'অনুরোধের সময়সীমা';

  @override
  String get settingsAutoRefresh => 'স্বয়ংক্রিয় রিফ্রেশ';

  @override
  String get settingsAutoRefreshOn =>
      'চালু - ডিভাইসের অবস্থা স্বয়ংক্রিয়ভাবে রিফ্রেশ হয়';

  @override
  String get settingsAutoRefreshOff =>
      'বন্ধ - ম্যানুয়াল রিফ্রেশ বোতাম ব্যবহার করুন';

  @override
  String get settingsAutoRefreshInterval => 'স্বয়ংক্রিয়-রিফ্রেশ ব্যবধান';

  @override
  String get settingsAbout => 'Bit Switch সম্পর্কে';

  @override
  String get settingsVersion => 'সংস্করণ';

  @override
  String get settingsNetworkDiagnostics => 'নেটওয়ার্ক ডায়াগনস্টিকস';

  @override
  String get settingsShowDebug => 'ডিবাগ মোড দেখান';

  @override
  String get settingsShowDebugSubtitle =>
      'হোম স্ক্রিনে ডিবাগ নিয়ন্ত্রণ এবং নেটওয়ার্ক ডায়াগনস্টিক দেখান';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'সমস্যা সমাধানের জন্য হোম স্ক্রিনে ডিবাগ আইকন দেখান';

  @override
  String get settingsCurrentNetwork => 'বর্তমান নেটওয়ার্ক';

  @override
  String get settingsNetworkAccessStatus => 'নেটওয়ার্ক অ্যাক্সেস স্থিতি';

  @override
  String get settingsNetworkAccessGranted =>
      'স্থানীয় নেটওয়ার্ক অ্যাক্সেস উপলব্ধ';

  @override
  String get settingsNetworkAccessMissing =>
      'অতিরিক্ত অনুমতি প্রয়োজন হতে পারে';

  @override
  String get settingsChecking => 'পরীক্ষা করা হচ্ছে...';

  @override
  String get settingsEnableLocalNetwork =>
      'সেটিংসে স্থানীয় নেটওয়ার্ক সক্ষম করুন৷';

  @override
  String get settingsNotConnectedWifi => 'WiFi এর সাথে সংযুক্ত নয়৷';

  @override
  String get settingsPermissionRequiredView => 'দেখার জন্য অনুমতি প্রয়োজন';

  @override
  String get settingsAllPermissionsGranted => 'সমস্ত অনুমতি দেওয়া হয়েছে';

  @override
  String get settingsLocalNetworkNeeded =>
      'স্থানীয় নেটওয়ার্ক অনুমতি প্রয়োজন';

  @override
  String get settingsLocationNeeded => 'অবস্থান অনুমতি প্রয়োজন';

  @override
  String get settingsRefreshPermissions => 'রিফ্রেশ অনুমতি';

  @override
  String get settingsAboutWifiPermission => 'WiFi নামের অনুমতি সম্পর্কে';

  @override
  String get settingsWifiPermissionExplanation =>
      'আপনার WiFi নাম নিশ্চিত করতে সাহায্য করে যে আপনার ফোন এবং Wemo ডিভাইস একই নেটওয়ার্কে আছে।';

  @override
  String get settingsWifiPermissionIos =>
      'iOS-এ, আপনার WiFi নেটওয়ার্ক নাম প্রদর্শনের জন্য অবস্থানের অনুমতি প্রয়োজন।';

  @override
  String get settingsImportant => 'গুরুত্বপূর্ণ:';

  @override
  String get settingsPrivacyNote =>
      '• আপনার অবস্থান কখনই ট্র্যাক করা হয় না৷\n• কোন অবস্থানের তথ্য সংগ্রহ বা সংরক্ষণ করা হয় না';

  @override
  String get settingsWifiPermissionImportant =>
      '• ডিভাইস আবিষ্কার এই অনুমতি ছাড়া কাজ করে\n• এটি শুধুমাত্র WiFi নাম দেখানোর জন্য প্রয়োজন\n• কোন অবস্থানের তথ্য সংগ্রহ বা সংরক্ষণ করা হয় না';

  @override
  String get settingsGrantPermission => 'অনুমতি দিন';

  @override
  String get settingsHowLongScan => 'ডিভাইসের জন্য কতক্ষণ স্ক্যান করতে হবে:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'আবিষ্কারের সময়সীমা $seconds সেকেন্ডে সেট করা হয়েছে';
  }

  @override
  String get settingsHowLongResponses =>
      'ডিভাইসের প্রতিক্রিয়ার জন্য কতক্ষণ অপেক্ষা করতে হবে:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'আপনি যদি \"সংযোগ বন্ধ\" ত্রুটিগুলি দেখতে পান তবে এই মানটি বাড়ান৷';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'অনুরোধের সময়সীমা $seconds সেকেন্ডে সেট করা হয়েছে';
  }

  @override
  String get settingsSetRefreshInterval =>
      'স্বয়ংক্রিয় অবস্থা রিফ্রেশের জন্য ব্যবধান সেট করুন:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'রিফ্রেশ ব্যবধান $seconds সেকেন্ডে সেট করা হয়েছে';
  }

  @override
  String get settingsAboutTagline =>
      'আপনার Wemo ডিভাইসের জন্য একটি পরিষ্কার, ব্যক্তিগত স্থানীয় নিয়ামক।';

  @override
  String get settingsAboutDescription =>
      'Bit Switch ক্লাউড নির্ভরতা ছাড়াই ডিভাইসগুলি খুঁজে পেতে এবং নিয়ন্ত্রণ করতে স্থানীয় নেটওয়ার্ক আবিষ্কার ব্যবহার করে।';

  @override
  String get settingsVersionValue => 'সংস্করণ 1.0.1';

  @override
  String get settingsProtocol => 'প্রোটোকল: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'মাল্টিকাস্ট ঠিকানা: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'ডিভাইস পোর্ট: 49152-49159';

  @override
  String get settingsControlProtocol => 'কন্ট্রোল প্রোটোকল: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'টিপ: নিশ্চিত করুন যে আপনার ডিভাইসটি আপনার Wemo ডিভাইসগুলির মতো একই নেটওয়ার্কে রয়েছে এবং UDP মাল্টিকাস্ট ব্লক করা নেই৷';

  @override
  String get settingsDevicePaired =>
      'ডিভাইস জোড়া! ডিভাইসের তালিকা রিফ্রেশ করা হচ্ছে...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'অনুরোধ প্রতি $seconds সেকেন্ড';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'প্রতিটি $seconds রিফ্রেশ করা হচ্ছে';
  }

  @override
  String get pairingTitle => 'নতুন ডিভাইস পেয়ার করুন';

  @override
  String get pairingSetupTitle => 'আপনার Wemo ডিভাইস সেট আপ করুন';

  @override
  String get pairingBeforeBegin =>
      'আপনি শুরু করার আগে, নিশ্চিত করুন যে আপনার Wemo ডিভাইস সেটআপ মোডে আছে:';

  @override
  String get pairingPlugInTitle => 'আপনার Wemo ডিভাইসে প্লাগ ইন করুন';

  @override
  String get pairingPlugInBody =>
      'এটিকে পাওয়ারে সংযুক্ত করুন এবং এটি শুরু হওয়ার জন্য অপেক্ষা করুন।';

  @override
  String get pairingBlinkingLedTitle => 'জ্বলজ্বলে LED জন্য দেখুন';

  @override
  String get pairingBlinkingLedBody =>
      'একটি জ্বলজ্বলে LED নির্দেশ করে যে ডিভাইসটি সেটআপ মোডে আছে।';

  @override
  String get pairingCheckWifiTitle => 'WiFi নেটওয়ার্কের জন্য চেক করুন';

  @override
  String get pairingCheckWifiBody =>
      'ডিভাইসটি \"WeMo.XXXXX\" নামে একটি নেটওয়ার্ক সম্প্রচার করবে।';

  @override
  String get pairingSolidLedHint =>
      'LED শক্ত হলে, সেটআপ মোডে প্রবেশ করতে 5 সেকেন্ডের জন্য রিসেট বোতামটি ধরে রাখুন।';

  @override
  String get pairingStart => 'পেয়ার করা শুরু করুন';

  @override
  String get pairingConnectWifiTitle => 'WiFi ডিভাইসের সাথে সংযোগ করুন';

  @override
  String get pairingConnectWifiBody =>
      'আপনার ফোনের WiFi সেটিংস খুলুন এবং \"WeMo\" দিয়ে শুরু হওয়া নেটওয়ার্কের সাথে সংযোগ করুন।';

  @override
  String get pairingCurrentNetwork => 'বর্তমান নেটওয়ার্ক';

  @override
  String get pairingConnectedToDevice => 'Wemo ডিভাইসের সাথে সংযুক্ত!';

  @override
  String get pairingOpenWifiSettings => 'WiFi সেটিংস খুলুন';

  @override
  String get pairingConnectedButton => 'আমি সংযুক্ত করেছি';

  @override
  String get pairingLookingForDevice => 'আপনার Wemo ডিভাইস খুঁজছেন...';

  @override
  String get pairingManualIpPrompt => 'অথবা ডিভাইস IP ম্যানুয়ালি লিখুন:';

  @override
  String get pairingDeviceIp => 'ডিভাইস IP ঠিকানা';

  @override
  String get pairingConnectToIp => 'IP এর সাথে সংযোগ করুন';

  @override
  String get pairingSelectHomeWifi =>
      'আপনার হোম WiFi নেটওয়ার্ক নির্বাচন করুন:';

  @override
  String get pairingRefreshNetworks => 'নেটওয়ার্ক রিফ্রেশ করুন';

  @override
  String get pairingIosScanLimitation =>
      'iOS কাছাকাছি Wi-Fi নেটওয়ার্কগুলির জন্য স্ক্যান করা থেকে তৃতীয় পক্ষের অ্যাপগুলিকে কঠোরভাবে নিষিদ্ধ করে৷ আপনাকে ম্যানুয়ালি নেটওয়ার্ক SSID প্রবেশ করতে হতে পারে৷';

  @override
  String get pairingNoNetworks => 'কোন নেটওয়ার্ক পাওয়া যায়নি';

  @override
  String get pairingScanAgain => 'আবার স্ক্যান করুন';

  @override
  String get pairingWifiPassword => 'WiFi পাসওয়ার্ড';

  @override
  String get pairingConnect => 'সংযোগ করুন';

  @override
  String get pairingEnterNetworkManually => 'ম্যানুয়ালি নেটওয়ার্ক লিখুন';

  @override
  String get pairingEnterNetworkName => 'নেটওয়ার্ক নাম লিখুন:';

  @override
  String get pairingNetworkName => 'নেটওয়ার্কের নাম (SSID)';

  @override
  String get pairingUseNetwork => 'এই নেটওয়ার্ক ব্যবহার করুন';

  @override
  String get pairingConfiguringDevice => 'ডিভাইস কনফিগার করা হচ্ছে...';

  @override
  String get pairingConfiguringWait =>
      'ডিভাইসটি আপনার নেটওয়ার্কের সাথে সংযুক্ত হওয়া পর্যন্ত অপেক্ষা করুন।';

  @override
  String get pairingReconnectTitle => 'আপনার নেটওয়ার্কে পুনরায় সংযোগ করুন';

  @override
  String pairingReconnectBody(String ssid) {
    return 'আপনার Wemo ডিভাইস এখন \"$ssid\" এর সাথে সংযুক্ত হচ্ছে। অনুগ্রহ করে একই নেটওয়ার্কে আপনার ফোন পুনরায় সংযোগ করুন৷';
  }

  @override
  String get pairingBackOnHome => 'হোম নেটওয়ার্কে ফিরে!';

  @override
  String get pairingReconnectedButton => 'আমি পুনরায় সংযোগ করেছি';

  @override
  String get pairingFinalizingSetup => 'সেটআপ চূড়ান্ত করা হচ্ছে...';

  @override
  String get pairingSetupComplete => 'সেটআপ সম্পূর্ণ!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid এর সাথে সংযুক্ত';
  }

  @override
  String get pairingDeviceReady =>
      'আপনার ডিভাইস এখন সেট আপ করা হয়েছে এবং হোম স্ক্রিনে প্রদর্শিত হবে৷';

  @override
  String get pairingSomethingWrong => 'কিছু ভুল হয়েছে';

  @override
  String get pairingStartOver => 'ওভার শুরু করুন';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi সেটিংস খুলতে পারেনি৷ তাদের ম্যানুয়ালি খুলুন.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'আপনার ফোন এখনও \"$ssid\" এর সাথে সংযুক্ত। অনুগ্রহ করে WiFi সেটিংস খুলুন, WeMo ডিভাইস নেটওয়ার্কে সংযোগ করুন, তারপর আবার চেষ্টা করুন৷';
  }

  @override
  String get pairingLoadingLooking => 'ডিভাইস খুঁজছেন...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip-এ WeMo ডিভাইস খুঁজে পাওয়া যায়নি। নিশ্চিত করুন যে আপনার ফোন WeMo WiFi নেটওয়ার্কের সাথে সংযুক্ত আছে, তারপর আবার চেষ্টা করুন৷ এছাড়াও আপনি ডিভাইস IP ম্যানুয়ালি প্রবেশ করতে পারেন।';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'ডিভাইস আবিষ্কারে ত্রুটি: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip এর সাথে সংযুক্ত হচ্ছে...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip এ কোন ডিভাইস পাওয়া যায়নি';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip এর সাথে সংযোগ করার সময় ত্রুটি: $error৷';
  }

  @override
  String get pairingLoadingScanning => 'নেটওয়ার্কের জন্য স্ক্যান করা হচ্ছে...';

  @override
  String pairingErrorScanning(String error) {
    return 'নেটওয়ার্ক স্ক্যান করা যায়নি: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'একটি নেটওয়ার্ক নির্বাচন করুন এবং পাসওয়ার্ড লিখুন.';

  @override
  String get pairingLoadingSendingCredentials =>
      'নেটওয়ার্ক শংসাপত্র পাঠানো হচ্ছে...';

  @override
  String get pairingLoadingWaitingConnection =>
      'ডিভাইস সংযোগের জন্য অপেক্ষা করা হচ্ছে...';

  @override
  String pairingErrorConfigure(String error) {
    return 'নেটওয়ার্ক কনফিগার করতে ব্যর্থ হয়েছে: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'পাসওয়ার্ড খুব ছোট। অনুগ্রহ করে চেক করুন এবং আবার চেষ্টা করুন।';

  @override
  String get pairingErrorPasswordIncorrect =>
      'সংযোগ করতে ব্যর্থ হয়েছে. পাসওয়ার্ড চেক করুন.';

  @override
  String get pairingErrorConnectionTimeout =>
      'সংযোগের সময় শেষ হয়েছে৷ আবার চেষ্টা করুন.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'সেটআপ চূড়ান্ত করার ত্রুটি: $error';
  }

  @override
  String get detailRefreshState => 'রিফ্রেশ অবস্থা';

  @override
  String get detailDeviceInfo => 'ডিভাইস তথ্য';

  @override
  String get detailAdvanced => 'উন্নত';

  @override
  String get detailWifiSetup => 'WiFi সেটআপ';

  @override
  String get detailReset => 'রিসেট করুন';

  @override
  String get detailUnreachable =>
      'ডিভাইসটি পাওয়া যাচ্ছে না। নেটওয়ার্ক সংযোগ পরীক্ষা করুন।';

  @override
  String detailFailedToggle(String error) {
    return 'টগল করতে ব্যর্থ হয়েছে: $error';
  }

  @override
  String get detailDeviceInformation => 'ডিভাইস তথ্য';

  @override
  String get detailPermissionScan =>
      'WiFi নেটওয়ার্ক স্ক্যান করার জন্য অনুমতি প্রয়োজন।';

  @override
  String get detailScanFailedManual =>
      'নেটওয়ার্ক স্ক্যান করা যায়নি। ম্যানুয়ালি নেটওয়ার্কের নাম লিখুন।';

  @override
  String get detailEnterNetworkNameError =>
      'অনুগ্রহ করে একটি নেটওয়ার্ক নাম লিখুন বা নির্বাচন করুন৷';

  @override
  String get detailEnterPasswordError => 'নেটওয়ার্ক পাসওয়ার্ড লিখুন';

  @override
  String get detailWifiSuccess => 'WiFi সফলভাবে কনফিগার করা হয়েছে!';

  @override
  String get detailScanNetworks => 'নেটওয়ার্কের জন্য স্ক্যান করুন';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" এর জন্য WiFi নেটওয়ার্ক কনফিগার করুন';
  }

  @override
  String get detailAvailableNetworks => 'উপলব্ধ নেটওয়ার্ক';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS কাছাকাছি Wi-Fi নেটওয়ার্কগুলির জন্য স্ক্যান করা থেকে তৃতীয় পক্ষের অ্যাপগুলিকে কঠোরভাবে নিষিদ্ধ করে৷ নিচে আপনার নেটওয়ার্ক নাম ম্যানুয়ালি লিখুন.';

  @override
  String get detailTapRefreshScan =>
      'নেটওয়ার্কের জন্য স্ক্যান করতে রিফ্রেশ আলতো চাপুন';

  @override
  String get detailEnterNetworkBelow => 'নীচে আপনার নেটওয়ার্ক নাম লিখুন';

  @override
  String get detailNetworkCredentials => 'নেটওয়ার্ক শংসাপত্র';

  @override
  String get detailConnecting => 'নেটওয়ার্কে সংযুক্ত হচ্ছে...';

  @override
  String get detailConnected => 'সফলভাবে সংযুক্ত!';

  @override
  String get detailPasswordShort => 'পাসওয়ার্ড খুব ছোট';

  @override
  String get detailAuthenticationFailed =>
      'প্রমাণীকরণ ব্যর্থ হয়েছে - পাসওয়ার্ড চেক করুন৷';

  @override
  String get detailConnectionFailed => 'সংযোগ ব্যর্থ হয়েছে৷';

  @override
  String get detailSelectReset => 'কি রিসেট করতে হবে তা নির্বাচন করুন';

  @override
  String get detailResetSchedulesWarning =>
      '• সমস্ত সময়সূচী এবং অটোমেশন নিয়ম মুছে ফেলা হবে';

  @override
  String get detailResetWifiWarning => '• WiFi সেটিংস মুছে ফেলা হবে৷';

  @override
  String get detailSetupAgainWarning => '• আপনাকে আবার ডিভাইস সেট আপ করতে হবে';

  @override
  String get detailUnreachableWarning =>
      '• ডিভাইসটি সাময়িকভাবে পৌঁছানো যায় না';

  @override
  String get detailConfirmReset => 'রিসেট নিশ্চিত করুন';

  @override
  String detailConfirmResetDevice(String device) {
    return 'আপনি কি \"$device\" রিসেট করার বিষয়ে নিশ্চিত?';
  }

  @override
  String get detailThisWill => 'এটি করবে:';

  @override
  String get detailCannotUndo => 'এই ক্রিয়াটি পূর্বাবস্থায় ফেরানো যাবে না৷';

  @override
  String get detailYesReset => 'হ্যাঁ, রিসেট করুন';

  @override
  String get detailResetSuccess => 'ডিভাইস সফলভাবে রিসেট করা হয়েছে';

  @override
  String get detailResetRemote => 'ডিভাইস রিমোট রিসেট হবে';

  @override
  String get detailResetFailed => 'রিসেট ব্যর্থ হয়েছে';

  @override
  String get detailFactoryReset => 'ফ্যাক্টরি রিসেট';

  @override
  String get detailFactoryResetWarning =>
      'এটি সমস্ত সেটিংস মুছে ফেলবে এবং ডিভাইসটিকে ফ্যাক্টরি ডিফল্টে পুনরুদ্ধার করবে৷ আপনাকে আবার ডিভাইসটি সেট আপ করতে হবে।\n\nএই ক্রিয়াটি পূর্বাবস্থায় ফেরানো যাবে না৷';

  @override
  String get detailFactoryResetInitiated => 'ফ্যাক্টরি রিসেট শুরু হয়েছে';

  @override
  String get detailResetDevice => 'ডিভাইস রিসেট করুন';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" এর জন্য বিকল্পগুলি রিসেট করুন';
  }

  @override
  String get detailResetUserData => 'ব্যবহারকারীর ডেটা রিসেট করুন';

  @override
  String get detailResetUserDataSubtitle => 'সময়সূচী এবং নিয়ম সাফ করে';

  @override
  String get detailResetWifi => 'WiFi সেটিংস রিসেট করুন';

  @override
  String get detailResetWifiSubtitle => 'ডিভাইস আবার সেট আপ করতে হবে';

  @override
  String get widgetBrightness => 'উজ্জ্বলতা';

  @override
  String get widgetEnergyStatistics => 'শক্তি পরিসংখ্যান';

  @override
  String get widgetCurrentPower => 'বর্তমান শক্তি';

  @override
  String get widgetToday => 'আজ';

  @override
  String get widgetTotal => 'মোট';

  @override
  String get widgetOnTimeToday => 'আজকের সময়ে';

  @override
  String get widgetTotalOnTime => 'টোটাল অন টাইম';

  @override
  String get widgetStandby => 'স্ট্যান্ডবাই';

  @override
  String get widgetUnknown => 'অজানা';

  @override
  String get widgetOpenNetwork => 'নেটওয়ার্ক খুলুন';

  @override
  String get widgetWepInsecure => 'WEP (নিরাপত্তাহীন)';
}
