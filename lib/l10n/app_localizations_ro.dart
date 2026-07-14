// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Dispozitivul nu acceptă această acțiune.';

  @override
  String get errInvalidArgs =>
      'Pe dispozitiv au fost trimise argumente nevalide.';

  @override
  String get errActionFailed =>
      'Dispozitivul nu a reușit să efectueze acțiunea solicitată.';

  @override
  String get errInvalidValue => 'A fost furnizată o valoare nevalidă.';

  @override
  String get errValueOutOfRange =>
      'Valoarea este în afara intervalului acceptabil.';

  @override
  String get errFeatureNotAvailable =>
      'Această funcție nu este disponibilă pe acest dispozitiv.';

  @override
  String get errOutOfMemory =>
      'Dispozitivul nu mai are memorie. Încercați din nou mai târziu.';

  @override
  String get errManualActionRequired =>
      'Este necesară o acțiune manuală pe dispozitiv.';

  @override
  String get errActionNotAuthorized => 'Această acțiune nu este autorizată.';

  @override
  String get errUnexpected =>
      'A apărut o eroare neașteptată. Vă rugăm să încercați din nou.';

  @override
  String get errDeviceUnreachableOffline =>
      'Nu se poate ajunge la dispozitiv. Poate fi offline sau într-o altă rețea.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Solicitarea a expirat după încercările $attempts. Este posibil ca dispozitivul să fie offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Solicitarea a expirat. Este posibil ca dispozitivul să fie offline.';

  @override
  String get errNoRouteToHost =>
      'Nu se poate ajunge la dispozitiv. Vă rugăm să verificați conexiunea WiFi.';

  @override
  String get errHostUnreachable =>
      'Dispozitivul este inaccesibil. Vă rugăm să vă asigurați că este pornit și conectat la WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Nu se poate comunica cu dispozitivul după încercările $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Eroare de rețea: Nu se poate comunica cu dispozitivul.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Această acțiune nu este autorizată pe dispozitiv.';

  @override
  String get errDeviceServiceNotFound =>
      'Serviciul dispozitivului nu a fost găsit. Este posibil ca dispozitivul să aibă nevoie de o actualizare de firmware.';

  @override
  String get errDeviceEncounteredError =>
      'Dispozitivul a întâmpinat o eroare la procesarea cererii.';

  @override
  String get errDeviceInternalError =>
      'Dispozitivul a returnat o eroare internă.';

  @override
  String get errDeviceTempUnavailable =>
      'Dispozitivul este temporar indisponibil. Vă rugăm să încercați din nou.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Dispozitivul a returnat o eroare (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '$action a eșuat pe dispozitiv.';
  }

  @override
  String get errDeviceReturnedError => 'Dispozitivul a returnat o eroare.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Operațiunea $operation a expirat. Vă rugăm să încercați din nou.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Funcționarea a expirat după $seconds secunde.';
  }

  @override
  String get errOperationTimedOut =>
      'Operațiunea a expirat. Vă rugăm să încercați din nou.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Vă rugăm să activați permisiunea de rețea locală în Setări pentru a găsi dispozitive.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Nu se poate accesa rețeaua locală. Vă rugăm să activați permisiunea de rețea locală în Setări.';

  @override
  String get errCheckWifiConnection =>
      'Nu se pot descoperi dispozitivele. Vă rugăm să verificați conexiunea WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Descoperirea a fost întreruptă. S-au găsit dispozitive $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Nu s-au găsit dispozitive. Asigurați-vă că dispozitivele sunt pornite și conectate la rețeaua dvs.';

  @override
  String get actionGetDeviceState => 'obține starea dispozitivului';

  @override
  String get actionSetDeviceState => 'setați starea dispozitivului';

  @override
  String get actionGetEnergyData => 'obține date energetice';

  @override
  String get actionScanNetworks => 'scanează pentru rețele';

  @override
  String get actionConnectWifi => 'conectați-vă la WiFi';

  @override
  String get actionCheckConnection => 'verifica starea conexiunii';

  @override
  String get actionResetDevice => 'resetarea dispozitivului';

  @override
  String get actionPerform => 'executa actiune';

  @override
  String get suggestTryRefreshing =>
      'Încercați să reîmprospătați lista de dispozitive sau verificați dacă dispozitivul răspunde.';

  @override
  String get suggestEnsurePoweredOn =>
      'Asigurați-vă că dispozitivul este pornit și conectat la rețeaua dvs. WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Asigurați-vă că telefonul este conectat la aceeași rețea WiFi ca și dispozitivele dvs.';

  @override
  String get suggestCheckPhysical =>
      'Verificați dispozitivul fizic pentru orice butoane sau comutatoare care necesită atenție.';

  @override
  String get suggestWaitAndTry => 'Așteptați un moment și încercați din nou.';

  @override
  String get suggestDeviceBusy =>
      'Este posibil ca dispozitivul să fie ocupat. Încercați din nou în câteva secunde.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Anulează';

  @override
  String get commonClose => 'Închide';

  @override
  String get commonDone => 'Gata';

  @override
  String get commonLater => 'mai târziu';

  @override
  String get commonRefresh => 'Reîmprospătați';

  @override
  String get commonTryAgain => 'Încercați din nou';

  @override
  String get commonOpenSettings => 'Deschide Setări';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Fix';

  @override
  String get commonOn => 'Pornit';

  @override
  String get commonOff => 'Oprit';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Stare';

  @override
  String get commonName => 'Nume';

  @override
  String get commonType => 'Tip';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Producator';

  @override
  String get commonSerial => 'Serial';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Gazdă';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Parolă';

  @override
  String get commonUnknownWifi => 'Wi-Fi necunoscut';

  @override
  String get commonNotConnected => 'Nu este conectat';

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
      other: '$seconds secunde',
      one: '1 secundă',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Comutator inteligent';

  @override
  String get deviceTypeLightSwitch => 'Comutator de lumină';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Plug Insight';

  @override
  String get deviceTypeMotionSensor => 'Senzor de mișcare';

  @override
  String get deviceTypeMaker => 'Creator';

  @override
  String get deviceTypeBridge => 'Podul';

  @override
  String get deviceTypeCoffeeMaker => 'Filtru de cafea';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Umidificator';

  @override
  String get deviceTypeOutdoorPlug => 'Priză în aer liber';

  @override
  String get deviceTypeUnknown => 'Dispozitiv necunoscut';

  @override
  String get pairingStepGetStarted => 'Începeți';

  @override
  String get pairingStepConnectToDevice => 'Conectați-vă la Dispozitiv';

  @override
  String get pairingStepFindDevice => 'Găsiți Dispozitiv';

  @override
  String get pairingStepSelectNetwork => 'Selectați Rețea';

  @override
  String get pairingStepConfiguring => 'Configurare';

  @override
  String get pairingStepReconnect => 'Reconectați-vă';

  @override
  String get pairingStepFinalizing => 'Finalizarea';

  @override
  String get pairingStepSuccess => 'Succes';

  @override
  String get pairingStepError => 'Eroare';

  @override
  String get homeToggleDebug => 'Comutați modul de depanare';

  @override
  String get homeRefreshDevices => 'Actualizează dispozitivele';

  @override
  String get homeSettings => 'Setări';

  @override
  String get homeDismiss => 'Respingeți';

  @override
  String get homeDiscovering => 'Descoperirea dispozitivelor...';

  @override
  String get homeNoDevices => 'Nu s-au găsit dispozitive';

  @override
  String get homeScanDevices => 'Scanați pentru dispozitive';

  @override
  String get homeLookingForMore => 'Caut mai multe dispozitive...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S-au găsit dispozitive $count',
      one: 'S-a găsit 1 dispozitiv',
      zero: 'Nu s-au găsit dispozitive',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispozitive $count găsite, scanare...',
      one: 'S-a găsit 1 dispozitiv, se scanează...',
      zero: 'Nu s-a găsit niciun dispozitiv, se scanează...',
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
  String get homeConnectedWifi => 'Conectat la WiFi';

  @override
  String get homePermissionExplanation =>
      'Informațiile despre locație sunt folosite pentru a găsi detaliile dvs. Wi-Fi. Accesul la rețeaua locală vă permite să vă controlați comutatoarele și dispozitivele inteligente.';

  @override
  String get homeDebugLog => 'Jurnal de depanare';

  @override
  String get homeClear => 'Clar';

  @override
  String get homeDebugEmpty =>
      'Atingeți reîmprospătare pentru a începe descoperirea și a vedea jurnalele...';

  @override
  String get homeProbeHint => 'IP:Port (de ex. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'Se scanează...';

  @override
  String get homeScanSubnet => 'Scanați întreaga subrețea (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platformă: $platform $version';
  }

  @override
  String get settingsTitle => 'Setări';

  @override
  String get settingsSectionNetwork => 'Rețea';

  @override
  String get settingsSectionDeviceSetup => 'Configurare dispozitiv';

  @override
  String get settingsSectionDiscovery => 'Descoperire';

  @override
  String get settingsSectionAbout => 'Despre';

  @override
  String get settingsSectionDebug => 'Depanați';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Permisiune acordată! Nume WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Locația este acordată, dar este necesară și permisiunea de rețea locală. Verificați Setări.';

  @override
  String get settingsLocationRequired => 'Permisiune de locație necesară';

  @override
  String get settingsLocationRequiredBody =>
      'Pentru a afișa numele rețelei dvs. WiFi, iOS necesită permisiunea de locație.';

  @override
  String get settingsRequiredPermissions => 'Permisiuni necesare:';

  @override
  String get settingsPermissionList =>
      '1. Servicii de localizare („În timpul utilizării aplicației”)\n2. Rețea locală';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Notă: Descoperirea dispozitivului funcționează fără permisiunea locației. Această permisiune este folosită numai pentru a afișa numele rețelei dvs. WiFi.';

  @override
  String get settingsEnableLocation => 'Activați Locația în Setări';

  @override
  String get settingsLocationDeniedBody =>
      'Permisiunea de locație a fost refuzată. Îl puteți activa din setările sistemului.';

  @override
  String get settingsStepsToEnable => 'Pași pentru activare:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Deschide Setări\n2. Derulați la „Bit Switch”\n3. Atingeți „Locație”\n4. Selectați „În timp ce utilizați aplicația”\n5. Reveniți la această aplicație și atingeți butonul de reîmprospătare';

  @override
  String get settingsLocationOnlyWifiName =>
      'Notă: Permisiunea de locație este necesară doar pentru a afișa numele WiFi. Descoperirea dispozitivului funcționează fără el.';

  @override
  String get settingsAdditionalPermission =>
      'Este necesară o permisiune suplimentară';

  @override
  String get settingsLocalNetworkBody =>
      'Este necesară permisiunea rețelei locale pentru a descoperi și controla dispozitivele Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Aveți permisiunea de locație, dar numele WiFi nu este vizibil încă.';

  @override
  String get settingsPleaseEnable => 'Vă rugăm să activați:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Accesați Setările iPhone\n2. Derulați în jos la „Bit Switch”\n3. Activați „Rețea locală”';

  @override
  String get settingsLocalNetworkIosReason =>
      'Este necesară permisiunea de rețea locală atât pentru descoperirea dispozitivului, cât și pentru accesul la numele WiFi pe iOS.';

  @override
  String get settingsPairNewDevice => 'Asociați dispozitivul nou';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configurați un nou dispozitiv Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Timeout pentru descoperire';

  @override
  String get settingsRequestTimeout => 'Solicitare Timeout';

  @override
  String get settingsAutoRefresh => 'Reîmprospătare automată';

  @override
  String get settingsAutoRefreshOn =>
      'Activat - Stările dispozitivului se reîmprospătează automat';

  @override
  String get settingsAutoRefreshOff =>
      'Off - Folosiți butonul de reîmprospătare manuală';

  @override
  String get settingsAutoRefreshInterval =>
      'Interval de reîmprospătare automată';

  @override
  String get settingsAbout => 'Despre Bit Switch';

  @override
  String get settingsVersion => 'Versiune';

  @override
  String get settingsNetworkDiagnostics => 'Diagnosticarea rețelei';

  @override
  String get settingsShowDebug => 'Afișați modul de depanare';

  @override
  String get settingsShowDebugSubtitle =>
      'Afișați comenzile de depanare și diagnosticarea rețelei pe ecranul de pornire';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Afișați pictograma de depanare pe ecranul de start pentru depanare';

  @override
  String get settingsCurrentNetwork => 'Rețeaua curentă';

  @override
  String get settingsNetworkAccessStatus => 'Starea accesului la rețea';

  @override
  String get settingsNetworkAccessGranted =>
      'Accesul la rețeaua locală este disponibil';

  @override
  String get settingsNetworkAccessMissing =>
      'Pot fi necesare permisiuni suplimentare';

  @override
  String get settingsChecking => 'Se verifică...';

  @override
  String get settingsEnableLocalNetwork => 'Activați rețeaua locală în Setări';

  @override
  String get settingsNotConnectedWifi => 'Nu este conectat la WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Este necesară permisiunea de vizualizare';

  @override
  String get settingsAllPermissionsGranted => 'Toate permisiunile acordate';

  @override
  String get settingsLocalNetworkNeeded =>
      'Este necesară permisiunea de rețea locală';

  @override
  String get settingsLocationNeeded => 'Este nevoie de permisiunea locației';

  @override
  String get settingsRefreshPermissions => 'Actualizează permisiunile';

  @override
  String get settingsAboutWifiPermission => 'Despre permisiunea de nume WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Numele dvs. WiFi vă ajută să confirmați că telefonul dvs. și dispozitivele Wemo sunt în aceeași rețea.';

  @override
  String get settingsWifiPermissionIos =>
      'Pe iOS, afișarea numelui rețelei WiFi necesită permisiunea locației.';

  @override
  String get settingsImportant => 'Important:';

  @override
  String get settingsPrivacyNote =>
      '• Locația dvs. nu este niciodată urmărită\n• Nu sunt colectate sau stocate date despre locație';

  @override
  String get settingsWifiPermissionImportant =>
      '• Descoperirea dispozitivului funcționează FĂRĂ această permisiune\n• Acesta este necesar doar pentru a afișa numele WiFi\n• Nu sunt colectate sau stocate date despre locație';

  @override
  String get settingsGrantPermission => 'Acordați permisiunea';

  @override
  String get settingsHowLongScan => 'Cât timp se scanează pentru dispozitive:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Timeout de descoperire a fost setat la $seconds secunde';
  }

  @override
  String get settingsHowLongResponses =>
      'Cât timp trebuie să așteptați răspunsurile dispozitivului:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Măriți această valoare dacă vedeți erori „Conexiune închisă”.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Solicitare timeout setată la $seconds secunde';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Setați intervalul pentru reîmprospătarea automată a stării:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervalul de reîmprospătare setat la $seconds secunde';
  }

  @override
  String get settingsAboutTagline =>
      'Un controler local curat și privat pentru dispozitivele dvs. Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch folosește descoperirea rețelei locale pentru a găsi și controla dispozitive fără dependențe de cloud.';

  @override
  String get settingsVersionValue => 'Versiunea 1.0.1';

  @override
  String get settingsProtocol => 'Protocol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Adresă multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Porturi pentru dispozitiv: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protocol de control: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Sfat: Asigurați-vă că dispozitivul este în aceeași rețea ca și dispozitivele Wemo și că multicastul UDP nu este blocat.';

  @override
  String get settingsDevicePaired =>
      'Dispozitiv asociat! Se reîmprospătează lista de dispozitive...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds secunde per solicitare';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Reîmprospătând fiecare $seconds';
  }

  @override
  String get pairingTitle => 'Asociați dispozitivul nou';

  @override
  String get pairingSetupTitle => 'Configurați dispozitivul Wemo';

  @override
  String get pairingBeforeBegin =>
      'Înainte de a începe, asigurați-vă că dispozitivul Wemo este în modul de configurare:';

  @override
  String get pairingPlugInTitle => 'Conectați dispozitivul Wemo';

  @override
  String get pairingPlugInBody =>
      'Conectați-l la alimentare și așteptați să pornească.';

  @override
  String get pairingBlinkingLedTitle => 'Căutați LED-ul care clipește';

  @override
  String get pairingBlinkingLedBody =>
      'Un LED intermitent indică faptul că dispozitivul este în modul de configurare.';

  @override
  String get pairingCheckWifiTitle => 'Verificați rețeaua WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Dispozitivul va difuza o rețea numită „WeMo.XXXX”.';

  @override
  String get pairingSolidLedHint =>
      'Dacă LED-ul este continuu, țineți apăsat butonul de resetare timp de 5 secunde pentru a intra în modul de configurare.';

  @override
  String get pairingStart => 'Începeți împerecherea';

  @override
  String get pairingConnectWifiTitle => 'Conectați-vă la dispozitivul WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Deschideți setările telefonului WiFi și conectați-vă la rețeaua care începe cu „WeMo”.';

  @override
  String get pairingCurrentNetwork => 'Rețeaua curentă';

  @override
  String get pairingConnectedToDevice => 'Conectat la dispozitivul Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Deschideți Setările WiFi';

  @override
  String get pairingConnectedButton => 'M-am conectat';

  @override
  String get pairingLookingForDevice => 'Caut dispozitivul dvs. Wemo...';

  @override
  String get pairingManualIpPrompt => 'Sau introduceți manual dispozitivul IP:';

  @override
  String get pairingDeviceIp => 'Adresa dispozitivului IP';

  @override
  String get pairingConnectToIp => 'Conectați-vă la IP';

  @override
  String get pairingSelectHomeWifi => 'Selectați rețeaua WiFi de acasă:';

  @override
  String get pairingRefreshNetworks => 'Actualizează rețelele';

  @override
  String get pairingIosScanLimitation =>
      'iOS interzice strict scanarea aplicațiilor terță parte pentru rețelele Wi-Fi din apropiere. Poate fi necesar să introduceți manual în rețea SSID.';

  @override
  String get pairingNoNetworks => 'Nu au fost găsite rețele';

  @override
  String get pairingScanAgain => 'Scanați din nou';

  @override
  String get pairingWifiPassword => 'WiFi Parolă';

  @override
  String get pairingConnect => 'Conectați-vă';

  @override
  String get pairingEnterNetworkManually => 'Introduceți manual în rețea';

  @override
  String get pairingEnterNetworkName => 'Introduceți numele rețelei:';

  @override
  String get pairingNetworkName => 'Nume rețea (SSID)';

  @override
  String get pairingUseNetwork => 'Utilizați această rețea';

  @override
  String get pairingConfiguringDevice => 'Se configurează dispozitivul...';

  @override
  String get pairingConfiguringWait =>
      'Vă rugăm să așteptați până când dispozitivul se conectează la rețeaua dvs.';

  @override
  String get pairingReconnectTitle => 'Reconectați-vă la rețeaua dvs';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Dispozitivul dvs. Wemo se conectează acum la „$ssid”. Vă rugăm să vă reconectați telefonul la aceeași rețea.';
  }

  @override
  String get pairingBackOnHome => 'Înapoi în rețeaua de acasă!';

  @override
  String get pairingReconnectedButton => 'M-am reconectat';

  @override
  String get pairingFinalizingSetup => 'Se finalizează configurarea...';

  @override
  String get pairingSetupComplete => 'Configurare finalizată!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Conectat la $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Dispozitivul dvs. este acum configurat și va apărea pe ecranul de pornire.';

  @override
  String get pairingSomethingWrong => 'Ceva a mers prost';

  @override
  String get pairingStartOver => 'Începe de la capăt';

  @override
  String get pairingErrorOpenWifi =>
      'Nu s-au putut deschide setările WiFi. Vă rugăm să le deschideți manual.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Telefonul dvs. este încă conectat la „$ssid”. Deschideți setările WiFi, conectați-vă la rețeaua de dispozitive WeMo, apoi încercați din nou.';
  }

  @override
  String get pairingLoadingLooking => 'Caut dispozitiv...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Nu s-a putut găsi dispozitivul WeMo la $ip. Asigurați-vă că telefonul este conectat la rețeaua WeMo WiFi, apoi încercați din nou. De asemenea, puteți introduce manual dispozitivul IP.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Eroare la descoperirea dispozitivului: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Se conectează la $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Nu a fost găsit niciun dispozitiv la $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Eroare la conectarea la $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Se scanează pentru rețele...';

  @override
  String pairingErrorScanning(String error) {
    return 'Nu s-au putut scana rețelele: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Vă rugăm să selectați o rețea și introduceți parola.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Se trimit acreditările de rețea...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Se așteaptă conectarea dispozitivului...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Nu s-a putut configura rețeaua: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Parola prea scurtă. Vă rugăm să verificați și să încercați din nou.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Nu s-a putut conecta. Vă rugăm să verificați parola.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Conexiunea a expirat. Vă rugăm să încercați din nou.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Eroare la finalizarea configurării: $error';
  }

  @override
  String get detailRefreshState => 'Starea de reîmprospătare';

  @override
  String get detailDeviceInfo => 'Informații despre dispozitiv';

  @override
  String get detailAdvanced => 'Avansat';

  @override
  String get detailWifiSetup => 'Configurare WiFi';

  @override
  String get detailReset => 'Resetați';

  @override
  String get detailUnreachable =>
      'Dispozitivul este inaccesibil. Verificați conexiunea la rețea.';

  @override
  String detailFailedToggle(String error) {
    return 'Nu s-a putut comuta: $error';
  }

  @override
  String get detailDeviceInformation => 'Informații despre dispozitiv';

  @override
  String get detailPermissionScan =>
      'Este necesară permisiunea pentru a scana rețelele WiFi.';

  @override
  String get detailScanFailedManual =>
      'Nu s-au putut scana rețelele. Introduceți manual numele rețelei.';

  @override
  String get detailEnterNetworkNameError =>
      'Introduceți sau selectați un nume de rețea';

  @override
  String get detailEnterPasswordError =>
      'Vă rugăm să introduceți parola rețelei';

  @override
  String get detailWifiSuccess => 'WiFi a fost configurat cu succes!';

  @override
  String get detailScanNetworks => 'Scanați pentru rețele';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configurați rețeaua WiFi pentru „$device”';
  }

  @override
  String get detailAvailableNetworks => 'Rețele disponibile';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS interzice strict scanarea aplicațiilor terță parte pentru rețelele Wi-Fi din apropiere. Introduceți manual numele rețelei dvs. mai jos.';

  @override
  String get detailTapRefreshScan =>
      'Atingeți reîmprospătare pentru a căuta rețele';

  @override
  String get detailEnterNetworkBelow =>
      'Introduceți mai jos numele rețelei dvs';

  @override
  String get detailNetworkCredentials => 'Acreditări de rețea';

  @override
  String get detailConnecting => 'Se conectează la rețea...';

  @override
  String get detailConnected => 'Conectat cu succes!';

  @override
  String get detailPasswordShort => 'Parola este prea scurtă';

  @override
  String get detailAuthenticationFailed =>
      'Autentificarea eșuată - verificați parola';

  @override
  String get detailConnectionFailed => 'Conexiunea a eșuat';

  @override
  String get detailSelectReset => 'Vă rugăm să selectați ce să resetați';

  @override
  String get detailResetSchedulesWarning =>
      '• Toate programele și regulile de automatizare vor fi șterse';

  @override
  String get detailResetWifiWarning => '• Setările WiFi vor fi șterse';

  @override
  String get detailSetupAgainWarning =>
      '• Va trebui să configurați din nou dispozitivul';

  @override
  String get detailUnreachableWarning =>
      '• Dispozitivul poate deveni temporar inaccesibil';

  @override
  String get detailConfirmReset => 'Confirmați resetarea';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Sigur doriți să resetați „$device”?';
  }

  @override
  String get detailThisWill => 'Aceasta va:';

  @override
  String get detailCannotUndo => 'Această acțiune nu poate fi anulată.';

  @override
  String get detailYesReset => 'Da, resetează';

  @override
  String get detailResetSuccess => 'Dispozitivul a fost resetat cu succes';

  @override
  String get detailResetRemote => 'Dispozitivul se va reseta de la distanță';

  @override
  String get detailResetFailed => 'Resetarea a eșuat';

  @override
  String get detailFactoryReset => 'Resetare din fabrică';

  @override
  String get detailFactoryResetWarning =>
      'Aceasta va șterge TOATE setările și va restabili dispozitivul la setările implicite din fabrică. Va trebui să configurați din nou dispozitivul.\n\nAceastă acțiune nu poate fi anulată.';

  @override
  String get detailFactoryResetInitiated =>
      'Resetarea din fabrică a fost inițiată';

  @override
  String get detailResetDevice => 'Resetați dispozitivul';

  @override
  String detailResetOptionsFor(String device) {
    return 'Opțiuni de resetare pentru „$device”';
  }

  @override
  String get detailResetUserData => 'Resetați datele utilizatorului';

  @override
  String get detailResetUserDataSubtitle => 'Șterge programele și regulile';

  @override
  String get detailResetWifi => 'Resetați setările WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Dispozitivul va trebui configurat din nou';

  @override
  String get widgetBrightness => 'Luminozitate';

  @override
  String get widgetEnergyStatistics => 'Statistici energetice';

  @override
  String get widgetCurrentPower => 'Puterea curentă';

  @override
  String get widgetToday => 'Astăzi';

  @override
  String get widgetTotal => 'Total';

  @override
  String get widgetOnTimeToday => 'Azi la timp';

  @override
  String get widgetTotalOnTime => 'Total la timp';

  @override
  String get widgetStandby => 'Standby';

  @override
  String get widgetUnknown => 'Necunoscut';

  @override
  String get widgetOpenNetwork => 'Rețea deschisă';

  @override
  String get widgetWepInsecure => 'WEP (nesigur)';
}
