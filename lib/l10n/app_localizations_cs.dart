// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Zařízení tuto akci nepodporuje.';

  @override
  String get errInvalidArgs => 'Do zařízení byly odeslány neplatné argumenty.';

  @override
  String get errActionFailed => 'Zařízení neprovedlo požadovanou akci.';

  @override
  String get errInvalidValue => 'Byla zadána neplatná hodnota.';

  @override
  String get errValueOutOfRange => 'Hodnota je mimo přijatelný rozsah.';

  @override
  String get errFeatureNotAvailable =>
      'Tato funkce není na tomto zařízení dostupná.';

  @override
  String get errOutOfMemory =>
      'Zařízení má nedostatek paměti. Zkuste to znovu později.';

  @override
  String get errManualActionRequired => 'Na zařízení je vyžadován ruční zásah.';

  @override
  String get errActionNotAuthorized => 'Tato akce není povolena.';

  @override
  String get errUnexpected =>
      'Došlo k neočekávané chybě. Zkuste to prosím znovu.';

  @override
  String get errDeviceUnreachableOffline =>
      'K zařízení se nelze připojit. Může být offline nebo v jiné síti.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Časový limit požadavku vypršel po pokusech $attempts. Zařízení může být offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Časový limit požadavku vypršel. Zařízení může být offline.';

  @override
  String get errNoRouteToHost =>
      'Nelze dosáhnout na zařízení. Zkontrolujte prosím připojení WiFi.';

  @override
  String get errHostUnreachable =>
      'Zařízení je nedostupné. Ujistěte se, že je zapnutý a připojený k WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Nelze komunikovat se zařízením po pokusech $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Chyba sítě: Nelze komunikovat se zařízením.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Tato akce není na zařízení autorizována.';

  @override
  String get errDeviceServiceNotFound =>
      'Služba zařízení nebyla nalezena. Zařízení může vyžadovat aktualizaci firmwaru.';

  @override
  String get errDeviceEncounteredError =>
      'V zařízení došlo k chybě při zpracování požadavku.';

  @override
  String get errDeviceInternalError => 'Zařízení vrátilo vnitřní chybu.';

  @override
  String get errDeviceTempUnavailable =>
      'Zařízení je dočasně nedostupné. Zkuste to prosím znovu.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Zařízení vrátilo chybu (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Na zařízení se nezdařilo $action.';
  }

  @override
  String get errDeviceReturnedError => 'Zařízení vrátilo chybu.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Časový limit operace $operation vypršel. Zkuste to prosím znovu.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Časový limit operace vypršel po $seconds sekundách.';
  }

  @override
  String get errOperationTimedOut =>
      'Časový limit operace vypršel. Zkuste to prosím znovu.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Chcete-li vyhledat zařízení, povolte oprávnění místní sítě v Nastavení.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Nelze získat přístup k místní síti. Povolte oprávnění místní sítě v Nastavení.';

  @override
  String get errCheckWifiConnection =>
      'Zařízení nelze zjistit. Zkontrolujte prosím připojení WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Objevování přerušeno. Nalezena zařízení $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Nebyla nalezena žádná zařízení. Ujistěte se, že jsou zařízení zapnutá a připojená k vaší síti.';

  @override
  String get actionGetDeviceState => 'získat stav zařízení';

  @override
  String get actionSetDeviceState => 'nastavit stav zařízení';

  @override
  String get actionGetEnergyData => 'získat údaje o energii';

  @override
  String get actionScanNetworks => 'vyhledávat sítě';

  @override
  String get actionConnectWifi => 'připojit k WiFi';

  @override
  String get actionCheckConnection => 'zkontrolovat stav připojení';

  @override
  String get actionResetDevice => 'resetovat zařízení';

  @override
  String get actionPerform => 'provést akci';

  @override
  String get suggestTryRefreshing =>
      'Zkuste obnovit seznam zařízení nebo zkontrolujte, zda zařízení odpovídá.';

  @override
  String get suggestEnsurePoweredOn =>
      'Ujistěte se, že je zařízení zapnuté a připojené k vaší síti WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Ujistěte se, že je váš telefon připojen ke stejné síti WiFi jako vaše zařízení.';

  @override
  String get suggestCheckPhysical =>
      'Zkontrolujte fyzické zařízení, zda neobsahuje tlačítka nebo přepínače, které vyžadují pozornost.';

  @override
  String get suggestWaitAndTry => 'Chvíli počkejte a zkuste to znovu.';

  @override
  String get suggestDeviceBusy =>
      'Zařízení může být zaneprázdněné. Zkuste to znovu za několik sekund.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Zrušit';

  @override
  String get commonClose => 'Zavřít';

  @override
  String get commonDone => 'Hotovo';

  @override
  String get commonLater => 'Později';

  @override
  String get commonRefresh => 'Obnovit';

  @override
  String get commonTryAgain => 'Zkuste to znovu';

  @override
  String get commonOpenSettings => 'Otevřete Nastavení';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Opravit';

  @override
  String get commonOn => 'Zapnuto';

  @override
  String get commonOff => 'Vypnuto';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Stav';

  @override
  String get commonName => 'Jméno';

  @override
  String get commonType => 'Typ';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Výrobce';

  @override
  String get commonSerial => 'sériový';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Hostitel';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Heslo';

  @override
  String get commonUnknownWifi => 'Neznámý Wi-Fi';

  @override
  String get commonNotConnected => 'Nepřipojeno';

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
      other: '$seconds sekund',
      one: '1 sekunda',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Smart Switch';

  @override
  String get deviceTypeLightSwitch => 'Světelný spínač';

  @override
  String get deviceTypeDimmer => 'Stmívač';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Pohybový senzor';

  @override
  String get deviceTypeMaker => 'Tvůrce';

  @override
  String get deviceTypeBridge => 'Most';

  @override
  String get deviceTypeCoffeeMaker => 'Kávovar';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Zvlhčovač';

  @override
  String get deviceTypeOutdoorPlug => 'Venkovní zástrčka';

  @override
  String get deviceTypeUnknown => 'Neznámé zařízení';

  @override
  String get pairingStepGetStarted => 'Začněte';

  @override
  String get pairingStepConnectToDevice => 'Připojte se k zařízení';

  @override
  String get pairingStepFindDevice => 'Najít zařízení';

  @override
  String get pairingStepSelectNetwork => 'Vyberte Síť';

  @override
  String get pairingStepConfiguring => 'Konfigurace';

  @override
  String get pairingStepReconnect => 'Znovu se připojte';

  @override
  String get pairingStepFinalizing => 'Finalizace';

  @override
  String get pairingStepSuccess => 'Úspěch';

  @override
  String get pairingStepError => 'Chyba';

  @override
  String get homeToggleDebug => 'Přepnout režim ladění';

  @override
  String get homeRefreshDevices => 'Obnovit zařízení';

  @override
  String get homeSettings => 'Nastavení';

  @override
  String get homeDismiss => 'Odmítnout';

  @override
  String get homeDiscovering => 'Objevování zařízení...';

  @override
  String get homeNoDevices => 'Nebyla nalezena žádná zařízení';

  @override
  String get homeScanDevices => 'Vyhledejte zařízení';

  @override
  String get homeLookingForMore => 'Hledám další zařízení...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nalezena zařízení $count',
      one: 'Bylo nalezeno 1 zařízení',
      zero: 'Nebyla nalezena žádná zařízení',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nalezena zařízení $count, skenování...',
      one: 'Bylo nalezeno 1 zařízení, skenuje se...',
      zero: 'Nebyla nalezena žádná zařízení, skenování...',
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
  String get homeConnectedWifi => 'Připojeno k WiFi';

  @override
  String get homePermissionExplanation =>
      'Informace o poloze se používají k nalezení podrobností o vašem Wi-Fi. Přístup k místní síti vám umožňuje ovládat vaše chytré přepínače a zařízení.';

  @override
  String get homeDebugLog => 'Protokol ladění';

  @override
  String get homeClear => 'Jasný';

  @override
  String get homeDebugEmpty =>
      'Klepnutím na obnovit spustíte zjišťování a zobrazíte protokoly...';

  @override
  String get homeProbeHint => 'IP:Port (např. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'Skenování...';

  @override
  String get homeScanSubnet => 'Prohledat celou podsíť (oprava iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get settingsSectionNetwork => 'Síť';

  @override
  String get settingsSectionDeviceSetup => 'Nastavení zařízení';

  @override
  String get settingsSectionDiscovery => 'Objevování';

  @override
  String get settingsSectionAbout => 'O';

  @override
  String get settingsSectionDebug => 'Ladit';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Povolení uděleno! Název WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Umístění uděleno, ale je také potřeba oprávnění k místní síti. Zkontrolujte Nastavení.';

  @override
  String get settingsLocationRequired => 'Je vyžadováno oprávnění k umístění';

  @override
  String get settingsLocationRequiredBody =>
      'K zobrazení názvu vaší sítě WiFi vyžaduje iOS oprávnění k poloze.';

  @override
  String get settingsRequiredPermissions => 'Požadovaná oprávnění:';

  @override
  String get settingsPermissionList =>
      '1. Služby určování polohy (\"při používání aplikace\")\n2. Místní síť';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Poznámka: Zjišťování zařízení funguje bez povolení k poloze. Toto oprávnění se používá pouze k zobrazení názvu vaší sítě WiFi.';

  @override
  String get settingsEnableLocation => 'Povolte polohu v Nastavení';

  @override
  String get settingsLocationDeniedBody =>
      'Povolení k umístění bylo odepřeno. Můžete to povolit v nastavení systému.';

  @override
  String get settingsStepsToEnable => 'Postup povolení:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Otevřete Nastavení\n2. Přejděte na „Bit Switch“\n3. Klepněte na „Poloha“\n4. Vyberte „Při používání aplikace“\n5. Vraťte se do této aplikace a klepněte na tlačítko aktualizace';

  @override
  String get settingsLocationOnlyWifiName =>
      'Poznámka: Oprávnění k umístění je potřeba pouze k zobrazení názvu WiFi. Zjišťování zařízení funguje i bez něj.';

  @override
  String get settingsAdditionalPermission => 'Je vyžadováno další povolení';

  @override
  String get settingsLocalNetworkBody =>
      'K vyhledání a ovládání zařízení Wemo je vyžadováno oprávnění k místní síti.';

  @override
  String get settingsWifiNameNotVisible =>
      'Máte oprávnění k poloze, ale název WiFi zatím není viditelný.';

  @override
  String get settingsPleaseEnable => 'Povolte prosím:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Přejděte do Nastavení iPhone\n2. Přejděte dolů na „Bit Switch“\n3. Povolte \"Místní síť\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Pro zjišťování zařízení a přístup k názvu WiFi v systému iOS je vyžadováno oprávnění k místní síti.';

  @override
  String get settingsPairNewDevice => 'Spárujte nové zařízení';

  @override
  String get settingsPairNewDeviceSubtitle => 'Nastavte nové zařízení Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Časový limit zjišťování';

  @override
  String get settingsRequestTimeout => 'Časový limit požadavku';

  @override
  String get settingsAutoRefresh => 'Automatické obnovení';

  @override
  String get settingsAutoRefreshOn =>
      'Zapnuto – Stavy zařízení se automaticky obnovují';

  @override
  String get settingsAutoRefreshOff =>
      'Vypnuto – Použijte tlačítko ruční obnovy';

  @override
  String get settingsAutoRefreshInterval => 'Interval automatického obnovení';

  @override
  String get settingsAbout => 'Asi Bit Switch';

  @override
  String get settingsVersion => 'Verze';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostika sítě';

  @override
  String get settingsShowDebug => 'Zobrazit režim ladění';

  @override
  String get settingsShowDebugSubtitle =>
      'Zobrazit ovládací prvky ladění a diagnostiku sítě na domovské obrazovce';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Při odstraňování problémů zobrazit ikonu ladění na domovské obrazovce';

  @override
  String get settingsCurrentNetwork => 'Aktuální síť';

  @override
  String get settingsNetworkAccessStatus => 'Stav přístupu k síti';

  @override
  String get settingsNetworkAccessGranted =>
      'K dispozici je místní síťový přístup';

  @override
  String get settingsNetworkAccessMissing =>
      'Mohou být vyžadována další oprávnění';

  @override
  String get settingsChecking => 'Kontrola...';

  @override
  String get settingsEnableLocalNetwork => 'Povolte místní síť v Nastavení';

  @override
  String get settingsNotConnectedWifi => 'Není připojeno k WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'K prohlížení je vyžadováno oprávnění';

  @override
  String get settingsAllPermissionsGranted => 'Všechna oprávnění udělena';

  @override
  String get settingsLocalNetworkNeeded =>
      'Je vyžadováno oprávnění k místní síti';

  @override
  String get settingsLocationNeeded => 'Je vyžadováno oprávnění k poloze';

  @override
  String get settingsRefreshPermissions => 'Obnovit oprávnění';

  @override
  String get settingsAboutWifiPermission => 'O oprávnění k názvu WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Vaše jméno WiFi pomáhá potvrdit, že váš telefon a zařízení Wemo jsou ve stejné síti.';

  @override
  String get settingsWifiPermissionIos =>
      'V systému iOS vyžaduje zobrazení názvu sítě WiFi oprávnění k umístění.';

  @override
  String get settingsImportant => 'Důležité:';

  @override
  String get settingsPrivacyNote =>
      '• Vaše poloha není nikdy sledována\n• Nejsou shromažďována ani ukládána žádná data o poloze';

  @override
  String get settingsWifiPermissionImportant =>
      '• Zjišťování zařízení funguje BEZ tohoto oprávnění\n• Toto je potřeba pouze pro zobrazení názvu WiFi\n• Nejsou shromažďována ani ukládána žádná data o poloze';

  @override
  String get settingsGrantPermission => 'Udělení povolení';

  @override
  String get settingsHowLongScan => 'Jak dlouho vyhledávat zařízení:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Časový limit zjišťování nastaven na $seconds sekund';
  }

  @override
  String get settingsHowLongResponses =>
      'Jak dlouho čekat na odpovědi zařízení:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Pokud se zobrazí chyby „Připojení uzavřeno“, zvyšte tuto hodnotu.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Časový limit požadavku nastaven na $seconds sekund';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Nastavte interval pro automatickou obnovu stavu:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Interval obnovy nastaven na $seconds sekund';
  }

  @override
  String get settingsAboutTagline =>
      'Čistý, soukromý místní ovladač pro vaše zařízení Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch využívá zjišťování místní sítě k vyhledání a ovládání zařízení bez závislostí na cloudu.';

  @override
  String get settingsVersionValue => 'Verze 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Adresa vícesměrového vysílání: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Porty zařízení: 49152-49159';

  @override
  String get settingsControlProtocol => 'Řídicí protokol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tip: Ujistěte se, že je vaše zařízení ve stejné síti jako vaše zařízení Wemo a že multicast UDP není blokován.';

  @override
  String get settingsDevicePaired =>
      'Zařízení spárováno! Obnovování seznamu zařízení...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekund na požadavek';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Aktualizace každých ${seconds}s';
  }

  @override
  String get pairingTitle => 'Spárujte nové zařízení';

  @override
  String get pairingSetupTitle => 'Nastavte své zařízení Wemo';

  @override
  String get pairingBeforeBegin =>
      'Než začnete, ujistěte se, že je vaše zařízení Wemo v režimu nastavení:';

  @override
  String get pairingPlugInTitle => 'Zapojte zařízení Wemo';

  @override
  String get pairingPlugInBody =>
      'Připojte jej k napájení a počkejte, až se spustí.';

  @override
  String get pairingBlinkingLedTitle => 'Hledejte blikající LED';

  @override
  String get pairingBlinkingLedBody =>
      'Blikající LED indikuje, že zařízení je v režimu nastavení.';

  @override
  String get pairingCheckWifiTitle => 'Zkontrolujte síť WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Zařízení bude vysílat síť s názvem „WeMo.XXXX“.';

  @override
  String get pairingSolidLedHint =>
      'Pokud LED svítí, podržte resetovací tlačítko po dobu 5 sekund pro vstup do režimu nastavení.';

  @override
  String get pairingStart => 'Spusťte párování';

  @override
  String get pairingConnectWifiTitle => 'Připojte se k zařízení WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Otevřete v telefonu nastavení WiFi a připojte se k síti, která začíná „WeMo“.';

  @override
  String get pairingCurrentNetwork => 'Aktuální síť';

  @override
  String get pairingConnectedToDevice => 'Připojeno k zařízení Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Otevřete Nastavení WiFi';

  @override
  String get pairingConnectedButton => 'Připojil jsem se';

  @override
  String get pairingLookingForDevice => 'Hledáte vaše zařízení Wemo...';

  @override
  String get pairingManualIpPrompt => 'Nebo zadejte zařízení IP ručně:';

  @override
  String get pairingDeviceIp => 'Adresa zařízení IP';

  @override
  String get pairingConnectToIp => 'Připojte k IP';

  @override
  String get pairingSelectHomeWifi => 'Vyberte svou domácí síť WiFi:';

  @override
  String get pairingRefreshNetworks => 'Obnovit sítě';

  @override
  String get pairingIosScanLimitation =>
      'iOS přísně zakazuje aplikacím třetích stran vyhledávat blízké sítě Wi-Fi. Možná budete muset zadat síť SSID ručně.';

  @override
  String get pairingNoNetworks => 'Nebyly nalezeny žádné sítě';

  @override
  String get pairingScanAgain => 'Skenovat znovu';

  @override
  String get pairingWifiPassword => 'Heslo WiFi';

  @override
  String get pairingConnect => 'Připojte se';

  @override
  String get pairingEnterNetworkManually => 'Zadejte síť ručně';

  @override
  String get pairingEnterNetworkName => 'Zadejte název sítě:';

  @override
  String get pairingNetworkName => 'Název sítě (SSID)';

  @override
  String get pairingUseNetwork => 'Použijte tuto síť';

  @override
  String get pairingConfiguringDevice => 'Konfigurace zařízení...';

  @override
  String get pairingConfiguringWait =>
      'Počkejte prosím, než se zařízení připojí k vaší síti.';

  @override
  String get pairingReconnectTitle => 'Znovu se připojte ke své síti';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Vaše zařízení Wemo se nyní připojuje k „$ssid“. Znovu připojte telefon ke stejné síti.';
  }

  @override
  String get pairingBackOnHome => 'Zpět na domácí síti!';

  @override
  String get pairingReconnectedButton => 'Znovu jsem se připojil';

  @override
  String get pairingFinalizingSetup => 'Dokončování nastavení...';

  @override
  String get pairingSetupComplete => 'Nastavení dokončeno!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Připojeno k $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Vaše zařízení je nyní nastaveno a zobrazí se na domovské obrazovce.';

  @override
  String get pairingSomethingWrong => 'Něco se pokazilo';

  @override
  String get pairingStartOver => 'Začít znovu';

  @override
  String get pairingErrorOpenWifi =>
      'Nelze otevřít nastavení WiFi. Otevřete je prosím ručně.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Váš telefon je stále připojen k „$ssid“. Otevřete nastavení WiFi, připojte se k síti zařízení WeMo a zkuste to znovu.';
  }

  @override
  String get pairingLoadingLooking => 'Hledá se zařízení...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Nelze najít zařízení WeMo na $ip. Ujistěte se, že je telefon připojen k síti WeMo WiFi, a zkuste to znovu. Zařízení IP můžete zadat také ručně.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Chyba při zjišťování zařízení: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Připojování k $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Na $ip nebylo nalezeno žádné zařízení';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Chyba při připojování k $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Vyhledávání sítí...';

  @override
  String pairingErrorScanning(String error) {
    return 'Nelze skenovat sítě: $error';
  }

  @override
  String get pairingErrorSelectAndPassword => 'Vyberte síť a zadejte heslo.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Odesílání přihlašovacích údajů k síti...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Čekání na připojení zařízení...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Konfigurace sítě se nezdařila: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Heslo je příliš krátké. Zkontrolujte prosím a zkuste to znovu.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Připojení se nezdařilo. Zkontrolujte prosím heslo.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Vypršel časový limit připojení. Zkuste to prosím znovu.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Chyba při dokončování nastavení: $error';
  }

  @override
  String get detailRefreshState => 'Stav obnovení';

  @override
  String get detailDeviceInfo => 'Informace o zařízení';

  @override
  String get detailAdvanced => 'Pokročilé';

  @override
  String get detailWifiSetup => 'Nastavení WiFi';

  @override
  String get detailReset => 'Resetovat';

  @override
  String get detailUnreachable =>
      'Zařízení je nedostupné. Zkontrolujte připojení k síti.';

  @override
  String detailFailedToggle(String error) {
    return 'Nepodařilo se přepnout: $error';
  }

  @override
  String get detailDeviceInformation => 'Informace o zařízení';

  @override
  String get detailPermissionScan =>
      'Ke skenování sítí WiFi je vyžadováno oprávnění.';

  @override
  String get detailScanFailedManual =>
      'Nelze skenovat sítě. Zadejte název sítě ručně.';

  @override
  String get detailEnterNetworkNameError => 'Zadejte nebo vyberte název sítě';

  @override
  String get detailEnterPasswordError => 'Zadejte heslo sítě';

  @override
  String get detailWifiSuccess => 'WiFi úspěšně nakonfigurován!';

  @override
  String get detailScanNetworks => 'Vyhledejte sítě';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Nakonfigurujte síť WiFi pro \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Dostupné sítě';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS přísně zakazuje aplikacím třetích stran vyhledávat blízké sítě Wi-Fi. Níže prosím zadejte název sítě ručně.';

  @override
  String get detailTapRefreshScan =>
      'Klepnutím na tlačítko Obnovit vyhledáte sítě';

  @override
  String get detailEnterNetworkBelow => 'Níže zadejte název sítě';

  @override
  String get detailNetworkCredentials => 'Síťové přihlašovací údaje';

  @override
  String get detailConnecting => 'Připojování k síti...';

  @override
  String get detailConnected => 'Úspěšně připojeno!';

  @override
  String get detailPasswordShort => 'Heslo je příliš krátké';

  @override
  String get detailAuthenticationFailed =>
      'Ověření se nezdařilo – zkontrolujte heslo';

  @override
  String get detailConnectionFailed => 'Připojení se nezdařilo';

  @override
  String get detailSelectReset => 'Vyberte, co chcete resetovat';

  @override
  String get detailResetSchedulesWarning =>
      '• Všechny plány a pravidla automatizace budou odstraněny';

  @override
  String get detailResetWifiWarning => '• Nastavení WiFi budou vymazána';

  @override
  String get detailSetupAgainWarning =>
      '• Budete muset znovu nastavit zařízení';

  @override
  String get detailUnreachableWarning =>
      '• Zařízení může být dočasně nedostupné';

  @override
  String get detailConfirmReset => 'Potvrďte Reset';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Opravdu chcete resetovat \"$device\"?';
  }

  @override
  String get detailThisWill => 'Toto bude:';

  @override
  String get detailCannotUndo => 'Tuto akci nelze vrátit zpět.';

  @override
  String get detailYesReset => 'Ano, Resetovat';

  @override
  String get detailResetSuccess => 'Zařízení bylo úspěšně resetováno';

  @override
  String get detailResetRemote => 'Zařízení se vzdáleně resetuje';

  @override
  String get detailResetFailed => 'Resetování se nezdařilo';

  @override
  String get detailFactoryReset => 'Obnovení továrního nastavení';

  @override
  String get detailFactoryResetWarning =>
      'Tím se vymažou VŠECHNA nastavení a obnoví se výchozí tovární nastavení zařízení. Budete muset znovu nastavit zařízení.\n\nTuto akci nelze vrátit zpět.';

  @override
  String get detailFactoryResetInitiated =>
      'Bylo zahájeno obnovení továrního nastavení';

  @override
  String get detailResetDevice => 'Resetovat zařízení';

  @override
  String detailResetOptionsFor(String device) {
    return 'Obnovit možnosti pro \"$device\"';
  }

  @override
  String get detailResetUserData => 'Resetovat uživatelská data';

  @override
  String get detailResetUserDataSubtitle => 'Vyčistí plány a pravidla';

  @override
  String get detailResetWifi => 'Obnovte nastavení WiFi';

  @override
  String get detailResetWifiSubtitle => 'Zařízení bude nutné znovu nastavit';

  @override
  String get widgetBrightness => 'Jas';

  @override
  String get widgetEnergyStatistics => 'Energetická statistika';

  @override
  String get widgetCurrentPower => 'Aktuální výkon';

  @override
  String get widgetToday => 'dnes';

  @override
  String get widgetTotal => 'Celkem';

  @override
  String get widgetOnTimeToday => 'Dnes včas';

  @override
  String get widgetTotalOnTime => 'Celkem včas';

  @override
  String get widgetStandby => 'Pohotovostní režim';

  @override
  String get widgetUnknown => 'Neznámý';

  @override
  String get widgetOpenNetwork => 'Otevřená síť';

  @override
  String get widgetWepInsecure => 'WEP (nezabezpečené)';
}
