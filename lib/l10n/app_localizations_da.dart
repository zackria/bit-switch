// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Enheden understøtter ikke denne handling.';

  @override
  String get errInvalidArgs => 'Ugyldige argumenter blev sendt til enheden.';

  @override
  String get errActionFailed =>
      'Enheden kunne ikke udføre den anmodede handling.';

  @override
  String get errInvalidValue => 'Der blev angivet en ugyldig værdi.';

  @override
  String get errValueOutOfRange =>
      'Værdien er uden for det acceptable interval.';

  @override
  String get errFeatureNotAvailable =>
      'Denne funktion er ikke tilgængelig på denne enhed.';

  @override
  String get errOutOfMemory => 'Enheden mangler hukommelse. Prøv igen senere.';

  @override
  String get errManualActionRequired =>
      'Manuel handling er påkrævet på enheden.';

  @override
  String get errActionNotAuthorized => 'Denne handling er ikke godkendt.';

  @override
  String get errUnexpected => 'Der opstod en uventet fejl. Prøv venligst igen.';

  @override
  String get errDeviceUnreachableOffline =>
      'Kan ikke nå enheden. Det kan være offline eller på et andet netværk.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Anmodningen fik timeout efter $attempts-forsøg. Enheden er muligvis offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Anmodningen fik timeout. Enheden er muligvis offline.';

  @override
  String get errNoRouteToHost =>
      'Kan ikke nå enheden. Kontroller venligst din WiFi-forbindelse.';

  @override
  String get errHostUnreachable =>
      'Enheden er ikke tilgængelig. Sørg for, at den er tændt og tilsluttet WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Kan ikke kommunikere med enheden efter $attempts-forsøg.';
  }

  @override
  String get errNetworkErrorComm =>
      'Netværksfejl: Kan ikke kommunikere med enheden.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Denne handling er ikke godkendt på enheden.';

  @override
  String get errDeviceServiceNotFound =>
      'Enhedstjeneste blev ikke fundet. Enheden skal muligvis have en firmwareopdatering.';

  @override
  String get errDeviceEncounteredError =>
      'Enheden stødte på en fejl under behandling af anmodningen.';

  @override
  String get errDeviceInternalError => 'Enheden returnerede en intern fejl.';

  @override
  String get errDeviceTempUnavailable =>
      'Enheden er midlertidigt utilgængelig. Prøv venligst igen.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Enheden returnerede en fejl (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '$action mislykkedes på enheden.';
  }

  @override
  String get errDeviceReturnedError => 'Enheden returnerede en fejl.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation-driften fik timeout. Prøv venligst igen.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Drift timeout efter $seconds sekunder.';
  }

  @override
  String get errOperationTimedOut => 'Operation timeout. Prøv venligst igen.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Aktiver tilladelse til lokalt netværk i Indstillinger for at finde enheder.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Kan ikke få adgang til det lokale netværk. Aktiver venligst tilladelse til lokalt netværk i Indstillinger.';

  @override
  String get errCheckWifiConnection =>
      'Kan ikke finde enheder. Kontroller venligst din WiFi-forbindelse.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Opdagelsen afbrudt. $count-enhed(er) fundet.';
  }

  @override
  String get errNoDevicesFound =>
      'Ingen enheder fundet. Sørg for, at enheder er tændt og tilsluttet dit netværk.';

  @override
  String get actionGetDeviceState => 'få enhedstilstand';

  @override
  String get actionSetDeviceState => 'indstille enhedens tilstand';

  @override
  String get actionGetEnergyData => 'få energidata';

  @override
  String get actionScanNetworks => 'scan efter netværk';

  @override
  String get actionConnectWifi => 'tilslut til WiFi';

  @override
  String get actionCheckConnection => 'kontrollere forbindelsesstatus';

  @override
  String get actionResetDevice => 'nulstil enheden';

  @override
  String get actionPerform => 'udføre handling';

  @override
  String get suggestTryRefreshing =>
      'Prøv at opdatere enhedslisten, eller tjek, om enheden svarer.';

  @override
  String get suggestEnsurePoweredOn =>
      'Sørg for, at enheden er tændt og tilsluttet dit WiFi-netværk.';

  @override
  String get suggestMakeSureSameWifi =>
      'Sørg for, at din telefon er tilsluttet det samme WiFi-netværk som dine enheder.';

  @override
  String get suggestCheckPhysical =>
      'Tjek den fysiske enhed for knapper eller kontakter, der kræver opmærksomhed.';

  @override
  String get suggestWaitAndTry => 'Vent et øjeblik og prøv igen.';

  @override
  String get suggestDeviceBusy =>
      'Enheden kan være optaget. Prøv igen om et par sekunder.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Annuller';

  @override
  String get commonClose => 'Luk';

  @override
  String get commonDone => 'Færdig';

  @override
  String get commonLater => 'Senere';

  @override
  String get commonRefresh => 'Opdater';

  @override
  String get commonTryAgain => 'Prøv igen';

  @override
  String get commonOpenSettings => 'Åbn Indstillinger';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Fix';

  @override
  String get commonOn => 'På';

  @override
  String get commonOff => 'Fra';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Navn';

  @override
  String get commonType => 'Type';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Producent';

  @override
  String get commonSerial => 'Seriel';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'vært';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Adgangskode';

  @override
  String get commonUnknownWifi => 'Ukendt Wi-Fi';

  @override
  String get commonNotConnected => 'Ikke forbundet';

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
  String get deviceTypeLightSwitch => 'Lyskontakt';

  @override
  String get deviceTypeDimmer => 'Lysdæmper';

  @override
  String get deviceTypeInsightPlug => 'Indsigtsstik';

  @override
  String get deviceTypeMotionSensor => 'Bevægelsessensor';

  @override
  String get deviceTypeMaker => 'Maker';

  @override
  String get deviceTypeBridge => 'Bro';

  @override
  String get deviceTypeCoffeeMaker => 'Kaffemaskine';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Luftfugter';

  @override
  String get deviceTypeOutdoorPlug => 'Udendørs stik';

  @override
  String get deviceTypeUnknown => 'Ukendt enhed';

  @override
  String get pairingStepGetStarted => 'Kom i gang';

  @override
  String get pairingStepConnectToDevice => 'Opret forbindelse til enhed';

  @override
  String get pairingStepFindDevice => 'Find enhed';

  @override
  String get pairingStepSelectNetwork => 'Vælg Netværk';

  @override
  String get pairingStepConfiguring => 'Konfigurerer';

  @override
  String get pairingStepReconnect => 'Tilslut igen';

  @override
  String get pairingStepFinalizing => 'Afslutter';

  @override
  String get pairingStepSuccess => 'Succes';

  @override
  String get pairingStepError => 'Fejl';

  @override
  String get homeToggleDebug => 'Skift fejlretningstilstand';

  @override
  String get homeRefreshDevices => 'Opdater enheder';

  @override
  String get homeSettings => 'Indstillinger';

  @override
  String get homeDismiss => 'Afvis';

  @override
  String get homeDiscovering => 'Opdager enheder...';

  @override
  String get homeNoDevices => 'Ingen enheder fundet';

  @override
  String get homeScanDevices => 'Scan efter enheder';

  @override
  String get homeLookingForMore => 'Leder du efter flere enheder...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-enheder fundet',
      one: '1 enhed fundet',
      zero: 'Ingen enheder fundet',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-enheder fundet, scanner...',
      one: '1 enhed fundet, scanner...',
      zero: 'Ingen enheder fundet, scanner...',
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
  String get homeConnectedWifi => 'Tilsluttet WiFi';

  @override
  String get homePermissionExplanation =>
      'Placeringsoplysninger bruges til at finde dine Wi-Fi detaljer. Lokal netværksadgang giver dig mulighed for at styre dine smarte switche og enheder.';

  @override
  String get homeDebugLog => 'Debug log';

  @override
  String get homeClear => 'Ryd';

  @override
  String get homeDebugEmpty =>
      'Tryk på Opdater for at starte opdagelsen og se logfiler...';

  @override
  String get homeProbeHint => 'IP:Port (f.eks. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'sonde';

  @override
  String get homeScanning => 'Scanner...';

  @override
  String get homeScanSubnet => 'Scan hele undernettet (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platform: $platform $version';
  }

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get settingsSectionNetwork => 'Netværk';

  @override
  String get settingsSectionDeviceSetup => 'Enhedsopsætning';

  @override
  String get settingsSectionDiscovery => 'Opdagelse';

  @override
  String get settingsSectionAbout => 'Om';

  @override
  String get settingsSectionDebug => 'Debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Tilladelse givet! WiFi navn: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Placering er givet, men lokalnetværkstilladelse er også nødvendig. Tjek Indstillinger.';

  @override
  String get settingsLocationRequired => 'Placeringstilladelse påkrævet';

  @override
  String get settingsLocationRequiredBody =>
      'For at få vist dit WiFi-netværksnavn kræver iOS placeringstilladelse.';

  @override
  String get settingsRequiredPermissions => 'Nødvendige tilladelser:';

  @override
  String get settingsPermissionList =>
      '1. Placeringstjenester (\"Mens du bruger appen\")\n2. Lokalt netværk';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Bemærk: Enhedsopdagelse fungerer uden placeringstilladelse. Denne tilladelse bruges kun til at vise dit WiFi netværksnavn.';

  @override
  String get settingsEnableLocation => 'Aktiver Placering i Indstillinger';

  @override
  String get settingsLocationDeniedBody =>
      'Placeringstilladelse blev nægtet. Du kan aktivere det fra systemindstillingerne.';

  @override
  String get settingsStepsToEnable => 'Trin til at aktivere:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Åbn Indstillinger\n2. Rul til \"Bit Switch\"\n3. Tryk på \"Placering\"\n4. Vælg \"Mens du bruger appen\"\n5. Vend tilbage til denne app, og tryk på opdateringsknappen';

  @override
  String get settingsLocationOnlyWifiName =>
      'Bemærk: Placeringstilladelse er kun nødvendig for at vise WiFi-navnet. Enhedsopdagelse fungerer uden det.';

  @override
  String get settingsAdditionalPermission =>
      'Yderligere tilladelse er nødvendig';

  @override
  String get settingsLocalNetworkBody =>
      'Lokal netværkstilladelse er påkrævet for at finde og kontrollere Wemo-enheder.';

  @override
  String get settingsWifiNameNotVisible =>
      'Du har placeringstilladelse, men WiFi-navnet er ikke synligt endnu.';

  @override
  String get settingsPleaseEnable => 'Aktiver venligst:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Gå til iPhone-indstillinger\n2. Rul ned til \"Bit Switch\"\n3. Aktiver \"Lokalt netværk\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Lokal netværkstilladelse er påkrævet for både enhedsgenkendelse og WiFi-navneadgang på iOS.';

  @override
  String get settingsPairNewDevice => 'Par ny enhed';

  @override
  String get settingsPairNewDeviceSubtitle => 'Konfigurer en ny Wemo enhed';

  @override
  String get settingsDiscoveryTimeout => 'Discovery Timeout';

  @override
  String get settingsRequestTimeout => 'Anmod om timeout';

  @override
  String get settingsAutoRefresh => 'Automatisk opdatering';

  @override
  String get settingsAutoRefreshOn =>
      'Til - Enhedstilstande opdateres automatisk';

  @override
  String get settingsAutoRefreshOff => 'Fra - Brug manuel opdateringsknap';

  @override
  String get settingsAutoRefreshInterval =>
      'Interval for automatisk opdatering';

  @override
  String get settingsAbout => 'Om Bit Switch';

  @override
  String get settingsVersion => 'version';

  @override
  String get settingsNetworkDiagnostics => 'Netværksdiagnostik';

  @override
  String get settingsShowDebug => 'Vis fejlretningstilstand';

  @override
  String get settingsShowDebugSubtitle =>
      'Vis fejlfindingskontroller og netværksdiagnostik på startskærmen';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Vis fejlfindingsikonet på startskærmen for fejlfinding';

  @override
  String get settingsCurrentNetwork => 'Nuværende netværk';

  @override
  String get settingsNetworkAccessStatus => 'Netværksadgangsstatus';

  @override
  String get settingsNetworkAccessGranted =>
      'Lokal netværksadgang er tilgængelig';

  @override
  String get settingsNetworkAccessMissing =>
      'Yderligere tilladelser kan være påkrævet';

  @override
  String get settingsChecking => 'Tjekker...';

  @override
  String get settingsEnableLocalNetwork =>
      'Aktiver lokalt netværk i Indstillinger';

  @override
  String get settingsNotConnectedWifi => 'Ikke tilsluttet WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Der kræves tilladelse for at se';

  @override
  String get settingsAllPermissionsGranted => 'Alle tilladelser er givet';

  @override
  String get settingsLocalNetworkNeeded =>
      'Lokal netværkstilladelse er nødvendig';

  @override
  String get settingsLocationNeeded => 'Placeringstilladelse er nødvendig';

  @override
  String get settingsRefreshPermissions => 'Opdater tilladelser';

  @override
  String get settingsAboutWifiPermission => 'Om WiFi navnetilladelse';

  @override
  String get settingsWifiPermissionExplanation =>
      'Dit WiFi-navn hjælper med at bekræfte, at din telefon og Wemo-enheder er på det samme netværk.';

  @override
  String get settingsWifiPermissionIos =>
      'På iOS kræver visning af dit WiFi-netværksnavn placeringstilladelse.';

  @override
  String get settingsImportant => 'Vigtigt:';

  @override
  String get settingsPrivacyNote =>
      '• Din placering spores aldrig\n• Ingen lokalitetsdata indsamles eller gemmes';

  @override
  String get settingsWifiPermissionImportant =>
      '• Enhedsopdagelse fungerer UDEN denne tilladelse\n• Dette er kun nødvendigt for at vise WiFi-navnet\n• Ingen lokalitetsdata indsamles eller gemmes';

  @override
  String get settingsGrantPermission => 'Giv tilladelse';

  @override
  String get settingsHowLongScan => 'Hvor længe skal du scanne efter enheder:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Discovery timeout indstillet til $seconds sekunder';
  }

  @override
  String get settingsHowLongResponses =>
      'Hvor længe skal man vente på enhedens svar:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Forøg denne værdi, hvis du ser \"Forbindelse lukket\" fejl.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Anmodningstimeout indstillet til $seconds sekunder';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Indstil intervallet for automatisk tilstandsopdatering:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Opdateringsinterval indstillet til $seconds sekunder';
  }

  @override
  String get settingsAboutTagline =>
      'En ren, privat lokal controller til dine Wemo-enheder.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch bruger lokal netværksopdagelse til at finde og kontrollere enheder uden skyafhængigheder.';

  @override
  String get settingsVersionValue => 'Version 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast-adresse: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Enhedsporte: 49152-49159';

  @override
  String get settingsControlProtocol => 'Kontrolprotokol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tip: Sørg for, at din enhed er på det samme netværk som dine Wemo-enheder, og at UDP multicast ikke er blokeret.';

  @override
  String get settingsDevicePaired => 'Enhed parret! Opdaterer enhedslisten...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekunder pr. anmodning';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Opdater hver ${seconds}s';
  }

  @override
  String get pairingTitle => 'Par ny enhed';

  @override
  String get pairingSetupTitle => 'Konfigurer din Wemo-enhed';

  @override
  String get pairingBeforeBegin =>
      'Før du begynder, skal du sørge for, at din Wemo-enhed er i opsætningstilstand:';

  @override
  String get pairingPlugInTitle => 'Tilslut din Wemo enhed';

  @override
  String get pairingPlugInBody =>
      'Tilslut den til strøm og vent på, at den starter op.';

  @override
  String get pairingBlinkingLedTitle => 'Se efter den blinkende LED';

  @override
  String get pairingBlinkingLedBody =>
      'En blinkende LED angiver, at enheden er i opsætningstilstand.';

  @override
  String get pairingCheckWifiTitle => 'Tjek efter WiFi-netværket';

  @override
  String get pairingCheckWifiBody =>
      'Enheden vil udsende et netværk med navnet \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Hvis LED\'en lyser konstant, skal du holde nulstillingsknappen nede i 5 sekunder for at gå ind i opsætningstilstand.';

  @override
  String get pairingStart => 'Start parring';

  @override
  String get pairingConnectWifiTitle => 'Tilslut til enhed WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Åbn telefonens WiFi-indstillinger, og opret forbindelse til netværket, der starter med \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Nuværende netværk';

  @override
  String get pairingConnectedToDevice => 'Forbundet til Wemo enhed!';

  @override
  String get pairingOpenWifiSettings => 'Åbn WiFi Indstillinger';

  @override
  String get pairingConnectedButton => 'Jeg har tilsluttet mig';

  @override
  String get pairingLookingForDevice => 'Leder du efter din Wemo enhed...';

  @override
  String get pairingManualIpPrompt => 'Eller indtast enheden IP manuelt:';

  @override
  String get pairingDeviceIp => 'Enhedens IP-adresse';

  @override
  String get pairingConnectToIp => 'Tilslut til IP';

  @override
  String get pairingSelectHomeWifi => 'Vælg dit hjemmenetværk for WiFi:';

  @override
  String get pairingRefreshNetworks => 'Opdater netværk';

  @override
  String get pairingIosScanLimitation =>
      'iOS forbyder strengt tredjepartsapps at scanne efter Wi-Fi-netværk i nærheden. Du skal muligvis indtaste netværket SSID manuelt.';

  @override
  String get pairingNoNetworks => 'Ingen netværk fundet';

  @override
  String get pairingScanAgain => 'Scan igen';

  @override
  String get pairingWifiPassword => 'WiFi Adgangskode';

  @override
  String get pairingConnect => 'Forbind';

  @override
  String get pairingEnterNetworkManually => 'Indtast netværket manuelt';

  @override
  String get pairingEnterNetworkName => 'Indtast netværksnavn:';

  @override
  String get pairingNetworkName => 'Netværksnavn (SSID)';

  @override
  String get pairingUseNetwork => 'Brug dette netværk';

  @override
  String get pairingConfiguringDevice => 'Konfigurerer enhed...';

  @override
  String get pairingConfiguringWait =>
      'Vent venligst, mens enheden opretter forbindelse til dit netværk.';

  @override
  String get pairingReconnectTitle => 'Genopret forbindelse til dit netværk';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Din Wemo-enhed er nu ved at oprette forbindelse til \"$ssid\". Tilslut venligst din telefon til det samme netværk igen.';
  }

  @override
  String get pairingBackOnHome => 'Tilbage på hjemmenetværket!';

  @override
  String get pairingReconnectedButton => 'Jeg har oprettet forbindelse igen';

  @override
  String get pairingFinalizingSetup => 'Afslutter opsætning...';

  @override
  String get pairingSetupComplete => 'Opsætning fuldført!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Tilsluttet $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Din enhed er nu konfigureret og vises på startskærmen.';

  @override
  String get pairingSomethingWrong => 'Noget gik galt';

  @override
  String get pairingStartOver => 'Start forfra';

  @override
  String get pairingErrorOpenWifi =>
      'Kunne ikke åbne WiFi-indstillinger. Åbn dem venligst manuelt.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Din telefon er stadig forbundet til \"$ssid\". Åbn venligst WiFi-indstillinger, opret forbindelse til WeMo-enhedsnetværket, og prøv derefter igen.';
  }

  @override
  String get pairingLoadingLooking => 'Leder efter enhed...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Kunne ikke finde WeMo-enheden på $ip. Sørg for, at din telefon er tilsluttet WeMo WiFi-netværket, og prøv derefter igen. Du kan også indtaste enheden IP manuelt.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Fejl ved opdagelse af enhed: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Opretter forbindelse til $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Ingen enhed fundet på $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Fejl ved forbindelse til $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Scanner efter netværk...';

  @override
  String pairingErrorScanning(String error) {
    return 'Kunne ikke scanne netværk: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Vælg et netværk og indtast adgangskoden.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Sender netværkslegitimationsoplysninger...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Venter på, at enheden opretter forbindelse...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Kunne ikke konfigurere netværk: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Adgangskoden er for kort. Tjek venligst og prøv igen.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Kunne ikke oprette forbindelse. Tjek venligst adgangskoden.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Forbindelsen fik timeout. Prøv venligst igen.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Fejl ved færdiggørelse af opsætning: $error';
  }

  @override
  String get detailRefreshState => 'Opdater tilstand';

  @override
  String get detailDeviceInfo => 'Enhedsoplysninger';

  @override
  String get detailAdvanced => 'Avanceret';

  @override
  String get detailWifiSetup => 'WiFi opsætning';

  @override
  String get detailReset => 'Nulstil';

  @override
  String get detailUnreachable =>
      'Enheden er ikke tilgængelig. Tjek netværksforbindelsen.';

  @override
  String detailFailedToggle(String error) {
    return 'Kunne ikke skifte: $error';
  }

  @override
  String get detailDeviceInformation => 'Enhedsoplysninger';

  @override
  String get detailPermissionScan =>
      'Der kræves tilladelse til at scanne WiFi-netværk.';

  @override
  String get detailScanFailedManual =>
      'Kunne ikke scanne netværk. Indtast netværksnavnet manuelt.';

  @override
  String get detailEnterNetworkNameError =>
      'Indtast eller vælg et netværksnavn';

  @override
  String get detailEnterPasswordError =>
      'Indtast venligst netværksadgangskoden';

  @override
  String get detailWifiSuccess => 'WiFi konfigureret med succes!';

  @override
  String get detailScanNetworks => 'Scan efter netværk';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurer WiFi netværket til \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Tilgængelige netværk';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS forbyder strengt tredjepartsapps at scanne efter Wi-Fi-netværk i nærheden. Indtast dit netværksnavn manuelt nedenfor.';

  @override
  String get detailTapRefreshScan =>
      'Tryk på Opdater for at scanne efter netværk';

  @override
  String get detailEnterNetworkBelow => 'Indtast dit netværksnavn nedenfor';

  @override
  String get detailNetworkCredentials => 'Netværksoplysninger';

  @override
  String get detailConnecting => 'Opretter forbindelse til netværk...';

  @override
  String get detailConnected => 'Forbundet med succes!';

  @override
  String get detailPasswordShort => 'Adgangskoden er for kort';

  @override
  String get detailAuthenticationFailed =>
      'Godkendelse mislykkedes - tjek adgangskode';

  @override
  String get detailConnectionFailed => 'Forbindelsen mislykkedes';

  @override
  String get detailSelectReset => 'Vælg venligst hvad der skal nulstilles';

  @override
  String get detailResetSchedulesWarning =>
      '• Alle tidsplaner og automatiseringsregler vil blive slettet';

  @override
  String get detailResetWifiWarning => '• WiFi-indstillinger vil blive slettet';

  @override
  String get detailSetupAgainWarning => '• Du skal konfigurere enheden igen';

  @override
  String get detailUnreachableWarning =>
      '• Enheden kan blive midlertidigt utilgængelig';

  @override
  String get detailConfirmReset => 'Bekræft nulstilling';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Er du sikker på, at du vil nulstille \"$device\"?';
  }

  @override
  String get detailThisWill => 'Dette vil:';

  @override
  String get detailCannotUndo => 'Denne handling kan ikke fortrydes.';

  @override
  String get detailYesReset => 'Ja, nulstil';

  @override
  String get detailResetSuccess => 'Enheden blev nulstillet';

  @override
  String get detailResetRemote => 'Enheden nulstilles eksternt';

  @override
  String get detailResetFailed => 'Nulstilling mislykkedes';

  @override
  String get detailFactoryReset => 'Fabriksindstilling';

  @override
  String get detailFactoryResetWarning =>
      'Dette vil slette ALLE indstillinger og gendanne enheden til fabriksindstillingerne. Du skal konfigurere enheden igen.\n\nDenne handling kan ikke fortrydes.';

  @override
  String get detailFactoryResetInitiated => 'Fabriksindstilling påbegyndt';

  @override
  String get detailResetDevice => 'Nulstil enhed';

  @override
  String detailResetOptionsFor(String device) {
    return 'Nulstil muligheder for \"$device\"';
  }

  @override
  String get detailResetUserData => 'Nulstil brugerdata';

  @override
  String get detailResetUserDataSubtitle => 'Rydder tidsplaner og regler';

  @override
  String get detailResetWifi => 'Nulstil WiFi-indstillinger';

  @override
  String get detailResetWifiSubtitle => 'Enheden skal konfigureres igen';

  @override
  String get widgetBrightness => 'Lysstyrke';

  @override
  String get widgetEnergyStatistics => 'Energistatistik';

  @override
  String get widgetCurrentPower => 'Nuværende strøm';

  @override
  String get widgetToday => 'I dag';

  @override
  String get widgetTotal => 'I alt';

  @override
  String get widgetOnTimeToday => 'Til tiden i dag';

  @override
  String get widgetTotalOnTime => 'Total til tiden';

  @override
  String get widgetStandby => 'Standby';

  @override
  String get widgetUnknown => 'Ukendt';

  @override
  String get widgetOpenNetwork => 'Åbent netværk';

  @override
  String get widgetWepInsecure => 'WEP (usikker)';
}
