// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'डिव्हाइस या क्रियेला समर्थन देत नाही.';

  @override
  String get errInvalidArgs => 'डिव्हाइसवर अवैध युक्तिवाद पाठवले गेले.';

  @override
  String get errActionFailed =>
      'विनंती केलेली क्रिया करण्यात डिव्हाइस अयशस्वी झाले.';

  @override
  String get errInvalidValue => 'अवैध मूल्य प्रदान केले होते.';

  @override
  String get errValueOutOfRange => 'मूल्य स्वीकार्य श्रेणीबाहेर आहे.';

  @override
  String get errFeatureNotAvailable =>
      'हे वैशिष्ट्य या डिव्हाइसवर उपलब्ध नाही.';

  @override
  String get errOutOfMemory =>
      'डिव्हाइसची मेमरी संपली आहे. नंतर पुन्हा प्रयत्न करा.';

  @override
  String get errManualActionRequired =>
      'डिव्हाइसवर मॅन्युअल क्रिया आवश्यक आहे.';

  @override
  String get errActionNotAuthorized => 'ही कृती अधिकृत नाही.';

  @override
  String get errUnexpected =>
      'एक अनपेक्षित त्रुटी आली. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get errDeviceUnreachableOffline =>
      'डिव्हाइसपर्यंत पोहोचण्यात अक्षम. ते ऑफलाइन किंवा वेगळ्या नेटवर्कवर असू शकते.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts प्रयत्नांनंतर विनंती कालबाह्य झाली. डिव्हाइस ऑफलाइन असू शकते.';
  }

  @override
  String get errRequestTimedOut =>
      'विनंती कालबाह्य झाली. डिव्हाइस ऑफलाइन असू शकते.';

  @override
  String get errNoRouteToHost =>
      'डिव्हाइसपर्यंत पोहोचू शकत नाही. कृपया तुमचे WiFi कनेक्शन तपासा.';

  @override
  String get errHostUnreachable =>
      'डिव्हाइस अगम्य आहे. कृपया ते चालू असल्याची खात्री करा आणि WiFi शी कनेक्ट करा.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts प्रयत्नांनंतर डिव्हाइसशी संवाद साधण्यात अक्षम.';
  }

  @override
  String get errNetworkErrorComm =>
      'नेटवर्क त्रुटी: डिव्हाइससह संप्रेषण करण्यात अक्षम.';

  @override
  String get errActionNotAuthorizedDevice =>
      'ही क्रिया डिव्हाइसवर अधिकृत नाही.';

  @override
  String get errDeviceServiceNotFound =>
      'डिव्हाइस सेवा आढळली नाही. डिव्हाइसला फर्मवेअर अद्यतनाची आवश्यकता असू शकते.';

  @override
  String get errDeviceEncounteredError =>
      'विनंतीवर प्रक्रिया करताना डिव्हाइसमध्ये त्रुटी आली.';

  @override
  String get errDeviceInternalError => 'डिव्हाइसने अंतर्गत त्रुटी परत केली.';

  @override
  String get errDeviceTempUnavailable =>
      'डिव्हाइस तात्पुरते अनुपलब्ध आहे. कृपया पुन्हा प्रयत्न करा.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'डिव्हाइसने त्रुटी परत केली (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'डिव्हाइसवर $action करण्यात अयशस्वी.';
  }

  @override
  String get errDeviceReturnedError => 'डिव्हाइसने त्रुटी परत केली.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation ऑपरेशन कालबाह्य झाले. कृपया पुन्हा प्रयत्न करा.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds सेकंदांनंतर ऑपरेशन कालबाह्य झाले.';
  }

  @override
  String get errOperationTimedOut =>
      'ऑपरेशन कालबाह्य झाले. कृपया पुन्हा प्रयत्न करा.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'कृपया डिव्हाइस शोधण्यासाठी सेटिंग्जमध्ये स्थानिक नेटवर्क परवानगी सक्षम करा.';

  @override
  String get errCannotAccessLocalNetwork =>
      'स्थानिक नेटवर्कमध्ये प्रवेश करू शकत नाही. कृपया सेटिंग्जमध्ये स्थानिक नेटवर्क परवानगी सक्षम करा.';

  @override
  String get errCheckWifiConnection =>
      'डिव्हाइस शोधण्यात अक्षम. कृपया तुमचे WiFi कनेक्शन तपासा.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'शोधात व्यत्यय आला. $count डिव्हाइस आढळले.';
  }

  @override
  String get errNoDevicesFound =>
      'कोणतीही उपकरणे आढळली नाहीत. कृपया डिव्हाइसेस चालू असल्याची खात्री करा आणि तुमच्या नेटवर्कशी कनेक्ट केली आहेत.';

  @override
  String get actionGetDeviceState => 'डिव्हाइस स्थिती मिळवा';

  @override
  String get actionSetDeviceState => 'डिव्हाइस स्थिती सेट करा';

  @override
  String get actionGetEnergyData => 'ऊर्जा डेटा मिळवा';

  @override
  String get actionScanNetworks => 'नेटवर्कसाठी स्कॅन करा';

  @override
  String get actionConnectWifi => 'WiFi शी कनेक्ट करा';

  @override
  String get actionCheckConnection => 'कनेक्शन स्थिती तपासा';

  @override
  String get actionResetDevice => 'डिव्हाइस रीसेट करा';

  @override
  String get actionPerform => 'क्रिया करा';

  @override
  String get suggestTryRefreshing =>
      'डिव्हाइस सूची रीफ्रेश करण्याचा प्रयत्न करा किंवा डिव्हाइस प्रतिसाद देत आहे का ते तपासा.';

  @override
  String get suggestEnsurePoweredOn =>
      'डिव्हाइस चालू आहे आणि तुमच्या WiFi नेटवर्कशी कनेक्ट केलेले असल्याची खात्री करा.';

  @override
  String get suggestMakeSureSameWifi =>
      'तुमचा फोन तुमच्या डिव्हाइसेस सारख्याच WiFi नेटवर्कशी कनेक्ट केलेला असल्याची खात्री करा.';

  @override
  String get suggestCheckPhysical =>
      'लक्ष देण्याची गरज असलेल्या कोणत्याही बटणे किंवा स्विचसाठी भौतिक उपकरण तपासा.';

  @override
  String get suggestWaitAndTry => 'एक क्षण थांबा आणि पुन्हा प्रयत्न करा.';

  @override
  String get suggestDeviceBusy =>
      'डिव्हाइस व्यस्त असू शकते. काही सेकंदात पुन्हा प्रयत्न करा.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'रद्द करा';

  @override
  String get commonClose => 'बंद करा';

  @override
  String get commonDone => 'झाले';

  @override
  String get commonLater => 'नंतर';

  @override
  String get commonRefresh => 'रिफ्रेश करा';

  @override
  String get commonTryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String get commonOpenSettings => 'सेटिंग्ज उघडा';

  @override
  String get commonGrant => 'अनुदान';

  @override
  String get commonFix => 'निराकरण करा';

  @override
  String get commonOn => 'चालू';

  @override
  String get commonOff => 'बंद';

  @override
  String get commonOffline => 'ऑफलाइन';

  @override
  String get commonStatus => 'स्थिती';

  @override
  String get commonName => 'नाव';

  @override
  String get commonType => 'प्रकार';

  @override
  String get commonModel => 'मॉडेल';

  @override
  String get commonManufacturer => 'उत्पादक';

  @override
  String get commonSerial => 'मालिका';

  @override
  String get commonFirmware => 'फर्मवेअर';

  @override
  String get commonHost => 'यजमान';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'पासवर्ड';

  @override
  String get commonUnknownWifi => 'अज्ञात Wi-Fi';

  @override
  String get commonNotConnected => 'जोडलेले नाही';

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
      other: '$seconds सेकंद',
      one: '1 सेकंद',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'स्मार्ट स्विच';

  @override
  String get deviceTypeLightSwitch => 'लाइट स्विच';

  @override
  String get deviceTypeDimmer => 'मंद';

  @override
  String get deviceTypeInsightPlug => 'इनसाइट प्लग';

  @override
  String get deviceTypeMotionSensor => 'मोशन सेन्सर';

  @override
  String get deviceTypeMaker => 'मेकर';

  @override
  String get deviceTypeBridge => 'ब्रिज';

  @override
  String get deviceTypeCoffeeMaker => 'कॉफी मेकर';

  @override
  String get deviceTypeCrockpot => 'क्रॉकपॉट';

  @override
  String get deviceTypeHumidifier => 'ह्युमिडिफायर';

  @override
  String get deviceTypeOutdoorPlug => 'आउटडोअर प्लग';

  @override
  String get deviceTypeUnknown => 'अज्ञात डिव्हाइस';

  @override
  String get pairingStepGetStarted => 'प्रारंभ करा';

  @override
  String get pairingStepConnectToDevice => 'डिव्हाइसशी कनेक्ट करा';

  @override
  String get pairingStepFindDevice => 'डिव्हाइस शोधा';

  @override
  String get pairingStepSelectNetwork => 'नेटवर्क निवडा';

  @override
  String get pairingStepConfiguring => 'कॉन्फिगर करत आहे';

  @override
  String get pairingStepReconnect => 'पुन्हा कनेक्ट करा';

  @override
  String get pairingStepFinalizing => 'अंतिम करणे';

  @override
  String get pairingStepSuccess => 'यश';

  @override
  String get pairingStepError => 'त्रुटी';

  @override
  String get homeToggleDebug => 'डीबग मोड टॉगल करा';

  @override
  String get homeRefreshDevices => 'डिव्हाइस रिफ्रेश करा';

  @override
  String get homeSettings => 'सेटिंग्ज';

  @override
  String get homeDismiss => 'डिसमिस करा';

  @override
  String get homeDiscovering => 'उपकरणे शोधत आहे...';

  @override
  String get homeNoDevices => 'कोणतीही उपकरणे आढळली नाहीत';

  @override
  String get homeScanDevices => 'उपकरणांसाठी स्कॅन करा';

  @override
  String get homeLookingForMore => 'अधिक उपकरणे शोधत आहे...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिव्हाइस आढळले',
      one: '1 डिव्हाइस आढळले',
      zero: 'कोणतीही उपकरणे आढळली नाहीत',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिव्हाइस आढळले, स्कॅन करत आहे...',
      one: '1 डिव्हाइस आढळले, स्कॅन करत आहे...',
      zero: 'कोणतीही उपकरणे आढळली नाहीत, स्कॅन करत आहे...',
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
  String get homeConnectedWifi => 'WiFi शी कनेक्ट केलेले';

  @override
  String get homePermissionExplanation =>
      'तुमचे Wi-Fi तपशील शोधण्यासाठी स्थान माहिती वापरली जाते. स्थानिक नेटवर्क प्रवेश तुम्हाला तुमचे स्मार्ट स्विच आणि डिव्हाइस नियंत्रित करण्यास अनुमती देतो.';

  @override
  String get homeDebugLog => 'डीबग लॉग';

  @override
  String get homeClear => 'साफ';

  @override
  String get homeDebugEmpty =>
      'शोध सुरू करण्यासाठी आणि लॉग पाहण्यासाठी रिफ्रेश करा वर टॅप करा...';

  @override
  String get homeProbeHint => 'IP:पोर्ट (उदा. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'तपास';

  @override
  String get homeScanning => 'स्कॅन करत आहे...';

  @override
  String get homeScanSubnet => 'संपूर्ण सबनेट स्कॅन करा (iOS फिक्स)';

  @override
  String homePlatform(String platform, String version) {
    return 'प्लॅटफॉर्म: $platform $version';
  }

  @override
  String get settingsTitle => 'सेटिंग्ज';

  @override
  String get settingsSectionNetwork => 'नेटवर्क';

  @override
  String get settingsSectionDeviceSetup => 'डिव्हाइस सेटअप';

  @override
  String get settingsSectionDiscovery => 'शोध';

  @override
  String get settingsSectionAbout => 'बद्दल';

  @override
  String get settingsSectionDebug => 'डीबग करा';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'परवानगी दिली! WiFi नाव: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'स्थान दिले आहे, परंतु स्थानिक नेटवर्क परवानगी देखील आवश्यक आहे. सेटिंग्ज तपासा.';

  @override
  String get settingsLocationRequired => 'स्थान परवानगी आवश्यक';

  @override
  String get settingsLocationRequiredBody =>
      'तुमचे WiFi नेटवर्क नाव प्रदर्शित करण्यासाठी, iOS ला स्थान परवानगी आवश्यक आहे.';

  @override
  String get settingsRequiredPermissions => 'आवश्यक परवानग्या:';

  @override
  String get settingsPermissionList =>
      '1. स्थान सेवा (\"ॲप वापरत असताना\")\n2. स्थानिक नेटवर्क';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'टीप: डिव्हाइस शोध स्थान परवानगीशिवाय कार्य करते. ही परवानगी फक्त तुमचे WiFi नेटवर्क नाव प्रदर्शित करण्यासाठी वापरली जाते.';

  @override
  String get settingsEnableLocation => 'सेटिंग्जमध्ये स्थान सक्षम करा';

  @override
  String get settingsLocationDeniedBody =>
      'स्थान परवानगी नाकारण्यात आली. आपण सिस्टम सेटिंग्जमधून ते सक्षम करू शकता.';

  @override
  String get settingsStepsToEnable => 'सक्षम करण्यासाठी पायऱ्या:';

  @override
  String get settingsEnableLocationSteps =>
      '1. सेटिंग्ज उघडा\n2. \"Bit Switch\" वर स्क्रोल करा\n3. \"स्थान\" वर टॅप करा\n4. \"ॲप वापरत असताना\" निवडा\n5. या ॲपवर परत या आणि रिफ्रेश बटण टॅप करा';

  @override
  String get settingsLocationOnlyWifiName =>
      'टीप: स्थान परवानगी फक्त WiFi नाव प्रदर्शित करण्यासाठी आवश्यक आहे. डिव्हाइस शोध त्याशिवाय कार्य करते.';

  @override
  String get settingsAdditionalPermission => 'अतिरिक्त परवानगी आवश्यक';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo डिव्हाइस शोधण्यासाठी आणि नियंत्रित करण्यासाठी स्थानिक नेटवर्क परवानगी आवश्यक आहे.';

  @override
  String get settingsWifiNameNotVisible =>
      'तुमच्याकडे स्थान परवानगी आहे, परंतु WiFi नाव अद्याप दृश्यमान नाही.';

  @override
  String get settingsPleaseEnable => 'कृपया सक्षम करा:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. iPhone सेटिंग्ज वर जा\n2. \"Bit Switch\" वर खाली स्क्रोल करा\n3. \"स्थानिक नेटवर्क\" सक्षम करा';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS वर डिव्हाइस शोध आणि WiFi नाव प्रवेश दोन्हीसाठी स्थानिक नेटवर्क परवानगी आवश्यक आहे.';

  @override
  String get settingsPairNewDevice => 'नवीन डिव्हाइस पेअर करा';

  @override
  String get settingsPairNewDeviceSubtitle => 'नवीन Wemo डिव्हाइस सेट करा';

  @override
  String get settingsDiscoveryTimeout => 'शोध कालबाह्य';

  @override
  String get settingsRequestTimeout => 'विनंती कालबाह्य';

  @override
  String get settingsAutoRefresh => 'स्वयं-रिफ्रेश';

  @override
  String get settingsAutoRefreshOn =>
      'चालू - डिव्हाइस स्थिती आपोआप रिफ्रेश होते';

  @override
  String get settingsAutoRefreshOff => 'बंद - मॅन्युअल रिफ्रेश बटण वापरा';

  @override
  String get settingsAutoRefreshInterval => 'स्वयं-रिफ्रेश मध्यांतर';

  @override
  String get settingsAbout => 'Bit Switch बद्दल';

  @override
  String get settingsVersion => 'आवृत्ती';

  @override
  String get settingsNetworkDiagnostics => 'नेटवर्क डायग्नोस्टिक्स';

  @override
  String get settingsShowDebug => 'डीबग मोड दर्शवा';

  @override
  String get settingsShowDebugSubtitle =>
      'मुख्यपृष्ठ स्क्रीनवर डीबग नियंत्रणे आणि नेटवर्क निदान दर्शवा';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'समस्यानिवारणासाठी मुख्यपृष्ठ स्क्रीनवर डीबग चिन्ह दर्शवा';

  @override
  String get settingsCurrentNetwork => 'वर्तमान नेटवर्क';

  @override
  String get settingsNetworkAccessStatus => 'नेटवर्क प्रवेश स्थिती';

  @override
  String get settingsNetworkAccessGranted =>
      'स्थानिक नेटवर्क प्रवेश उपलब्ध आहे';

  @override
  String get settingsNetworkAccessMissing =>
      'अतिरिक्त परवानग्या आवश्यक असू शकतात';

  @override
  String get settingsChecking => 'तपासत आहे...';

  @override
  String get settingsEnableLocalNetwork =>
      'सेटिंग्जमध्ये स्थानिक नेटवर्क सक्षम करा';

  @override
  String get settingsNotConnectedWifi => 'WiFi शी कनेक्ट केलेले नाही';

  @override
  String get settingsPermissionRequiredView => 'पाहण्यासाठी परवानगी आवश्यक आहे';

  @override
  String get settingsAllPermissionsGranted => 'सर्व परवानग्या दिल्या';

  @override
  String get settingsLocalNetworkNeeded => 'स्थानिक नेटवर्क परवानगी आवश्यक आहे';

  @override
  String get settingsLocationNeeded => 'स्थान परवानगी आवश्यक आहे';

  @override
  String get settingsRefreshPermissions => 'परवानग्या रिफ्रेश करा';

  @override
  String get settingsAboutWifiPermission => 'WiFi नाव परवानगीबद्दल';

  @override
  String get settingsWifiPermissionExplanation =>
      'तुमचे WiFi नाव तुमचा फोन आणि Wemo डिव्हाइसेस एकाच नेटवर्कवर असल्याची पुष्टी करण्यात मदत करते.';

  @override
  String get settingsWifiPermissionIos =>
      'iOS वर, तुमचे WiFi नेटवर्क नाव प्रदर्शित करण्यासाठी स्थान परवानगी आवश्यक आहे.';

  @override
  String get settingsImportant => 'महत्त्वाचे:';

  @override
  String get settingsPrivacyNote =>
      '• तुमचे स्थान कधीही ट्रॅक केले जात नाही\n• कोणताही स्थान डेटा संकलित किंवा संग्रहित केला जात नाही';

  @override
  String get settingsWifiPermissionImportant =>
      '• या परवानगीशिवाय डिव्हाइस शोध कार्य करते\n• हे फक्त WiFi नाव दर्शविण्यासाठी आवश्यक आहे\n• कोणताही स्थान डेटा संकलित किंवा संग्रहित केला जात नाही';

  @override
  String get settingsGrantPermission => 'परवानगी द्या';

  @override
  String get settingsHowLongScan => 'उपकरणांसाठी किती वेळ स्कॅन करायचे:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'शोध कालबाह्य $seconds सेकंदांवर सेट केले';
  }

  @override
  String get settingsHowLongResponses =>
      'डिव्हाइस प्रतिसादांसाठी किती वेळ प्रतीक्षा करावी:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'तुम्हाला \"कनेक्शन बंद\" त्रुटी दिसल्यास हे मूल्य वाढवा.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'विनंती कालबाह्य $seconds सेकंदांवर सेट केले';
  }

  @override
  String get settingsSetRefreshInterval =>
      'स्वयंचलित स्थिती रिफ्रेशसाठी मध्यांतर सेट करा:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'रिफ्रेश मध्यांतर $seconds सेकंदांवर सेट केले';
  }

  @override
  String get settingsAboutTagline =>
      'तुमच्या Wemo डिव्हाइसेससाठी स्वच्छ, खाजगी स्थानिक नियंत्रक.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch क्लाउड अवलंबित्वाशिवाय डिव्हाइस शोधण्यासाठी आणि नियंत्रित करण्यासाठी स्थानिक नेटवर्क शोध वापरते.';

  @override
  String get settingsVersionValue => 'आवृत्ती 1.0.1';

  @override
  String get settingsProtocol => 'प्रोटोकॉल: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'मल्टीकास्ट पत्ता: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'डिव्हाइस पोर्ट: 49152-49159';

  @override
  String get settingsControlProtocol => 'नियंत्रण प्रोटोकॉल: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'टीप: तुमचे डिव्हाइस तुमच्या Wemo डिव्हाइसेसच्या नेटवर्कवर आहे आणि UDP मल्टीकास्ट ब्लॉक केलेले नाही याची खात्री करा.';

  @override
  String get settingsDevicePaired =>
      'डिव्हाइस जोडले! डिव्हाइस सूची रीफ्रेश करत आहे...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'प्रति विनंती $seconds सेकंद';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'प्रत्येक $seconds रिफ्रेश करत आहे';
  }

  @override
  String get pairingTitle => 'नवीन डिव्हाइस पेअर करा';

  @override
  String get pairingSetupTitle => 'तुमचे Wemo डिव्हाइस सेट करा';

  @override
  String get pairingBeforeBegin =>
      'तुम्ही सुरू करण्यापूर्वी, तुमचे Wemo डिव्हाइस सेटअप मोडमध्ये असल्याची खात्री करा:';

  @override
  String get pairingPlugInTitle => 'तुमचे Wemo डिव्हाइस प्लग इन करा';

  @override
  String get pairingPlugInBody =>
      'ते पॉवरशी कनेक्ट करा आणि ते सुरू होण्याची प्रतीक्षा करा.';

  @override
  String get pairingBlinkingLedTitle => 'ब्लिंकिंग एलईडी पहा';

  @override
  String get pairingBlinkingLedBody =>
      'ब्लिंक करणारा LED डिव्हाइस सेटअप मोडमध्ये असल्याचे सूचित करतो.';

  @override
  String get pairingCheckWifiTitle => 'WiFi नेटवर्क तपासा';

  @override
  String get pairingCheckWifiBody =>
      'डिव्हाइस \"WeMo.XXXX\" नावाचे नेटवर्क प्रसारित करेल.';

  @override
  String get pairingSolidLedHint =>
      'LED ठोस असल्यास, सेटअप मोडमध्ये प्रवेश करण्यासाठी रीसेट बटण 5 सेकंद धरून ठेवा.';

  @override
  String get pairingStart => 'जोडणी सुरू करा';

  @override
  String get pairingConnectWifiTitle => 'WiFi डिव्हाइसशी कनेक्ट करा';

  @override
  String get pairingConnectWifiBody =>
      'तुमच्या फोनची WiFi सेटिंग्ज उघडा आणि \"WeMo\" ने सुरू होणाऱ्या नेटवर्कशी कनेक्ट करा.';

  @override
  String get pairingCurrentNetwork => 'वर्तमान नेटवर्क';

  @override
  String get pairingConnectedToDevice => 'Wemo डिव्हाइसशी कनेक्ट केले!';

  @override
  String get pairingOpenWifiSettings => 'WiFi सेटिंग्ज उघडा';

  @override
  String get pairingConnectedButton => 'मी कनेक्ट केले आहे';

  @override
  String get pairingLookingForDevice => 'तुमचे Wemo डिव्हाइस शोधत आहे...';

  @override
  String get pairingManualIpPrompt =>
      'किंवा डिव्हाइस IP व्यक्तिचलितपणे प्रविष्ट करा:';

  @override
  String get pairingDeviceIp => 'डिव्हाइस IP पत्ता';

  @override
  String get pairingConnectToIp => 'IP शी कनेक्ट करा';

  @override
  String get pairingSelectHomeWifi => 'तुमचे घर WiFi नेटवर्क निवडा:';

  @override
  String get pairingRefreshNetworks => 'नेटवर्क रिफ्रेश करा';

  @override
  String get pairingIosScanLimitation =>
      'iOS जवळपासच्या Wi-Fi नेटवर्कसाठी तृतीय-पक्ष ॲप्सला स्कॅन करण्यापासून कठोरपणे प्रतिबंधित करते. तुम्हाला नेटवर्क SSID व्यक्तिचलितपणे प्रविष्ट करावे लागेल.';

  @override
  String get pairingNoNetworks => 'कोणतेही नेटवर्क आढळले नाही';

  @override
  String get pairingScanAgain => 'पुन्हा स्कॅन करा';

  @override
  String get pairingWifiPassword => 'WiFi पासवर्ड';

  @override
  String get pairingConnect => 'कनेक्ट करा';

  @override
  String get pairingEnterNetworkManually =>
      'नेटवर्क व्यक्तिचलितपणे प्रविष्ट करा';

  @override
  String get pairingEnterNetworkName => 'नेटवर्क नाव प्रविष्ट करा:';

  @override
  String get pairingNetworkName => 'नेटवर्कचे नाव (SSID)';

  @override
  String get pairingUseNetwork => 'हे नेटवर्क वापरा';

  @override
  String get pairingConfiguringDevice => 'डिव्हाइस कॉन्फिगर करत आहे...';

  @override
  String get pairingConfiguringWait =>
      'कृपया डिव्हाइस तुमच्या नेटवर्कशी कनेक्ट होईपर्यंत प्रतीक्षा करा.';

  @override
  String get pairingReconnectTitle => 'तुमच्या नेटवर्कशी पुन्हा कनेक्ट करा';

  @override
  String pairingReconnectBody(String ssid) {
    return 'तुमचे Wemo डिव्हाइस आता \"$ssid\" शी कनेक्ट होत आहे. कृपया तुमचा फोन त्याच नेटवर्कशी पुन्हा कनेक्ट करा.';
  }

  @override
  String get pairingBackOnHome => 'होम नेटवर्कवर परत!';

  @override
  String get pairingReconnectedButton => 'मी पुन्हा कनेक्ट केले आहे';

  @override
  String get pairingFinalizingSetup => 'सेटअप अंतिम करत आहे...';

  @override
  String get pairingSetupComplete => 'सेटअप पूर्ण!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid शी कनेक्ट केलेले';
  }

  @override
  String get pairingDeviceReady =>
      'तुमचे डिव्हाइस आता सेट झाले आहे आणि होम स्क्रीनवर दिसेल.';

  @override
  String get pairingSomethingWrong => 'काहीतरी चूक झाली';

  @override
  String get pairingStartOver => 'स्टार्ट ओव्हर';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi सेटिंग्ज उघडू शकलो नाही. कृपया ते व्यक्तिचलितपणे उघडा.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'तुमचा फोन अजूनही \"$ssid\" शी कनेक्ट आहे. कृपया WiFi सेटिंग्ज उघडा, WeMo डिव्हाइस नेटवर्कशी कनेक्ट करा, नंतर पुन्हा प्रयत्न करा.';
  }

  @override
  String get pairingLoadingLooking => 'डिव्हाइस शोधत आहे...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip वर WeMo डिव्हाइस शोधू शकलो नाही. तुमचा फोन WeMo WiFi नेटवर्कशी कनेक्ट असल्याची खात्री करा, नंतर पुन्हा प्रयत्न करा. तुम्ही डिव्हाइस IP व्यक्तिचलितपणे देखील प्रविष्ट करू शकता.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'डिव्हाइस शोधण्यात त्रुटी: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip शी कनेक्ट करत आहे...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip वर कोणतेही डिव्हाइस आढळले नाही';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip शी कनेक्ट करताना त्रुटी: $error';
  }

  @override
  String get pairingLoadingScanning => 'नेटवर्कसाठी स्कॅन करत आहे...';

  @override
  String pairingErrorScanning(String error) {
    return 'नेटवर्क स्कॅन करू शकलो नाही: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'कृपया नेटवर्क निवडा आणि पासवर्ड एंटर करा.';

  @override
  String get pairingLoadingSendingCredentials =>
      'नेटवर्क क्रेडेन्शियल पाठवत आहे...';

  @override
  String get pairingLoadingWaitingConnection =>
      'डिव्हाइस कनेक्ट होण्याची प्रतीक्षा करत आहे...';

  @override
  String pairingErrorConfigure(String error) {
    return 'नेटवर्क कॉन्फिगर करण्यात अयशस्वी: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'पासवर्ड खूप लहान. कृपया तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'कनेक्ट करण्यात अयशस्वी. कृपया पासवर्ड तपासा.';

  @override
  String get pairingErrorConnectionTimeout =>
      'कनेक्शन कालबाह्य झाले. कृपया पुन्हा प्रयत्न करा.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'सेटअप अंतिम करण्यात त्रुटी: $error';
  }

  @override
  String get detailRefreshState => 'स्थिती रिफ्रेश करा';

  @override
  String get detailDeviceInfo => 'डिव्हाइस माहिती';

  @override
  String get detailAdvanced => 'प्रगत';

  @override
  String get detailWifiSetup => 'WiFi सेटअप';

  @override
  String get detailReset => 'रीसेट करा';

  @override
  String get detailUnreachable =>
      'डिव्हाइस पोहोचण्यायोग्य नाही. नेटवर्क कनेक्शन तपासा.';

  @override
  String detailFailedToggle(String error) {
    return 'टॉगल करण्यात अयशस्वी: $error';
  }

  @override
  String get detailDeviceInformation => 'डिव्हाइस माहिती';

  @override
  String get detailPermissionScan =>
      'WiFi नेटवर्क स्कॅन करण्यासाठी परवानगी आवश्यक आहे.';

  @override
  String get detailScanFailedManual =>
      'नेटवर्क स्कॅन करू शकलो नाही. नेटवर्कचे नाव व्यक्तिचलितपणे प्रविष्ट करा.';

  @override
  String get detailEnterNetworkNameError =>
      'कृपया नेटवर्क नाव प्रविष्ट करा किंवा निवडा';

  @override
  String get detailEnterPasswordError => 'कृपया नेटवर्क पासवर्ड टाका';

  @override
  String get detailWifiSuccess => 'WiFi यशस्वीरित्या कॉन्फिगर केले!';

  @override
  String get detailScanNetworks => 'नेटवर्कसाठी स्कॅन करा';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" साठी WiFi नेटवर्क कॉन्फिगर करा';
  }

  @override
  String get detailAvailableNetworks => 'उपलब्ध नेटवर्क';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS जवळपासच्या Wi-Fi नेटवर्कसाठी तृतीय-पक्ष ॲप्सला स्कॅन करण्यापासून कठोरपणे प्रतिबंधित करते. कृपया खाली आपले नेटवर्क नाव व्यक्तिचलितपणे प्रविष्ट करा.';

  @override
  String get detailTapRefreshScan =>
      'नेटवर्क स्कॅन करण्यासाठी रिफ्रेश वर टॅप करा';

  @override
  String get detailEnterNetworkBelow => 'खाली तुमचे नेटवर्क नाव प्रविष्ट करा';

  @override
  String get detailNetworkCredentials => 'नेटवर्क क्रेडेन्शियल';

  @override
  String get detailConnecting => 'नेटवर्कशी कनेक्ट करत आहे...';

  @override
  String get detailConnected => 'यशस्वीरित्या कनेक्ट केले!';

  @override
  String get detailPasswordShort => 'पासवर्ड खूप लहान आहे';

  @override
  String get detailAuthenticationFailed => 'प्रमाणीकरण अयशस्वी - पासवर्ड तपासा';

  @override
  String get detailConnectionFailed => 'कनेक्शन अयशस्वी';

  @override
  String get detailSelectReset => 'कृपया काय रीसेट करायचे ते निवडा';

  @override
  String get detailResetSchedulesWarning =>
      '• सर्व वेळापत्रक आणि ऑटोमेशन नियम हटवले जातील';

  @override
  String get detailResetWifiWarning => '• WiFi सेटिंग्ज मिटवली जातील';

  @override
  String get detailSetupAgainWarning =>
      '• तुम्हाला डिव्हाइस पुन्हा सेट करावे लागेल';

  @override
  String get detailUnreachableWarning => '• डिव्हाइस तात्पुरते अगम्य होऊ शकते';

  @override
  String get detailConfirmReset => 'रीसेटची पुष्टी करा';

  @override
  String detailConfirmResetDevice(String device) {
    return 'तुम्हाला खात्री आहे की तुम्ही \"$device\" रीसेट करू इच्छिता?';
  }

  @override
  String get detailThisWill => 'हे करेल:';

  @override
  String get detailCannotUndo => 'ही क्रिया पूर्ववत केली जाऊ शकत नाही.';

  @override
  String get detailYesReset => 'होय, रीसेट करा';

  @override
  String get detailResetSuccess => 'डिव्हाइस यशस्वीरित्या रीसेट';

  @override
  String get detailResetRemote => 'डिव्हाइस दूरस्थपणे रीसेट होईल';

  @override
  String get detailResetFailed => 'रीसेट अयशस्वी';

  @override
  String get detailFactoryReset => 'फॅक्टरी रीसेट';

  @override
  String get detailFactoryResetWarning =>
      'हे सर्व सेटिंग्ज मिटवेल आणि डिव्हाइसला फॅक्टरी डीफॉल्टवर पुनर्संचयित करेल. तुम्हाला डिव्हाइस पुन्हा सेट करावे लागेल.\n\nही क्रिया पूर्ववत केली जाऊ शकत नाही.';

  @override
  String get detailFactoryResetInitiated => 'फॅक्टरी रीसेट सुरू केले';

  @override
  String get detailResetDevice => 'डिव्हाइस रीसेट करा';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" साठी पर्याय रीसेट करा';
  }

  @override
  String get detailResetUserData => 'वापरकर्ता डेटा रीसेट करा';

  @override
  String get detailResetUserDataSubtitle => 'वेळापत्रक आणि नियम साफ करते';

  @override
  String get detailResetWifi => 'WiFi सेटिंग्ज रीसेट करा';

  @override
  String get detailResetWifiSubtitle => 'डिव्हाइस पुन्हा सेट करणे आवश्यक आहे';

  @override
  String get widgetBrightness => 'चमक';

  @override
  String get widgetEnergyStatistics => 'ऊर्जा सांख्यिकी';

  @override
  String get widgetCurrentPower => 'वर्तमान शक्ती';

  @override
  String get widgetToday => 'आज';

  @override
  String get widgetTotal => 'एकूण';

  @override
  String get widgetOnTimeToday => 'आज वेळेवर';

  @override
  String get widgetTotalOnTime => 'एकूण वेळेवर';

  @override
  String get widgetStandby => 'स्टँडबाय';

  @override
  String get widgetUnknown => 'अज्ञात';

  @override
  String get widgetOpenNetwork => 'नेटवर्क उघडा';

  @override
  String get widgetWepInsecure => 'WEP (असुरक्षित)';
}
