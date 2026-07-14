// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'המכשיר אינו תומך בפעולה זו.';

  @override
  String get errInvalidArgs => 'ארגומנטים לא חוקיים נשלחו למכשיר.';

  @override
  String get errActionFailed => 'המכשיר לא הצליח לבצע את הפעולה המבוקשת.';

  @override
  String get errInvalidValue => 'סופק ערך לא חוקי.';

  @override
  String get errValueOutOfRange => 'הערך הוא מחוץ לטווח המקובל.';

  @override
  String get errFeatureNotAvailable => 'תכונה זו אינה זמינה במכשיר זה.';

  @override
  String get errOutOfMemory => 'למכשיר נגמר הזיכרון. נסה שוב מאוחר יותר.';

  @override
  String get errManualActionRequired => 'נדרשת פעולה ידנית במכשיר.';

  @override
  String get errActionNotAuthorized => 'פעולה זו אינה מורשית.';

  @override
  String get errUnexpected => 'אירעה שגיאה בלתי צפויה. אנא נסה שוב.';

  @override
  String get errDeviceUnreachableOffline =>
      'לא ניתן להגיע למכשיר. ייתכן שהוא לא מקוון או ברשת אחרת.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'תם הזמן הקצוב לבקשה לאחר ניסיונות $attempts. ייתכן שהמכשיר במצב לא מקוון.';
  }

  @override
  String get errRequestTimedOut =>
      'תם הזמן הקצוב לבקשה. ייתכן שהמכשיר במצב לא מקוון.';

  @override
  String get errNoRouteToHost =>
      'לא ניתן להגיע למכשיר. אנא בדוק את חיבור ה-WiFi שלך.';

  @override
  String get errHostUnreachable =>
      'המכשיר אינו נגיש. אנא ודא שהוא מופעל ומחובר ל-WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'לא ניתן לתקשר עם המכשיר לאחר ניסיונות $attempts.';
  }

  @override
  String get errNetworkErrorComm => 'שגיאת רשת: אין אפשרות לתקשר עם המכשיר.';

  @override
  String get errActionNotAuthorizedDevice => 'פעולה זו אינה מורשית במכשיר.';

  @override
  String get errDeviceServiceNotFound =>
      'שירות המכשיר לא נמצא. ייתכן שהמכשיר זקוק לעדכון קושחה.';

  @override
  String get errDeviceEncounteredError => 'המכשיר נתקל בשגיאה בעיבוד הבקשה.';

  @override
  String get errDeviceInternalError => 'המכשיר החזיר שגיאה פנימית.';

  @override
  String get errDeviceTempUnavailable =>
      'המכשיר אינו זמין באופן זמני. אנא נסה שוב.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ההתקן החזיר שגיאה (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'נכשל ב-$action במכשיר.';
  }

  @override
  String get errDeviceReturnedError => 'המכשיר החזיר שגיאה.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'תם הזמן הקצוב לפעולת $operation. אנא נסה שוב.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'פרק הזמן הקצוב לפעולה לאחר $seconds שניות.';
  }

  @override
  String get errOperationTimedOut => 'תם הזמן הקצוב למבצע. אנא נסה שוב.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'אנא הפעל הרשאת רשת מקומית בהגדרות כדי למצוא מכשירים.';

  @override
  String get errCannotAccessLocalNetwork =>
      'לא ניתן לגשת לרשת המקומית. אנא הפעל הרשאת רשת מקומית בהגדרות.';

  @override
  String get errCheckWifiConnection =>
      'לא ניתן לגלות מכשירים. אנא בדוק את חיבור ה-WiFi שלך.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'הגילוי נקטע. נמצאו מכשירי $count.';
  }

  @override
  String get errNoDevicesFound =>
      'לא נמצאו מכשירים. ודא שהמכשירים מופעלים ומחוברים לרשת שלך.';

  @override
  String get actionGetDeviceState => 'לקבל מצב מכשיר';

  @override
  String get actionSetDeviceState => 'להגדיר את מצב המכשיר';

  @override
  String get actionGetEnergyData => 'לקבל נתוני אנרגיה';

  @override
  String get actionScanNetworks => 'לסרוק רשתות';

  @override
  String get actionConnectWifi => 'להתחבר ל-WiFi';

  @override
  String get actionCheckConnection => 'לבדוק את מצב החיבור';

  @override
  String get actionResetDevice => 'לאפס את המכשיר';

  @override
  String get actionPerform => 'לבצע פעולה';

  @override
  String get suggestTryRefreshing =>
      'נסה לרענן את רשימת המכשירים או בדוק אם המכשיר מגיב.';

  @override
  String get suggestEnsurePoweredOn =>
      'ודא שהמכשיר מופעל ומחובר לרשת WiFi שלך.';

  @override
  String get suggestMakeSureSameWifi =>
      'ודא שהטלפון שלך מחובר לאותה רשת WiFi כמו המכשירים שלך.';

  @override
  String get suggestCheckPhysical =>
      'בדוק במכשיר הפיזי אם יש כפתורים או מתגים שדורשים תשומת לב.';

  @override
  String get suggestWaitAndTry => 'המתן רגע ונסה שוב.';

  @override
  String get suggestDeviceBusy =>
      'ייתכן שהמכשיר תפוס. נסה שוב בעוד מספר שניות.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'בטל';

  @override
  String get commonClose => 'סגור';

  @override
  String get commonDone => 'בוצע';

  @override
  String get commonLater => 'מאוחר יותר';

  @override
  String get commonRefresh => 'רענן';

  @override
  String get commonTryAgain => 'נסה שוב';

  @override
  String get commonOpenSettings => 'פתח את ההגדרות';

  @override
  String get commonGrant => 'גרנט';

  @override
  String get commonFix => 'תקן';

  @override
  String get commonOn => 'פועל';

  @override
  String get commonOff => 'כבוי';

  @override
  String get commonOffline => 'לא מקוון';

  @override
  String get commonStatus => 'סטטוס';

  @override
  String get commonName => 'שם';

  @override
  String get commonType => 'הקלד';

  @override
  String get commonModel => 'דגם';

  @override
  String get commonManufacturer => 'יצרן';

  @override
  String get commonSerial => 'סדרתי';

  @override
  String get commonFirmware => 'קושחה';

  @override
  String get commonHost => 'מארח';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'סיסמה';

  @override
  String get commonUnknownWifi => 'Wi-Fi לא ידוע';

  @override
  String get commonNotConnected => 'לא מחובר';

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
      other: '$seconds שניות',
      one: 'שנייה אחת',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'מתג חכם';

  @override
  String get deviceTypeLightSwitch => 'מתג אור';

  @override
  String get deviceTypeDimmer => 'דימר';

  @override
  String get deviceTypeInsightPlug => 'תקע תובנה';

  @override
  String get deviceTypeMotionSensor => 'חיישן תנועה';

  @override
  String get deviceTypeMaker => 'יוצר';

  @override
  String get deviceTypeBridge => 'גשר';

  @override
  String get deviceTypeCoffeeMaker => 'מכונת קפה';

  @override
  String get deviceTypeCrockpot => 'קרוקפוט';

  @override
  String get deviceTypeHumidifier => 'מכשיר אדים';

  @override
  String get deviceTypeOutdoorPlug => 'תקע חיצוני';

  @override
  String get deviceTypeUnknown => 'מכשיר לא ידוע';

  @override
  String get pairingStepGetStarted => 'התחל';

  @override
  String get pairingStepConnectToDevice => 'התחבר למכשיר';

  @override
  String get pairingStepFindDevice => 'מצא מכשיר';

  @override
  String get pairingStepSelectNetwork => 'בחר רשת';

  @override
  String get pairingStepConfiguring => 'הגדרת תצורה';

  @override
  String get pairingStepReconnect => 'התחבר מחדש';

  @override
  String get pairingStepFinalizing => 'מסיים';

  @override
  String get pairingStepSuccess => 'הצלחה';

  @override
  String get pairingStepError => 'שגיאה';

  @override
  String get homeToggleDebug => 'החלף מצב ניפוי באגים';

  @override
  String get homeRefreshDevices => 'רענן מכשירים';

  @override
  String get homeSettings => 'הגדרות';

  @override
  String get homeDismiss => 'לבטל';

  @override
  String get homeDiscovering => 'מגלה מכשירים...';

  @override
  String get homeNoDevices => 'לא נמצאו מכשירים';

  @override
  String get homeScanDevices => 'סרוק אחר מכשירים';

  @override
  String get homeLookingForMore => 'מחפש מכשירים נוספים...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נמצאו התקני $count',
      one: 'נמצא מכשיר אחד',
      zero: 'לא נמצאו מכשירים',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נמצאו התקני $count, סורקים...',
      one: 'נמצא מכשיר אחד, סורק...',
      zero: 'לא נמצאו מכשירים, סורק...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'אוטומטי';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'מחובר ל-WiFi';

  @override
  String get homePermissionExplanation =>
      'מידע המיקום משמש כדי למצוא את פרטי ה-Wi-Fi שלך. גישה לרשת מקומית מאפשרת לך לשלוט במתגים ובמכשירים החכמים שלך.';

  @override
  String get homeDebugLog => 'יומן ניפוי באגים';

  @override
  String get homeClear => 'ברור';

  @override
  String get homeDebugEmpty => 'הקש על רענן כדי להתחיל בגילוי ולראות יומנים...';

  @override
  String get homeProbeHint => 'IP:Port (למשל 192.168.1.100:49153)';

  @override
  String get homeProbe => 'בדיקה';

  @override
  String get homeScanning => 'סורק...';

  @override
  String get homeScanSubnet => 'סרוק את כל המשנה (תיקון iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'פלטפורמה: $platform $version';
  }

  @override
  String get settingsTitle => 'הגדרות';

  @override
  String get settingsSectionNetwork => 'רשת';

  @override
  String get settingsSectionDeviceSetup => 'הגדרת מכשיר';

  @override
  String get settingsSectionDiscovery => 'גילוי';

  @override
  String get settingsSectionAbout => 'בערך';

  @override
  String get settingsSectionDebug => 'ניפוי באגים';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'ניתנה רשות! שם WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'המיקום ניתן, אך נדרשת גם הרשאת רשת מקומית. בדוק את ההגדרות.';

  @override
  String get settingsLocationRequired => 'נדרשת הרשאת מיקום';

  @override
  String get settingsLocationRequiredBody =>
      'כדי להציג את שם הרשת שלך WiFi, iOS דורש הרשאת מיקום.';

  @override
  String get settingsRequiredPermissions => 'הרשאות נדרשות:';

  @override
  String get settingsPermissionList =>
      '1. שירותי מיקום (\"בזמן השימוש באפליקציה\")\n2. רשת מקומית';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'הערה: גילוי המכשיר פועל ללא הרשאת מיקום. הרשאה זו משמשת רק להצגת שם הרשת שלך WiFi.';

  @override
  String get settingsEnableLocation => 'אפשר מיקום בהגדרות';

  @override
  String get settingsLocationDeniedBody =>
      'הרשאת המיקום נדחתה. אתה יכול להפעיל אותו מהגדרות המערכת.';

  @override
  String get settingsStepsToEnable => 'שלבים להפעלת:';

  @override
  String get settingsEnableLocationSteps =>
      '1. פתח את ההגדרות\n2. גלול אל \"Bit Switch\"\n3. הקש על \"מיקום\"\n4. בחר \"בזמן השימוש באפליקציה\"\n5. חזור לאפליקציה הזו והקש על כפתור הרענון';

  @override
  String get settingsLocationOnlyWifiName =>
      'הערה: יש צורך בהרשאת מיקום רק כדי להציג את השם WiFi. גילוי מכשירים עובד בלעדיו.';

  @override
  String get settingsAdditionalPermission => 'דרושה אישור נוסף';

  @override
  String get settingsLocalNetworkBody =>
      'נדרשת הרשאת רשת מקומית כדי לגלות ולשלוט בהתקני Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'יש לך הרשאת מיקום, אבל השם WiFi עדיין לא גלוי.';

  @override
  String get settingsPleaseEnable => 'אנא הפעל:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. עבור להגדרות אייפון\n2. גלול מטה אל \"Bit Switch\"\n3. הפעל את \"רשת מקומית\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'נדרשת הרשאת רשת מקומית הן עבור גילוי המכשיר והן עבור גישה לשם WiFi ב-iOS.';

  @override
  String get settingsPairNewDevice => 'התאם מכשיר חדש';

  @override
  String get settingsPairNewDeviceSubtitle => 'הגדר מכשיר Wemo חדש';

  @override
  String get settingsDiscoveryTimeout => 'פסק זמן לגילוי';

  @override
  String get settingsRequestTimeout => 'בקש פסק זמן';

  @override
  String get settingsAutoRefresh => 'רענון אוטומטי';

  @override
  String get settingsAutoRefreshOn => 'פועל - מצבי מכשיר מתרעננים אוטומטית';

  @override
  String get settingsAutoRefreshOff => 'כבוי - השתמש בלחצן רענון ידני';

  @override
  String get settingsAutoRefreshInterval => 'מרווח רענון אוטומטי';

  @override
  String get settingsAbout => 'אודות Bit Switch';

  @override
  String get settingsVersion => 'גרסה';

  @override
  String get settingsNetworkDiagnostics => 'אבחון רשת';

  @override
  String get settingsShowDebug => 'הצג מצב ניפוי באגים';

  @override
  String get settingsShowDebugSubtitle =>
      'הצג בקרי ניפוי באגים ואבחון רשת במסך הבית';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'הצג סמל ניפוי באגים במסך הבית לפתרון בעיות';

  @override
  String get settingsCurrentNetwork => 'רשת נוכחית';

  @override
  String get settingsNetworkAccessStatus => 'מצב גישה לרשת';

  @override
  String get settingsNetworkAccessGranted => 'גישה לרשת מקומית זמינה';

  @override
  String get settingsNetworkAccessMissing => 'ייתכן שיידרשו הרשאות נוספות';

  @override
  String get settingsChecking => 'בודק...';

  @override
  String get settingsEnableLocalNetwork => 'אפשר רשת מקומית בהגדרות';

  @override
  String get settingsNotConnectedWifi => 'לא מחובר ל-WiFi';

  @override
  String get settingsPermissionRequiredView => 'נדרשת הרשאה לצפייה';

  @override
  String get settingsAllPermissionsGranted => 'כל ההרשאות ניתנו';

  @override
  String get settingsLocalNetworkNeeded => 'דרושה הרשאת רשת מקומית';

  @override
  String get settingsLocationNeeded => 'דרושה הרשאת מיקום';

  @override
  String get settingsRefreshPermissions => 'רענן הרשאות';

  @override
  String get settingsAboutWifiPermission => 'אודות הרשאת שם WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'השם שלך WiFi עוזר לאשר שהטלפון שלך והתקני Wemo נמצאים באותה רשת.';

  @override
  String get settingsWifiPermissionIos =>
      'ב-iOS, הצגת שם הרשת שלך WiFi דורשת הרשאת מיקום.';

  @override
  String get settingsImportant => 'חשוב:';

  @override
  String get settingsPrivacyNote =>
      '• המיקום שלך לעולם אינו במעקב\n• לא נאספים או מאוחסנים נתוני מיקום';

  @override
  String get settingsWifiPermissionImportant =>
      '• גילוי המכשיר פועל ללא הרשאה זו\n• זה נחוץ רק כדי להציג את השם WiFi\n• לא נאספים או מאוחסנים נתוני מיקום';

  @override
  String get settingsGrantPermission => 'תן רשות';

  @override
  String get settingsHowLongScan => 'כמה זמן לסרוק מכשירים:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'זמן קצוב גילוי מוגדר ל-$seconds שניות';
  }

  @override
  String get settingsHowLongResponses => 'כמה זמן לחכות לתגובות המכשיר:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'הגדל ערך זה אם אתה רואה שגיאות \"חיבור סגור\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'זמן קצוב הבקשה מוגדר ל-$seconds שניות';
  }

  @override
  String get settingsSetRefreshInterval => 'הגדר את המרווח לרענון מצב אוטומטי:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'מרווח הרענון מוגדר ל-$seconds שניות';
  }

  @override
  String get settingsAboutTagline => 'בקר מקומי נקי ופרטי עבור התקני Wemo שלך.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch משתמש בגילוי רשת מקומית כדי למצוא ולשלוט בהתקנים ללא תלות בענן.';

  @override
  String get settingsVersionValue => 'גרסה 1.0.1';

  @override
  String get settingsProtocol => 'פרוטוקול: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'כתובת Multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'יציאות התקן: 49152-49159';

  @override
  String get settingsControlProtocol => 'פרוטוקול בקרה: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'טיפ: ודא שהמכשיר שלך נמצא באותה רשת כמו מכשירי ה-Wemo שלך ושה-UDP multicast אינו חסום.';

  @override
  String get settingsDevicePaired => 'מכשיר מותאם! מרענן את רשימת המכשירים...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds שניות לכל בקשה';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'מרענן כל ${seconds}s';
  }

  @override
  String get pairingTitle => 'התאם מכשיר חדש';

  @override
  String get pairingSetupTitle => 'הגדר את מכשיר ה-Wemo שלך';

  @override
  String get pairingBeforeBegin =>
      'לפני שתתחיל, ודא שהתקן Wemo שלך נמצא במצב הגדרה:';

  @override
  String get pairingPlugInTitle => 'חבר את מכשיר ה-Wemo שלך';

  @override
  String get pairingPlugInBody => 'חבר אותו לחשמל והמתן עד שהוא יתחיל.';

  @override
  String get pairingBlinkingLedTitle => 'חפש את הנורית המהבהבת';

  @override
  String get pairingBlinkingLedBody =>
      'נורית מהבהבת מציינת שהמכשיר נמצא במצב הגדרה.';

  @override
  String get pairingCheckWifiTitle => 'בדוק אם יש רשת WiFi';

  @override
  String get pairingCheckWifiBody => 'המכשיר ישדר רשת בשם \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'אם הנורית מוצקה, החזק את לחצן האיפוס למשך 5 שניות כדי להיכנס למצב הגדרה.';

  @override
  String get pairingStart => 'התחל את ההתאמה';

  @override
  String get pairingConnectWifiTitle => 'התחבר למכשיר WiFi';

  @override
  String get pairingConnectWifiBody =>
      'פתח את הגדרות ה-WiFi של הטלפון שלך והתחבר לרשת שמתחילה ב-\"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'רשת נוכחית';

  @override
  String get pairingConnectedToDevice => 'מחובר למכשיר Wemo!';

  @override
  String get pairingOpenWifiSettings => 'פתח את הגדרות WiFi';

  @override
  String get pairingConnectedButton => 'התחברתי';

  @override
  String get pairingLookingForDevice => 'מחפש את מכשיר ה-Wemo שלך...';

  @override
  String get pairingManualIpPrompt => 'או הזן את ההתקן IP באופן ידני:';

  @override
  String get pairingDeviceIp => 'כתובת התקן IP';

  @override
  String get pairingConnectToIp => 'התחבר ל-IP';

  @override
  String get pairingSelectHomeWifi => 'בחר את רשת ה-WiFi הביתית שלך:';

  @override
  String get pairingRefreshNetworks => 'רענן רשתות';

  @override
  String get pairingIosScanLimitation =>
      'iOS אוסר בהחלט על אפליקציות צד שלישי לסרוק אחר רשתות Wi-Fi קרובות. ייתכן שיהיה עליך להיכנס לרשת SSID באופן ידני.';

  @override
  String get pairingNoNetworks => 'לא נמצאו רשתות';

  @override
  String get pairingScanAgain => 'סרוק שוב';

  @override
  String get pairingWifiPassword => 'WiFi סיסמא';

  @override
  String get pairingConnect => 'התחבר';

  @override
  String get pairingEnterNetworkManually => 'היכנס לרשת באופן ידני';

  @override
  String get pairingEnterNetworkName => 'הזן שם רשת:';

  @override
  String get pairingNetworkName => 'שם רשת (SSID)';

  @override
  String get pairingUseNetwork => 'השתמש ברשת זו';

  @override
  String get pairingConfiguringDevice => 'מגדיר את המכשיר...';

  @override
  String get pairingConfiguringWait => 'המתן בזמן שהמכשיר מתחבר לרשת שלך.';

  @override
  String get pairingReconnectTitle => 'התחבר מחדש לרשת שלך';

  @override
  String pairingReconnectBody(String ssid) {
    return 'מכשיר ה-Wemo שלך מתחבר כעת ל-\"$ssid\". אנא חבר מחדש את הטלפון שלך לאותה רשת.';
  }

  @override
  String get pairingBackOnHome => 'חזרה לרשת הביתית!';

  @override
  String get pairingReconnectedButton => 'התחברתי מחדש';

  @override
  String get pairingFinalizingSetup => 'מסיים את ההגדרה...';

  @override
  String get pairingSetupComplete => 'ההתקנה הושלמה!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'מחובר ל-$ssid';
  }

  @override
  String get pairingDeviceReady => 'המכשיר שלך מוגדר כעת ויופיע במסך הבית.';

  @override
  String get pairingSomethingWrong => 'משהו השתבש';

  @override
  String get pairingStartOver => 'התחל מחדש';

  @override
  String get pairingErrorOpenWifi =>
      'לא ניתן היה לפתוח את הגדרות WiFi. אנא פתח אותם ידנית.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'הטלפון שלך עדיין מחובר ל-\"$ssid\". פתח את הגדרות WiFi, התחבר לרשת המכשירים WeMo ולאחר מכן נסה שוב.';
  }

  @override
  String get pairingLoadingLooking => 'מחפש מכשיר...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'לא ניתן היה למצוא את התקן WeMo ב-$ip. ודא שהטלפון שלך מחובר לרשת WeMo WiFi ולאחר מכן נסה שוב. ניתן גם להזין את ההתקן IP באופן ידני.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'שגיאה בגילוי התקן: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'מתחבר ל-$ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'לא נמצא מכשיר ב-$ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'שגיאה בחיבור ל-$ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'סורק לאיתור רשתות...';

  @override
  String pairingErrorScanning(String error) {
    return 'לא ניתן לסרוק רשתות: $error';
  }

  @override
  String get pairingErrorSelectAndPassword => 'אנא בחר רשת והזן את הסיסמה.';

  @override
  String get pairingLoadingSendingCredentials => 'שולח אישורי רשת...';

  @override
  String get pairingLoadingWaitingConnection => 'ממתין לחיבור המכשיר...';

  @override
  String pairingErrorConfigure(String error) {
    return 'קביעת תצורת הרשת נכשלה: $error';
  }

  @override
  String get pairingErrorPasswordShort => 'הסיסמה קצרה מדי. אנא בדוק ונסה שוב.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'החיבור נכשל. אנא בדוק את הסיסמה.';

  @override
  String get pairingErrorConnectionTimeout =>
      'תם הזמן הקצוב לחיבור. אנא נסה שוב.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'שגיאה בסיום ההגדרה: $error';
  }

  @override
  String get detailRefreshState => 'מצב רענון';

  @override
  String get detailDeviceInfo => 'מידע על המכשיר';

  @override
  String get detailAdvanced => 'מתקדם';

  @override
  String get detailWifiSetup => 'הגדרת WiFi';

  @override
  String get detailReset => 'אפס';

  @override
  String get detailUnreachable => 'לא ניתן להגיע למכשיר. בדוק את חיבור הרשת.';

  @override
  String detailFailedToggle(String error) {
    return 'החלפת המצב נכשלה: $error';
  }

  @override
  String get detailDeviceInformation => 'מידע על המכשיר';

  @override
  String get detailPermissionScan => 'נדרשת הרשאה כדי לסרוק רשתות WiFi.';

  @override
  String get detailScanFailedManual =>
      'לא ניתן לסרוק רשתות. הזן את שם הרשת באופן ידני.';

  @override
  String get detailEnterNetworkNameError => 'אנא הזן או בחר שם רשת';

  @override
  String get detailEnterPasswordError => 'נא להזין את סיסמת הרשת';

  @override
  String get detailWifiSuccess => 'WiFi הוגדר בהצלחה!';

  @override
  String get detailScanNetworks => 'סרוק אחר רשתות';

  @override
  String detailConfigureWifiFor(String device) {
    return 'הגדר את רשת WiFi עבור \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'רשתות זמינות';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS אוסר בהחלט על אפליקציות צד שלישי לסרוק אחר רשתות Wi-Fi קרובות. אנא הזן את שם הרשת שלך ידנית למטה.';

  @override
  String get detailTapRefreshScan => 'הקש על רענן כדי לסרוק רשתות';

  @override
  String get detailEnterNetworkBelow => 'הזן את שם הרשת שלך למטה';

  @override
  String get detailNetworkCredentials => 'אישורי רשת';

  @override
  String get detailConnecting => 'מתחבר לרשת...';

  @override
  String get detailConnected => 'מחובר בהצלחה!';

  @override
  String get detailPasswordShort => 'הסיסמה קצרה מדי';

  @override
  String get detailAuthenticationFailed => 'האימות נכשל - בדוק את הסיסמה';

  @override
  String get detailConnectionFailed => 'החיבור נכשל';

  @override
  String get detailSelectReset => 'אנא בחר מה לאפס';

  @override
  String get detailResetSchedulesWarning =>
      '• כל לוחות הזמנים וכללי האוטומציה יימחקו';

  @override
  String get detailResetWifiWarning => '• הגדרות WiFi יימחקו';

  @override
  String get detailSetupAgainWarning => '• יהיה עליך להגדיר את המכשיר מחדש';

  @override
  String get detailUnreachableWarning =>
      '• ההתקן עלול להפוך לבלתי נגיש באופן זמני';

  @override
  String get detailConfirmReset => 'אשר איפוס';

  @override
  String detailConfirmResetDevice(String device) {
    return 'האם אתה בטוח שברצונך לאפס את \"$device\"?';
  }

  @override
  String get detailThisWill => 'זה יהיה:';

  @override
  String get detailCannotUndo => 'לא ניתן לבטל פעולה זו.';

  @override
  String get detailYesReset => 'כן, אפס';

  @override
  String get detailResetSuccess => 'איפוס המכשיר בהצלחה';

  @override
  String get detailResetRemote => 'המכשיר יתאפס מרחוק';

  @override
  String get detailResetFailed => 'האיפוס נכשל';

  @override
  String get detailFactoryReset => 'איפוס להגדרות היצרן';

  @override
  String get detailFactoryResetWarning =>
      'פעולה זו תמחק את כל ההגדרות וישחזר את המכשיר לברירות המחדל של היצרן. יהיה עליך להגדיר את המכשיר שוב.\n\nלא ניתן לבטל פעולה זו.';

  @override
  String get detailFactoryResetInitiated => 'החל איפוס להגדרות היצרן';

  @override
  String get detailResetDevice => 'אפס מכשיר';

  @override
  String detailResetOptionsFor(String device) {
    return 'איפוס אפשרויות עבור \"$device\"';
  }

  @override
  String get detailResetUserData => 'אפס את נתוני המשתמש';

  @override
  String get detailResetUserDataSubtitle => 'מנקה לוחות זמנים וכללים';

  @override
  String get detailResetWifi => 'אפס את הגדרות WiFi';

  @override
  String get detailResetWifiSubtitle => 'יהיה צורך להגדיר מחדש את המכשיר';

  @override
  String get widgetBrightness => 'בהירות';

  @override
  String get widgetEnergyStatistics => 'סטטיסטיקת אנרגיה';

  @override
  String get widgetCurrentPower => 'כוח נוכחי';

  @override
  String get widgetToday => 'היום';

  @override
  String get widgetTotal => 'סך הכל';

  @override
  String get widgetOnTimeToday => 'בזמן היום';

  @override
  String get widgetTotalOnTime => 'סך הכל בזמן';

  @override
  String get widgetStandby => 'המתנה';

  @override
  String get widgetUnknown => 'לא ידוע';

  @override
  String get widgetOpenNetwork => 'רשת פתוחה';

  @override
  String get widgetWepInsecure => 'WEP (לא מאובטח)';
}
