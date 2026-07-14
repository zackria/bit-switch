// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Enheten støtter ikke denne handlingen.';

  @override
  String get errInvalidArgs => 'Ugyldige argumenter ble sendt til enheten.';

  @override
  String get errActionFailed =>
      'Enheten kunne ikke utføre den forespurte handlingen.';

  @override
  String get errInvalidValue => 'En ugyldig verdi ble oppgitt.';

  @override
  String get errValueOutOfRange => 'Verdien er utenfor det akseptable området.';

  @override
  String get errFeatureNotAvailable =>
      'Denne funksjonen er ikke tilgjengelig på denne enheten.';

  @override
  String get errOutOfMemory => 'Enheten er tom for minne. Prøv igjen senere.';

  @override
  String get errManualActionRequired =>
      'Manuell handling er nødvendig på enheten.';

  @override
  String get errActionNotAuthorized => 'Denne handlingen er ikke autorisert.';

  @override
  String get errUnexpected =>
      'Det oppstod en uventet feil. Vennligst prøv igjen.';

  @override
  String get errDeviceUnreachableOffline =>
      'Kan ikke nå enheten. Det kan være frakoblet eller på et annet nettverk.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Forespørselen ble tidsavbrutt etter $attempts-forsøk. Enheten kan være frakoblet.';
  }

  @override
  String get errRequestTimedOut =>
      'Forespørselen ble tidsavbrutt. Enheten kan være frakoblet.';

  @override
  String get errNoRouteToHost =>
      'Kan ikke nå enheten. Vennligst sjekk din WiFi-tilkobling.';

  @override
  String get errHostUnreachable =>
      'Enheten er utilgjengelig. Sørg for at den er slått på og koblet til WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Kan ikke kommunisere med enheten etter $attempts-forsøk.';
  }

  @override
  String get errNetworkErrorComm =>
      'Nettverksfeil: Kan ikke kommunisere med enheten.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Denne handlingen er ikke autorisert på enheten.';

  @override
  String get errDeviceServiceNotFound =>
      'Finner ikke enhetstjenesten. Enheten trenger kanskje en fastvareoppdatering.';

  @override
  String get errDeviceEncounteredError =>
      'Enheten oppdaget en feil under behandling av forespørselen.';

  @override
  String get errDeviceInternalError => 'Enheten returnerte en intern feil.';

  @override
  String get errDeviceTempUnavailable =>
      'Enheten er midlertidig utilgjengelig. Vennligst prøv igjen.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Enheten returnerte en feil (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Kunne ikke bruke $action på enheten.';
  }

  @override
  String get errDeviceReturnedError => 'Enheten returnerte en feil.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation-operasjonen ble tidsavbrutt. Vennligst prøv igjen.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Driften ble tidsavbrutt etter $seconds sekunder.';
  }

  @override
  String get errOperationTimedOut =>
      'Driften ble tidsavbrutt. Vennligst prøv igjen.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Aktiver tillatelse til lokalt nettverk i Innstillinger for å finne enheter.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Får ikke tilgang til lokalt nettverk. Aktiver tillatelse for lokalt nettverk i Innstillinger.';

  @override
  String get errCheckWifiConnection =>
      'Kan ikke oppdage enheter. Vennligst sjekk din WiFi-tilkobling.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Oppdagelsen ble avbrutt. $count-enhet(er) funnet.';
  }

  @override
  String get errNoDevicesFound =>
      'Ingen enheter funnet. Sørg for at enhetene er slått på og koblet til nettverket ditt.';

  @override
  String get actionGetDeviceState => 'få enhetsstatus';

  @override
  String get actionSetDeviceState => 'angi enhetstilstand';

  @override
  String get actionGetEnergyData => 'få energidata';

  @override
  String get actionScanNetworks => 'skanne etter nettverk';

  @override
  String get actionConnectWifi => 'koble til WiFi';

  @override
  String get actionCheckConnection => 'sjekk tilkoblingsstatus';

  @override
  String get actionResetDevice => 'tilbakestill enheten';

  @override
  String get actionPerform => 'utføre handling';

  @override
  String get suggestTryRefreshing =>
      'Prøv å oppdatere enhetslisten eller sjekk om enheten svarer.';

  @override
  String get suggestEnsurePoweredOn =>
      'Sørg for at enheten er slått på og koblet til ditt WiFi-nettverk.';

  @override
  String get suggestMakeSureSameWifi =>
      'Sørg for at telefonen er koblet til det samme WiFi-nettverket som enhetene dine.';

  @override
  String get suggestCheckPhysical =>
      'Sjekk den fysiske enheten for eventuelle knapper eller brytere som trenger oppmerksomhet.';

  @override
  String get suggestWaitAndTry => 'Vent et øyeblikk og prøv igjen.';

  @override
  String get suggestDeviceBusy =>
      'Enheten kan være opptatt. Prøv igjen om noen sekunder.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Avbryt';

  @override
  String get commonClose => 'Lukk';

  @override
  String get commonDone => 'Ferdig';

  @override
  String get commonLater => 'Senere';

  @override
  String get commonRefresh => 'Oppdater';

  @override
  String get commonTryAgain => 'Prøv igjen';

  @override
  String get commonOpenSettings => 'Åpne Innstillinger';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Fix';

  @override
  String get commonOn => 'På';

  @override
  String get commonOff => 'Av';

  @override
  String get commonOffline => 'Frakoblet';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Navn';

  @override
  String get commonType => 'Type';

  @override
  String get commonModel => 'Modell';

  @override
  String get commonManufacturer => 'Produsent';

  @override
  String get commonSerial => 'Seriell';

  @override
  String get commonFirmware => 'Fastvare';

  @override
  String get commonHost => 'Vert';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Passord';

  @override
  String get commonUnknownWifi => 'Ukjent Wi-Fi';

  @override
  String get commonNotConnected => 'Ikke tilkoblet';

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
  String get deviceTypeLightSwitch => 'Lysbryter';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Bevegelsessensor';

  @override
  String get deviceTypeMaker => 'Maker';

  @override
  String get deviceTypeBridge => 'Bro';

  @override
  String get deviceTypeCoffeeMaker => 'Kaffetrakter';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Luftfukter';

  @override
  String get deviceTypeOutdoorPlug => 'Utendørs plugg';

  @override
  String get deviceTypeUnknown => 'Ukjent enhet';

  @override
  String get pairingStepGetStarted => 'Kom i gang';

  @override
  String get pairingStepConnectToDevice => 'Koble til enheten';

  @override
  String get pairingStepFindDevice => 'Finn enhet';

  @override
  String get pairingStepSelectNetwork => 'Velg Nettverk';

  @override
  String get pairingStepConfiguring => 'Konfigurerer';

  @override
  String get pairingStepReconnect => 'Koble til på nytt';

  @override
  String get pairingStepFinalizing => 'Fullføres';

  @override
  String get pairingStepSuccess => 'Suksess';

  @override
  String get pairingStepError => 'Feil';

  @override
  String get homeToggleDebug => 'Bytt feilsøkingsmodus';

  @override
  String get homeRefreshDevices => 'Oppdater enheter';

  @override
  String get homeSettings => 'Innstillinger';

  @override
  String get homeDismiss => 'Avvis';

  @override
  String get homeDiscovering => 'Oppdager enheter...';

  @override
  String get homeNoDevices => 'Ingen enheter funnet';

  @override
  String get homeScanDevices => 'Skann etter enheter';

  @override
  String get homeLookingForMore => 'Ser du etter flere enheter...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-enheter funnet',
      one: '1 enhet funnet',
      zero: 'Ingen enheter funnet',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-enheter funnet, skanner...',
      one: '1 enhet funnet, skanner...',
      zero: 'Finner ingen enheter, skanner...',
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
  String get homeConnectedWifi => 'Koblet til WiFi';

  @override
  String get homePermissionExplanation =>
      'Plasseringsinformasjon brukes til å finne Wi-Fi-detaljene dine. Lokal nettverkstilgang lar deg kontrollere smartbryterne og enhetene dine.';

  @override
  String get homeDebugLog => 'Feilsøkingslogg';

  @override
  String get homeClear => 'Klart';

  @override
  String get homeDebugEmpty =>
      'Trykk på oppdater for å starte oppdagelsen og se logger...';

  @override
  String get homeProbeHint => 'IP:Port (f.eks. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Probe';

  @override
  String get homeScanning => 'Skanner...';

  @override
  String get homeScanSubnet => 'Skann hele undernettet (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plattform: $platform $version';
  }

  @override
  String get settingsTitle => 'Innstillinger';

  @override
  String get settingsSectionNetwork => 'Nettverk';

  @override
  String get settingsSectionDeviceSetup => 'Enhetsoppsett';

  @override
  String get settingsSectionDiscovery => 'Oppdagelse';

  @override
  String get settingsSectionAbout => 'Om';

  @override
  String get settingsSectionDebug => 'Feilsøk';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Tillatelse gitt! WiFi navn: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Plassering gitt, men lokalnettverkstillatelse er også nødvendig. Sjekk Innstillinger.';

  @override
  String get settingsLocationRequired => 'Plasseringstillatelse kreves';

  @override
  String get settingsLocationRequiredBody =>
      'For å vise nettverksnavnet ditt på WiFi, krever iOS posisjonstillatelse.';

  @override
  String get settingsRequiredPermissions => 'Nødvendige tillatelser:';

  @override
  String get settingsPermissionList =>
      '1. Stedstjenester (\"Mens du bruker appen\")\n2. Lokalt nettverk';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Merk: Enhetsoppdaging fungerer uten plasseringstillatelse. Denne tillatelsen brukes kun til å vise nettverksnavnet ditt på WiFi.';

  @override
  String get settingsEnableLocation => 'Aktiver plassering i Innstillinger';

  @override
  String get settingsLocationDeniedBody =>
      'Plasseringstillatelse ble nektet. Du kan aktivere det fra systeminnstillingene.';

  @override
  String get settingsStepsToEnable => 'Trinn for å aktivere:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Åpne Innstillinger\n2. Rull til \"Bit Switch\"\n3. Trykk på \"Plassering\"\n4. Velg \"Mens du bruker appen\"\n5. Gå tilbake til denne appen og trykk på oppdateringsknappen';

  @override
  String get settingsLocationOnlyWifiName =>
      'Merk: Plasseringstillatelse er bare nødvendig for å vise WiFi-navnet. Enhetsoppdagelse fungerer uten den.';

  @override
  String get settingsAdditionalPermission => 'Ekstra tillatelse nødvendig';

  @override
  String get settingsLocalNetworkBody =>
      'Lokalt nettverkstillatelse kreves for å oppdage og kontrollere Wemo-enheter.';

  @override
  String get settingsWifiNameNotVisible =>
      'Du har plasseringstillatelse, men WiFi-navnet er ikke synlig ennå.';

  @override
  String get settingsPleaseEnable => 'Vennligst aktiver:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Gå til iPhone-innstillinger\n2. Rull ned til \"Bit Switch\"\n3. Aktiver \"Lokalt nettverk\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Lokalt nettverkstillatelse kreves for både enhetsoppdagelse og WiFi-navnetilgang på iOS.';

  @override
  String get settingsPairNewDevice => 'Par ny enhet';

  @override
  String get settingsPairNewDeviceSubtitle => 'Sett opp en ny Wemo-enhet';

  @override
  String get settingsDiscoveryTimeout => 'Tidsavbrudd for oppdagelse';

  @override
  String get settingsRequestTimeout => 'Be om tidsavbrudd';

  @override
  String get settingsAutoRefresh => 'Automatisk oppdatering';

  @override
  String get settingsAutoRefreshOn =>
      'På – Enhetstilstander oppdateres automatisk';

  @override
  String get settingsAutoRefreshOff => 'Av - Bruk manuell oppdateringsknapp';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervall for automatisk oppdatering';

  @override
  String get settingsAbout => 'Om Bit Switch';

  @override
  String get settingsVersion => 'Versjon';

  @override
  String get settingsNetworkDiagnostics => 'Nettverksdiagnostikk';

  @override
  String get settingsShowDebug => 'Vis feilsøkingsmodus';

  @override
  String get settingsShowDebugSubtitle =>
      'Vis feilsøkingskontroller og nettverksdiagnostikk på startskjermen';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Vis feilsøkingsikonet på startskjermen for feilsøking';

  @override
  String get settingsCurrentNetwork => 'Nåværende nettverk';

  @override
  String get settingsNetworkAccessStatus => 'Nettverkstilgangsstatus';

  @override
  String get settingsNetworkAccessGranted =>
      'Lokal nettverkstilgang er tilgjengelig';

  @override
  String get settingsNetworkAccessMissing =>
      'Ytterligere tillatelser kan være nødvendig';

  @override
  String get settingsChecking => 'Sjekker...';

  @override
  String get settingsEnableLocalNetwork =>
      'Aktiver lokalt nettverk i Innstillinger';

  @override
  String get settingsNotConnectedWifi => 'Ikke koblet til WiFi';

  @override
  String get settingsPermissionRequiredView => 'Tillatelse kreves for å se';

  @override
  String get settingsAllPermissionsGranted => 'Alle tillatelser gitt';

  @override
  String get settingsLocalNetworkNeeded => 'Lokal nettverkstillatelse kreves';

  @override
  String get settingsLocationNeeded => 'Plasseringstillatelse kreves';

  @override
  String get settingsRefreshPermissions => 'Oppdater tillatelser';

  @override
  String get settingsAboutWifiPermission => 'Om WiFi navnetillatelse';

  @override
  String get settingsWifiPermissionExplanation =>
      'Ditt WiFi-navn hjelper deg med å bekrefte at telefonen og Wemo-enhetene er på samme nettverk.';

  @override
  String get settingsWifiPermissionIos =>
      'På iOS krever posisjonstillatelse for å vise nettverksnavnet ditt på WiFi.';

  @override
  String get settingsImportant => 'Viktig:';

  @override
  String get settingsPrivacyNote =>
      '• Posisjonen din blir aldri sporet\n• Ingen plasseringsdata samles inn eller lagres';

  @override
  String get settingsWifiPermissionImportant =>
      '• Enhetsoppdaging fungerer UTEN denne tillatelsen\n• Dette er kun nødvendig for å vise WiFi-navnet\n• Ingen plasseringsdata samles inn eller lagres';

  @override
  String get settingsGrantPermission => 'Gi tillatelse';

  @override
  String get settingsHowLongScan => 'Hvor lenge du skal skanne etter enheter:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Tidsavbrudd for oppdagelse satt til $seconds sekunder';
  }

  @override
  String get settingsHowLongResponses =>
      'Hvor lenge skal du vente på enhetssvar:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Øk denne verdien hvis du ser \"Tilkobling stengt\"-feil.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Tidsavbrudd for forespørsel satt til $seconds sekunder';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Angi intervallet for automatisk statusoppdatering:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Oppdateringsintervall satt til $seconds sekunder';
  }

  @override
  String get settingsAboutTagline =>
      'En ren, privat lokal kontroller for Wemo-enhetene dine.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch bruker lokal nettverksoppdagelse for å finne og kontrollere enheter uten skyavhengigheter.';

  @override
  String get settingsVersionValue => 'Versjon 1.0.1';

  @override
  String get settingsProtocol => 'Protokoll: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast-adresse: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Enhetsporter: 49152-49159';

  @override
  String get settingsControlProtocol => 'Kontrollprotokoll: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tips: Sørg for at enheten din er på samme nettverk som Wemo-enhetene og at UDP multicast ikke er blokkert.';

  @override
  String get settingsDevicePaired => 'Enhet paret! Oppdaterer enhetslisten ...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekunder per forespørsel';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Oppdaterer hver ${seconds}s';
  }

  @override
  String get pairingTitle => 'Par ny enhet';

  @override
  String get pairingSetupTitle => 'Sett opp Wemo-enheten';

  @override
  String get pairingBeforeBegin =>
      'Før du begynner, sørg for at Wemo-enheten er i oppsettmodus:';

  @override
  String get pairingPlugInTitle => 'Koble til din Wemo-enhet';

  @override
  String get pairingPlugInBody =>
      'Koble den til strøm og vent til den starter opp.';

  @override
  String get pairingBlinkingLedTitle => 'Se etter den blinkende LED-en';

  @override
  String get pairingBlinkingLedBody =>
      'En blinkende LED indikerer at enheten er i oppsettmodus.';

  @override
  String get pairingCheckWifiTitle => 'Se etter WiFi-nettverket';

  @override
  String get pairingCheckWifiBody =>
      'Enheten vil kringkaste et nettverk kalt \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Hvis LED-lampen lyser konstant, hold tilbakestillingsknappen i 5 sekunder for å gå inn i oppsettmodus.';

  @override
  String get pairingStart => 'Start sammenkoblingen';

  @override
  String get pairingConnectWifiTitle => 'Koble til enheten WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Åpne telefonens WiFi-innstillinger og koble til nettverket som starter med \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Nåværende nettverk';

  @override
  String get pairingConnectedToDevice => 'Koblet til Wemo-enhet!';

  @override
  String get pairingOpenWifiSettings => 'Åpne WiFi Innstillinger';

  @override
  String get pairingConnectedButton => 'Jeg har koblet til';

  @override
  String get pairingLookingForDevice => 'Ser du etter din Wemo-enhet...';

  @override
  String get pairingManualIpPrompt => 'Eller skriv inn enheten IP manuelt:';

  @override
  String get pairingDeviceIp => 'Enhets IP-adresse';

  @override
  String get pairingConnectToIp => 'Koble til IP';

  @override
  String get pairingSelectHomeWifi => 'Velg ditt hjemmenettverk for WiFi:';

  @override
  String get pairingRefreshNetworks => 'Oppdater nettverk';

  @override
  String get pairingIosScanLimitation =>
      'iOS forbyr strengt tredjepartsapper å skanne etter Wi-Fi-nettverk i nærheten. Du må kanskje gå inn i nettverket SSID manuelt.';

  @override
  String get pairingNoNetworks => 'Ingen nettverk funnet';

  @override
  String get pairingScanAgain => 'Skann på nytt';

  @override
  String get pairingWifiPassword => 'WiFi Passord';

  @override
  String get pairingConnect => 'Koble til';

  @override
  String get pairingEnterNetworkManually => 'Gå inn i nettverket manuelt';

  @override
  String get pairingEnterNetworkName => 'Skriv inn nettverksnavn:';

  @override
  String get pairingNetworkName => 'Nettverksnavn (SSID)';

  @override
  String get pairingUseNetwork => 'Bruk dette nettverket';

  @override
  String get pairingConfiguringDevice => 'Konfigurerer enhet ...';

  @override
  String get pairingConfiguringWait =>
      'Vent mens enheten kobles til nettverket ditt.';

  @override
  String get pairingReconnectTitle => 'Koble til nettverket på nytt';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Wemo-enheten din kobles nå til \"$ssid\". Koble telefonen til det samme nettverket på nytt.';
  }

  @override
  String get pairingBackOnHome => 'Tilbake på hjemmenettverket!';

  @override
  String get pairingReconnectedButton => 'Jeg har koblet til igjen';

  @override
  String get pairingFinalizingSetup => 'Fullfører oppsettet...';

  @override
  String get pairingSetupComplete => 'Oppsettet er fullført!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Koblet til $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Enheten din er nå konfigurert og vises på startskjermen.';

  @override
  String get pairingSomethingWrong => 'Noe gikk galt';

  @override
  String get pairingStartOver => 'Start på nytt';

  @override
  String get pairingErrorOpenWifi =>
      'Kunne ikke åpne WiFi-innstillingene. Vennligst åpne dem manuelt.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Telefonen din er fortsatt koblet til \"$ssid\". Åpne WiFi-innstillingene, koble til WeMo-enhetsnettverket, og prøv på nytt.';
  }

  @override
  String get pairingLoadingLooking => 'Ser etter enhet...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Kunne ikke finne WeMo-enheten på $ip. Sørg for at telefonen er koblet til WeMo WiFi-nettverket, og prøv på nytt. Du kan også angi enheten IP manuelt.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Feil ved oppdagelse av enhet: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Kobler til $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Ingen enhet funnet på $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Feil ved tilkobling til $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Skanner etter nettverk...';

  @override
  String pairingErrorScanning(String error) {
    return 'Kunne ikke skanne nettverk: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Velg et nettverk og skriv inn passordet.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Sender nettverkslegitimasjon ...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Venter på at enheten skal kobles til ...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Kunne ikke konfigurere nettverk: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Passordet er for kort. Vennligst sjekk og prøv igjen.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Kunne ikke koble til. Vennligst sjekk passordet.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Tilkoblingen ble tidsavbrutt. Vennligst prøv igjen.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Feil ved ferdigstillelse av oppsett: $error';
  }

  @override
  String get detailRefreshState => 'Oppdater tilstand';

  @override
  String get detailDeviceInfo => 'Enhetsinformasjon';

  @override
  String get detailAdvanced => 'Avansert';

  @override
  String get detailWifiSetup => 'WiFi oppsett';

  @override
  String get detailReset => 'Tilbakestill';

  @override
  String get detailUnreachable =>
      'Enheten er utilgjengelig. Sjekk nettverkstilkoblingen.';

  @override
  String detailFailedToggle(String error) {
    return 'Kunne ikke veksle: $error';
  }

  @override
  String get detailDeviceInformation => 'Enhetsinformasjon';

  @override
  String get detailPermissionScan =>
      'Tillatelse kreves for å skanne WiFi-nettverk.';

  @override
  String get detailScanFailedManual =>
      'Kunne ikke skanne nettverk. Skriv inn nettverksnavnet manuelt.';

  @override
  String get detailEnterNetworkNameError =>
      'Skriv inn eller velg et nettverksnavn';

  @override
  String get detailEnterPasswordError =>
      'Vennligst skriv inn nettverkspassordet';

  @override
  String get detailWifiSuccess => 'WiFi konfigurert vellykket!';

  @override
  String get detailScanNetworks => 'Skann etter nettverk';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurer WiFi-nettverket for \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Tilgjengelige nettverk';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS forbyr strengt tredjepartsapper å skanne etter Wi-Fi-nettverk i nærheten. Vennligst skriv inn nettverksnavnet ditt manuelt nedenfor.';

  @override
  String get detailTapRefreshScan =>
      'Trykk på oppdater for å søke etter nettverk';

  @override
  String get detailEnterNetworkBelow =>
      'Skriv inn nettverksnavnet ditt nedenfor';

  @override
  String get detailNetworkCredentials => 'Nettverkslegitimasjon';

  @override
  String get detailConnecting => 'Kobler til nettverk...';

  @override
  String get detailConnected => 'Tilkoblet vellykket!';

  @override
  String get detailPasswordShort => 'Passordet er for kort';

  @override
  String get detailAuthenticationFailed =>
      'Autentisering mislyktes - sjekk passord';

  @override
  String get detailConnectionFailed => 'Tilkobling mislyktes';

  @override
  String get detailSelectReset => 'Velg hva som skal tilbakestilles';

  @override
  String get detailResetSchedulesWarning =>
      '• Alle tidsplaner og automatiseringsregler vil bli slettet';

  @override
  String get detailResetWifiWarning => '• WiFi-innstillingene vil bli slettet';

  @override
  String get detailSetupAgainWarning => '• Du må sette opp enheten på nytt';

  @override
  String get detailUnreachableWarning =>
      '• Enheten kan bli midlertidig utilgjengelig';

  @override
  String get detailConfirmReset => 'Bekreft tilbakestilling';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Er du sikker på at du vil tilbakestille \"$device\"?';
  }

  @override
  String get detailThisWill => 'Dette vil:';

  @override
  String get detailCannotUndo => 'Denne handlingen kan ikke angres.';

  @override
  String get detailYesReset => 'Ja, tilbakestill';

  @override
  String get detailResetSuccess => 'Enheten er tilbakestilt';

  @override
  String get detailResetRemote => 'Enheten vil tilbakestilles eksternt';

  @override
  String get detailResetFailed => 'Tilbakestilling mislyktes';

  @override
  String get detailFactoryReset => 'Fabrikkinnstilling';

  @override
  String get detailFactoryResetWarning =>
      'Dette vil slette ALLE innstillinger og gjenopprette enheten til fabrikkinnstillingene. Du må konfigurere enheten på nytt.\n\nDenne handlingen kan ikke angres.';

  @override
  String get detailFactoryResetInitiated => 'Fabrikktilbakestilling startet';

  @override
  String get detailResetDevice => 'Tilbakestill enheten';

  @override
  String detailResetOptionsFor(String device) {
    return 'Tilbakestill alternativer for \"$device\"';
  }

  @override
  String get detailResetUserData => 'Tilbakestill brukerdata';

  @override
  String get detailResetUserDataSubtitle => 'Rydder tidsplaner og regler';

  @override
  String get detailResetWifi => 'Tilbakestill WiFi-innstillinger';

  @override
  String get detailResetWifiSubtitle => 'Enheten må konfigureres på nytt';

  @override
  String get widgetBrightness => 'Lysstyrke';

  @override
  String get widgetEnergyStatistics => 'Energistatistikk';

  @override
  String get widgetCurrentPower => 'Nåværende strøm';

  @override
  String get widgetToday => 'I dag';

  @override
  String get widgetTotal => 'Totalt';

  @override
  String get widgetOnTimeToday => 'På tide i dag';

  @override
  String get widgetTotalOnTime => 'Totalt i tide';

  @override
  String get widgetStandby => 'Standby';

  @override
  String get widgetUnknown => 'Ukjent';

  @override
  String get widgetOpenNetwork => 'Åpent nettverk';

  @override
  String get widgetWepInsecure => 'WEP (usikker)';
}
