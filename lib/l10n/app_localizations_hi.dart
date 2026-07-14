// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'डिवाइस इस क्रिया का समर्थन नहीं करता.';

  @override
  String get errInvalidArgs => 'डिवाइस पर अमान्य तर्क भेजे गए थे.';

  @override
  String get errActionFailed => 'डिवाइस अनुरोधित कार्रवाई करने में विफल रहा.';

  @override
  String get errInvalidValue => 'एक अमान्य मान प्रदान किया गया था.';

  @override
  String get errValueOutOfRange => 'मान स्वीकार्य सीमा से बाहर है.';

  @override
  String get errFeatureNotAvailable => 'यह सुविधा इस डिवाइस पर उपलब्ध नहीं है.';

  @override
  String get errOutOfMemory => 'डिवाइस मेमोरी से बाहर है. बाद में पुन: प्रयास।';

  @override
  String get errManualActionRequired =>
      'डिवाइस पर मैन्युअल कार्रवाई आवश्यक है.';

  @override
  String get errActionNotAuthorized => 'यह कार्रवाई अधिकृत नहीं है.';

  @override
  String get errUnexpected =>
      'एक अप्रत्याशित त्रुटि उत्पन्न हुई. कृपया पुन: प्रयास करें।';

  @override
  String get errDeviceUnreachableOffline =>
      'डिवाइस तक पहुंचने में असमर्थ. यह ऑफ़लाइन या किसी भिन्न नेटवर्क पर हो सकता है.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts प्रयासों के बाद अनुरोध का समय समाप्त हो गया। डिवाइस ऑफ़लाइन हो सकता है.';
  }

  @override
  String get errRequestTimedOut =>
      'अनुरोध का समय समाप्त हो गया. डिवाइस ऑफ़लाइन हो सकता है.';

  @override
  String get errNoRouteToHost =>
      'डिवाइस तक नहीं पहुंच सकते. कृपया अपना WiFi कनेक्शन जांचें।';

  @override
  String get errHostUnreachable =>
      'डिवाइस पहुंच योग्य नहीं है. कृपया सुनिश्चित करें कि यह चालू है और WiFi से जुड़ा है।';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts प्रयासों के बाद डिवाइस के साथ संचार करने में असमर्थ।';
  }

  @override
  String get errNetworkErrorComm =>
      'नेटवर्क त्रुटि: डिवाइस के साथ संचार करने में असमर्थ.';

  @override
  String get errActionNotAuthorizedDevice =>
      'यह क्रिया डिवाइस पर अधिकृत नहीं है.';

  @override
  String get errDeviceServiceNotFound =>
      'डिवाइस सेवा नहीं मिली. डिवाइस को फ़र्मवेयर अपडेट की आवश्यकता हो सकती है.';

  @override
  String get errDeviceEncounteredError =>
      'डिवाइस को अनुरोध संसाधित करने में त्रुटि आई।';

  @override
  String get errDeviceInternalError => 'डिवाइस ने एक आंतरिक त्रुटि लौटा दी.';

  @override
  String get errDeviceTempUnavailable =>
      'डिवाइस अस्थायी रूप से अनुपलब्ध है. कृपया पुन: प्रयास करें।';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'डिवाइस ने एक त्रुटि दी (HTTP $code)।';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'डिवाइस पर $action विफल रहा।';
  }

  @override
  String get errDeviceReturnedError => 'डिवाइस ने एक त्रुटि लौटाई.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation ऑपरेशन का समय समाप्त हो गया। कृपया पुन: प्रयास करें।';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds सेकंड के बाद ऑपरेशन का समय समाप्त हो गया।';
  }

  @override
  String get errOperationTimedOut =>
      'ऑपरेशन का समय समाप्त हो गया. कृपया पुन: प्रयास करें।';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'कृपया डिवाइस ढूंढने के लिए सेटिंग्स में स्थानीय नेटवर्क अनुमति सक्षम करें।';

  @override
  String get errCannotAccessLocalNetwork =>
      'स्थानीय नेटवर्क तक नहीं पहुंच सकता. कृपया सेटिंग्स में स्थानीय नेटवर्क अनुमति सक्षम करें।';

  @override
  String get errCheckWifiConnection =>
      'डिवाइस खोजने में असमर्थ. कृपया अपना WiFi कनेक्शन जांचें।';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'खोज बाधित हुई. $count डिवाइस मिले।';
  }

  @override
  String get errNoDevicesFound =>
      'कोई उपकरण नहीं मिला. कृपया सुनिश्चित करें कि उपकरण चालू हैं और आपके नेटवर्क से जुड़े हुए हैं।';

  @override
  String get actionGetDeviceState => 'डिवाइस स्थिति प्राप्त करें';

  @override
  String get actionSetDeviceState => 'डिवाइस स्थिति सेट करें';

  @override
  String get actionGetEnergyData => 'ऊर्जा डेटा प्राप्त करें';

  @override
  String get actionScanNetworks => 'नेटवर्क के लिए स्कैन करें';

  @override
  String get actionConnectWifi => 'WiFi से कनेक्ट करें';

  @override
  String get actionCheckConnection => 'कनेक्शन स्थिति जांचें';

  @override
  String get actionResetDevice => 'डिवाइस रीसेट करें';

  @override
  String get actionPerform => 'कार्रवाई करें';

  @override
  String get suggestTryRefreshing =>
      'डिवाइस सूची को रीफ्रेश करने का प्रयास करें या जांचें कि डिवाइस प्रतिक्रिया दे रहा है या नहीं।';

  @override
  String get suggestEnsurePoweredOn =>
      'सुनिश्चित करें कि डिवाइस चालू है और आपके WiFi नेटवर्क से जुड़ा है।';

  @override
  String get suggestMakeSureSameWifi =>
      'सुनिश्चित करें कि आपका फ़ोन आपके डिवाइस के समान WiFi नेटवर्क से कनेक्ट है।';

  @override
  String get suggestCheckPhysical =>
      'किसी भी बटन या स्विच के लिए भौतिक उपकरण की जाँच करें जिस पर ध्यान देने की आवश्यकता है।';

  @override
  String get suggestWaitAndTry => 'एक क्षण रुकें और पुनः प्रयास करें।';

  @override
  String get suggestDeviceBusy =>
      'डिवाइस व्यस्त हो सकता है. कुछ सेकंड में पुनः प्रयास करें.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'रद्द करें';

  @override
  String get commonClose => 'बंद करें';

  @override
  String get commonDone => 'हो गया';

  @override
  String get commonLater => 'बाद में';

  @override
  String get commonRefresh => 'ताज़ा करें';

  @override
  String get commonTryAgain => 'पुनः प्रयास करें';

  @override
  String get commonOpenSettings => 'सेटिंग्स खोलें';

  @override
  String get commonGrant => 'अनुदान';

  @override
  String get commonFix => 'ठीक करो';

  @override
  String get commonOn => 'पर';

  @override
  String get commonOff => 'बंद';

  @override
  String get commonOffline => 'ऑफ़लाइन';

  @override
  String get commonStatus => 'स्थिति';

  @override
  String get commonName => 'नाम';

  @override
  String get commonType => 'प्रकार';

  @override
  String get commonModel => 'मॉडल';

  @override
  String get commonManufacturer => 'निर्माता';

  @override
  String get commonSerial => 'धारावाहिक';

  @override
  String get commonFirmware => 'फ़र्मवेयर';

  @override
  String get commonHost => 'मेज़बान';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'पासवर्ड';

  @override
  String get commonUnknownWifi => 'अज्ञात Wi-Fi';

  @override
  String get commonNotConnected => 'जुड़ा नहीं';

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
      other: '$seconds सेकंड',
      one: '1 सेकंड',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'स्मार्ट स्विच';

  @override
  String get deviceTypeLightSwitch => 'लाइट स्विच';

  @override
  String get deviceTypeDimmer => 'डिमर';

  @override
  String get deviceTypeInsightPlug => 'इनसाइट प्लग';

  @override
  String get deviceTypeMotionSensor => 'मोशन सेंसर';

  @override
  String get deviceTypeMaker => 'निर्माता';

  @override
  String get deviceTypeBridge => 'पुल';

  @override
  String get deviceTypeCoffeeMaker => 'कॉफ़ी बनाने वाली मशीन';

  @override
  String get deviceTypeCrockpot => 'क्रॉकपॉट';

  @override
  String get deviceTypeHumidifier => 'ह्यूमिडिफ़ायर';

  @override
  String get deviceTypeOutdoorPlug => 'आउटडोर प्लग';

  @override
  String get deviceTypeUnknown => 'अज्ञात उपकरण';

  @override
  String get pairingStepGetStarted => 'आरंभ करें';

  @override
  String get pairingStepConnectToDevice => 'डिवाइस से कनेक्ट करें';

  @override
  String get pairingStepFindDevice => 'डिवाइस ढूंढें';

  @override
  String get pairingStepSelectNetwork => 'नेटवर्क चुनें';

  @override
  String get pairingStepConfiguring => 'कॉन्फ़िगर करना';

  @override
  String get pairingStepReconnect => 'पुनः कनेक्ट करें';

  @override
  String get pairingStepFinalizing => 'अंतिम रूप देना';

  @override
  String get pairingStepSuccess => 'सफलता';

  @override
  String get pairingStepError => 'त्रुटि';

  @override
  String get homeToggleDebug => 'डिबग मोड टॉगल करें';

  @override
  String get homeRefreshDevices => 'उपकरणों को ताज़ा करें';

  @override
  String get homeSettings => 'सेटिंग्स';

  @override
  String get homeDismiss => 'ख़ारिज करें';

  @override
  String get homeDiscovering => 'उपकरणों की खोज की जा रही है...';

  @override
  String get homeNoDevices => 'कोई उपकरण नहीं मिला';

  @override
  String get homeScanDevices => 'उपकरणों के लिए स्कैन करें';

  @override
  String get homeLookingForMore => 'अधिक डिवाइस खोज रहे हैं...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिवाइस मिले',
      one: '1 डिवाइस मिला',
      zero: 'कोई उपकरण नहीं मिला',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिवाइस मिले, स्कैनिंग...',
      one: '1 डिवाइस मिला, स्कैनिंग...',
      zero: 'कोई उपकरण नहीं मिला, स्कैनिंग...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ऑटो';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi से जुड़ा';

  @override
  String get homePermissionExplanation =>
      'स्थान की जानकारी का उपयोग आपके Wi-Fi विवरण खोजने के लिए किया जाता है। स्थानीय नेटवर्क पहुंच आपको अपने स्मार्ट स्विच और उपकरणों को नियंत्रित करने की अनुमति देती है।';

  @override
  String get homeDebugLog => 'डिबग लॉग';

  @override
  String get homeClear => 'स्पष्ट';

  @override
  String get homeDebugEmpty =>
      'खोज शुरू करने और लॉग देखने के लिए रीफ्रेश पर टैप करें...';

  @override
  String get homeProbeHint => 'IP:पोर्ट (जैसे 192.168.1.100:49153)';

  @override
  String get homeProbe => 'जांच';

  @override
  String get homeScanning => 'स्कैन किया जा रहा है...';

  @override
  String get homeScanSubnet => 'संपूर्ण सबनेट स्कैन करें (आईओएस फिक्स)';

  @override
  String homePlatform(String platform, String version) {
    return 'प्लेटफ़ॉर्म: $platform $version';
  }

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get settingsSectionNetwork => 'नेटवर्क';

  @override
  String get settingsSectionDeviceSetup => 'डिवाइस सेटअप';

  @override
  String get settingsSectionDiscovery => 'खोज';

  @override
  String get settingsSectionAbout => 'के बारे में';

  @override
  String get settingsSectionDebug => 'डीबग करें';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'अनुमति मिल गई! WiFi नाम: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'स्थान प्रदान किया गया, लेकिन स्थानीय नेटवर्क की अनुमति भी आवश्यक है। सेटिंग्स जांचें.';

  @override
  String get settingsLocationRequired => 'स्थान की अनुमति आवश्यक है';

  @override
  String get settingsLocationRequiredBody =>
      'आपके WiFi नेटवर्क नाम को प्रदर्शित करने के लिए, iOS को स्थान अनुमति की आवश्यकता होती है।';

  @override
  String get settingsRequiredPermissions => 'आवश्यक अनुमतियाँ:';

  @override
  String get settingsPermissionList =>
      '1. स्थान सेवाएँ (\"ऐप का उपयोग करते समय\")\n2. स्थानीय नेटवर्क';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'नोट: डिवाइस खोज स्थान की अनुमति के बिना काम करती है। इस अनुमति का उपयोग केवल आपके WiFi नेटवर्क नाम को प्रदर्शित करने के लिए किया जाता है।';

  @override
  String get settingsEnableLocation => 'सेटिंग्स में स्थान सक्षम करें';

  @override
  String get settingsLocationDeniedBody =>
      'स्थान की अनुमति अस्वीकार कर दी गई. आप इसे सिस्टम सेटिंग्स से सक्षम कर सकते हैं।';

  @override
  String get settingsStepsToEnable => 'सक्षम करने के चरण:';

  @override
  String get settingsEnableLocationSteps =>
      '1. सेटिंग्स खोलें\n2. \"Bit Switch\" तक स्क्रॉल करें\n3. \"स्थान\" पर टैप करें\n4. \"ऐप का उपयोग करते समय\" चुनें\n5. इस ऐप पर वापस लौटें और रिफ्रेश बटन पर टैप करें';

  @override
  String get settingsLocationOnlyWifiName =>
      'नोट: स्थान अनुमति केवल WiFi नाम प्रदर्शित करने के लिए आवश्यक है। डिवाइस खोज इसके बिना काम करती है.';

  @override
  String get settingsAdditionalPermission => 'अतिरिक्त अनुमति की आवश्यकता है';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo उपकरणों को खोजने और नियंत्रित करने के लिए स्थानीय नेटवर्क की अनुमति आवश्यक है।';

  @override
  String get settingsWifiNameNotVisible =>
      'आपके पास स्थान की अनुमति है, लेकिन WiFi नाम अभी तक दिखाई नहीं दे रहा है।';

  @override
  String get settingsPleaseEnable => 'कृपया सक्षम करें:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. आईफोन सेटिंग्स में जाएं\n2. \"Bit Switch\" तक नीचे स्क्रॉल करें\n3. \"स्थानीय नेटवर्क\" सक्षम करें';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS पर डिवाइस खोज और WiFi नाम एक्सेस दोनों के लिए स्थानीय नेटवर्क अनुमति आवश्यक है।';

  @override
  String get settingsPairNewDevice => 'नया डिवाइस युग्मित करें';

  @override
  String get settingsPairNewDeviceSubtitle => 'एक नया Wemo डिवाइस सेट करें';

  @override
  String get settingsDiscoveryTimeout => 'डिस्कवरी टाइमआउट';

  @override
  String get settingsRequestTimeout => 'टाइमआउट का अनुरोध करें';

  @override
  String get settingsAutoRefresh => 'स्वतः ताज़ा करें';

  @override
  String get settingsAutoRefreshOn =>
      'चालू - डिवाइस स्थितियाँ स्वचालित रूप से ताज़ा हो जाती हैं';

  @override
  String get settingsAutoRefreshOff =>
      'बंद - मैन्युअल रिफ्रेश बटन का उपयोग करें';

  @override
  String get settingsAutoRefreshInterval => 'स्वत: ताज़ा अंतराल';

  @override
  String get settingsAbout => 'Bit Switch के बारे में';

  @override
  String get settingsVersion => 'संस्करण';

  @override
  String get settingsNetworkDiagnostics => 'नेटवर्क डायग्नोस्टिक्स';

  @override
  String get settingsShowDebug => 'डिबग मोड दिखाएँ';

  @override
  String get settingsShowDebugSubtitle =>
      'होम स्क्रीन पर डिबग नियंत्रण और नेटवर्क डायग्नोस्टिक्स दिखाएं';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'समस्या निवारण के लिए होम स्क्रीन पर डिबग आइकन दिखाएं';

  @override
  String get settingsCurrentNetwork => 'वर्तमान नेटवर्क';

  @override
  String get settingsNetworkAccessStatus => 'नेटवर्क पहुंच स्थिति';

  @override
  String get settingsNetworkAccessGranted => 'स्थानीय नेटवर्क पहुंच उपलब्ध है';

  @override
  String get settingsNetworkAccessMissing =>
      'अतिरिक्त अनुमतियों की आवश्यकता हो सकती है';

  @override
  String get settingsChecking => 'जाँच हो रही है...';

  @override
  String get settingsEnableLocalNetwork =>
      'सेटिंग्स में स्थानीय नेटवर्क सक्षम करें';

  @override
  String get settingsNotConnectedWifi => 'WiFi से कनेक्ट नहीं है';

  @override
  String get settingsPermissionRequiredView => 'देखने के लिए अनुमति आवश्यक है';

  @override
  String get settingsAllPermissionsGranted => 'सभी अनुमतियाँ प्रदान की गईं';

  @override
  String get settingsLocalNetworkNeeded =>
      'स्थानीय नेटवर्क अनुमति की आवश्यकता है';

  @override
  String get settingsLocationNeeded => 'स्थान की अनुमति आवश्यक है';

  @override
  String get settingsRefreshPermissions => 'अनुमतियाँ ताज़ा करें';

  @override
  String get settingsAboutWifiPermission => 'WiFi नाम अनुमति के बारे में';

  @override
  String get settingsWifiPermissionExplanation =>
      'आपका WiFi नाम यह पुष्टि करने में मदद करता है कि आपका फ़ोन और Wemo डिवाइस एक ही नेटवर्क पर हैं।';

  @override
  String get settingsWifiPermissionIos =>
      'iOS पर, अपना WiFi नेटवर्क नाम प्रदर्शित करने के लिए स्थान अनुमति की आवश्यकता होती है।';

  @override
  String get settingsImportant => 'महत्वपूर्ण:';

  @override
  String get settingsPrivacyNote =>
      '• आपका स्थान कभी भी ट्रैक नहीं किया जाता है\n• कोई स्थान डेटा एकत्र या संग्रहीत नहीं किया जाता है';

  @override
  String get settingsWifiPermissionImportant =>
      '• डिवाइस खोज इस अनुमति के बिना काम करती है\n• यह केवल WiFi नाम दिखाने के लिए आवश्यक है\n• कोई स्थान डेटा एकत्र या संग्रहीत नहीं किया जाता है';

  @override
  String get settingsGrantPermission => 'अनुमति प्रदान करें';

  @override
  String get settingsHowLongScan => 'उपकरणों को कितनी देर तक स्कैन करना है:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'डिस्कवरी टाइमआउट $seconds सेकंड पर सेट किया गया';
  }

  @override
  String get settingsHowLongResponses =>
      'डिवाइस प्रतिक्रियाओं के लिए कब तक प्रतीक्षा करनी होगी:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'यदि आपको \"कनेक्शन बंद\" त्रुटियाँ दिखाई देती हैं तो इस मान को बढ़ाएँ।';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'अनुरोध टाइमआउट को $seconds सेकंड पर सेट करें';
  }

  @override
  String get settingsSetRefreshInterval =>
      'स्वचालित स्थिति ताज़ा करने के लिए अंतराल सेट करें:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'ताज़ा अंतराल को $seconds सेकंड पर सेट किया गया';
  }

  @override
  String get settingsAboutTagline =>
      'आपके Wemo उपकरणों के लिए एक साफ़, निजी स्थानीय नियंत्रक।';

  @override
  String get settingsAboutDescription =>
      'Bit Switch क्लाउड निर्भरता के बिना उपकरणों को खोजने और नियंत्रित करने के लिए स्थानीय नेटवर्क खोज का उपयोग करता है।';

  @override
  String get settingsVersionValue => 'संस्करण 1.0.1';

  @override
  String get settingsProtocol => 'प्रोटोकॉल: SSDP/UPnP';

  @override
  String get settingsMulticastAddress => 'मल्टीकास्ट पता: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'डिवाइस पोर्ट: 49152-49159';

  @override
  String get settingsControlProtocol => 'नियंत्रण प्रोटोकॉल: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'टिप: सुनिश्चित करें कि आपका डिवाइस आपके Wemo डिवाइस के समान नेटवर्क पर है और UDP मल्टीकास्ट अवरुद्ध नहीं है।';

  @override
  String get settingsDevicePaired =>
      'डिवाइस युग्मित! डिवाइस सूची ताज़ा की जा रही है...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'प्रति अनुरोध $seconds सेकंड';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'प्रत्येक $seconds को ताज़ा करना';
  }

  @override
  String get pairingTitle => 'नया डिवाइस युग्मित करें';

  @override
  String get pairingSetupTitle => 'अपना Wemo डिवाइस सेट करें';

  @override
  String get pairingBeforeBegin =>
      'शुरू करने से पहले, सुनिश्चित करें कि आपका Wemo डिवाइस सेटअप मोड में है:';

  @override
  String get pairingPlugInTitle => 'अपने Wemo डिवाइस में प्लग इन करें';

  @override
  String get pairingPlugInBody =>
      'इसे पावर से कनेक्ट करें और इसके चालू होने की प्रतीक्षा करें।';

  @override
  String get pairingBlinkingLedTitle => 'चमकती एलईडी की तलाश करें';

  @override
  String get pairingBlinkingLedBody =>
      'एक चमकती एलईडी इंगित करती है कि डिवाइस सेटअप मोड में है।';

  @override
  String get pairingCheckWifiTitle => 'WiFi नेटवर्क की जाँच करें';

  @override
  String get pairingCheckWifiBody =>
      'डिवाइस \"WeMo.XXXXX\" नामक नेटवर्क प्रसारित करेगा।';

  @override
  String get pairingSolidLedHint =>
      'यदि एलईडी ठोस है, तो सेटअप मोड में प्रवेश करने के लिए रीसेट बटन को 5 सेकंड तक दबाए रखें।';

  @override
  String get pairingStart => 'युग्मन प्रारंभ करें';

  @override
  String get pairingConnectWifiTitle => 'डिवाइस WiFi से कनेक्ट करें';

  @override
  String get pairingConnectWifiBody =>
      'अपने फ़ोन की WiFi सेटिंग खोलें और \"WeMo\" से शुरू होने वाले नेटवर्क से कनेक्ट करें।';

  @override
  String get pairingCurrentNetwork => 'वर्तमान नेटवर्क';

  @override
  String get pairingConnectedToDevice => 'Wemo डिवाइस से कनेक्ट!';

  @override
  String get pairingOpenWifiSettings => 'WiFi सेटिंग्स खोलें';

  @override
  String get pairingConnectedButton => 'मैंने कनेक्ट कर लिया है';

  @override
  String get pairingLookingForDevice => 'आपके Wemo डिवाइस की तलाश है...';

  @override
  String get pairingManualIpPrompt =>
      'या डिवाइस IP को मैन्युअल रूप से दर्ज करें:';

  @override
  String get pairingDeviceIp => 'डिवाइस IP पता';

  @override
  String get pairingConnectToIp => 'IP से कनेक्ट करें';

  @override
  String get pairingSelectHomeWifi => 'अपना घरेलू WiFi नेटवर्क चुनें:';

  @override
  String get pairingRefreshNetworks => 'नेटवर्क ताज़ा करें';

  @override
  String get pairingIosScanLimitation =>
      'iOS तृतीय-पक्ष ऐप्स को नजदीकी Wi-Fi नेटवर्क को स्कैन करने से सख्ती से प्रतिबंधित करता है। आपको नेटवर्क SSID को मैन्युअल रूप से दर्ज करने की आवश्यकता हो सकती है।';

  @override
  String get pairingNoNetworks => 'कोई नेटवर्क नहीं मिला';

  @override
  String get pairingScanAgain => 'दोबारा स्कैन करें';

  @override
  String get pairingWifiPassword => 'WiFi पासवर्ड';

  @override
  String get pairingConnect => 'कनेक्ट करें';

  @override
  String get pairingEnterNetworkManually => 'मैन्युअल रूप से नेटवर्क दर्ज करें';

  @override
  String get pairingEnterNetworkName => 'नेटवर्क नाम दर्ज करें:';

  @override
  String get pairingNetworkName => 'नेटवर्क नाम (SSID)';

  @override
  String get pairingUseNetwork => 'इस नेटवर्क का उपयोग करें';

  @override
  String get pairingConfiguringDevice => 'डिवाइस कॉन्फ़िगर किया जा रहा है...';

  @override
  String get pairingConfiguringWait =>
      'कृपया डिवाइस के आपके नेटवर्क से कनेक्ट होने तक प्रतीक्षा करें।';

  @override
  String get pairingReconnectTitle => 'अपने नेटवर्क से पुनः कनेक्ट करें';

  @override
  String pairingReconnectBody(String ssid) {
    return 'आपका Wemo डिवाइस अब \"$ssid\" से कनेक्ट हो रहा है। कृपया अपने फ़ोन को उसी नेटवर्क से पुनः कनेक्ट करें।';
  }

  @override
  String get pairingBackOnHome => 'होम नेटवर्क पर वापस!';

  @override
  String get pairingReconnectedButton => 'मैंने पुनः कनेक्ट कर लिया है';

  @override
  String get pairingFinalizingSetup => 'सेटअप को अंतिम रूप दिया जा रहा है...';

  @override
  String get pairingSetupComplete => 'सेटअप पूर्ण!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid से जुड़ा';
  }

  @override
  String get pairingDeviceReady =>
      'अब आपका डिवाइस सेट हो गया है और होम स्क्रीन पर दिखाई देगा।';

  @override
  String get pairingSomethingWrong => 'कुछ गलत हो गया';

  @override
  String get pairingStartOver => 'फिर से शुरू करें';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi सेटिंग नहीं खुल सकी. कृपया उन्हें मैन्युअल रूप से खोलें.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'आपका फ़ोन अभी भी \"$ssid\" से कनेक्ट है। कृपया WiFi सेटिंग्स खोलें, WeMo डिवाइस नेटवर्क से कनेक्ट करें, फिर पुनः प्रयास करें।';
  }

  @override
  String get pairingLoadingLooking => 'डिवाइस ढूंढ रहे हैं...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip पर WeMo डिवाइस नहीं मिल सका। सुनिश्चित करें कि आपका फ़ोन WeMo WiFi नेटवर्क से कनेक्ट है, फिर पुनः प्रयास करें। आप डिवाइस IP को मैन्युअल रूप से भी दर्ज कर सकते हैं।';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'डिवाइस खोजने में त्रुटि: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip से कनेक्ट हो रहा है...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip पर कोई उपकरण नहीं मिला';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip से कनेक्ट करने में त्रुटि: $error';
  }

  @override
  String get pairingLoadingScanning => 'नेटवर्क के लिए स्कैन किया जा रहा है...';

  @override
  String pairingErrorScanning(String error) {
    return 'नेटवर्क स्कैन नहीं कर सका: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'कृपया एक नेटवर्क चुनें और पासवर्ड दर्ज करें।';

  @override
  String get pairingLoadingSendingCredentials =>
      'नेटवर्क क्रेडेंशियल भेजा जा रहा है...';

  @override
  String get pairingLoadingWaitingConnection =>
      'डिवाइस के कनेक्ट होने की प्रतीक्षा की जा रही है...';

  @override
  String pairingErrorConfigure(String error) {
    return 'नेटवर्क कॉन्फ़िगर करने में विफल: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'पासवर्ड बहुत छोटा. कृपया जाँच करें और पुनः प्रयास करें।';

  @override
  String get pairingErrorPasswordIncorrect =>
      'कनेक्ट करने में विफल. कृपया पासवर्ड जांचें.';

  @override
  String get pairingErrorConnectionTimeout =>
      'कनेक्शन का समय समाप्त हो गया. कृपया पुन: प्रयास करें।';

  @override
  String pairingErrorFinalizing(String error) {
    return 'सेटअप को अंतिम रूप देने में त्रुटि: $error';
  }

  @override
  String get detailRefreshState => 'ताज़ा स्थिति';

  @override
  String get detailDeviceInfo => 'डिवाइस की जानकारी';

  @override
  String get detailAdvanced => 'उन्नत';

  @override
  String get detailWifiSetup => 'WiFi सेटअप';

  @override
  String get detailReset => 'रीसेट करें';

  @override
  String get detailUnreachable =>
      'डिवाइस पहुंच योग्य नहीं है. नेटवर्क कनेक्शन जांचें.';

  @override
  String detailFailedToggle(String error) {
    return 'टॉगल करने में विफल: $error';
  }

  @override
  String get detailDeviceInformation => 'डिवाइस की जानकारी';

  @override
  String get detailPermissionScan =>
      'WiFi नेटवर्क को स्कैन करने के लिए अनुमति आवश्यक है।';

  @override
  String get detailScanFailedManual =>
      'नेटवर्क स्कैन नहीं कर सका. नेटवर्क नाम मैन्युअल रूप से दर्ज करें.';

  @override
  String get detailEnterNetworkNameError =>
      'कृपया नेटवर्क नाम दर्ज करें या चुनें';

  @override
  String get detailEnterPasswordError => 'कृपया नेटवर्क पासवर्ड दर्ज करें';

  @override
  String get detailWifiSuccess => 'WiFi सफलतापूर्वक कॉन्फ़िगर किया गया!';

  @override
  String get detailScanNetworks => 'नेटवर्क के लिए स्कैन करें';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" के लिए WiFi नेटवर्क कॉन्फ़िगर करें';
  }

  @override
  String get detailAvailableNetworks => 'उपलब्ध नेटवर्क';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS तृतीय-पक्ष ऐप्स को नजदीकी Wi-Fi नेटवर्क को स्कैन करने से सख्ती से प्रतिबंधित करता है। कृपया नीचे अपना नेटवर्क नाम मैन्युअल रूप से दर्ज करें।';

  @override
  String get detailTapRefreshScan =>
      'नेटवर्क स्कैन करने के लिए रीफ्रेश टैप करें';

  @override
  String get detailEnterNetworkBelow => 'नीचे अपना नेटवर्क नाम दर्ज करें';

  @override
  String get detailNetworkCredentials => 'नेटवर्क क्रेडेंशियल';

  @override
  String get detailConnecting => 'नेटवर्क से कनेक्ट हो रहा है...';

  @override
  String get detailConnected => 'सफलतापूर्वक कनेक्ट हो गया!';

  @override
  String get detailPasswordShort => 'पासवर्ड बहुत छोटा है';

  @override
  String get detailAuthenticationFailed => 'प्रमाणीकरण विफल - पासवर्ड जांचें';

  @override
  String get detailConnectionFailed => 'कनेक्शन विफल';

  @override
  String get detailSelectReset => 'कृपया चुनें कि क्या रीसेट करना है';

  @override
  String get detailResetSchedulesWarning =>
      '• सभी शेड्यूल और स्वचालन नियम हटा दिए जाएंगे';

  @override
  String get detailResetWifiWarning => '• WiFi सेटिंग्स मिटा दी जाएंगी';

  @override
  String get detailSetupAgainWarning => '• आपको डिवाइस को फिर से सेट करना होगा';

  @override
  String get detailUnreachableWarning =>
      '• डिवाइस अस्थायी रूप से पहुंच से बाहर हो सकता है';

  @override
  String get detailConfirmReset => 'रीसेट की पुष्टि करें';

  @override
  String detailConfirmResetDevice(String device) {
    return 'क्या आप वाकई \"$device\" को रीसेट करना चाहते हैं?';
  }

  @override
  String get detailThisWill => 'यह होगा:';

  @override
  String get detailCannotUndo => 'इस क्रिया को पूर्ववत नहीं किया जा सकता.';

  @override
  String get detailYesReset => 'हाँ, रीसेट करें';

  @override
  String get detailResetSuccess => 'डिवाइस सफलतापूर्वक रीसेट हो गया';

  @override
  String get detailResetRemote => 'डिवाइस दूरस्थ रूप से रीसेट हो जाएगा';

  @override
  String get detailResetFailed => 'रीसेट विफल रहा';

  @override
  String get detailFactoryReset => 'फ़ैक्टरी रीसेट';

  @override
  String get detailFactoryResetWarning =>
      'यह सभी सेटिंग्स मिटा देगा और डिवाइस को फ़ैक्टरी डिफ़ॉल्ट पर पुनर्स्थापित कर देगा। आपको डिवाइस को फिर से सेट करना होगा।\n\nइस एक्शन को वापस नहीं किया जा सकता।';

  @override
  String get detailFactoryResetInitiated => 'फ़ैक्टरी रीसेट प्रारंभ किया गया';

  @override
  String get detailResetDevice => 'डिवाइस रीसेट करें';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" के लिए रीसेट विकल्प';
  }

  @override
  String get detailResetUserData => 'उपयोगकर्ता डेटा रीसेट करें';

  @override
  String get detailResetUserDataSubtitle => 'शेड्यूल और नियम साफ़ करता है';

  @override
  String get detailResetWifi => 'WiFi सेटिंग्स रीसेट करें';

  @override
  String get detailResetWifiSubtitle => 'डिवाइस को फिर से सेट अप करना होगा';

  @override
  String get widgetBrightness => 'चमक';

  @override
  String get widgetEnergyStatistics => 'ऊर्जा सांख्यिकी';

  @override
  String get widgetCurrentPower => 'वर्तमान शक्ति';

  @override
  String get widgetToday => 'आज';

  @override
  String get widgetTotal => 'कुल';

  @override
  String get widgetOnTimeToday => 'आज समय पर';

  @override
  String get widgetTotalOnTime => 'कुल समय पर';

  @override
  String get widgetStandby => 'स्टैंडबाई';

  @override
  String get widgetUnknown => 'अज्ञात';

  @override
  String get widgetOpenNetwork => 'नेटवर्क खोलें';

  @override
  String get widgetWepInsecure => 'WEP (असुरक्षित)';
}
