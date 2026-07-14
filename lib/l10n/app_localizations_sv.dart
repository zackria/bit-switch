// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Enheten stöder inte denna åtgärd.';

  @override
  String get errInvalidArgs => 'Ogiltiga argument skickades till enheten.';

  @override
  String get errActionFailed =>
      'Enheten kunde inte utföra den begärda åtgärden.';

  @override
  String get errInvalidValue => 'Ett ogiltigt värde angavs.';

  @override
  String get errValueOutOfRange =>
      'Värdet ligger utanför det acceptabla intervallet.';

  @override
  String get errFeatureNotAvailable =>
      'Den här funktionen är inte tillgänglig på den här enheten.';

  @override
  String get errOutOfMemory => 'Enheten har slut på minne. Försök igen senare.';

  @override
  String get errManualActionRequired => 'Manuell åtgärd krävs på enheten.';

  @override
  String get errActionNotAuthorized => 'Denna åtgärd är inte auktoriserad.';

  @override
  String get errUnexpected => 'Ett oväntat fel inträffade. Försök igen.';

  @override
  String get errDeviceUnreachableOffline =>
      'Det går inte att nå enheten. Det kan vara offline eller på ett annat nätverk.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Begäran tog timeout efter $attempts-försök. Enheten kan vara offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Begäran tog timeout. Enheten kan vara offline.';

  @override
  String get errNoRouteToHost =>
      'Kan inte nå enheten. Kontrollera din WiFi-anslutning.';

  @override
  String get errHostUnreachable =>
      'Enheten går inte att nå. Se till att den är påslagen och ansluten till WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Det går inte att kommunicera med enheten efter $attempts-försök.';
  }

  @override
  String get errNetworkErrorComm =>
      'Nätverksfel: Det går inte att kommunicera med enheten.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Denna åtgärd är inte auktoriserad på enheten.';

  @override
  String get errDeviceServiceNotFound =>
      'Enhetstjänsten hittades inte. Enheten kan behöva en firmwareuppdatering.';

  @override
  String get errDeviceEncounteredError =>
      'Enheten stötte på ett fel vid bearbetning av begäran.';

  @override
  String get errDeviceInternalError => 'Enheten returnerade ett internt fel.';

  @override
  String get errDeviceTempUnavailable =>
      'Enheten är tillfälligt otillgänglig. Försök igen.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Enheten returnerade ett fel (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Det gick inte att använda $action på enheten.';
  }

  @override
  String get errDeviceReturnedError => 'Enheten returnerade ett fel.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation-driften tog timeout. Försök igen.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Driften tog timeout efter $seconds sekunder.';
  }

  @override
  String get errOperationTimedOut => 'Operationen tog timeout. Försök igen.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Aktivera lokalt nätverksbehörighet i Inställningar för att hitta enheter.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Kan inte komma åt det lokala nätverket. Vänligen aktivera lokalt nätverksbehörighet i Inställningar.';

  @override
  String get errCheckWifiConnection =>
      'Det gick inte att upptäcka enheter. Kontrollera din WiFi-anslutning.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Upptäckten avbröts. $count-enhet(er) hittades.';
  }

  @override
  String get errNoDevicesFound =>
      'Inga enheter hittades. Se till att enheterna är påslagna och anslutna till ditt nätverk.';

  @override
  String get actionGetDeviceState => 'få enhetsstatus';

  @override
  String get actionSetDeviceState => 'ställ in enhetens tillstånd';

  @override
  String get actionGetEnergyData => 'få energidata';

  @override
  String get actionScanNetworks => 'söka efter nätverk';

  @override
  String get actionConnectWifi => 'anslut till WiFi';

  @override
  String get actionCheckConnection => 'kontrollera anslutningsstatus';

  @override
  String get actionResetDevice => 'återställa enheten';

  @override
  String get actionPerform => 'utföra åtgärd';

  @override
  String get suggestTryRefreshing =>
      'Försök att uppdatera enhetslistan eller kontrollera om enheten svarar.';

  @override
  String get suggestEnsurePoweredOn =>
      'Se till att enheten är påslagen och ansluten till ditt WiFi-nätverk.';

  @override
  String get suggestMakeSureSameWifi =>
      'Se till att din telefon är ansluten till samma WiFi-nätverk som dina enheter.';

  @override
  String get suggestCheckPhysical =>
      'Kontrollera den fysiska enheten för knappar eller omkopplare som behöver åtgärdas.';

  @override
  String get suggestWaitAndTry => 'Vänta ett ögonblick och försök igen.';

  @override
  String get suggestDeviceBusy =>
      'Enheten kan vara upptagen. Försök igen om några sekunder.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Avbryt';

  @override
  String get commonClose => 'Stäng';

  @override
  String get commonDone => 'Klart';

  @override
  String get commonLater => 'Senare';

  @override
  String get commonRefresh => 'Uppdatera';

  @override
  String get commonTryAgain => 'Försök igen';

  @override
  String get commonOpenSettings => 'Öppna Inställningar';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Fixa';

  @override
  String get commonOn => 'På';

  @override
  String get commonOff => 'Av';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Namn';

  @override
  String get commonType => 'Typ';

  @override
  String get commonModel => 'Modell';

  @override
  String get commonManufacturer => 'Tillverkare';

  @override
  String get commonSerial => 'Seriell';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Värd';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Lösenord';

  @override
  String get commonUnknownWifi => 'Okänd Wi-Fi';

  @override
  String get commonNotConnected => 'Ej ansluten';

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
      other: '$seconds sekunder',
      one: '1 sekund',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Smart Switch';

  @override
  String get deviceTypeLightSwitch => 'Ljusbrytare';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Insiktsplugg';

  @override
  String get deviceTypeMotionSensor => 'Rörelsesensor';

  @override
  String get deviceTypeMaker => 'Maker';

  @override
  String get deviceTypeBridge => 'Bro';

  @override
  String get deviceTypeCoffeeMaker => 'Kaffebryggare';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Luftfuktare';

  @override
  String get deviceTypeOutdoorPlug => 'Utekontakt';

  @override
  String get deviceTypeUnknown => 'Okänd enhet';

  @override
  String get pairingStepGetStarted => 'Kom igång';

  @override
  String get pairingStepConnectToDevice => 'Anslut till enhet';

  @override
  String get pairingStepFindDevice => 'Hitta enhet';

  @override
  String get pairingStepSelectNetwork => 'Välj Nätverk';

  @override
  String get pairingStepConfiguring => 'Konfigurerar';

  @override
  String get pairingStepReconnect => 'Återanslut';

  @override
  String get pairingStepFinalizing => 'Slutför';

  @override
  String get pairingStepSuccess => 'Framgång';

  @override
  String get pairingStepError => 'Fel';

  @override
  String get homeToggleDebug => 'Växla felsökningsläge';

  @override
  String get homeRefreshDevices => 'Uppdatera enheter';

  @override
  String get homeSettings => 'Inställningar';

  @override
  String get homeDismiss => 'Avvisa';

  @override
  String get homeDiscovering => 'Upptäcker enheter...';

  @override
  String get homeNoDevices => 'Inga enheter hittades';

  @override
  String get homeScanDevices => 'Sök efter enheter';

  @override
  String get homeLookingForMore => 'Letar du efter fler enheter...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-enheter hittades',
      one: '1 enhet hittades',
      zero: 'Inga enheter hittades',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-enheter hittades, skannar...',
      one: '1 enhet hittades, skannar...',
      zero: 'Inga enheter hittades, skannar...',
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
  String get homeConnectedWifi => 'Ansluten till WiFi';

  @override
  String get homePermissionExplanation =>
      'Platsinformation används för att hitta dina Wi-Fi-detaljer. Lokal nätverksåtkomst låter dig styra dina smarta switchar och enheter.';

  @override
  String get homeDebugLog => 'Felsökningslogg';

  @override
  String get homeClear => 'Rensa';

  @override
  String get homeDebugEmpty =>
      'Tryck på Uppdatera för att starta upptäckten och se loggar...';

  @override
  String get homeProbeHint => 'IP:Port (t.ex. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sond';

  @override
  String get homeScanning => 'Skannar...';

  @override
  String get homeScanSubnet => 'Skanna hela undernätet (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plattform: $platform $version';
  }

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get settingsSectionNetwork => 'Nätverk';

  @override
  String get settingsSectionDeviceSetup => 'Enhetsinställningar';

  @override
  String get settingsSectionDiscovery => 'Upptäckt';

  @override
  String get settingsSectionAbout => 'Om';

  @override
  String get settingsSectionDebug => 'Felsök';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Tillstånd beviljat! WiFi namn: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Plats beviljad, men lokalt nätverkstillstånd krävs också. Kontrollera Inställningar.';

  @override
  String get settingsLocationRequired => 'Platstillstånd krävs';

  @override
  String get settingsLocationRequiredBody =>
      'För att visa ditt WiFi nätverksnamn kräver iOS platsbehörighet.';

  @override
  String get settingsRequiredPermissions => 'Nödvändiga behörigheter:';

  @override
  String get settingsPermissionList =>
      '1. Platstjänster (\"Medan du använder appen\")\n2. Lokalt nätverk';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Obs! Enhetsupptäckt fungerar utan platstillstånd. Denna behörighet används endast för att visa ditt WiFi-nätverksnamn.';

  @override
  String get settingsEnableLocation => 'Aktivera plats i Inställningar';

  @override
  String get settingsLocationDeniedBody =>
      'Platstillstånd nekades. Du kan aktivera det från systeminställningarna.';

  @override
  String get settingsStepsToEnable => 'Steg för att aktivera:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Öppna Inställningar\n2. Bläddra till \"Bit Switch\"\n3. Tryck på \"Plats\"\n4. Välj \"Medan du använder appen\"\n5. Gå tillbaka till den här appen och tryck på uppdateringsknappen';

  @override
  String get settingsLocationOnlyWifiName =>
      'Obs: Platsbehörighet behövs bara för att visa WiFi-namnet. Enhetsupptäckt fungerar utan det.';

  @override
  String get settingsAdditionalPermission => 'Ytterligare tillstånd behövs';

  @override
  String get settingsLocalNetworkBody =>
      'Lokalt nätverksbehörighet krävs för att upptäcka och styra Wemo-enheter.';

  @override
  String get settingsWifiNameNotVisible =>
      'Du har platsbehörighet, men WiFi-namnet är inte synligt än.';

  @override
  String get settingsPleaseEnable => 'Vänligen aktivera:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Gå till iPhone-inställningar\n2. Rulla ned till \"Bit Switch\"\n3. Aktivera \"Lokalt nätverk\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Lokalt nätverksbehörighet krävs för både enhetsupptäckt och WiFi-namnåtkomst på iOS.';

  @override
  String get settingsPairNewDevice => 'Para ihop ny enhet';

  @override
  String get settingsPairNewDeviceSubtitle => 'Konfigurera en ny Wemo-enhet';

  @override
  String get settingsDiscoveryTimeout => 'Discovery Timeout';

  @override
  String get settingsRequestTimeout => 'Begär timeout';

  @override
  String get settingsAutoRefresh => 'Automatisk uppdatering';

  @override
  String get settingsAutoRefreshOn =>
      'På - Enhetens tillstånd uppdateras automatiskt';

  @override
  String get settingsAutoRefreshOff => 'Av - Använd manuell uppdateringsknapp';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervall för automatisk uppdatering';

  @override
  String get settingsAbout => 'Om Bit Switch';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsNetworkDiagnostics => 'Nätverksdiagnostik';

  @override
  String get settingsShowDebug => 'Visa felsökningsläge';

  @override
  String get settingsShowDebugSubtitle =>
      'Visa felsökningskontroller och nätverksdiagnostik på startskärmen';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Visa felsökningsikonen på startskärmen för felsökning';

  @override
  String get settingsCurrentNetwork => 'Aktuellt nätverk';

  @override
  String get settingsNetworkAccessStatus => 'Nätverksåtkomststatus';

  @override
  String get settingsNetworkAccessGranted =>
      'Lokal nätverksåtkomst är tillgänglig';

  @override
  String get settingsNetworkAccessMissing =>
      'Ytterligare behörigheter kan krävas';

  @override
  String get settingsChecking => 'Kontrollerar...';

  @override
  String get settingsEnableLocalNetwork =>
      'Aktivera lokalt nätverk i Inställningar';

  @override
  String get settingsNotConnectedWifi => 'Ej ansluten till WiFi';

  @override
  String get settingsPermissionRequiredView => 'Tillstånd krävs för att se';

  @override
  String get settingsAllPermissionsGranted => 'Alla behörigheter har beviljats';

  @override
  String get settingsLocalNetworkNeeded => 'Lokalt nätverksbehörighet krävs';

  @override
  String get settingsLocationNeeded => 'Platsbehörighet krävs';

  @override
  String get settingsRefreshPermissions => 'Uppdatera behörigheter';

  @override
  String get settingsAboutWifiPermission => 'Om WiFi Namnbehörighet';

  @override
  String get settingsWifiPermissionExplanation =>
      'Ditt WiFi-namn hjälper till att bekräfta att din telefon och Wemo-enheter finns i samma nätverk.';

  @override
  String get settingsWifiPermissionIos =>
      'På iOS kräver visning av ditt WiFi-nätverksnamn platsbehörighet.';

  @override
  String get settingsImportant => 'Viktigt:';

  @override
  String get settingsPrivacyNote =>
      '• Din plats spåras aldrig\n• Ingen platsdata samlas in eller lagras';

  @override
  String get settingsWifiPermissionImportant =>
      '• Enhetsupptäckt fungerar UTAN denna behörighet\n• Detta behövs bara för att visa WiFi-namnet\n• Ingen platsdata samlas in eller lagras';

  @override
  String get settingsGrantPermission => 'Ge tillstånd';

  @override
  String get settingsHowLongScan => 'Hur länge ska du söka efter enheter:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Discovery timeout inställd på $seconds sekunder';
  }

  @override
  String get settingsHowLongResponses =>
      'Hur länge ska du vänta på enhetens svar:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Öka detta värde om du ser felmeddelandet \"Anslutning stängd\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Timeout för begäran inställd på $seconds sekunder';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Ställ in intervallet för automatisk tillståndsuppdatering:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Uppdateringsintervall inställt på $seconds sekunder';
  }

  @override
  String get settingsAboutTagline =>
      'En ren, privat lokal kontroller för dina Wemo-enheter.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch använder lokal nätverksupptäckt för att hitta och kontrollera enheter utan molnberoende.';

  @override
  String get settingsVersionValue => 'Version 1.0.1';

  @override
  String get settingsProtocol => 'Protokoll: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast-adress: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Enhetsportar: 49152-49159';

  @override
  String get settingsControlProtocol => 'Kontrollprotokoll: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tips: Se till att din enhet är på samma nätverk som dina Wemo-enheter och att UDP multicast inte är blockerad.';

  @override
  String get settingsDevicePaired => 'Enhet parad! Uppdaterar enhetslistan...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekunder per begäran';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Uppdaterar varje ${seconds}s';
  }

  @override
  String get pairingTitle => 'Para ihop ny enhet';

  @override
  String get pairingSetupTitle => 'Konfigurera din Wemo-enhet';

  @override
  String get pairingBeforeBegin =>
      'Innan du börjar, se till att din Wemo-enhet är i inställningsläge:';

  @override
  String get pairingPlugInTitle => 'Anslut din Wemo-enhet';

  @override
  String get pairingPlugInBody =>
      'Anslut den till strömmen och vänta tills den startar.';

  @override
  String get pairingBlinkingLedTitle => 'Leta efter den blinkande lysdioden';

  @override
  String get pairingBlinkingLedBody =>
      'En blinkande lysdiod indikerar att enheten är i inställningsläge.';

  @override
  String get pairingCheckWifiTitle => 'Sök efter nätverket WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Enheten kommer att sända ett nätverk som heter \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Om lysdioden lyser med fast sken, håll in återställningsknappen i 5 sekunder för att gå in i inställningsläget.';

  @override
  String get pairingStart => 'Börja ihopparning';

  @override
  String get pairingConnectWifiTitle => 'Anslut till enheten WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Öppna telefonens WiFi-inställningar och anslut till nätverket som börjar med \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Aktuellt nätverk';

  @override
  String get pairingConnectedToDevice => 'Ansluten till Wemo-enhet!';

  @override
  String get pairingOpenWifiSettings => 'Öppna WiFi Inställningar';

  @override
  String get pairingConnectedButton => 'Jag har anslutit';

  @override
  String get pairingLookingForDevice => 'Letar du efter din Wemo-enhet...';

  @override
  String get pairingManualIpPrompt => 'Eller ange enheten IP manuellt:';

  @override
  String get pairingDeviceIp => 'Enhetens IP-adress';

  @override
  String get pairingConnectToIp => 'Anslut till IP';

  @override
  String get pairingSelectHomeWifi => 'Välj ditt hemnätverk för WiFi:';

  @override
  String get pairingRefreshNetworks => 'Uppdatera nätverk';

  @override
  String get pairingIosScanLimitation =>
      'iOS förbjuder strängt tredjepartsappar att söka efter närliggande Wi-Fi-nätverk. Du kan behöva gå in i nätverket SSID manuellt.';

  @override
  String get pairingNoNetworks => 'Inga nätverk hittades';

  @override
  String get pairingScanAgain => 'Skanna igen';

  @override
  String get pairingWifiPassword => 'WiFi Lösenord';

  @override
  String get pairingConnect => 'Anslut';

  @override
  String get pairingEnterNetworkManually => 'Gå in i nätverket manuellt';

  @override
  String get pairingEnterNetworkName => 'Ange nätverksnamn:';

  @override
  String get pairingNetworkName => 'Nätverksnamn (SSID)';

  @override
  String get pairingUseNetwork => 'Använd detta nätverk';

  @override
  String get pairingConfiguringDevice => 'Konfigurerar enhet...';

  @override
  String get pairingConfiguringWait =>
      'Vänta medan enheten ansluter till ditt nätverk.';

  @override
  String get pairingReconnectTitle => 'Återanslut till ditt nätverk';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Din Wemo-enhet ansluter nu till \"$ssid\". Anslut din telefon till samma nätverk igen.';
  }

  @override
  String get pairingBackOnHome => 'Tillbaka på hemmanätverket!';

  @override
  String get pairingReconnectedButton => 'Jag har återanslutit';

  @override
  String get pairingFinalizingSetup => 'Slutför konfigurationen...';

  @override
  String get pairingSetupComplete => 'Installationen är klar!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Ansluten till $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Din enhet är nu konfigurerad och kommer att visas på startskärmen.';

  @override
  String get pairingSomethingWrong => 'Något gick fel';

  @override
  String get pairingStartOver => 'Börja om';

  @override
  String get pairingErrorOpenWifi =>
      'Det gick inte att öppna WiFi-inställningarna. Öppna dem manuellt.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Din telefon är fortfarande ansluten till \"$ssid\". Öppna WiFi-inställningarna, anslut till WeMo-enhetens nätverk och försök sedan igen.';
  }

  @override
  String get pairingLoadingLooking => 'Letar efter enhet...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Det gick inte att hitta WeMo-enheten på $ip. Se till att din telefon är ansluten till WeMo WiFi-nätverket och försök sedan igen. Du kan också ange enheten IP manuellt.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Fel vid upptäckt av enhet: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Ansluter till $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Ingen enhet hittades på $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Fel vid anslutning till $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Söker efter nätverk...';

  @override
  String pairingErrorScanning(String error) {
    return 'Kunde inte skanna nätverk: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Välj ett nätverk och ange lösenordet.';

  @override
  String get pairingLoadingSendingCredentials => 'Skickar nätverksuppgifter...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Väntar på att enheten ska ansluta...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Det gick inte att konfigurera nätverk: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Lösenordet är för kort. Kontrollera och försök igen.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Det gick inte att ansluta. Kontrollera lösenordet.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Anslutningen tog timeout. Försök igen.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Fel när installationen slutfördes: $error';
  }

  @override
  String get detailRefreshState => 'Uppdatera tillstånd';

  @override
  String get detailDeviceInfo => 'Enhetsinformation';

  @override
  String get detailAdvanced => 'Avancerat';

  @override
  String get detailWifiSetup => 'WiFi Inställning';

  @override
  String get detailReset => 'Återställ';

  @override
  String get detailUnreachable =>
      'Enheten går inte att nå. Kontrollera nätverksanslutningen.';

  @override
  String detailFailedToggle(String error) {
    return 'Det gick inte att växla: $error';
  }

  @override
  String get detailDeviceInformation => 'Enhetsinformation';

  @override
  String get detailPermissionScan =>
      'Tillstånd krävs för att skanna WiFi-nätverk.';

  @override
  String get detailScanFailedManual =>
      'Kunde inte skanna nätverk. Ange nätverksnamnet manuellt.';

  @override
  String get detailEnterNetworkNameError => 'Ange eller välj ett nätverksnamn';

  @override
  String get detailEnterPasswordError => 'Ange nätverkslösenordet';

  @override
  String get detailWifiSuccess => 'WiFi har konfigurerats framgångsrikt!';

  @override
  String get detailScanNetworks => 'Sök efter nätverk';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurera WiFi-nätverket för \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Tillgängliga nätverk';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS förbjuder strängt tredjepartsappar att söka efter närliggande Wi-Fi-nätverk. Ange ditt nätverksnamn manuellt nedan.';

  @override
  String get detailTapRefreshScan =>
      'Tryck på Uppdatera för att söka efter nätverk';

  @override
  String get detailEnterNetworkBelow => 'Ange ditt nätverksnamn nedan';

  @override
  String get detailNetworkCredentials => 'Nätverksuppgifter';

  @override
  String get detailConnecting => 'Ansluter till nätverk...';

  @override
  String get detailConnected => 'Ansluten lyckades!';

  @override
  String get detailPasswordShort => 'Lösenordet är för kort';

  @override
  String get detailAuthenticationFailed =>
      'Autentisering misslyckades - kontrollera lösenordet';

  @override
  String get detailConnectionFailed => 'Anslutning misslyckades';

  @override
  String get detailSelectReset => 'Välj vad som ska återställas';

  @override
  String get detailResetSchedulesWarning =>
      '• Alla scheman och automationsregler kommer att raderas';

  @override
  String get detailResetWifiWarning =>
      '• WiFi-inställningar kommer att raderas';

  @override
  String get detailSetupAgainWarning => '• Du måste ställa in enheten igen';

  @override
  String get detailUnreachableWarning =>
      '• Enheten kan tillfälligt bli oåtkomlig';

  @override
  String get detailConfirmReset => 'Bekräfta återställning';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Är du säker på att du vill återställa \"$device\"?';
  }

  @override
  String get detailThisWill => 'Detta kommer att:';

  @override
  String get detailCannotUndo => 'Denna åtgärd kan inte ångras.';

  @override
  String get detailYesReset => 'Ja, återställ';

  @override
  String get detailResetSuccess => 'Enheten har återställts';

  @override
  String get detailResetRemote => 'Enheten kommer att återställas på distans';

  @override
  String get detailResetFailed => 'Återställningen misslyckades';

  @override
  String get detailFactoryReset => 'Fabriksåterställning';

  @override
  String get detailFactoryResetWarning =>
      'Detta kommer att radera ALLA inställningar och återställa enheten till fabriksinställningarna. Du måste konfigurera enheten igen.\n\nDenna åtgärd kan inte ångras.';

  @override
  String get detailFactoryResetInitiated => 'Fabriksåterställning påbörjad';

  @override
  String get detailResetDevice => 'Återställ enhet';

  @override
  String detailResetOptionsFor(String device) {
    return 'Återställ alternativ för \"$device\"';
  }

  @override
  String get detailResetUserData => 'Återställ användardata';

  @override
  String get detailResetUserDataSubtitle => 'Rensar scheman och regler';

  @override
  String get detailResetWifi => 'Återställ WiFi-inställningar';

  @override
  String get detailResetWifiSubtitle => 'Enheten måste konfigureras igen';

  @override
  String get widgetBrightness => 'Ljusstyrka';

  @override
  String get widgetEnergyStatistics => 'Energistatistik';

  @override
  String get widgetCurrentPower => 'Aktuell effekt';

  @override
  String get widgetToday => 'Idag';

  @override
  String get widgetTotal => 'Totalt';

  @override
  String get widgetOnTimeToday => 'I tid idag';

  @override
  String get widgetTotalOnTime => 'Totalt i tid';

  @override
  String get widgetStandby => 'Standby';

  @override
  String get widgetUnknown => 'Okänd';

  @override
  String get widgetOpenNetwork => 'Öppet nätverk';

  @override
  String get widgetWepInsecure => 'WEP (osäker)';
}
