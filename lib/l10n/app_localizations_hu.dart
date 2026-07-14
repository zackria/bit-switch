// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Az eszköz nem támogatja ezt a műveletet.';

  @override
  String get errInvalidArgs =>
      'Érvénytelen argumentumokat küldtek az eszközre.';

  @override
  String get errActionFailed =>
      'Az eszköz nem tudta végrehajtani a kért műveletet.';

  @override
  String get errInvalidValue => 'Érvénytelen értéket adtak meg.';

  @override
  String get errValueOutOfRange =>
      'Az érték kívül esik az elfogadható tartományon.';

  @override
  String get errFeatureNotAvailable =>
      'Ez a funkció nem érhető el ezen az eszközön.';

  @override
  String get errOutOfMemory =>
      'A készülék memóriája megtelt. Próbálja újra később.';

  @override
  String get errManualActionRequired => 'Kézi művelet szükséges az eszközön.';

  @override
  String get errActionNotAuthorized => 'Ez a művelet nem engedélyezett.';

  @override
  String get errUnexpected => 'Váratlan hiba történt. Kérjük, próbálja újra.';

  @override
  String get errDeviceUnreachableOffline =>
      'Nem lehet elérni az eszközt. Lehet offline vagy másik hálózaton.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'A kérés lejárt a $attempts próbálkozások után. Lehet, hogy az eszköz offline állapotban van.';
  }

  @override
  String get errRequestTimedOut =>
      'A kérelem lejárt. Lehet, hogy az eszköz offline állapotban van.';

  @override
  String get errNoRouteToHost =>
      'Nem lehet elérni a készüléket. Kérjük, ellenőrizze a WiFi csatlakozását.';

  @override
  String get errHostUnreachable =>
      'A készülék elérhetetlen. Győződjön meg arról, hogy be van kapcsolva, és csatlakozik a WiFi-hez.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Nem lehet kommunikálni az eszközzel a $attempts kísérletek után.';
  }

  @override
  String get errNetworkErrorComm =>
      'Hálózati hiba: Nem lehet kommunikálni az eszközzel.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Ez a művelet nem engedélyezett az eszközön.';

  @override
  String get errDeviceServiceNotFound =>
      'Az eszközszolgáltatás nem található. Lehetséges, hogy az eszköz firmware-frissítést igényel.';

  @override
  String get errDeviceEncounteredError =>
      'Az eszköz hibát észlelt a kérés feldolgozása során.';

  @override
  String get errDeviceInternalError => 'Az eszköz belső hibát adott vissza.';

  @override
  String get errDeviceTempUnavailable =>
      'A készülék átmenetileg nem elérhető. Kérjük, próbálja újra.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Az eszköz hibát adott vissza (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'A $action nem sikerült az eszközön.';
  }

  @override
  String get errDeviceReturnedError => 'Az eszköz hibát adott vissza.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'A $operation működése időtúllépést szenvedett. Kérjük, próbálja újra.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'A működés $seconds másodperc után lejárt.';
  }

  @override
  String get errOperationTimedOut => 'A művelet lejárt. Kérjük, próbálja újra.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Az eszközök megkereséséhez engedélyezze a Helyi hálózat engedélyét a Beállításokban.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Nem lehet hozzáférni a helyi hálózathoz. Kérjük, engedélyezze a Helyi hálózat engedélyét a Beállításokban.';

  @override
  String get errCheckWifiConnection =>
      'Nem sikerült felfedezni az eszközöket. Kérjük, ellenőrizze a WiFi csatlakozását.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'A felfedezés megszakadt. $count eszköz(ek) találhatók.';
  }

  @override
  String get errNoDevicesFound =>
      'Nem találhatók eszközök. Győződjön meg arról, hogy az eszközök be vannak kapcsolva, és csatlakoznak a hálózathoz.';

  @override
  String get actionGetDeviceState => 'get device state';

  @override
  String get actionSetDeviceState => 'állítsa be az eszköz állapotát';

  @override
  String get actionGetEnergyData => 'energiaadatokat kapni';

  @override
  String get actionScanNetworks => 'hálózatok keresése';

  @override
  String get actionConnectWifi => 'connect to WiFi';

  @override
  String get actionCheckConnection => 'check connection status';

  @override
  String get actionResetDevice => 'eszköz visszaállítása';

  @override
  String get actionPerform => 'műveletet hajt végre';

  @override
  String get suggestTryRefreshing =>
      'Próbálja meg frissíteni az eszközlistát, vagy ellenőrizze, hogy az eszköz válaszol-e.';

  @override
  String get suggestEnsurePoweredOn =>
      'Győződjön meg arról, hogy az eszköz be van kapcsolva, és csatlakozik a WiFi hálózathoz.';

  @override
  String get suggestMakeSureSameWifi =>
      'Győződjön meg arról, hogy telefonja ugyanahhoz a WiFi hálózathoz csatlakozik, mint a készülékei.';

  @override
  String get suggestCheckPhysical =>
      'Ellenőrizze a fizikai eszközt, hogy vannak-e olyan gombok vagy kapcsolók, amelyekre figyelni kell.';

  @override
  String get suggestWaitAndTry => 'Várjon egy pillanatot, és próbálja újra.';

  @override
  String get suggestDeviceBusy =>
      'Lehet, hogy a készülék foglalt. Próbálja újra néhány másodperc múlva.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Mégse';

  @override
  String get commonClose => 'Bezárás';

  @override
  String get commonDone => 'Kész';

  @override
  String get commonLater => 'Később';

  @override
  String get commonRefresh => 'Frissítés';

  @override
  String get commonTryAgain => 'Try Again';

  @override
  String get commonOpenSettings => 'Nyissa meg a Beállítások lehetőséget';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Fix';

  @override
  String get commonOn => 'Be';

  @override
  String get commonOff => 'Ki';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Név';

  @override
  String get commonType => 'Írja be';

  @override
  String get commonModel => 'Modell';

  @override
  String get commonManufacturer => 'Gyártó';

  @override
  String get commonSerial => 'Serial';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Házigazda';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Password';

  @override
  String get commonUnknownWifi => 'Ismeretlen Wi-Fi';

  @override
  String get commonNotConnected => 'Not connected';

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
      other: '$seconds másodperc',
      one: '1 másodperc',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Smart Switch';

  @override
  String get deviceTypeLightSwitch => 'Light Switch';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Mozgásérzékelő';

  @override
  String get deviceTypeMaker => 'Maker';

  @override
  String get deviceTypeBridge => 'Híd';

  @override
  String get deviceTypeCoffeeMaker => 'Kávéfőző';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Humidifier';

  @override
  String get deviceTypeOutdoorPlug => 'Kültéri csatlakozó';

  @override
  String get deviceTypeUnknown => 'Ismeretlen eszköz';

  @override
  String get pairingStepGetStarted => 'Kezdje el';

  @override
  String get pairingStepConnectToDevice => 'Csatlakozás az eszközhöz';

  @override
  String get pairingStepFindDevice => 'Eszköz keresése';

  @override
  String get pairingStepSelectNetwork => 'Válassza a Hálózat lehetőséget';

  @override
  String get pairingStepConfiguring => 'Configuring';

  @override
  String get pairingStepReconnect => 'Csatlakozzon újra';

  @override
  String get pairingStepFinalizing => 'Véglegesítés';

  @override
  String get pairingStepSuccess => 'Siker';

  @override
  String get pairingStepError => 'Hiba';

  @override
  String get homeToggleDebug => 'Hibakeresési mód váltása';

  @override
  String get homeRefreshDevices => 'Refresh devices';

  @override
  String get homeSettings => 'Beállítások elemre';

  @override
  String get homeDismiss => 'Dismiss';

  @override
  String get homeDiscovering => 'Eszközök felfedezése...';

  @override
  String get homeNoDevices => 'Nem találhatók eszközök';

  @override
  String get homeScanDevices => 'Eszközök keresése';

  @override
  String get homeLookingForMore => 'Looking for more devices...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eszközök találhatók',
      one: '1 eszköz található',
      zero: 'Nem találhatók eszközök',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eszközök találhatók, szkennelés...',
      one: '1 eszköz található, keresés...',
      zero: 'Nem található eszköz, szkennelés...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Auto';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Csatlakoztatva a WiFi-hez';

  @override
  String get homePermissionExplanation =>
      'A helyadatok a Wi-Fi adatainak megkeresésére szolgálnak. A helyi hálózati hozzáférés lehetővé teszi az intelligens kapcsolók és eszközök vezérlését.';

  @override
  String get homeDebugLog => 'Hibakeresési napló';

  @override
  String get homeClear => 'Világos';

  @override
  String get homeDebugEmpty => 'Tap refresh to start discovery and see logs...';

  @override
  String get homeProbeHint => 'IP:Port (e.g. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Szonda';

  @override
  String get homeScanning => 'Szkennelés...';

  @override
  String get homeScanSubnet => 'Scan Entire Subnet (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platform: $platform $version';
  }

  @override
  String get settingsTitle => 'Beállítások elemre';

  @override
  String get settingsSectionNetwork => 'Hálózat';

  @override
  String get settingsSectionDeviceSetup => 'Eszközbeállítás';

  @override
  String get settingsSectionDiscovery => 'Felfedezés';

  @override
  String get settingsSectionAbout => 'Körülbelül';

  @override
  String get settingsSectionDebug => 'Debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Engedély megadva! WiFi name: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'A hely megadva, de a helyi hálózat engedélyére is szükség van. Check Settings.';

  @override
  String get settingsLocationRequired => 'Location Permission Required';

  @override
  String get settingsLocationRequiredBody =>
      'A WiFi hálózatnév megjelenítéséhez az iOS-nek helyengedélyre van szüksége.';

  @override
  String get settingsRequiredPermissions => 'Required Permissions:';

  @override
  String get settingsPermissionList =>
      '1. Location Services (\"While Using the App\")\n2. Local Network';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Megjegyzés: Az eszközfelderítés helyengedély nélkül működik. Ez az engedély csak a WiFi hálózatnév megjelenítésére szolgál.';

  @override
  String get settingsEnableLocation => 'Enable Location in Settings';

  @override
  String get settingsLocationDeniedBody =>
      'Location permission was denied. You can enable it from the system settings.';

  @override
  String get settingsStepsToEnable => 'Az engedélyezés lépései:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Nyissa meg a Beállításokat\n2. Scroll to \"Bit Switch\"\n3. Érintse meg a „Hely” lehetőséget.\n4. Select \"While Using the App\"\n5. Return to this app and tap the refresh button';

  @override
  String get settingsLocationOnlyWifiName =>
      'Megjegyzés: Helyengedély csak a WiFi név megjelenítéséhez szükséges. Device discovery works without it.';

  @override
  String get settingsAdditionalPermission => 'Additional Permission Needed';

  @override
  String get settingsLocalNetworkBody =>
      'A Wemo eszközök felderítéséhez és vezérléséhez helyi hálózati engedély szükséges.';

  @override
  String get settingsWifiNameNotVisible =>
      'Helymeghatározási engedéllyel rendelkezik, de a WiFi név még nem látható.';

  @override
  String get settingsPleaseEnable => 'Please enable:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Nyissa meg az iPhone beállításokat\n2. Scroll down to \"Bit Switch\"\n3. Enable \"Local Network\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Helyi hálózati engedély szükséges mind az eszközfelderítéshez, mind a WiFi névhez való hozzáféréshez iOS rendszeren.';

  @override
  String get settingsPairNewDevice => 'Pair New Device';

  @override
  String get settingsPairNewDeviceSubtitle => 'Set up a new Wemo device';

  @override
  String get settingsDiscoveryTimeout => 'Discovery Timeout';

  @override
  String get settingsRequestTimeout => 'Időtúllépés kérése';

  @override
  String get settingsAutoRefresh => 'Automatikus frissítés';

  @override
  String get settingsAutoRefreshOn =>
      'On - Device states refresh automatically';

  @override
  String get settingsAutoRefreshOff => 'Off - Use manual refresh button';

  @override
  String get settingsAutoRefreshInterval => 'Automatikus frissítési időköz';

  @override
  String get settingsAbout => 'A Bit Switch-ről';

  @override
  String get settingsVersion => 'Verzió';

  @override
  String get settingsNetworkDiagnostics => 'Hálózati diagnosztika';

  @override
  String get settingsShowDebug => 'Hibakeresési mód megjelenítése';

  @override
  String get settingsShowDebugSubtitle =>
      'A hibakeresési vezérlők és a hálózati diagnosztika megjelenítése a kezdőképernyőn';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Jelenítse meg a hibakeresés ikont a kezdőképernyőn a hibaelhárításhoz';

  @override
  String get settingsCurrentNetwork => 'Jelenlegi hálózat';

  @override
  String get settingsNetworkAccessStatus => 'Hálózati hozzáférés állapota';

  @override
  String get settingsNetworkAccessGranted =>
      'Local network access is available';

  @override
  String get settingsNetworkAccessMissing =>
      'Additional permissions may be required';

  @override
  String get settingsChecking => 'Ellenőrzés...';

  @override
  String get settingsEnableLocalNetwork => 'Enable Local Network in Settings';

  @override
  String get settingsNotConnectedWifi => 'Not connected to WiFi';

  @override
  String get settingsPermissionRequiredView => 'Permission required to view';

  @override
  String get settingsAllPermissionsGranted => 'Minden engedély megadva';

  @override
  String get settingsLocalNetworkNeeded => 'Local Network permission needed';

  @override
  String get settingsLocationNeeded => 'Location permission needed';

  @override
  String get settingsRefreshPermissions => 'Engedélyek frissítése';

  @override
  String get settingsAboutWifiPermission => 'A WiFi névengedélyről';

  @override
  String get settingsWifiPermissionExplanation =>
      'Your WiFi name helps confirm that your phone and Wemo devices are on the same network.';

  @override
  String get settingsWifiPermissionIos =>
      'On iOS, displaying your WiFi network name requires location permission.';

  @override
  String get settingsImportant => 'Fontos:';

  @override
  String get settingsPrivacyNote =>
      '• A tartózkodási helyét soha nem követi nyomon\n• Nem gyűjtenek vagy tárolnak helyadatokat';

  @override
  String get settingsWifiPermissionImportant =>
      '• Device discovery works WITHOUT this permission\n• This is only needed to show the WiFi name\n• Nem gyűjtenek vagy tárolnak helyadatokat';

  @override
  String get settingsGrantPermission => 'Engedély megadása';

  @override
  String get settingsHowLongScan => 'Mennyi ideig kell eszközöket keresni:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'A felderítési időtúllépés $seconds másodpercre van állítva';
  }

  @override
  String get settingsHowLongResponses =>
      'Mennyi ideig kell várni az eszköz válaszaira:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Increase this value if you see \"Connection closed\" errors.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'A kérés időtúllépése $seconds másodpercre van állítva';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Állítsa be az automatikus állapotfrissítés időközét:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'A frissítési időköz beállítása $seconds másodperc';
  }

  @override
  String get settingsAboutTagline =>
      'Tiszta, privát helyi vezérlő a Wemo eszközökhöz.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch uses local network discovery to find and control devices without cloud dependencies.';

  @override
  String get settingsVersionValue => '1.0.1-es verzió';

  @override
  String get settingsProtocol => 'Protocol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress => 'Multicast cím: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Eszközportok: 49152-49159';

  @override
  String get settingsControlProtocol => 'Vezérlőprotokoll: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tip: Ensure your device is on the same network as your Wemo devices and that UDP multicast is not blocked.';

  @override
  String get settingsDevicePaired =>
      'Eszköz párosítva! Eszközlista frissítése...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds másodperc kérésenként';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Minden $seconds frissítése';
  }

  @override
  String get pairingTitle => 'Új eszköz párosítása';

  @override
  String get pairingSetupTitle => 'Állítsa be a Wemo eszközt';

  @override
  String get pairingBeforeBegin =>
      'Before you begin, make sure your Wemo device is in setup mode:';

  @override
  String get pairingPlugInTitle => 'Csatlakoztassa a Wemo eszközt';

  @override
  String get pairingPlugInBody =>
      'Csatlakoztassa az áramforráshoz, és várja meg, amíg elindul.';

  @override
  String get pairingBlinkingLedTitle => 'Keresse meg a villogó LED-et';

  @override
  String get pairingBlinkingLedBody =>
      'A blinking LED indicates the device is in setup mode.';

  @override
  String get pairingCheckWifiTitle => 'Ellenőrizze a WiFi hálózatot';

  @override
  String get pairingCheckWifiBody =>
      'The device will broadcast a network named \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Ha a LED folyamatosan világít, tartsa lenyomva a reset gombot 5 másodpercig a beállítási módba lépéshez.';

  @override
  String get pairingStart => 'Indítsa el a párosítást';

  @override
  String get pairingConnectWifiTitle => 'Csatlakoztassa a WiFi eszközt';

  @override
  String get pairingConnectWifiBody =>
      'Open your phone\'s WiFi settings and connect to the network that starts with \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Jelenlegi hálózat';

  @override
  String get pairingConnectedToDevice => 'Wemo készülékhez csatlakoztatva!';

  @override
  String get pairingOpenWifiSettings => 'Open WiFi Settings';

  @override
  String get pairingConnectedButton => 'Csatlakoztam';

  @override
  String get pairingLookingForDevice => 'Wemo készülékét keresi...';

  @override
  String get pairingManualIpPrompt => 'Vagy írja be kézzel a IP eszközt:';

  @override
  String get pairingDeviceIp => 'Device IP Address';

  @override
  String get pairingConnectToIp => 'Csatlakoztassa a IP-hez';

  @override
  String get pairingSelectHomeWifi => 'Válassza ki otthoni WiFi hálózatát:';

  @override
  String get pairingRefreshNetworks => 'Hálózatok frissítése';

  @override
  String get pairingIosScanLimitation =>
      'Az iOS szigorúan tiltja, hogy harmadik féltől származó alkalmazások keressenek közeli Wi-Fi hálózatokat. You may need to enter the network SSID manually.';

  @override
  String get pairingNoNetworks => 'No networks found';

  @override
  String get pairingScanAgain => 'Scan Again';

  @override
  String get pairingWifiPassword => 'WiFi Jelszó';

  @override
  String get pairingConnect => 'Csatlakozás';

  @override
  String get pairingEnterNetworkManually => 'Adja meg manuálisan a hálózatot';

  @override
  String get pairingEnterNetworkName => 'Enter network name:';

  @override
  String get pairingNetworkName => 'Hálózat neve (SSID)';

  @override
  String get pairingUseNetwork => 'Use This Network';

  @override
  String get pairingConfiguringDevice => 'Eszköz konfigurálása...';

  @override
  String get pairingConfiguringWait =>
      'Kérjük, várjon, amíg az eszköz csatlakozik a hálózathoz.';

  @override
  String get pairingReconnectTitle => 'Csatlakozzon újra a hálózatához';

  @override
  String pairingReconnectBody(String ssid) {
    return 'A Wemo eszköz most csatlakozik a \"$ssid\"-hez. Kérjük, csatlakoztassa újra telefonját ugyanahhoz a hálózathoz.';
  }

  @override
  String get pairingBackOnHome => 'Vissza az otthoni hálózatra!';

  @override
  String get pairingReconnectedButton => 'I\'ve Reconnected';

  @override
  String get pairingFinalizingSetup => 'Finalizing setup...';

  @override
  String get pairingSetupComplete => 'Setup Complete!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Connected to $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Az eszköz beállítása megtörtént, és megjelenik a kezdőképernyőn.';

  @override
  String get pairingSomethingWrong => 'Something Went Wrong';

  @override
  String get pairingStartOver => 'Start Over';

  @override
  String get pairingErrorOpenWifi =>
      'Nem sikerült megnyitni a WiFi beállításait. Kérjük, nyissa meg őket manuálisan.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'A telefon továbbra is csatlakozik a \"$ssid\"-hez. Nyissa meg a WiFi beállításait, csatlakozzon a WeMo eszközhálózathoz, majd próbálja újra.';
  }

  @override
  String get pairingLoadingLooking => 'Készüléket keresek...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Nem található a WeMo eszköz a $ip helyen. Győződjön meg arról, hogy telefonja csatlakozik a WeMo WiFi hálózathoz, majd próbálja újra. A IP eszközt kézzel is megadhatja.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Hiba az eszköz felfedezésekor: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Csatlakozás a $ip-hez...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Nem található eszköz a $ip-nél';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Hiba a $ip-hez való csatlakozáskor: $error';
  }

  @override
  String get pairingLoadingScanning => 'Hálózatok keresése...';

  @override
  String pairingErrorScanning(String error) {
    return 'Nem sikerült beolvasni a hálózatokat: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Kérjük, válasszon hálózatot, és adja meg a jelszót.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Hálózati hitelesítő adatok küldése...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Várakozás az eszköz csatlakozására...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Nem sikerült konfigurálni a hálózatot: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'A jelszó túl rövid. Kérjük, ellenőrizze, és próbálja újra.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Nem sikerült csatlakozni. Kérjük, ellenőrizze a jelszót.';

  @override
  String get pairingErrorConnectionTimeout =>
      'A kapcsolat időtúllépése lejárt. Kérjük, próbálja újra.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Hiba a beállítás befejezésekor: $error';
  }

  @override
  String get detailRefreshState => 'Frissítési állapot';

  @override
  String get detailDeviceInfo => 'Készülék információ';

  @override
  String get detailAdvanced => 'Haladó';

  @override
  String get detailWifiSetup => 'WiFi Beállítás';

  @override
  String get detailReset => 'Reset';

  @override
  String get detailUnreachable =>
      'Az eszköz elérhetetlen. Ellenőrizze a hálózati kapcsolatot.';

  @override
  String detailFailedToggle(String error) {
    return 'Nem sikerült váltani: $error';
  }

  @override
  String get detailDeviceInformation => 'Eszközinformáció';

  @override
  String get detailPermissionScan =>
      'A WiFi hálózatok vizsgálatához engedély szükséges.';

  @override
  String get detailScanFailedManual =>
      'Nem sikerült beolvasni a hálózatokat. Írja be kézzel a hálózat nevét.';

  @override
  String get detailEnterNetworkNameError =>
      'Kérjük, adja meg vagy válasszon egy hálózatnevet';

  @override
  String get detailEnterPasswordError => 'Kérjük, adja meg a hálózati jelszót';

  @override
  String get detailWifiSuccess => 'WiFi sikeresen konfigurálva!';

  @override
  String get detailScanNetworks => 'Hálózatok keresése';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurálja a WiFi hálózatot a „$device” számára';
  }

  @override
  String get detailAvailableNetworks => 'Elérhető hálózatok';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'Az iOS szigorúan tiltja, hogy harmadik féltől származó alkalmazások keressenek közeli Wi-Fi hálózatokat. Kérjük, adja meg manuálisan a hálózat nevét alább.';

  @override
  String get detailTapRefreshScan =>
      'Érintse meg a Frissítés gombot a hálózatok kereséséhez';

  @override
  String get detailEnterNetworkBelow => 'Írja be a hálózat nevét alább';

  @override
  String get detailNetworkCredentials => 'Hálózati hitelesítő adatok';

  @override
  String get detailConnecting => 'Csatlakozás a hálózathoz...';

  @override
  String get detailConnected => 'Sikeres csatlakozás!';

  @override
  String get detailPasswordShort => 'A jelszó túl rövid';

  @override
  String get detailAuthenticationFailed =>
      'A hitelesítés sikertelen – ellenőrizze a jelszót';

  @override
  String get detailConnectionFailed => 'A csatlakozás sikertelen';

  @override
  String get detailSelectReset =>
      'Kérjük, válassza ki, hogy mit szeretne visszaállítani';

  @override
  String get detailResetSchedulesWarning =>
      '• Minden ütemezés és automatizálási szabály törlődik';

  @override
  String get detailResetWifiWarning => '• A WiFi beállításai törlődnek';

  @override
  String get detailSetupAgainWarning => '• Újra be kell állítania az eszközt';

  @override
  String get detailUnreachableWarning =>
      '• A készülék átmenetileg elérhetetlenné válhat';

  @override
  String get detailConfirmReset => 'Erősítse meg a Visszaállítást';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Biztosan visszaállítja a \"$device\"-t?';
  }

  @override
  String get detailThisWill => 'Ez:';

  @override
  String get detailCannotUndo => 'Ez a művelet nem vonható vissza.';

  @override
  String get detailYesReset => 'Igen, Reset';

  @override
  String get detailResetSuccess => 'Az eszköz visszaállítása sikeresen';

  @override
  String get detailResetRemote => 'Az eszköz távolról visszaáll';

  @override
  String get detailResetFailed => 'A visszaállítás nem sikerült';

  @override
  String get detailFactoryReset => 'Gyári visszaállítás';

  @override
  String get detailFactoryResetWarning =>
      'Ezzel törli az ÖSSZES beállítást, és visszaállítja a készülék gyári alapértékeit. Újra be kell állítania az eszközt.\n\nEz a művelet nem vonható vissza.';

  @override
  String get detailFactoryResetInitiated =>
      'A gyári beállítások visszaállítása megkezdődött';

  @override
  String get detailResetDevice => 'Eszköz visszaállítása';

  @override
  String detailResetOptionsFor(String device) {
    return 'A \"$device\" beállításainak visszaállítása';
  }

  @override
  String get detailResetUserData => 'Felhasználói adatok visszaállítása';

  @override
  String get detailResetUserDataSubtitle =>
      'Törli az ütemterveket és a szabályokat';

  @override
  String get detailResetWifi => 'Állítsa vissza a WiFi beállításokat';

  @override
  String get detailResetWifiSubtitle => 'Az eszközt újra be kell állítani';

  @override
  String get widgetBrightness => 'Fényerő';

  @override
  String get widgetEnergyStatistics => 'Energiastatisztika';

  @override
  String get widgetCurrentPower => 'Jelenlegi teljesítmény';

  @override
  String get widgetToday => 'Ma';

  @override
  String get widgetTotal => 'Összesen';

  @override
  String get widgetOnTimeToday => 'Ma időben';

  @override
  String get widgetTotalOnTime => 'Teljes beadási idő';

  @override
  String get widgetStandby => 'Készenlét';

  @override
  String get widgetUnknown => 'Ismeretlen';

  @override
  String get widgetOpenNetwork => 'Nyitott hálózat';

  @override
  String get widgetWepInsecure => 'WEP (nem biztonságos)';
}
