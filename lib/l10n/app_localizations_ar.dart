// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'الجهاز لا يدعم هذا الإجراء.';

  @override
  String get errInvalidArgs => 'تم إرسال وسائط غير صالحة إلى الجهاز.';

  @override
  String get errActionFailed => 'فشل الجهاز في تنفيذ الإجراء المطلوب.';

  @override
  String get errInvalidValue => 'تم توفير قيمة غير صالحة.';

  @override
  String get errValueOutOfRange => 'القيمة خارج النطاق المقبول.';

  @override
  String get errFeatureNotAvailable => 'هذه الميزة غير متوفرة على هذا الجهاز.';

  @override
  String get errOutOfMemory => 'نفدت ذاكرة الجهاز. حاول مرة أخرى لاحقًا.';

  @override
  String get errManualActionRequired => 'مطلوب إجراء يدوي على الجهاز.';

  @override
  String get errActionNotAuthorized => 'هذا الإجراء غير مصرح به.';

  @override
  String get errUnexpected => 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.';

  @override
  String get errDeviceUnreachableOffline =>
      'غير قادر على الوصول إلى الجهاز. قد يكون غير متصل بالإنترنت أو على شبكة مختلفة.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'انتهت مهلة الطلب بعد محاولات $attempts. قد يكون الجهاز غير متصل بالإنترنت.';
  }

  @override
  String get errRequestTimedOut =>
      'انتهت مهلة الطلب. قد يكون الجهاز غير متصل بالإنترنت.';

  @override
  String get errNoRouteToHost =>
      'لا يمكن الوصول إلى الجهاز. الرجاء التحقق من اتصال WiFi الخاص بك.';

  @override
  String get errHostUnreachable =>
      'الجهاز غير قابل للوصول. يرجى التأكد من تشغيله وتوصيله بـ WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'غير قادر على الاتصال بالجهاز بعد محاولات $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'خطأ في الشبكة: غير قادر على الاتصال بالجهاز.';

  @override
  String get errActionNotAuthorizedDevice =>
      'هذا الإجراء غير مسموح به على الجهاز.';

  @override
  String get errDeviceServiceNotFound =>
      'لم يتم العثور على خدمة الجهاز. قد يحتاج الجهاز إلى تحديث البرامج الثابتة.';

  @override
  String get errDeviceEncounteredError => 'واجه الجهاز خطأ أثناء معالجة الطلب.';

  @override
  String get errDeviceInternalError => 'أرجع الجهاز خطأً داخليًا.';

  @override
  String get errDeviceTempUnavailable =>
      'الجهاز غير متاح مؤقتا. يرجى المحاولة مرة أخرى.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'أرجع الجهاز خطأ (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'فشل $action على الجهاز.';
  }

  @override
  String get errDeviceReturnedError => 'أرجع الجهاز خطأ.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'انتهت مهلة العملية $operation. يرجى المحاولة مرة أخرى.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'انتهت مهلة العملية بعد ثواني $seconds.';
  }

  @override
  String get errOperationTimedOut =>
      'انتهت مهلة العملية. يرجى المحاولة مرة أخرى.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'يرجى تمكين إذن الشبكة المحلية في الإعدادات للعثور على الأجهزة.';

  @override
  String get errCannotAccessLocalNetwork =>
      'لا يمكن الوصول إلى الشبكة المحلية. يرجى تمكين إذن الشبكة المحلية في الإعدادات.';

  @override
  String get errCheckWifiConnection =>
      'غير قادر على اكتشاف الأجهزة. الرجاء التحقق من اتصال WiFi الخاص بك.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'توقف الاكتشاف. تم العثور على جهاز (أجهزة) $count.';
  }

  @override
  String get errNoDevicesFound =>
      'لم يتم العثور على أي أجهزة. يرجى التأكد من تشغيل الأجهزة وتوصيلها بشبكتك.';

  @override
  String get actionGetDeviceState => 'الحصول على حالة الجهاز';

  @override
  String get actionSetDeviceState => 'ضبط حالة الجهاز';

  @override
  String get actionGetEnergyData => 'الحصول على بيانات الطاقة';

  @override
  String get actionScanNetworks => 'البحث عن الشبكات';

  @override
  String get actionConnectWifi => 'الاتصال WiFi';

  @override
  String get actionCheckConnection => 'التحقق من حالة الاتصال';

  @override
  String get actionResetDevice => 'إعادة ضبط الجهاز';

  @override
  String get actionPerform => 'تنفيذ الإجراء';

  @override
  String get suggestTryRefreshing =>
      'حاول تحديث قائمة الأجهزة أو تحقق مما إذا كان الجهاز يستجيب.';

  @override
  String get suggestEnsurePoweredOn =>
      'تأكد من تشغيل الجهاز وتوصيله بشبكة WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'تأكد من اتصال هاتفك بنفس شبكة WiFi مثل أجهزتك.';

  @override
  String get suggestCheckPhysical =>
      'تحقق من الجهاز الفعلي بحثًا عن أي أزرار أو مفاتيح تحتاج إلى الاهتمام.';

  @override
  String get suggestWaitAndTry => 'انتظر لحظة وحاول مرة أخرى.';

  @override
  String get suggestDeviceBusy =>
      'قد يكون الجهاز مشغولاً. حاول مرة أخرى خلال بضع ثوان.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonClose => 'إغلاق';

  @override
  String get commonDone => 'تم';

  @override
  String get commonLater => 'في وقت لاحق';

  @override
  String get commonRefresh => 'تحديث';

  @override
  String get commonTryAgain => 'حاول مرة أخرى';

  @override
  String get commonOpenSettings => 'افتح الإعدادات';

  @override
  String get commonGrant => 'جرانت';

  @override
  String get commonFix => 'إصلاح';

  @override
  String get commonOn => 'على';

  @override
  String get commonOff => 'إيقاف';

  @override
  String get commonOffline => 'غير متصل';

  @override
  String get commonStatus => 'الحالة';

  @override
  String get commonName => 'الاسم';

  @override
  String get commonType => 'اكتب';

  @override
  String get commonModel => 'نموذج';

  @override
  String get commonManufacturer => 'الشركة المصنعة';

  @override
  String get commonSerial => 'مسلسل';

  @override
  String get commonFirmware => 'البرامج الثابتة';

  @override
  String get commonHost => 'المضيف';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'كلمة المرور';

  @override
  String get commonUnknownWifi => 'غير معروف Wi-Fi';

  @override
  String get commonNotConnected => 'غير متصل';

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
      other: '$seconds ثانية',
      one: '1 ثانية',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'التبديل الذكي';

  @override
  String get deviceTypeLightSwitch => 'مفتاح الضوء';

  @override
  String get deviceTypeDimmer => 'باهتة';

  @override
  String get deviceTypeInsightPlug => 'انسايت المكونات';

  @override
  String get deviceTypeMotionSensor => 'مستشعر الحركة';

  @override
  String get deviceTypeMaker => 'صانع';

  @override
  String get deviceTypeBridge => 'جسر';

  @override
  String get deviceTypeCoffeeMaker => 'صانع القهوة';

  @override
  String get deviceTypeCrockpot => 'وعاء الفخار';

  @override
  String get deviceTypeHumidifier => 'مرطب';

  @override
  String get deviceTypeOutdoorPlug => 'المكونات في الهواء الطلق';

  @override
  String get deviceTypeUnknown => 'جهاز غير معروف';

  @override
  String get pairingStepGetStarted => 'ابدأ';

  @override
  String get pairingStepConnectToDevice => 'الاتصال بالجهاز';

  @override
  String get pairingStepFindDevice => 'ابحث عن الجهاز';

  @override
  String get pairingStepSelectNetwork => 'حدد الشبكة';

  @override
  String get pairingStepConfiguring => 'تكوين';

  @override
  String get pairingStepReconnect => 'أعد الاتصال';

  @override
  String get pairingStepFinalizing => 'وضع اللمسات النهائية';

  @override
  String get pairingStepSuccess => 'النجاح';

  @override
  String get pairingStepError => 'خطأ';

  @override
  String get homeToggleDebug => 'تبديل وضع التصحيح';

  @override
  String get homeRefreshDevices => 'تحديث الأجهزة';

  @override
  String get homeSettings => 'الإعدادات';

  @override
  String get homeDismiss => 'استبعاد';

  @override
  String get homeDiscovering => 'اكتشاف الأجهزة...';

  @override
  String get homeNoDevices => 'لم يتم العثور على أي أجهزة';

  @override
  String get homeScanDevices => 'المسح للأجهزة';

  @override
  String get homeLookingForMore => 'جارٍ البحث عن المزيد من الأجهزة...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم العثور على أجهزة $count',
      one: 'تم العثور على جهاز واحد',
      zero: 'لم يتم العثور على أي أجهزة',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم العثور على أجهزة $count، جارٍ المسح...',
      one: 'تم العثور على جهاز واحد، جارٍ إجراء المسح...',
      zero: 'لم يتم العثور على أي أجهزة، جارٍ المسح...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'تلقائي';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'متصل بـ WiFi';

  @override
  String get homePermissionExplanation =>
      'يتم استخدام معلومات الموقع للعثور على تفاصيل Wi-Fi الخاصة بك. يتيح لك الوصول إلى الشبكة المحلية التحكم في مفاتيحك وأجهزتك الذكية.';

  @override
  String get homeDebugLog => 'سجل التصحيح';

  @override
  String get homeClear => 'واضح';

  @override
  String get homeDebugEmpty =>
      'انقر فوق تحديث لبدء الاكتشاف والاطلاع على السجلات...';

  @override
  String get homeProbeHint => 'IP:المنفذ (على سبيل المثال 192.168.1.100:49153)';

  @override
  String get homeProbe => 'دقق';

  @override
  String get homeScanning => 'جارٍ المسح...';

  @override
  String get homeScanSubnet => 'مسح الشبكة الفرعية بالكامل (إصلاح iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'المنصة: $platform $version';
  }

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsSectionNetwork => 'الشبكة';

  @override
  String get settingsSectionDeviceSetup => 'إعداد الجهاز';

  @override
  String get settingsSectionDiscovery => 'اكتشاف';

  @override
  String get settingsSectionAbout => 'حول';

  @override
  String get settingsSectionDebug => 'تصحيح';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'تم منح الإذن! اسم WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'تم منح الموقع، ولكن يلزم الحصول على إذن الشبكة المحلية أيضًا. تحقق من الإعدادات.';

  @override
  String get settingsLocationRequired => 'مطلوب إذن الموقع';

  @override
  String get settingsLocationRequiredBody =>
      'لعرض اسم شبكة WiFi الخاصة بك، يتطلب iOS إذن الموقع.';

  @override
  String get settingsRequiredPermissions => 'الأذونات المطلوبة:';

  @override
  String get settingsPermissionList =>
      '1. خدمات الموقع (\"أثناء استخدام التطبيق\")\n2. الشبكة المحلية';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'ملاحظة: يعمل اكتشاف الجهاز دون إذن الموقع. يستخدم هذا الإذن فقط لعرض اسم شبكة WiFi الخاصة بك.';

  @override
  String get settingsEnableLocation => 'تمكين الموقع في الإعدادات';

  @override
  String get settingsLocationDeniedBody =>
      'تم رفض إذن تحديد الموقع. يمكنك تمكينه من إعدادات النظام.';

  @override
  String get settingsStepsToEnable => 'خطوات التمكين:';

  @override
  String get settingsEnableLocationSteps =>
      '1. افتح الإعدادات\n2. قم بالتمرير إلى \"Bit Switch\"\n3. اضغط على \"الموقع\"\n4. حدد \"أثناء استخدام التطبيق\"\n5. ارجع إلى هذا التطبيق واضغط على زر التحديث';

  @override
  String get settingsLocationOnlyWifiName =>
      'ملاحظة: إذن الموقع مطلوب فقط لعرض اسم WiFi. اكتشاف الجهاز يعمل بدونه.';

  @override
  String get settingsAdditionalPermission => 'مطلوب إذن إضافي';

  @override
  String get settingsLocalNetworkBody =>
      'مطلوب إذن الشبكة المحلية لاكتشاف أجهزة Wemo والتحكم فيها.';

  @override
  String get settingsWifiNameNotVisible =>
      'لديك إذن تحديد الموقع، ولكن اسم WiFi غير مرئي بعد.';

  @override
  String get settingsPleaseEnable => 'الرجاء التمكين:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. انتقل إلى إعدادات الآيفون\n2. قم بالتمرير لأسفل إلى \"Bit Switch\"\n3. تمكين \"الشبكة المحلية\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'مطلوب إذن الشبكة المحلية لاكتشاف الجهاز والوصول إلى اسم WiFi على نظام التشغيل iOS.';

  @override
  String get settingsPairNewDevice => 'إقران جهاز جديد';

  @override
  String get settingsPairNewDeviceSubtitle => 'قم بإعداد جهاز Wemo جديد';

  @override
  String get settingsDiscoveryTimeout => 'مهلة الاكتشاف';

  @override
  String get settingsRequestTimeout => 'مهلة الطلب';

  @override
  String get settingsAutoRefresh => 'التحديث التلقائي';

  @override
  String get settingsAutoRefreshOn => 'تشغيل - يتم تحديث حالات الجهاز تلقائيًا';

  @override
  String get settingsAutoRefreshOff => 'إيقاف - استخدم زر التحديث اليدوي';

  @override
  String get settingsAutoRefreshInterval => 'الفاصل الزمني للتحديث التلقائي';

  @override
  String get settingsAbout => 'حول Bit Switch';

  @override
  String get settingsVersion => 'الإصدار';

  @override
  String get settingsNetworkDiagnostics => 'تشخيص الشبكة';

  @override
  String get settingsShowDebug => 'إظهار وضع التصحيح';

  @override
  String get settingsShowDebugSubtitle =>
      'إظهار عناصر التحكم في التصحيح وتشخيصات الشبكة على الشاشة الرئيسية';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'إظهار رمز التصحيح على الشاشة الرئيسية لاستكشاف الأخطاء وإصلاحها';

  @override
  String get settingsCurrentNetwork => 'الشبكة الحالية';

  @override
  String get settingsNetworkAccessStatus => 'حالة الوصول إلى الشبكة';

  @override
  String get settingsNetworkAccessGranted => 'الوصول إلى الشبكة المحلية متاح';

  @override
  String get settingsNetworkAccessMissing =>
      'قد تكون هناك حاجة إلى أذونات إضافية';

  @override
  String get settingsChecking => 'جارٍ التحقق...';

  @override
  String get settingsEnableLocalNetwork => 'تمكين الشبكة المحلية في الإعدادات';

  @override
  String get settingsNotConnectedWifi => 'غير متصل بـ WiFi';

  @override
  String get settingsPermissionRequiredView => 'الإذن مطلوب للعرض';

  @override
  String get settingsAllPermissionsGranted => 'تم منح كافة الأذونات';

  @override
  String get settingsLocalNetworkNeeded => 'مطلوب إذن الشبكة المحلية';

  @override
  String get settingsLocationNeeded => 'مطلوب إذن الموقع';

  @override
  String get settingsRefreshPermissions => 'تحديث الأذونات';

  @override
  String get settingsAboutWifiPermission => 'حول إذن الاسم WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'يساعد اسم WiFi الخاص بك في التأكد من أن هاتفك وأجهزة Wemo موجودة على نفس الشبكة.';

  @override
  String get settingsWifiPermissionIos =>
      'على نظام التشغيل iOS، يتطلب عرض اسم شبكة WiFi الحصول على إذن تحديد الموقع.';

  @override
  String get settingsImportant => 'هام:';

  @override
  String get settingsPrivacyNote =>
      '• لا يتم تعقب موقعك أبدا\n• لا يتم جمع أو تخزين بيانات الموقع';

  @override
  String get settingsWifiPermissionImportant =>
      '• اكتشاف الجهاز يعمل بدون هذا الإذن\n• هذا مطلوب فقط لإظهار اسم WiFi\n• لا يتم جمع أو تخزين بيانات الموقع';

  @override
  String get settingsGrantPermission => 'إذن المنح';

  @override
  String get settingsHowLongScan => 'كم من الوقت للبحث عن الأجهزة:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'تم ضبط مهلة الاكتشاف على $seconds ثانية';
  }

  @override
  String get settingsHowLongResponses => 'كم من الوقت تنتظر استجابات الجهاز:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'قم بزيادة هذه القيمة إذا رأيت أخطاء \"تم إغلاق الاتصال\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'تم ضبط مهلة الطلب على $seconds ثانية';
  }

  @override
  String get settingsSetRefreshInterval =>
      'قم بتعيين الفاصل الزمني للتحديث التلقائي للحالة:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'تم ضبط الفاصل الزمني للتحديث على $seconds ثانية';
  }

  @override
  String get settingsAboutTagline =>
      'وحدة تحكم محلية نظيفة وخاصة لأجهزة Wemo الخاصة بك.';

  @override
  String get settingsAboutDescription =>
      'يستخدم Bit Switch اكتشاف الشبكة المحلية للعثور على الأجهزة والتحكم فيها دون تبعيات سحابية.';

  @override
  String get settingsVersionValue => 'الإصدار 1.0.1';

  @override
  String get settingsProtocol => 'البروتوكول: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'عنوان البث المتعدد: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'منافذ الجهاز: 49152-49159';

  @override
  String get settingsControlProtocol => 'بروتوكول التحكم: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'نصيحة: تأكد من أن جهازك موجود على نفس الشبكة مثل أجهزة Wemo الخاصة بك وأن البث المتعدد UDP غير محظور.';

  @override
  String get settingsDevicePaired =>
      'الجهاز مقترن! جارٍ تحديث قائمة الأجهزة...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds ثانية لكل طلب';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'تحديث كل ${seconds}s';
  }

  @override
  String get pairingTitle => 'إقران جهاز جديد';

  @override
  String get pairingSetupTitle => 'قم بإعداد جهاز Wemo الخاص بك';

  @override
  String get pairingBeforeBegin =>
      'قبل البدء، تأكد من أن جهاز Wemo الخاص بك في وضع الإعداد:';

  @override
  String get pairingPlugInTitle => 'قم بتوصيل جهازك Wemo';

  @override
  String get pairingPlugInBody => 'قم بتوصيله بالطاقة وانتظر حتى يبدأ.';

  @override
  String get pairingBlinkingLedTitle => 'ابحث عن مؤشر LED الوامض';

  @override
  String get pairingBlinkingLedBody =>
      'يشير مؤشر LED الوامض إلى أن الجهاز في وضع الإعداد.';

  @override
  String get pairingCheckWifiTitle => 'تحقق من وجود شبكة WiFi';

  @override
  String get pairingCheckWifiBody =>
      'سيقوم الجهاز ببث شبكة باسم \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'إذا كان مؤشر LED ثابتًا، فاضغط مع الاستمرار على زر إعادة الضبط لمدة 5 ثوانٍ للدخول في وضع الإعداد.';

  @override
  String get pairingStart => 'ابدأ الاقتران';

  @override
  String get pairingConnectWifiTitle => 'الاتصال بالجهاز WiFi';

  @override
  String get pairingConnectWifiBody =>
      'افتح إعدادات WiFi بهاتفك واتصل بالشبكة التي تبدأ بـ \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'الشبكة الحالية';

  @override
  String get pairingConnectedToDevice => 'متصل بجهاز Wemo!';

  @override
  String get pairingOpenWifiSettings => 'افتح إعدادات WiFi';

  @override
  String get pairingConnectedButton => 'لقد قمت بالاتصال';

  @override
  String get pairingLookingForDevice => 'هل تبحث عن جهازك Wemo...';

  @override
  String get pairingManualIpPrompt => 'أو قم بإدخال الجهاز IP يدوياً:';

  @override
  String get pairingDeviceIp => 'عنوان الجهاز IP';

  @override
  String get pairingConnectToIp => 'الاتصال IP';

  @override
  String get pairingSelectHomeWifi => 'حدد شبكة WiFi المنزلية الخاصة بك:';

  @override
  String get pairingRefreshNetworks => 'تحديث الشبكات';

  @override
  String get pairingIosScanLimitation =>
      'يحظر iOS بشكل صارم على تطبيقات الطرف الثالث البحث عن شبكات Wi-Fi القريبة. قد تحتاج إلى إدخال الشبكة SSID يدويًا.';

  @override
  String get pairingNoNetworks => 'لم يتم العثور على شبكات';

  @override
  String get pairingScanAgain => 'المسح مرة أخرى';

  @override
  String get pairingWifiPassword => 'كلمة المرور WiFi';

  @override
  String get pairingConnect => 'الاتصال';

  @override
  String get pairingEnterNetworkManually => 'أدخل الشبكة يدويا';

  @override
  String get pairingEnterNetworkName => 'أدخل اسم الشبكة:';

  @override
  String get pairingNetworkName => 'اسم الشبكة (SSID)';

  @override
  String get pairingUseNetwork => 'استخدم هذه الشبكة';

  @override
  String get pairingConfiguringDevice => 'جارٍ تكوين الجهاز...';

  @override
  String get pairingConfiguringWait => 'يرجى الانتظار حتى يتصل الجهاز بشبكتك.';

  @override
  String get pairingReconnectTitle => 'أعد الاتصال بشبكتك';

  @override
  String pairingReconnectBody(String ssid) {
    return 'جهاز Wemo الخاص بك متصل الآن بـ \"$ssid\". يرجى إعادة توصيل هاتفك بنفس الشبكة.';
  }

  @override
  String get pairingBackOnHome => 'العودة إلى الشبكة المنزلية!';

  @override
  String get pairingReconnectedButton => 'لقد قمت بإعادة الاتصال';

  @override
  String get pairingFinalizingSetup => 'الانتهاء من الإعداد...';

  @override
  String get pairingSetupComplete => 'اكتمل الإعداد!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'متصل $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'تم الآن إعداد جهازك وسيظهر على الشاشة الرئيسية.';

  @override
  String get pairingSomethingWrong => 'حدث خطأ ما';

  @override
  String get pairingStartOver => 'البدء من جديد';

  @override
  String get pairingErrorOpenWifi =>
      'لا يمكن فتح إعدادات WiFi. يرجى فتحها يدويًا.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'لا يزال هاتفك متصلاً بـ \"$ssid\". يرجى فتح إعدادات WiFi، والاتصال بشبكة الجهاز WeMo، ثم حاول مرة أخرى.';
  }

  @override
  String get pairingLoadingLooking => 'جاري البحث عن جهاز...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'تعذر العثور على جهاز WeMo في $ip. تأكد من اتصال هاتفك بشبكة WeMo WiFi، ثم حاول مرة أخرى. يمكنك أيضًا إدخال الجهاز IP يدويًا.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'خطأ في اكتشاف الجهاز: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'جارٍ الاتصال بـ $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'لم يتم العثور على جهاز في $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'خطأ في الاتصال بـ $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'جاري البحث عن الشبكات...';

  @override
  String pairingErrorScanning(String error) {
    return 'تعذر فحص الشبكات: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'الرجاء تحديد الشبكة وإدخال كلمة المرور.';

  @override
  String get pairingLoadingSendingCredentials =>
      'جارٍ إرسال بيانات اعتماد الشبكة...';

  @override
  String get pairingLoadingWaitingConnection => 'في انتظار اتصال الجهاز...';

  @override
  String pairingErrorConfigure(String error) {
    return 'فشل تكوين الشبكة: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'كلمة المرور قصيرة جدًا. يرجى التحقق والمحاولة مرة أخرى.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'فشل الاتصال. يرجى التحقق من كلمة المرور.';

  @override
  String get pairingErrorConnectionTimeout =>
      'انتهت مهلة الاتصال. يرجى المحاولة مرة أخرى.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'خطأ في إنهاء الإعداد: $error';
  }

  @override
  String get detailRefreshState => 'تحديث الحالة';

  @override
  String get detailDeviceInfo => 'معلومات الجهاز';

  @override
  String get detailAdvanced => 'متقدم';

  @override
  String get detailWifiSetup => 'إعداد WiFi';

  @override
  String get detailReset => 'إعادة تعيين';

  @override
  String get detailUnreachable =>
      'الجهاز غير قابل للوصول. تحقق من اتصال الشبكة.';

  @override
  String detailFailedToggle(String error) {
    return 'فشل التبديل: $error';
  }

  @override
  String get detailDeviceInformation => 'معلومات الجهاز';

  @override
  String get detailPermissionScan => 'مطلوب إذن لمسح شبكات WiFi.';

  @override
  String get detailScanFailedManual =>
      'لا يمكن فحص الشبكات. أدخل اسم الشبكة يدويًا.';

  @override
  String get detailEnterNetworkNameError => 'الرجاء إدخال أو تحديد اسم الشبكة';

  @override
  String get detailEnterPasswordError => 'الرجاء إدخال كلمة مرور الشبكة';

  @override
  String get detailWifiSuccess => 'تم تكوين WiFi بنجاح!';

  @override
  String get detailScanNetworks => 'البحث عن الشبكات';

  @override
  String detailConfigureWifiFor(String device) {
    return 'تكوين شبكة WiFi لـ \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'الشبكات المتاحة';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • الفصل $channel';
  }

  @override
  String get detailIosManualOnly =>
      'يحظر iOS بشكل صارم على تطبيقات الطرف الثالث البحث عن شبكات Wi-Fi القريبة. الرجاء إدخال اسم شبكتك يدويًا أدناه.';

  @override
  String get detailTapRefreshScan => 'انقر فوق تحديث للبحث عن الشبكات';

  @override
  String get detailEnterNetworkBelow => 'أدخل اسم شبكتك أدناه';

  @override
  String get detailNetworkCredentials => 'بيانات اعتماد الشبكة';

  @override
  String get detailConnecting => 'جارٍ الاتصال بالشبكة...';

  @override
  String get detailConnected => 'تم الاتصال بنجاح!';

  @override
  String get detailPasswordShort => 'كلمة المرور قصيرة جدًا';

  @override
  String get detailAuthenticationFailed =>
      'فشلت المصادقة - تحقق من كلمة المرور';

  @override
  String get detailConnectionFailed => 'فشل الاتصال';

  @override
  String get detailSelectReset => 'الرجاء تحديد ما تريد إعادة تعيينه';

  @override
  String get detailResetSchedulesWarning =>
      '• سيتم حذف كافة الجداول وقواعد الأتمتة';

  @override
  String get detailResetWifiWarning => '• سيتم مسح إعدادات WiFi';

  @override
  String get detailSetupAgainWarning => '• سوف تحتاج إلى إعداد الجهاز مرة أخرى';

  @override
  String get detailUnreachableWarning => '• قد يتعذر الوصول إلى الجهاز مؤقتًا';

  @override
  String get detailConfirmReset => 'تأكيد إعادة التعيين';

  @override
  String detailConfirmResetDevice(String device) {
    return 'هل أنت متأكد أنك تريد إعادة تعيين \"$device\"؟';
  }

  @override
  String get detailThisWill => 'هذا سوف:';

  @override
  String get detailCannotUndo => 'لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get detailYesReset => 'نعم، إعادة تعيين';

  @override
  String get detailResetSuccess => 'تمت إعادة ضبط الجهاز بنجاح';

  @override
  String get detailResetRemote => 'سيتم إعادة ضبط الجهاز عن بعد';

  @override
  String get detailResetFailed => 'فشلت إعادة التعيين';

  @override
  String get detailFactoryReset => 'إعادة ضبط المصنع';

  @override
  String get detailFactoryResetWarning =>
      'سيؤدي هذا إلى مسح جميع الإعدادات واستعادة الجهاز إلى إعدادات المصنع الافتراضية. سوف تحتاج إلى إعداد الجهاز مرة أخرى.\n\nلا يمكن التراجع عن هذا الإجراء.';

  @override
  String get detailFactoryResetInitiated => 'بدأت إعادة ضبط المصنع';

  @override
  String get detailResetDevice => 'إعادة ضبط الجهاز';

  @override
  String detailResetOptionsFor(String device) {
    return 'إعادة ضبط الخيارات لـ \"$device\"';
  }

  @override
  String get detailResetUserData => 'إعادة تعيين بيانات المستخدم';

  @override
  String get detailResetUserDataSubtitle => 'مسح الجداول الزمنية والقواعد';

  @override
  String get detailResetWifi => 'إعادة ضبط إعدادات WiFi';

  @override
  String get detailResetWifiSubtitle => 'سيحتاج الجهاز إلى الإعداد مرة أخرى';

  @override
  String get widgetBrightness => 'السطوع';

  @override
  String get widgetEnergyStatistics => 'إحصائيات الطاقة';

  @override
  String get widgetCurrentPower => 'الطاقة الحالية';

  @override
  String get widgetToday => 'اليوم';

  @override
  String get widgetTotal => 'المجموع';

  @override
  String get widgetOnTimeToday => 'في الوقت المحدد اليوم';

  @override
  String get widgetTotalOnTime => 'المجموع في الوقت المحدد';

  @override
  String get widgetStandby => 'الاستعداد';

  @override
  String get widgetUnknown => 'غير معروف';

  @override
  String get widgetOpenNetwork => 'شبكة مفتوحة';

  @override
  String get widgetWepInsecure => 'WEP (غير آمن)';
}
