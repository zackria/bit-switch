// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Zariadenie túto akciu nepodporuje.';

  @override
  String get errInvalidArgs =>
      'Do zariadenia boli odoslané neplatné argumenty.';

  @override
  String get errActionFailed =>
      'Zariadenie zlyhalo pri vykonaní požadovanej akcie.';

  @override
  String get errInvalidValue => 'Bola zadaná neplatná hodnota.';

  @override
  String get errValueOutOfRange => 'Hodnota je mimo prijateľného rozsahu.';

  @override
  String get errFeatureNotAvailable =>
      'Táto funkcia nie je na tomto zariadení dostupná.';

  @override
  String get errOutOfMemory =>
      'Zariadenie má nedostatok pamäte. Skúste to znova neskôr.';

  @override
  String get errManualActionRequired =>
      'Na zariadení sa vyžaduje manuálna akcia.';

  @override
  String get errActionNotAuthorized => 'Táto akcia nie je povolená.';

  @override
  String get errUnexpected => 'Vyskytla sa neočakávaná chyba. Skúste to znova.';

  @override
  String get errDeviceUnreachableOffline =>
      'K zariadeniu sa nedá dostať. Môže byť offline alebo v inej sieti.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Časový limit požiadavky vypršal po pokusoch $attempts. Zariadenie môže byť offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Časový limit žiadosti vypršal. Zariadenie môže byť offline.';

  @override
  String get errNoRouteToHost =>
      'Nedá sa dostať k zariadeniu. Skontrolujte pripojenie WiFi.';

  @override
  String get errHostUnreachable =>
      'Zariadenie je nedostupné. Uistite sa, že je zapnutý a pripojený k WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Po pokusoch $attempts nie je možné komunikovať so zariadením.';
  }

  @override
  String get errNetworkErrorComm =>
      'Chyba siete: Nie je možné komunikovať so zariadením.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Táto akcia nie je na zariadení povolená.';

  @override
  String get errDeviceServiceNotFound =>
      'Služba zariadenia sa nenašla. Zariadenie môže vyžadovať aktualizáciu firmvéru.';

  @override
  String get errDeviceEncounteredError =>
      'V zariadení sa vyskytla chyba pri spracovaní požiadavky.';

  @override
  String get errDeviceInternalError => 'Zariadenie vrátilo internú chybu.';

  @override
  String get errDeviceTempUnavailable =>
      'Zariadenie je dočasne nedostupné. Skúste to znova.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Zariadenie vrátilo chybu (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '$action na zariadení zlyhal.';
  }

  @override
  String get errDeviceReturnedError => 'Zariadenie vrátilo chybu.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Časový limit operácie $operation vypršal. Skúste to znova.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Časový limit operácie vypršal po $seconds sekundách.';
  }

  @override
  String get errOperationTimedOut =>
      'Časový limit operácie vypršal. Skúste to znova.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Ak chcete vyhľadať zariadenia, povoľte povolenie pre miestnu sieť v Nastaveniach.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Nie je možné získať prístup k miestnej sieti. Povoľte povolenie pre miestnu sieť v Nastaveniach.';

  @override
  String get errCheckWifiConnection =>
      'Zariadenia sa nepodarilo objaviť. Skontrolujte pripojenie WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Objavovanie prerušené. Nájdené zariadenia $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Nenašli sa žiadne zariadenia. Uistite sa, že sú zariadenia zapnuté a pripojené k vašej sieti.';

  @override
  String get actionGetDeviceState => 'získať stav zariadenia';

  @override
  String get actionSetDeviceState => 'nastaviť stav zariadenia';

  @override
  String get actionGetEnergyData => 'získať údaje o energii';

  @override
  String get actionScanNetworks => 'skenovať siete';

  @override
  String get actionConnectWifi => 'pripojte k WiFi';

  @override
  String get actionCheckConnection => 'skontrolujte stav pripojenia';

  @override
  String get actionResetDevice => 'resetovať zariadenie';

  @override
  String get actionPerform => 'vykonať akciu';

  @override
  String get suggestTryRefreshing =>
      'Skúste obnoviť zoznam zariadení alebo skontrolujte, či zariadenie reaguje.';

  @override
  String get suggestEnsurePoweredOn =>
      'Uistite sa, že je zariadenie zapnuté a pripojené k vašej sieti WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Uistite sa, že váš telefón je pripojený k rovnakej sieti WiFi ako vaše zariadenia.';

  @override
  String get suggestCheckPhysical =>
      'Skontrolujte fyzické zariadenie, či neobsahuje tlačidlá alebo prepínače, ktoré si vyžadujú pozornosť.';

  @override
  String get suggestWaitAndTry => 'Chvíľu počkajte a skúste to znova.';

  @override
  String get suggestDeviceBusy =>
      'Zariadenie môže byť zaneprázdnené. Skúste to znova o niekoľko sekúnd.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Zrušiť';

  @override
  String get commonClose => 'Zavrieť';

  @override
  String get commonDone => 'Hotovo';

  @override
  String get commonLater => 'Neskôr';

  @override
  String get commonRefresh => 'Obnoviť';

  @override
  String get commonTryAgain => 'Skúste znova';

  @override
  String get commonOpenSettings => 'Otvorte Nastavenia';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Opraviť';

  @override
  String get commonOn => 'Zapnuté';

  @override
  String get commonOff => 'Vypnuté';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Stav';

  @override
  String get commonName => 'Meno';

  @override
  String get commonType => 'Typ';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Výrobca';

  @override
  String get commonSerial => 'Serial';

  @override
  String get commonFirmware => 'Firmvér';

  @override
  String get commonHost => 'Hostiteľ';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'heslo';

  @override
  String get commonUnknownWifi => 'Neznámy Wi-Fi';

  @override
  String get commonNotConnected => 'Nepripojené';

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
      other: '$seconds sekúnd',
      one: '1 sekunda',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Inteligentný prepínač';

  @override
  String get deviceTypeLightSwitch => 'Svetelný spínač';

  @override
  String get deviceTypeDimmer => 'Stmievač';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Pohybový senzor';

  @override
  String get deviceTypeMaker => 'Tvorca';

  @override
  String get deviceTypeBridge => 'Most';

  @override
  String get deviceTypeCoffeeMaker => 'Kávovar';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Zvlhčovač';

  @override
  String get deviceTypeOutdoorPlug => 'Vonkajšia zástrčka';

  @override
  String get deviceTypeUnknown => 'Neznáme zariadenie';

  @override
  String get pairingStepGetStarted => 'Začíname';

  @override
  String get pairingStepConnectToDevice => 'Pripojte sa k zariadeniu';

  @override
  String get pairingStepFindDevice => 'Nájsť zariadenie';

  @override
  String get pairingStepSelectNetwork => 'Vyberte Sieť';

  @override
  String get pairingStepConfiguring => 'Konfigurácia';

  @override
  String get pairingStepReconnect => 'Znovu sa pripojte';

  @override
  String get pairingStepFinalizing => 'Finalizácia';

  @override
  String get pairingStepSuccess => 'Úspech';

  @override
  String get pairingStepError => 'Chyba';

  @override
  String get homeToggleDebug => 'Prepnúť režim ladenia';

  @override
  String get homeRefreshDevices => 'Obnovte zariadenia';

  @override
  String get homeSettings => 'Nastavenia';

  @override
  String get homeDismiss => 'Odmietnuť';

  @override
  String get homeDiscovering => 'Objavujú sa zariadenia...';

  @override
  String get homeNoDevices => 'Nenašli sa žiadne zariadenia';

  @override
  String get homeScanDevices => 'Vyhľadajte zariadenia';

  @override
  String get homeLookingForMore => 'Hľadajú sa ďalšie zariadenia...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nájdené zariadenia $count',
      one: 'Našlo sa 1 zariadenie',
      zero: 'Nenašli sa žiadne zariadenia',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Našli sa zariadenia $count, skenujú sa...',
      one: 'Našlo sa 1 zariadenie, skenuje sa...',
      zero: 'Nenašli sa žiadne zariadenia, skenuje sa...',
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
  String get homeConnectedWifi => 'Pripojené k WiFi';

  @override
  String get homePermissionExplanation =>
      'Informácie o polohe sa používajú na nájdenie podrobností o vašom Wi-Fi. Prístup k miestnej sieti vám umožňuje ovládať vaše inteligentné prepínače a zariadenia.';

  @override
  String get homeDebugLog => 'Denník ladenia';

  @override
  String get homeClear => 'Jasné';

  @override
  String get homeDebugEmpty =>
      'Klepnutím na obnoviť spustíte zisťovanie a zobrazíte denníky...';

  @override
  String get homeProbeHint => 'IP:Port (napr. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'Skenuje sa...';

  @override
  String get homeScanSubnet => 'Skenovať celú podsieť (oprava systému iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Nastavenia';

  @override
  String get settingsSectionNetwork => 'sieť';

  @override
  String get settingsSectionDeviceSetup => 'Nastavenie zariadenia';

  @override
  String get settingsSectionDiscovery => 'Discovery';

  @override
  String get settingsSectionAbout => 'O';

  @override
  String get settingsSectionDebug => 'Debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Povolenie udelené! Názov WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Umiestnenie bolo udelené, ale vyžaduje sa aj povolenie miestnej siete. Skontrolujte Nastavenia.';

  @override
  String get settingsLocationRequired => 'Vyžaduje sa povolenie na umiestnenie';

  @override
  String get settingsLocationRequiredBody =>
      'Ak chcete zobraziť názov siete WiFi, iOS vyžaduje povolenie Poloha.';

  @override
  String get settingsRequiredPermissions => 'Požadované povolenia:';

  @override
  String get settingsPermissionList =>
      '1. Lokalizačné služby („počas používania aplikácie“)\n2. Lokálna sieť';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Poznámka: Zisťovanie zariadenia funguje bez povolenia polohy. Toto povolenie sa používa iba na zobrazenie názvu vašej siete WiFi.';

  @override
  String get settingsEnableLocation => 'Povoľte polohu v Nastaveniach';

  @override
  String get settingsLocationDeniedBody =>
      'Povolenie na umiestnenie bolo zamietnuté. Môžete to povoliť v nastaveniach systému.';

  @override
  String get settingsStepsToEnable => 'Postup aktivácie:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Otvorte Nastavenia\n2. Prejdite na „Bit Switch“\n3. Klepnite na „Poloha“\n4. Vyberte možnosť „Počas používania aplikácie“\n5. Vráťte sa do tejto aplikácie a klepnite na tlačidlo obnovenia';

  @override
  String get settingsLocationOnlyWifiName =>
      'Poznámka: Povolenie na umiestnenie je potrebné len na zobrazenie názvu WiFi. Zisťovanie zariadenia funguje aj bez neho.';

  @override
  String get settingsAdditionalPermission => 'Vyžaduje sa dodatočné povolenie';

  @override
  String get settingsLocalNetworkBody =>
      'Na zistenie a ovládanie zariadení Wemo je potrebné povolenie lokálnej siete.';

  @override
  String get settingsWifiNameNotVisible =>
      'Máte povolenie na umiestnenie, ale názov WiFi sa zatiaľ nezobrazuje.';

  @override
  String get settingsPleaseEnable => 'Povoľte:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Prejdite do Nastavenia iPhone\n2. Prejdite nadol na „Bit Switch“\n3. Povoľte \"Miestna sieť\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Povolenie lokálnej siete sa vyžaduje na zisťovanie zariadenia aj na prístup k názvu WiFi v systéme iOS.';

  @override
  String get settingsPairNewDevice => 'Spárovať nové zariadenie';

  @override
  String get settingsPairNewDeviceSubtitle => 'Nastavte nové zariadenie Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Časový limit objavenia';

  @override
  String get settingsRequestTimeout => 'Časový limit žiadosti';

  @override
  String get settingsAutoRefresh => 'Automatické obnovenie';

  @override
  String get settingsAutoRefreshOn =>
      'Zapnuté – Stavy zariadenia sa automaticky obnovujú';

  @override
  String get settingsAutoRefreshOff =>
      'Vypnuté – použite tlačidlo manuálneho obnovenia';

  @override
  String get settingsAutoRefreshInterval => 'Interval automatického obnovenia';

  @override
  String get settingsAbout => 'Približne Bit Switch';

  @override
  String get settingsVersion => 'Verzia';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostika siete';

  @override
  String get settingsShowDebug => 'Zobraziť režim ladenia';

  @override
  String get settingsShowDebugSubtitle =>
      'Zobraziť ovládacie prvky ladenia a diagnostiku siete na domovskej obrazovke';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Pri riešení problémov zobraziť ikonu ladenia na domovskej obrazovke';

  @override
  String get settingsCurrentNetwork => 'Aktuálna sieť';

  @override
  String get settingsNetworkAccessStatus => 'Stav prístupu k sieti';

  @override
  String get settingsNetworkAccessGranted =>
      'K dispozícii je prístup k miestnej sieti';

  @override
  String get settingsNetworkAccessMissing =>
      'Môžu byť potrebné ďalšie povolenia';

  @override
  String get settingsChecking => 'Prebieha kontrola...';

  @override
  String get settingsEnableLocalNetwork =>
      'Povoľte lokálnu sieť v Nastaveniach';

  @override
  String get settingsNotConnectedWifi => 'Nie je pripojené k WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Na zobrazenie je potrebné povolenie';

  @override
  String get settingsAllPermissionsGranted => 'Všetky povolenia udelené';

  @override
  String get settingsLocalNetworkNeeded =>
      'Vyžaduje sa povolenie miestnej siete';

  @override
  String get settingsLocationNeeded => 'Vyžaduje sa povolenie na umiestnenie';

  @override
  String get settingsRefreshPermissions => 'Obnoviť povolenia';

  @override
  String get settingsAboutWifiPermission => 'O povolení názvu WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Vaše meno WiFi pomáha potvrdiť, že váš telefón a zariadenia Wemo sú v rovnakej sieti.';

  @override
  String get settingsWifiPermissionIos =>
      'V systéme iOS si zobrazenie názvu siete WiFi vyžaduje povolenie na umiestnenie.';

  @override
  String get settingsImportant => 'Dôležité:';

  @override
  String get settingsPrivacyNote =>
      '• Vaša poloha sa nikdy nesleduje\n• Nezhromažďujú sa ani neukladajú žiadne údaje o polohe';

  @override
  String get settingsWifiPermissionImportant =>
      '• Zisťovanie zariadení funguje BEZ tohto povolenia\n• Toto je potrebné len na zobrazenie názvu WiFi\n• Nezhromažďujú sa ani neukladajú žiadne údaje o polohe';

  @override
  String get settingsGrantPermission => 'Udeliť povolenie';

  @override
  String get settingsHowLongScan => 'Ako dlho vyhľadávať zariadenia:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Časový limit zisťovania nastavený na $seconds sekúnd';
  }

  @override
  String get settingsHowLongResponses =>
      'Ako dlho čakať na odpovede zariadenia:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Zvýšte túto hodnotu, ak uvidíte chyby „Pripojenie zatvorené“.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Časový limit požiadavky nastavený na $seconds sekúnd';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Nastavte interval pre automatické obnovenie stavu:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Interval obnovenia nastavený na $seconds sekúnd';
  }

  @override
  String get settingsAboutTagline =>
      'Čistý, súkromný lokálny ovládač pre vaše zariadenia Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch využíva zisťovanie lokálnej siete na nájdenie a ovládanie zariadení bez cloudových závislostí.';

  @override
  String get settingsVersionValue => 'Verzia 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Adresa multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Porty zariadenia: 49152-49159';

  @override
  String get settingsControlProtocol => 'Riadiaci protokol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tip: Uistite sa, že vaše zariadenie je v rovnakej sieti ako vaše zariadenia Wemo a že multicast UDP nie je blokovaný.';

  @override
  String get settingsDevicePaired =>
      'Zariadenie spárované! Obnovuje sa zoznam zariadení...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekúnd na požiadavku';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Obnovenie každých ${seconds}s';
  }

  @override
  String get pairingTitle => 'Spárovať nové zariadenie';

  @override
  String get pairingSetupTitle => 'Nastavte svoje zariadenie Wemo';

  @override
  String get pairingBeforeBegin =>
      'Skôr ako začnete, skontrolujte, či je vaše zariadenie Wemo v režime nastavenia:';

  @override
  String get pairingPlugInTitle => 'Zapojte svoje zariadenie Wemo';

  @override
  String get pairingPlugInBody =>
      'Pripojte ho k napájaniu a počkajte, kým sa spustí.';

  @override
  String get pairingBlinkingLedTitle => 'Hľadajte blikajúcu LED';

  @override
  String get pairingBlinkingLedBody =>
      'Blikajúca LED signalizuje, že zariadenie je v režime nastavenia.';

  @override
  String get pairingCheckWifiTitle => 'Skontrolujte sieť WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Zariadenie bude vysielať sieť s názvom „WeMo.XXXX“.';

  @override
  String get pairingSolidLedHint =>
      'Ak kontrolka LED svieti, podržte tlačidlo reset na 5 sekúnd, aby ste vstúpili do režimu nastavenia.';

  @override
  String get pairingStart => 'Spustite párovanie';

  @override
  String get pairingConnectWifiTitle => 'Pripojte sa k zariadeniu WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Otvorte v telefóne nastavenia WiFi a pripojte sa k sieti, ktorá začína „WeMo“.';

  @override
  String get pairingCurrentNetwork => 'Aktuálna sieť';

  @override
  String get pairingConnectedToDevice => 'Pripojené k zariadeniu Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Otvorte Nastavenia WiFi';

  @override
  String get pairingConnectedButton => 'Pripojil som sa';

  @override
  String get pairingLookingForDevice => 'Hľadáte vaše zariadenie Wemo...';

  @override
  String get pairingManualIpPrompt => 'Alebo zadajte zariadenie IP manuálne:';

  @override
  String get pairingDeviceIp => 'Adresa zariadenia IP';

  @override
  String get pairingConnectToIp => 'Pripojte k IP';

  @override
  String get pairingSelectHomeWifi => 'Vyberte svoju domácu sieť WiFi:';

  @override
  String get pairingRefreshNetworks => 'Obnoviť siete';

  @override
  String get pairingIosScanLimitation =>
      'iOS prísne zakazuje aplikáciám tretích strán skenovať blízke siete Wi-Fi. Možno budete musieť zadať sieť SSID manuálne.';

  @override
  String get pairingNoNetworks => 'Nenašli sa žiadne siete';

  @override
  String get pairingScanAgain => 'Skenovať znova';

  @override
  String get pairingWifiPassword => 'Heslo WiFi';

  @override
  String get pairingConnect => 'Pripojte sa';

  @override
  String get pairingEnterNetworkManually => 'Zadajte sieť manuálne';

  @override
  String get pairingEnterNetworkName => 'Zadajte názov siete:';

  @override
  String get pairingNetworkName => 'Názov siete (SSID)';

  @override
  String get pairingUseNetwork => 'Použite túto sieť';

  @override
  String get pairingConfiguringDevice => 'Konfiguruje sa zariadenie...';

  @override
  String get pairingConfiguringWait =>
      'Počkajte, kým sa zariadenie pripojí k vašej sieti.';

  @override
  String get pairingReconnectTitle => 'Znova sa pripojte k svojej sieti';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Vaše zariadenie Wemo sa teraz pripája k „$ssid“. Znova pripojte telefón k rovnakej sieti.';
  }

  @override
  String get pairingBackOnHome => 'Späť na domácej sieti!';

  @override
  String get pairingReconnectedButton => 'Znovu som sa pripojil';

  @override
  String get pairingFinalizingSetup => 'Dokončuje sa nastavenie...';

  @override
  String get pairingSetupComplete => 'Nastavenie je dokončené!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Pripojené k $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Vaše zariadenie je teraz nastavené a zobrazí sa na domovskej obrazovke.';

  @override
  String get pairingSomethingWrong => 'Niečo sa pokazilo';

  @override
  String get pairingStartOver => 'Začať odznova';

  @override
  String get pairingErrorOpenWifi =>
      'Nepodarilo sa otvoriť nastavenia WiFi. Otvorte ich ručne.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Váš telefón je stále pripojený k „$ssid“. Otvorte nastavenia WiFi, pripojte sa k sieti zariadenia WeMo a skúste to znova.';
  }

  @override
  String get pairingLoadingLooking => 'Hľadá sa zariadenie...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Nepodarilo sa nájsť zariadenie WeMo na $ip. Uistite sa, že je váš telefón pripojený k sieti WeMo WiFi a skúste to znova. Zariadenie IP môžete zadať aj manuálne.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Chyba pri zisťovaní zariadenia: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Pripája sa k $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Na $ip sa nenašlo žiadne zariadenie';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Chyba pri pripájaní k $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Hľadajú sa siete...';

  @override
  String pairingErrorScanning(String error) {
    return 'Nepodarilo sa skenovať siete: $error';
  }

  @override
  String get pairingErrorSelectAndPassword => 'Vyberte sieť a zadajte heslo.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Odosielajú sa sieťové poverenia...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Čaká sa na pripojenie zariadenia...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Nepodarilo sa nakonfigurovať sieť: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Heslo je príliš krátke. Skontrolujte a skúste to znova.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Nepodarilo sa pripojiť. Skontrolujte heslo.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Časový limit spojenia vypršal. Skúste to znova.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Chyba pri dokončovaní nastavenia: $error';
  }

  @override
  String get detailRefreshState => 'Stav obnovenia';

  @override
  String get detailDeviceInfo => 'Informácie o zariadení';

  @override
  String get detailAdvanced => 'Pokročilé';

  @override
  String get detailWifiSetup => 'Nastavenie WiFi';

  @override
  String get detailReset => 'Resetovať';

  @override
  String get detailUnreachable =>
      'Zariadenie je nedostupné. Skontrolujte sieťové pripojenie.';

  @override
  String detailFailedToggle(String error) {
    return 'Nepodarilo sa prepnúť: $error';
  }

  @override
  String get detailDeviceInformation => 'Informácie o zariadení';

  @override
  String get detailPermissionScan =>
      'Na skenovanie sietí WiFi sa vyžaduje povolenie.';

  @override
  String get detailScanFailedManual =>
      'Nepodarilo sa skenovať siete. Zadajte názov siete manuálne.';

  @override
  String get detailEnterNetworkNameError => 'Zadajte alebo vyberte názov siete';

  @override
  String get detailEnterPasswordError => 'Zadajte heslo siete';

  @override
  String get detailWifiSuccess => 'WiFi úspešne nakonfigurovaný!';

  @override
  String get detailScanNetworks => 'Vyhľadajte siete';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Nakonfigurujte sieť WiFi pre \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Dostupné siete';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS prísne zakazuje aplikáciám tretích strán skenovať blízke siete Wi-Fi. Zadajte názov siete manuálne nižšie.';

  @override
  String get detailTapRefreshScan =>
      'Klepnutím na tlačidlo obnoviť vyhľadajte siete';

  @override
  String get detailEnterNetworkBelow => 'Nižšie zadajte názov siete';

  @override
  String get detailNetworkCredentials => 'Sieťové poverenia';

  @override
  String get detailConnecting => 'Pripája sa k sieti...';

  @override
  String get detailConnected => 'Úspešne pripojené!';

  @override
  String get detailPasswordShort => 'Heslo je príliš krátke';

  @override
  String get detailAuthenticationFailed =>
      'Overenie zlyhalo – skontrolujte heslo';

  @override
  String get detailConnectionFailed => 'Pripojenie zlyhalo';

  @override
  String get detailSelectReset => 'Vyberte, čo chcete resetovať';

  @override
  String get detailResetSchedulesWarning =>
      '• Všetky plány a pravidlá automatizácie budú vymazané';

  @override
  String get detailResetWifiWarning => '• Nastavenia WiFi sa vymažú';

  @override
  String get detailSetupAgainWarning =>
      '• Budete musieť znova nastaviť zariadenie';

  @override
  String get detailUnreachableWarning =>
      '• Zariadenie môže byť dočasne nedostupné';

  @override
  String get detailConfirmReset => 'Potvrďte Reset';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Naozaj chcete resetovať \"$device\"?';
  }

  @override
  String get detailThisWill => 'Toto bude:';

  @override
  String get detailCannotUndo => 'Túto akciu nie je možné vrátiť späť.';

  @override
  String get detailYesReset => 'Áno, Resetovať';

  @override
  String get detailResetSuccess => 'Resetovanie zariadenia bolo úspešné';

  @override
  String get detailResetRemote => 'Zariadenie sa resetuje na diaľku';

  @override
  String get detailResetFailed => 'Obnovenie zlyhalo';

  @override
  String get detailFactoryReset => 'Obnovenie továrenských nastavení';

  @override
  String get detailFactoryResetWarning =>
      'Týmto sa vymažú VŠETKY nastavenia a obnovia sa predvolené výrobné nastavenia zariadenia. Zariadenie budete musieť znova nastaviť.\n\nTúto akciu nie je možné vrátiť späť.';

  @override
  String get detailFactoryResetInitiated =>
      'Bolo spustené obnovenie továrenských nastavení';

  @override
  String get detailResetDevice => 'Resetovať zariadenie';

  @override
  String detailResetOptionsFor(String device) {
    return 'Obnoviť možnosti pre \"$device\"';
  }

  @override
  String get detailResetUserData => 'Obnoviť údaje používateľa';

  @override
  String get detailResetUserDataSubtitle => 'Vyčistí plány a pravidlá';

  @override
  String get detailResetWifi => 'Obnovte nastavenia WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Zariadenie bude potrebné znova nastaviť';

  @override
  String get widgetBrightness => 'Jas';

  @override
  String get widgetEnergyStatistics => 'Energetická štatistika';

  @override
  String get widgetCurrentPower => 'Aktuálny výkon';

  @override
  String get widgetToday => 'Dnes';

  @override
  String get widgetTotal => 'Celkom';

  @override
  String get widgetOnTimeToday => 'Dnes včas';

  @override
  String get widgetTotalOnTime => 'Celkom včas';

  @override
  String get widgetStandby => 'Pohotovostný režim';

  @override
  String get widgetUnknown => 'Neznámy';

  @override
  String get widgetOpenNetwork => 'Otvorená sieť';

  @override
  String get widgetWepInsecure => 'WEP (nezabezpečené)';
}
