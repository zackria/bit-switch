// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Uređaj ne podržava ovu radnju.';

  @override
  String get errInvalidArgs => 'Uređaju su poslani nevažeći argumenti.';

  @override
  String get errActionFailed => 'Uređaj nije uspio izvršiti traženu radnju.';

  @override
  String get errInvalidValue => 'Navedena je nevažeća vrijednost.';

  @override
  String get errValueOutOfRange => 'Vrijednost je izvan prihvatljivog raspona.';

  @override
  String get errFeatureNotAvailable =>
      'Ova značajka nije dostupna na ovom uređaju.';

  @override
  String get errOutOfMemory =>
      'Uređaju je ponestalo memorije. Pokušajte ponovno kasnije.';

  @override
  String get errManualActionRequired => 'Na uređaju je potrebna ručna radnja.';

  @override
  String get errActionNotAuthorized => 'Ova radnja nije ovlaštena.';

  @override
  String get errUnexpected =>
      'Došlo je do neočekivane pogreške. Molimo pokušajte ponovo.';

  @override
  String get errDeviceUnreachableOffline =>
      'Nije moguće pristupiti uređaju. Može biti izvan mreže ili na drugoj mreži.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Zahtjev je istekao nakon pokušaja $attempts. Uređaj je možda izvan mreže.';
  }

  @override
  String get errRequestTimedOut =>
      'Zahtjev je istekao. Uređaj je možda izvan mreže.';

  @override
  String get errNoRouteToHost =>
      'Nije moguće doći do uređaja. Provjerite svoju WiFi vezu.';

  @override
  String get errHostUnreachable =>
      'Uređaj je nedostupan. Provjerite je li uključen i spojen na WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Nije moguće komunicirati s uređajem nakon pokušaja $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Mrežna pogreška: Nije moguće komunicirati s uređajem.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Ova radnja nije ovlaštena na uređaju.';

  @override
  String get errDeviceServiceNotFound =>
      'Usluga uređaja nije pronađena. Uređaj će možda trebati ažurirati firmver.';

  @override
  String get errDeviceEncounteredError =>
      'Uređaj je naišao na pogrešku prilikom obrade zahtjeva.';

  @override
  String get errDeviceInternalError => 'Uređaj je vratio internu pogrešku.';

  @override
  String get errDeviceTempUnavailable =>
      'Uređaj je privremeno nedostupan. Molimo pokušajte ponovo.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Uređaj je vratio pogrešku (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '$action na uređaju nije uspio.';
  }

  @override
  String get errDeviceReturnedError => 'Uređaj je vratio pogrešku.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Operacija $operation je istekla. Molimo pokušajte ponovo.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Radnja je istekla nakon $seconds sekundi.';
  }

  @override
  String get errOperationTimedOut =>
      'Radnja je istekla. Molimo pokušajte ponovo.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Omogućite dopuštenje lokalne mreže u Postavkama za pronalaženje uređaja.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Nije moguće pristupiti lokalnoj mreži. Omogućite dopuštenje lokalne mreže u postavkama.';

  @override
  String get errCheckWifiConnection =>
      'Nije moguće otkriti uređaje. Provjerite svoju WiFi vezu.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Otkrivanje prekinuto. Pronađeni uređaji $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Nema pronađenih uređaja. Provjerite jesu li uređaji uključeni i povezani na vašu mrežu.';

  @override
  String get actionGetDeviceState => 'dobiti stanje uređaja';

  @override
  String get actionSetDeviceState => 'postaviti stanje uređaja';

  @override
  String get actionGetEnergyData => 'dobiti podatke o energiji';

  @override
  String get actionScanNetworks => 'traženje mreža';

  @override
  String get actionConnectWifi => 'spojite na WiFi';

  @override
  String get actionCheckConnection => 'provjerite status veze';

  @override
  String get actionResetDevice => 'resetirati uređaj';

  @override
  String get actionPerform => 'izvršiti radnju';

  @override
  String get suggestTryRefreshing =>
      'Pokušajte osvježiti popis uređaja ili provjerite reagira li uređaj.';

  @override
  String get suggestEnsurePoweredOn =>
      'Provjerite je li uređaj uključen i povezan na vašu WiFi mrežu.';

  @override
  String get suggestMakeSureSameWifi =>
      'Provjerite je li vaš telefon povezan na istu WiFi mrežu kao i vaši uređaji.';

  @override
  String get suggestCheckPhysical =>
      'Provjerite ima li na fizičkom uređaju gumba ili prekidača na koje treba obratiti pozornost.';

  @override
  String get suggestWaitAndTry => 'Pričekajte trenutak i pokušajte ponovno.';

  @override
  String get suggestDeviceBusy =>
      'Uređaj je možda zauzet. Pokušajte ponovno za nekoliko sekundi.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Odustani';

  @override
  String get commonClose => 'Zatvori';

  @override
  String get commonDone => 'Gotovo';

  @override
  String get commonLater => 'kasnije';

  @override
  String get commonRefresh => 'Osvježi';

  @override
  String get commonTryAgain => 'Pokušajte ponovno';

  @override
  String get commonOpenSettings => 'Otvorite postavke';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'popraviti';

  @override
  String get commonOn => 'Uključeno';

  @override
  String get commonOff => 'Isključeno';

  @override
  String get commonOffline => 'Izvan mreže';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Ime';

  @override
  String get commonType => 'Vrsta';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Proizvođač';

  @override
  String get commonSerial => 'Serijski';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Domaćin';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Lozinka';

  @override
  String get commonUnknownWifi => 'Nepoznato Wi-Fi';

  @override
  String get commonNotConnected => 'Nije povezano';

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
      other: '$seconds sekundi',
      one: '1 sekunda',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Pametni prekidač';

  @override
  String get deviceTypeLightSwitch => 'Prekidač za svjetlo';

  @override
  String get deviceTypeDimmer => 'Dimer';

  @override
  String get deviceTypeInsightPlug => 'Insight utikač';

  @override
  String get deviceTypeMotionSensor => 'Senzor pokreta';

  @override
  String get deviceTypeMaker => 'Izrađivač';

  @override
  String get deviceTypeBridge => 'Most';

  @override
  String get deviceTypeCoffeeMaker => 'Aparat za kavu';

  @override
  String get deviceTypeCrockpot => 'Lonac za kuhanje';

  @override
  String get deviceTypeHumidifier => 'Ovlaživač zraka';

  @override
  String get deviceTypeOutdoorPlug => 'Vanjski utikač';

  @override
  String get deviceTypeUnknown => 'Nepoznati uređaj';

  @override
  String get pairingStepGetStarted => 'Započnite';

  @override
  String get pairingStepConnectToDevice => 'Povežite se s uređajem';

  @override
  String get pairingStepFindDevice => 'Pronađite uređaj';

  @override
  String get pairingStepSelectNetwork => 'Odaberite Mreža';

  @override
  String get pairingStepConfiguring => 'Konfiguriranje';

  @override
  String get pairingStepReconnect => 'Ponovno se spojite';

  @override
  String get pairingStepFinalizing => 'Završavanje';

  @override
  String get pairingStepSuccess => 'Uspjeh';

  @override
  String get pairingStepError => 'Greška';

  @override
  String get homeToggleDebug => 'Uključi/isključi način otklanjanja pogrešaka';

  @override
  String get homeRefreshDevices => 'Osvježi uređaje';

  @override
  String get homeSettings => 'postavke';

  @override
  String get homeDismiss => 'Odbaciti';

  @override
  String get homeDiscovering => 'Otkrivanje uređaja...';

  @override
  String get homeNoDevices => 'Nema pronađenih uređaja';

  @override
  String get homeScanDevices => 'Traži uređaje';

  @override
  String get homeLookingForMore => 'Tražim više uređaja...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pronađeni uređaji $count',
      one: 'Pronađen je 1 uređaj',
      zero: 'Nema pronađenih uređaja',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uređaji pronađeni, skeniranje...',
      one: '1 uređaj pronađen, skeniranje...',
      zero: 'Nije pronađen nijedan uređaj, skeniranje...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automatski';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Povezan na WiFi';

  @override
  String get homePermissionExplanation =>
      'Podaci o lokaciji koriste se za pronalaženje vaših podataka o Wi-Fi. Pristup lokalnoj mreži omogućuje vam kontrolu pametnih sklopki i uređaja.';

  @override
  String get homeDebugLog => 'Dnevnik otklanjanja pogrešaka';

  @override
  String get homeClear => 'čisto';

  @override
  String get homeDebugEmpty =>
      'Dodirnite Osvježi za početak otkrivanja i pregled zapisa...';

  @override
  String get homeProbeHint => 'IP:Priključak (npr. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'Skeniranje...';

  @override
  String get homeScanSubnet => 'Skeniraj cijelu podmrežu (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platforma: $platform $version';
  }

  @override
  String get settingsTitle => 'postavke';

  @override
  String get settingsSectionNetwork => 'mreža';

  @override
  String get settingsSectionDeviceSetup => 'Postavljanje uređaja';

  @override
  String get settingsSectionDiscovery => 'Otkriće';

  @override
  String get settingsSectionAbout => 'O';

  @override
  String get settingsSectionDebug => 'Debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Dopuštenje odobreno! WiFi naziv: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Lokacija odobrena, ali je također potrebno dopuštenje lokalne mreže. Provjerite postavke.';

  @override
  String get settingsLocationRequired => 'Potrebno dopuštenje za lokaciju';

  @override
  String get settingsLocationRequiredBody =>
      'Za prikaz imena vaše mreže WiFi, iOS zahtijeva dopuštenje za lokaciju.';

  @override
  String get settingsRequiredPermissions => 'Potrebna dopuštenja:';

  @override
  String get settingsPermissionList =>
      '1. Usluge lokacije (\"Dok koristite aplikaciju\")\n2. Lokalna mreža';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Napomena: otkrivanje uređaja radi bez dopuštenja lokacije. Ovo se dopuštenje koristi samo za prikaz naziva vaše mreže WiFi.';

  @override
  String get settingsEnableLocation => 'Omogućite lokaciju u postavkama';

  @override
  String get settingsLocationDeniedBody =>
      'Dopuštenje za lokaciju je odbijeno. Možete ga omogućiti u postavkama sustava.';

  @override
  String get settingsStepsToEnable => 'Koraci za omogućavanje:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Otvorite Postavke\n2. Pomaknite se do \"Bit Switch\"\n3. Dodirnite \"Lokacija\"\n4. Odaberite \"Dok koristite aplikaciju\"\n5. Vratite se na ovu aplikaciju i dodirnite gumb za osvježavanje';

  @override
  String get settingsLocationOnlyWifiName =>
      'Napomena: Dozvola za lokaciju potrebna je samo za prikaz naziva WiFi. Otkrivanje uređaja radi i bez njega.';

  @override
  String get settingsAdditionalPermission => 'Potrebno dodatno dopuštenje';

  @override
  String get settingsLocalNetworkBody =>
      'Za otkrivanje i kontrolu Wemo uređaja potrebno je dopuštenje lokalne mreže.';

  @override
  String get settingsWifiNameNotVisible =>
      'Imate dopuštenje za lokaciju, ali naziv WiFi još nije vidljiv.';

  @override
  String get settingsPleaseEnable => 'Omogućite:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Idite na iPhone postavke\n2. Pomaknite se prema dolje do \"Bit Switch\"\n3. Omogućite \"Lokalnu mrežu\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Dopuštenje lokalne mreže potrebno je i za otkrivanje uređaja i za pristup imenu WiFi na iOS-u.';

  @override
  String get settingsPairNewDevice => 'Uparite novi uređaj';

  @override
  String get settingsPairNewDeviceSubtitle => 'Postavite novi Wemo uređaj';

  @override
  String get settingsDiscoveryTimeout => 'Istek vremena otkrivanja';

  @override
  String get settingsRequestTimeout => 'Istek zahtjeva';

  @override
  String get settingsAutoRefresh => 'Automatsko osvježavanje';

  @override
  String get settingsAutoRefreshOn =>
      'Uključeno - stanja uređaja se automatski osvježavaju';

  @override
  String get settingsAutoRefreshOff =>
      'Isključeno - Koristite gumb za ručno osvježavanje';

  @override
  String get settingsAutoRefreshInterval => 'Interval automatskog osvježavanja';

  @override
  String get settingsAbout => 'O Bit Switch';

  @override
  String get settingsVersion => 'Verzija';

  @override
  String get settingsNetworkDiagnostics => 'Mrežna dijagnostika';

  @override
  String get settingsShowDebug => 'Prikaži način otklanjanja pogrešaka';

  @override
  String get settingsShowDebugSubtitle =>
      'Prikaži kontrole za otklanjanje pogrešaka i mrežnu dijagnostiku na početnom zaslonu';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Prikaži ikonu otklanjanja pogrešaka na početnom zaslonu za rješavanje problema';

  @override
  String get settingsCurrentNetwork => 'Trenutna mreža';

  @override
  String get settingsNetworkAccessStatus => 'Status pristupa mreži';

  @override
  String get settingsNetworkAccessGranted =>
      'Dostupan je pristup lokalnoj mreži';

  @override
  String get settingsNetworkAccessMissing =>
      'Možda će biti potrebna dodatna dopuštenja';

  @override
  String get settingsChecking => 'Provjera...';

  @override
  String get settingsEnableLocalNetwork =>
      'Omogućite lokalnu mrežu u postavkama';

  @override
  String get settingsNotConnectedWifi => 'Nije spojen na WiFi';

  @override
  String get settingsPermissionRequiredView => 'Potrebno dopuštenje za pregled';

  @override
  String get settingsAllPermissionsGranted => 'Sva dopuštenja odobrena';

  @override
  String get settingsLocalNetworkNeeded => 'Potrebna je dozvola lokalne mreže';

  @override
  String get settingsLocationNeeded => 'Potrebna je dozvola za lokaciju';

  @override
  String get settingsRefreshPermissions => 'Osvježi dopuštenja';

  @override
  String get settingsAboutWifiPermission => 'O dopuštenju naziva WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Vaše WiFi ime pomaže potvrditi da su vaš telefon i Wemo uređaji na istoj mreži.';

  @override
  String get settingsWifiPermissionIos =>
      'Na iOS-u, za prikaz naziva vaše mreže WiFi potrebno je dopuštenje lokacije.';

  @override
  String get settingsImportant => 'Važno:';

  @override
  String get settingsPrivacyNote =>
      '• Vaša se lokacija nikad ne prati\n• Podaci o lokaciji se ne prikupljaju niti pohranjuju';

  @override
  String get settingsWifiPermissionImportant =>
      '• Otkrivanje uređaja radi BEZ ove dozvole\n• Ovo je potrebno samo za prikaz naziva WiFi\n• Podaci o lokaciji se ne prikupljaju niti pohranjuju';

  @override
  String get settingsGrantPermission => 'Dajte dopuštenje';

  @override
  String get settingsHowLongScan => 'Koliko dugo treba skenirati uređaje:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Istek vremena otkrivanja postavljen je na $seconds sekundi';
  }

  @override
  String get settingsHowLongResponses =>
      'Koliko dugo čekati na odgovore uređaja:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Povećajte ovu vrijednost ako vidite pogreške \"Veza zatvorena\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Istek zahtjeva postavljen je na $seconds sekundi';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Postavite interval za automatsko osvježavanje stanja:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Interval osvježavanja postavljen na $seconds sekundi';
  }

  @override
  String get settingsAboutTagline =>
      'Čist, privatni lokalni kontroler za vaše Wemo uređaje.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch koristi otkrivanje lokalne mreže za pronalaženje i kontrolu uređaja bez ovisnosti o oblaku.';

  @override
  String get settingsVersionValue => 'Verzija 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast adresa: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Priključci uređaja: 49152-49159';

  @override
  String get settingsControlProtocol => 'Kontrolni protokol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Savjet: Provjerite je li vaš uređaj na istoj mreži kao i vaši Wemo uređaji i da UDP multicast nije blokiran.';

  @override
  String get settingsDevicePaired =>
      'Uređaj je uparen! Osvježavanje popisa uređaja...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekundi po zahtjevu';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Osvježava se svakih ${seconds}s';
  }

  @override
  String get pairingTitle => 'Uparite novi uređaj';

  @override
  String get pairingSetupTitle => 'Postavite svoj Wemo uređaj';

  @override
  String get pairingBeforeBegin =>
      'Prije nego počnete, provjerite je li vaš Wemo uređaj u načinu rada za postavljanje:';

  @override
  String get pairingPlugInTitle => 'Uključite svoj Wemo uređaj';

  @override
  String get pairingPlugInBody =>
      'Spojite ga na napajanje i pričekajte da se pokrene.';

  @override
  String get pairingBlinkingLedTitle => 'Potražite trepćući LED';

  @override
  String get pairingBlinkingLedBody =>
      'Trepćuća LED lampica označava da je uređaj u načinu postavljanja.';

  @override
  String get pairingCheckWifiTitle => 'Provjerite WiFi mrežu';

  @override
  String get pairingCheckWifiBody =>
      'Uređaj će emitirati mrežu pod nazivom \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Ako LED svijetli stalno, držite tipku za resetiranje 5 sekundi za ulazak u način rada za postavljanje.';

  @override
  String get pairingStart => 'Započnite uparivanje';

  @override
  String get pairingConnectWifiTitle => 'Spojite se na uređaj WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Otvorite postavke WiFi svog telefona i spojite se na mrežu koja počinje sa \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Trenutna mreža';

  @override
  String get pairingConnectedToDevice => 'Povezan na Wemo uređaj!';

  @override
  String get pairingOpenWifiSettings => 'Otvorite postavke WiFi';

  @override
  String get pairingConnectedButton => 'Povezao sam se';

  @override
  String get pairingLookingForDevice => 'Tražite svoj Wemo uređaj...';

  @override
  String get pairingManualIpPrompt => 'Ili ručno unesite uređaj IP:';

  @override
  String get pairingDeviceIp => 'Adresa uređaja IP';

  @override
  String get pairingConnectToIp => 'Spojite se na IP';

  @override
  String get pairingSelectHomeWifi => 'Odaberite svoju kućnu WiFi mrežu:';

  @override
  String get pairingRefreshNetworks => 'Osvježi mreže';

  @override
  String get pairingIosScanLimitation =>
      'iOS strogo zabranjuje aplikacijama trećih strana skeniranje obližnjih Wi-Fi mreža. Možda ćete morati ručno unijeti mrežu SSID.';

  @override
  String get pairingNoNetworks => 'Nema pronađenih mreža';

  @override
  String get pairingScanAgain => 'Skeniraj ponovno';

  @override
  String get pairingWifiPassword => 'WiFi Lozinka';

  @override
  String get pairingConnect => 'Poveži se';

  @override
  String get pairingEnterNetworkManually => 'Unesite mrežu ručno';

  @override
  String get pairingEnterNetworkName => 'Unesite naziv mreže:';

  @override
  String get pairingNetworkName => 'Naziv mreže (SSID)';

  @override
  String get pairingUseNetwork => 'Koristite ovu mrežu';

  @override
  String get pairingConfiguringDevice => 'Konfiguriranje uređaja...';

  @override
  String get pairingConfiguringWait =>
      'Pričekajte da se uređaj poveže s vašom mrežom.';

  @override
  String get pairingReconnectTitle => 'Ponovno se povežite s mrežom';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Vaš Wemo uređaj sada se povezuje na \"$ssid\". Ponovno povežite telefon s istom mrežom.';
  }

  @override
  String get pairingBackOnHome => 'Povratak na kućnu mrežu!';

  @override
  String get pairingReconnectedButton => 'Ponovno sam se povezao';

  @override
  String get pairingFinalizingSetup => 'Dovršavanje postavljanja...';

  @override
  String get pairingSetupComplete => 'Postavljanje dovršeno!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Povezan na $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Vaš je uređaj sada postavljen i pojavit će se na početnom zaslonu.';

  @override
  String get pairingSomethingWrong => 'Nešto nije u redu';

  @override
  String get pairingStartOver => 'Počni ispočetka';

  @override
  String get pairingErrorOpenWifi =>
      'Nije moguće otvoriti postavke WiFi. Otvorite ih ručno.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Vaš telefon je i dalje povezan sa \"$ssid\". Otvorite postavke WiFi, povežite se na mrežu uređaja WeMo, a zatim pokušajte ponovno.';
  }

  @override
  String get pairingLoadingLooking => 'Tražim uređaj...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Nije moguće pronaći WeMo uređaj na $ip. Provjerite je li vaš telefon povezan na WeMo WiFi mrežu, a zatim pokušajte ponovno. Uređaj IP možete unijeti i ručno.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Pogreška pri otkrivanju uređaja: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Povezivanje na $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'U $ip nije pronađen nijedan uređaj';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Pogreška pri povezivanju na $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Traženje mreža...';

  @override
  String pairingErrorScanning(String error) {
    return 'Nije moguće skenirati mreže: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Odaberite mrežu i unesite lozinku.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Slanje mrežnih vjerodajnica...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Čeka se povezivanje uređaja...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Neuspješno konfiguriranje mreže: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Lozinka je prekratka. Provjerite i pokušajte ponovo.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Povezivanje nije uspjelo. Molimo provjerite lozinku.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Veza je istekla. Molimo pokušajte ponovo.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Pogreška pri dovršetku postavljanja: $error';
  }

  @override
  String get detailRefreshState => 'Stanje osvježavanja';

  @override
  String get detailDeviceInfo => 'Informacije o uređaju';

  @override
  String get detailAdvanced => 'Napredno';

  @override
  String get detailWifiSetup => 'Postavljanje WiFi';

  @override
  String get detailReset => 'Resetiraj';

  @override
  String get detailUnreachable =>
      'Uređaj je nedostupan. Provjerite mrežnu vezu.';

  @override
  String detailFailedToggle(String error) {
    return 'Prebacivanje nije uspjelo: $error';
  }

  @override
  String get detailDeviceInformation => 'Informacije o uređaju';

  @override
  String get detailPermissionScan =>
      'Za skeniranje WiFi mreža potrebno je dopuštenje.';

  @override
  String get detailScanFailedManual =>
      'Nije moguće skenirati mreže. Ručno unesite naziv mreže.';

  @override
  String get detailEnterNetworkNameError => 'Unesite ili odaberite naziv mreže';

  @override
  String get detailEnterPasswordError => 'Unesite mrežnu lozinku';

  @override
  String get detailWifiSuccess => 'WiFi uspješno konfiguriran!';

  @override
  String get detailScanNetworks => 'Skenirajte mreže';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurirajte WiFi mrežu za \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Dostupne mreže';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS strogo zabranjuje aplikacijama trećih strana skeniranje obližnjih Wi-Fi mreža. U nastavku ručno unesite naziv mreže.';

  @override
  String get detailTapRefreshScan => 'Dodirnite Osvježi za traženje mreža';

  @override
  String get detailEnterNetworkBelow => 'U nastavku unesite naziv svoje mreže';

  @override
  String get detailNetworkCredentials => 'Mrežne vjerodajnice';

  @override
  String get detailConnecting => 'Spajanje na mrežu...';

  @override
  String get detailConnected => 'Povezano uspješno!';

  @override
  String get detailPasswordShort => 'Lozinka je prekratka';

  @override
  String get detailAuthenticationFailed =>
      'Autentifikacija nije uspjela - provjerite lozinku';

  @override
  String get detailConnectionFailed => 'Povezivanje nije uspjelo';

  @override
  String get detailSelectReset => 'Odaberite što resetirati';

  @override
  String get detailResetSchedulesWarning =>
      '• Svi rasporedi i pravila automatizacije bit će izbrisani';

  @override
  String get detailResetWifiWarning => '• WiFi postavke će biti izbrisane';

  @override
  String get detailSetupAgainWarning => '• Morat ćete ponovno postaviti uređaj';

  @override
  String get detailUnreachableWarning =>
      '• Uređaj može postati privremeno nedostupan';

  @override
  String get detailConfirmReset => 'Potvrdite Reset';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Jeste li sigurni da želite resetirati \"$device\"?';
  }

  @override
  String get detailThisWill => 'Ovo će:';

  @override
  String get detailCannotUndo => 'Ova se radnja ne može poništiti.';

  @override
  String get detailYesReset => 'Da, Reset';

  @override
  String get detailResetSuccess => 'Uređaj je uspješno resetiran';

  @override
  String get detailResetRemote => 'Uređaj će se daljinski resetirati';

  @override
  String get detailResetFailed => 'Ponovno postavljanje nije uspjelo';

  @override
  String get detailFactoryReset => 'Vraćanje na tvorničke postavke';

  @override
  String get detailFactoryResetWarning =>
      'Ovo će izbrisati SVE postavke i vratiti uređaj na tvorničke postavke. Morat ćete ponovo postaviti uređaj.\n\nOva se radnja ne može poništiti.';

  @override
  String get detailFactoryResetInitiated =>
      'Pokrenuto vraćanje na tvorničke postavke';

  @override
  String get detailResetDevice => 'Reset uređaja';

  @override
  String detailResetOptionsFor(String device) {
    return 'Reset opcije za \"$device\"';
  }

  @override
  String get detailResetUserData => 'Poništi korisničke podatke';

  @override
  String get detailResetUserDataSubtitle => 'Briše rasporede i pravila';

  @override
  String get detailResetWifi => 'Resetirajte postavke WiFi';

  @override
  String get detailResetWifiSubtitle => 'Uređaj će se morati ponovo postaviti';

  @override
  String get widgetBrightness => 'Svjetlina';

  @override
  String get widgetEnergyStatistics => 'Energetska statistika';

  @override
  String get widgetCurrentPower => 'Trenutna snaga';

  @override
  String get widgetToday => 'Danas';

  @override
  String get widgetTotal => 'Ukupno';

  @override
  String get widgetOnTimeToday => 'Danas na vrijeme';

  @override
  String get widgetTotalOnTime => 'Ukupno na vrijeme';

  @override
  String get widgetStandby => 'Stanje pripravnosti';

  @override
  String get widgetUnknown => 'Nepoznato';

  @override
  String get widgetOpenNetwork => 'Otvorena mreža';

  @override
  String get widgetWepInsecure => 'WEP (nesiguran)';
}
