// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Naprava ne podpira tega dejanja.';

  @override
  String get errInvalidArgs =>
      'V napravo so bili poslani neveljavni argumenti.';

  @override
  String get errActionFailed =>
      'Naprava ni uspela izvesti zahtevanega dejanja.';

  @override
  String get errInvalidValue => 'Podana je bila neveljavna vrednost.';

  @override
  String get errValueOutOfRange => 'Vrednost je izven sprejemljivega obsega.';

  @override
  String get errFeatureNotAvailable => 'Ta funkcija ni na voljo v tej napravi.';

  @override
  String get errOutOfMemory =>
      'Napravi je zmanjkalo pomnilnika. Poskusite znova pozneje.';

  @override
  String get errManualActionRequired =>
      'Na napravi je potrebno ročno ukrepanje.';

  @override
  String get errActionNotAuthorized => 'To dejanje ni dovoljeno.';

  @override
  String get errUnexpected =>
      'Prišlo je do nepričakovane napake. prosim poskusite ponovno';

  @override
  String get errDeviceUnreachableOffline =>
      'Naprave ni mogoče doseči. Morda je brez povezave ali v drugem omrežju.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Časovna omejitev zahteve je potekla po poskusih $attempts. Naprava je morda brez povezave.';
  }

  @override
  String get errRequestTimedOut =>
      'Časovna omejitev zahteve je potekla. Naprava je morda brez povezave.';

  @override
  String get errNoRouteToHost =>
      'Naprave ni mogoče doseči. Preverite povezavo WiFi.';

  @override
  String get errHostUnreachable =>
      'Naprava je nedosegljiva. Prepričajte se, da je vklopljen in povezan z WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Po poskusih $attempts ni mogoče komunicirati z napravo.';
  }

  @override
  String get errNetworkErrorComm =>
      'Omrežna napaka: ni mogoče komunicirati z napravo.';

  @override
  String get errActionNotAuthorizedDevice =>
      'To dejanje v napravi ni dovoljeno.';

  @override
  String get errDeviceServiceNotFound =>
      'Storitev naprave ni bila najdena. Naprava morda potrebuje posodobitev vdelane programske opreme.';

  @override
  String get errDeviceEncounteredError =>
      'Naprava je pri obdelavi zahteve naletela na napako.';

  @override
  String get errDeviceInternalError => 'Naprava je vrnila notranjo napako.';

  @override
  String get errDeviceTempUnavailable =>
      'Naprava trenutno ni na voljo. prosim poskusite ponovno';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Naprava je vrnila napako (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '$action v napravi ni uspelo.';
  }

  @override
  String get errDeviceReturnedError => 'Naprava je vrnila napako.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Časovna omejitev operacije $operation je potekla. prosim poskusite ponovno';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Časovna omejitev operacije je potekla po $seconds sekundah.';
  }

  @override
  String get errOperationTimedOut =>
      'Časovna omejitev operacije je potekla. prosim poskusite ponovno';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Za iskanje naprav omogočite dovoljenje za lokalno omrežje v nastavitvah.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Ni mogoče dostopati do lokalnega omrežja. V nastavitvah omogočite dovoljenje za lokalno omrežje.';

  @override
  String get errCheckWifiConnection =>
      'Naprav ni mogoče odkriti. Preverite povezavo WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Odkrivanje prekinjeno. Najdene naprave $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Najdena ni bila nobena naprava. Prepričajte se, da so naprave vklopljene in povezane v vaše omrežje.';

  @override
  String get actionGetDeviceState => 'pridobi stanje naprave';

  @override
  String get actionSetDeviceState => 'nastavite stanje naprave';

  @override
  String get actionGetEnergyData => 'dobite podatke o energiji';

  @override
  String get actionScanNetworks => 'iskanje omrežij';

  @override
  String get actionConnectWifi => 'povežite z WiFi';

  @override
  String get actionCheckConnection => 'preverite stanje povezave';

  @override
  String get actionResetDevice => 'ponastavite napravo';

  @override
  String get actionPerform => 'izvesti dejanje';

  @override
  String get suggestTryRefreshing =>
      'Poskusite osvežiti seznam naprav ali preverite, ali se naprava odziva.';

  @override
  String get suggestEnsurePoweredOn =>
      'Prepričajte se, da je naprava vklopljena in povezana z vašim omrežjem WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Prepričajte se, da je vaš telefon povezan v isto omrežje WiFi kot vaše naprave.';

  @override
  String get suggestCheckPhysical =>
      'Preverite, ali so na fizični napravi kakršni koli gumbi ali stikala, na katera je treba paziti.';

  @override
  String get suggestWaitAndTry => 'Počakajte trenutek in poskusite znova.';

  @override
  String get suggestDeviceBusy =>
      'Naprava je morda zasedena. Poskusite ponovno čez nekaj sekund.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Prekliči';

  @override
  String get commonClose => 'Zapri';

  @override
  String get commonDone => 'Končano';

  @override
  String get commonLater => 'Kasneje';

  @override
  String get commonRefresh => 'Osveži';

  @override
  String get commonTryAgain => 'Poskusi znova';

  @override
  String get commonOpenSettings => 'Odprite nastavitve';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Popravi';

  @override
  String get commonOn => 'Vklopljeno';

  @override
  String get commonOff => 'Izključeno';

  @override
  String get commonOffline => 'Brez povezave';

  @override
  String get commonStatus => 'Stanje';

  @override
  String get commonName => 'Ime';

  @override
  String get commonType => 'Vrsta';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Proizvajalec';

  @override
  String get commonSerial => 'Serijski';

  @override
  String get commonFirmware => 'Vdelana programska oprema';

  @override
  String get commonHost => 'Gostitelj';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Geslo';

  @override
  String get commonUnknownWifi => 'Neznan Wi-Fi';

  @override
  String get commonNotConnected => 'Ni povezano';

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
      one: '1 sekundo',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Pametno stikalo';

  @override
  String get deviceTypeLightSwitch => 'Stikalo za luči';

  @override
  String get deviceTypeDimmer => 'Zatemnitev';

  @override
  String get deviceTypeInsightPlug => 'Vtič Insight';

  @override
  String get deviceTypeMotionSensor => 'Senzor gibanja';

  @override
  String get deviceTypeMaker => 'Izdelovalec';

  @override
  String get deviceTypeBridge => 'Most';

  @override
  String get deviceTypeCoffeeMaker => 'Aparat za kavo';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Vlažilec zraka';

  @override
  String get deviceTypeOutdoorPlug => 'Zunanji vtič';

  @override
  String get deviceTypeUnknown => 'Neznana naprava';

  @override
  String get pairingStepGetStarted => 'Začnite';

  @override
  String get pairingStepConnectToDevice => 'Povežite se z napravo';

  @override
  String get pairingStepFindDevice => 'Poiščite napravo';

  @override
  String get pairingStepSelectNetwork => 'Izberite Omrežje';

  @override
  String get pairingStepConfiguring => 'Konfiguriranje';

  @override
  String get pairingStepReconnect => 'Ponovno vzpostavite povezavo';

  @override
  String get pairingStepFinalizing => 'Zaključevanje';

  @override
  String get pairingStepSuccess => 'Uspeh';

  @override
  String get pairingStepError => 'Napaka';

  @override
  String get homeToggleDebug => 'Preklopi način odpravljanja napak';

  @override
  String get homeRefreshDevices => 'Osveži naprave';

  @override
  String get homeSettings => 'nastavitve';

  @override
  String get homeDismiss => 'Odpusti';

  @override
  String get homeDiscovering => 'Odkrivanje naprav ...';

  @override
  String get homeNoDevices => 'Najdena ni bila nobena naprava';

  @override
  String get homeScanDevices => 'Iskanje naprav';

  @override
  String get homeLookingForMore => 'Iščem več naprav ...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Najdene naprave $count',
      one: 'Najdena je bila 1 naprava',
      zero: 'Najdena ni bila nobena naprava',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Najdene naprave $count, skeniranje ...',
      one: 'Najdena 1 naprava, iskanje ...',
      zero: 'Ni najdenih naprav, iskanje ...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Avto';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Povezan z WiFi';

  @override
  String get homePermissionExplanation =>
      'Podatki o lokaciji se uporabljajo za iskanje podrobnosti o Wi-Fi. Dostop do lokalnega omrežja vam omogoča nadzor pametnih stikal in naprav.';

  @override
  String get homeDebugLog => 'Dnevnik odpravljanja napak';

  @override
  String get homeClear => 'jasno';

  @override
  String get homeDebugEmpty =>
      'Tapnite Osveži, da začnete odkrivanje in si ogledate dnevnike ...';

  @override
  String get homeProbeHint => 'IP:Vrata (npr. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'skeniranje ...';

  @override
  String get homeScanSubnet => 'Skeniraj celotno podomrežje (popravek za iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platforma: $platform $version';
  }

  @override
  String get settingsTitle => 'nastavitve';

  @override
  String get settingsSectionNetwork => 'Omrežje';

  @override
  String get settingsSectionDeviceSetup => 'Nastavitev naprave';

  @override
  String get settingsSectionDiscovery => 'Odkritje';

  @override
  String get settingsSectionAbout => 'O tem';

  @override
  String get settingsSectionDebug => 'Odpravljanje napak';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Dovoljenje izdano! Ime WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Lokacija je odobrena, vendar je potrebno tudi dovoljenje lokalnega omrežja. Preverite nastavitve.';

  @override
  String get settingsLocationRequired => 'Potrebno dovoljenje za lokacijo';

  @override
  String get settingsLocationRequiredBody =>
      'Za prikaz imena vašega omrežja WiFi iOS zahteva dovoljenje za lokacijo.';

  @override
  String get settingsRequiredPermissions => 'Zahtevana dovoljenja:';

  @override
  String get settingsPermissionList =>
      '1. Lokacijske storitve (\"Med uporabo aplikacije\")\n2. Lokalno omrežje';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Opomba: odkrivanje naprav deluje brez dovoljenja za lokacijo. To dovoljenje se uporablja samo za prikaz imena vašega omrežja WiFi.';

  @override
  String get settingsEnableLocation => 'Omogoči lokacijo v nastavitvah';

  @override
  String get settingsLocationDeniedBody =>
      'Dovoljenje za lokacijo je bilo zavrnjeno. Omogočite ga lahko v sistemskih nastavitvah.';

  @override
  String get settingsStepsToEnable => 'Koraki za omogočanje:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Odprite Nastavitve\n2. Pomaknite se do \"Bit Switch\"\n3. Tapnite \"Lokacija\"\n4. Izberite \"Med uporabo aplikacije\"\n5. Vrnite se v to aplikacijo in tapnite gumb za osvežitev';

  @override
  String get settingsLocationOnlyWifiName =>
      'Opomba: dovoljenje za lokacijo je potrebno samo za prikaz imena WiFi. Odkrivanje naprav deluje brez tega.';

  @override
  String get settingsAdditionalPermission => 'Potrebno je dodatno dovoljenje';

  @override
  String get settingsLocalNetworkBody =>
      'Za odkrivanje in nadzor naprav Wemo je potrebno dovoljenje lokalnega omrežja.';

  @override
  String get settingsWifiNameNotVisible =>
      'Imate dovoljenje za lokacijo, vendar ime WiFi še ni vidno.';

  @override
  String get settingsPleaseEnable => 'Omogočite:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Pojdite v nastavitve iPhone\n2. Pomaknite se navzdol do »Bit Switch«\n3. Omogočite \"Lokalno omrežje\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Za odkrivanje naprave in dostop do imena WiFi v sistemu iOS je potrebno dovoljenje lokalnega omrežja.';

  @override
  String get settingsPairNewDevice => 'Združi novo napravo';

  @override
  String get settingsPairNewDeviceSubtitle => 'Nastavite novo napravo Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Časovna omejitev odkritja';

  @override
  String get settingsRequestTimeout => 'Časovna omejitev zahteve';

  @override
  String get settingsAutoRefresh => 'Samodejno osveževanje';

  @override
  String get settingsAutoRefreshOn =>
      'Vklopljeno – stanja naprave se samodejno osvežijo';

  @override
  String get settingsAutoRefreshOff =>
      'Izklopljeno - Uporabi gumb za ročno osvežitev';

  @override
  String get settingsAutoRefreshInterval => 'Interval samodejnega osveževanja';

  @override
  String get settingsAbout => 'O Bit Switch';

  @override
  String get settingsVersion => 'Različica';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostika omrežja';

  @override
  String get settingsShowDebug => 'Pokaži način za odpravljanje napak';

  @override
  String get settingsShowDebugSubtitle =>
      'Pokažite kontrolnike za odpravljanje napak in diagnostiko omrežja na začetnem zaslonu';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Pokaži ikono za odpravljanje napak na začetnem zaslonu za odpravljanje težav';

  @override
  String get settingsCurrentNetwork => 'Trenutno omrežje';

  @override
  String get settingsNetworkAccessStatus => 'Stanje dostopa do omrežja';

  @override
  String get settingsNetworkAccessGranted =>
      'Dostop do lokalnega omrežja je na voljo';

  @override
  String get settingsNetworkAccessMissing =>
      'Morda bodo potrebna dodatna dovoljenja';

  @override
  String get settingsChecking => 'Preverjanje ...';

  @override
  String get settingsEnableLocalNetwork =>
      'V nastavitvah omogočite lokalno omrežje';

  @override
  String get settingsNotConnectedWifi => 'Ni povezan z WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Za ogled je potrebno dovoljenje';

  @override
  String get settingsAllPermissionsGranted => 'Vsa dovoljenja odobrena';

  @override
  String get settingsLocalNetworkNeeded =>
      'Potrebno je dovoljenje lokalnega omrežja';

  @override
  String get settingsLocationNeeded => 'Potrebno je dovoljenje za lokacijo';

  @override
  String get settingsRefreshPermissions => 'Osveži dovoljenja';

  @override
  String get settingsAboutWifiPermission => 'O dovoljenju za ime WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Vaše ime WiFi pomaga potrditi, da so vaš telefon in naprave Wemo v istem omrežju.';

  @override
  String get settingsWifiPermissionIos =>
      'V sistemu iOS je za prikaz imena vašega omrežja WiFi potrebno dovoljenje za lokacijo.';

  @override
  String get settingsImportant => 'Pomembno:';

  @override
  String get settingsPrivacyNote =>
      '• Vaša lokacija se nikoli ne spremlja\n• Podatki o lokaciji se ne zbirajo ali shranjujejo';

  @override
  String get settingsWifiPermissionImportant =>
      '• Odkrivanje naprav deluje BREZ tega dovoljenja\n• To je potrebno samo za prikaz imena WiFi\n• Podatki o lokaciji se ne zbirajo ali shranjujejo';

  @override
  String get settingsGrantPermission => 'Podeli dovoljenje';

  @override
  String get settingsHowLongScan => 'Kako dolgo je treba iskati naprave:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Časovna omejitev odkrivanja je nastavljena na $seconds sekund';
  }

  @override
  String get settingsHowLongResponses => 'Kako dolgo čakati na odziv naprave:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Povečajte to vrednost, če vidite napako »Povezava zaprta«.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Časovna omejitev zahteve je nastavljena na $seconds sekund';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Nastavite interval za samodejno osveževanje stanja:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Interval osveževanja je nastavljen na $seconds sekund';
  }

  @override
  String get settingsAboutTagline =>
      'Čist, zasebni lokalni krmilnik za vaše naprave Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch uporablja odkrivanje lokalnega omrežja za iskanje in nadzor naprav brez odvisnosti od oblaka.';

  @override
  String get settingsVersionValue => 'Različica 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast naslov: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Vrata naprave: 49152-49159';

  @override
  String get settingsControlProtocol => 'Nadzorni protokol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Namig: zagotovite, da je vaša naprava v istem omrežju kot vaše naprave Wemo in da UDP multicast ni blokiran.';

  @override
  String get settingsDevicePaired =>
      'Naprava je seznanjena! Osveževanje seznama naprav ...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekund na zahtevo';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Osvežitev vsakih ${seconds}s';
  }

  @override
  String get pairingTitle => 'Združi novo napravo';

  @override
  String get pairingSetupTitle => 'Nastavite svojo napravo Wemo';

  @override
  String get pairingBeforeBegin =>
      'Preden začnete, se prepričajte, da je vaša naprava Wemo v nastavitvenem načinu:';

  @override
  String get pairingPlugInTitle => 'Priključite svojo napravo Wemo';

  @override
  String get pairingPlugInBody =>
      'Priključite ga na napajanje in počakajte, da se zažene.';

  @override
  String get pairingBlinkingLedTitle => 'Poiščite utripajočo LED';

  @override
  String get pairingBlinkingLedBody =>
      'Utripajoča lučka LED pomeni, da je naprava v načinu nastavitve.';

  @override
  String get pairingCheckWifiTitle => 'Preverite omrežje WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Naprava bo oddajala omrežje z imenom \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Če lučka LED sveti, držite gumb za ponastavitev 5 sekund, da vstopite v nastavitveni način.';

  @override
  String get pairingStart => 'Začnite seznanjati';

  @override
  String get pairingConnectWifiTitle => 'Povežite se z napravo WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Odprite nastavitve WiFi v telefonu in se povežite z omrežjem, ki se začne z »WeMo«.';

  @override
  String get pairingCurrentNetwork => 'Trenutno omrežje';

  @override
  String get pairingConnectedToDevice => 'Povezan z napravo Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Odprite nastavitve WiFi';

  @override
  String get pairingConnectedButton => 'Povezal sem se';

  @override
  String get pairingLookingForDevice => 'Iščete svojo napravo Wemo ...';

  @override
  String get pairingManualIpPrompt => 'Ali pa ročno vnesite napravo IP:';

  @override
  String get pairingDeviceIp => 'Naslov naprave IP';

  @override
  String get pairingConnectToIp => 'Povežite se z IP';

  @override
  String get pairingSelectHomeWifi => 'Izberite domače omrežje WiFi:';

  @override
  String get pairingRefreshNetworks => 'Osveži omrežja';

  @override
  String get pairingIosScanLimitation =>
      'iOS aplikacijam tretjih oseb strogo prepoveduje iskanje bližnjih omrežij Wi-Fi. Morda boste morali ročno vnesti omrežje SSID.';

  @override
  String get pairingNoNetworks => 'Ni omrežij';

  @override
  String get pairingScanAgain => 'Skeniraj znova';

  @override
  String get pairingWifiPassword => 'Geslo WiFi';

  @override
  String get pairingConnect => 'Povežite se';

  @override
  String get pairingEnterNetworkManually => 'Vnesite omrežje ročno';

  @override
  String get pairingEnterNetworkName => 'Vnesite ime omrežja:';

  @override
  String get pairingNetworkName => 'Ime omrežja (SSID)';

  @override
  String get pairingUseNetwork => 'Uporabite to omrežje';

  @override
  String get pairingConfiguringDevice => 'Konfiguriranje naprave ...';

  @override
  String get pairingConfiguringWait =>
      'Počakajte, da se naprava poveže z vašim omrežjem.';

  @override
  String get pairingReconnectTitle => 'Ponovno se povežite z omrežjem';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Vaša naprava Wemo se zdaj povezuje z \"$ssid\". Ponovno povežite telefon z istim omrežjem.';
  }

  @override
  String get pairingBackOnHome => 'Ponovno v domačem omrežju!';

  @override
  String get pairingReconnectedButton => 'Ponovno sem vzpostavil povezavo';

  @override
  String get pairingFinalizingSetup => 'Zaključevanje nastavitve ...';

  @override
  String get pairingSetupComplete => 'Nastavitev končana!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Povezan z $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Vaša naprava je zdaj nastavljena in se bo prikazala na začetnem zaslonu.';

  @override
  String get pairingSomethingWrong => 'Nekaj je šlo narobe';

  @override
  String get pairingStartOver => 'Začni znova';

  @override
  String get pairingErrorOpenWifi =>
      'Ni bilo mogoče odpreti nastavitev WiFi. Odprite jih ročno.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Vaš telefon je še vedno povezan z \"$ssid\". Odprite nastavitve WiFi, povežite se z omrežjem naprave WeMo in poskusite znova.';
  }

  @override
  String get pairingLoadingLooking => 'Iščem napravo ...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Ni bilo mogoče najti naprave WeMo pri $ip. Preverite, ali je vaš telefon povezan z omrežjem WeMo WiFi, nato poskusite znova. Napravo IP lahko vnesete tudi ročno.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Napaka pri odkrivanju naprave: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Povezovanje z $ip ...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Pri $ip ni bilo mogoče najti nobene naprave';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Napaka pri povezovanju z $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Iskanje omrežij ...';

  @override
  String pairingErrorScanning(String error) {
    return 'Ni bilo mogoče skenirati omrežij: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Izberite omrežje in vnesite geslo.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Pošiljanje omrežnih poverilnic ...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Čakanje na povezavo naprave ...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Omrežja ni bilo mogoče konfigurirati: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Geslo je prekratko. Preverite in poskusite znova.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Povezava ni uspela. Preverite geslo.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Povezava je potekla. prosim poskusite ponovno';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Napaka pri dokončanju nastavitve: $error';
  }

  @override
  String get detailRefreshState => 'Osveži stanje';

  @override
  String get detailDeviceInfo => 'Informacije o napravi';

  @override
  String get detailAdvanced => 'Napredno';

  @override
  String get detailWifiSetup => 'Nastavitev WiFi';

  @override
  String get detailReset => 'Ponastavi';

  @override
  String get detailUnreachable =>
      'Naprava je nedosegljiva. Preverite omrežno povezavo.';

  @override
  String detailFailedToggle(String error) {
    return 'Preklop ni uspel: $error';
  }

  @override
  String get detailDeviceInformation => 'Informacije o napravi';

  @override
  String get detailPermissionScan =>
      'Za skeniranje omrežij WiFi je potrebno dovoljenje.';

  @override
  String get detailScanFailedManual =>
      'Ni bilo mogoče pregledati omrežij. Ročno vnesite ime omrežja.';

  @override
  String get detailEnterNetworkNameError => 'Vnesite ali izberite ime omrežja';

  @override
  String get detailEnterPasswordError => 'Vnesite omrežno geslo';

  @override
  String get detailWifiSuccess => 'WiFi uspešno konfiguriran!';

  @override
  String get detailScanNetworks => 'Iskanje omrežij';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurirajte omrežje WiFi za \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Razpoložljiva omrežja';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS aplikacijam tretjih oseb strogo prepoveduje iskanje bližnjih omrežij Wi-Fi. Spodaj ročno vnesite ime omrežja.';

  @override
  String get detailTapRefreshScan => 'Tapnite Osveži za iskanje omrežij';

  @override
  String get detailEnterNetworkBelow => 'Spodaj vnesite ime vašega omrežja';

  @override
  String get detailNetworkCredentials => 'Omrežne poverilnice';

  @override
  String get detailConnecting => 'Povezovanje z omrežjem ...';

  @override
  String get detailConnected => 'Uspešno vzpostavljena povezava!';

  @override
  String get detailPasswordShort => 'Geslo je prekratko';

  @override
  String get detailAuthenticationFailed =>
      'Preverjanje ni uspelo - preverite geslo';

  @override
  String get detailConnectionFailed => 'Povezava ni uspela';

  @override
  String get detailSelectReset => 'Izberite, kaj želite ponastaviti';

  @override
  String get detailResetSchedulesWarning =>
      '• Vsi urniki in pravila avtomatizacije bodo izbrisani';

  @override
  String get detailResetWifiWarning => '• Nastavitve WiFi bodo izbrisane';

  @override
  String get detailSetupAgainWarning =>
      '• Napravo boste morali znova nastaviti';

  @override
  String get detailUnreachableWarning =>
      '• Naprava lahko postane začasno nedosegljiva';

  @override
  String get detailConfirmReset => 'Potrdite ponastavitev';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Ali ste prepričani, da želite ponastaviti \"$device\"?';
  }

  @override
  String get detailThisWill => 'To bo:';

  @override
  String get detailCannotUndo => 'Tega dejanja ni mogoče razveljaviti.';

  @override
  String get detailYesReset => 'Da, ponastavi';

  @override
  String get detailResetSuccess => 'Ponastavitev naprave je bila uspešna';

  @override
  String get detailResetRemote => 'Naprava se bo ponastavila na daljavo';

  @override
  String get detailResetFailed => 'Ponastavitev ni uspela';

  @override
  String get detailFactoryReset => 'Ponastavitev na tovarniške nastavitve';

  @override
  String get detailFactoryResetWarning =>
      'S tem boste izbrisali VSE nastavitve in obnovili napravo na tovarniško privzete nastavitve. Napravo boste morali znova nastaviti.\n\nTega dejanja ni mogoče razveljaviti.';

  @override
  String get detailFactoryResetInitiated =>
      'Ponastavitev na tovarniške nastavitve se je začela';

  @override
  String get detailResetDevice => 'Ponastavi napravo';

  @override
  String detailResetOptionsFor(String device) {
    return 'Možnosti ponastavitve za \"$device\"';
  }

  @override
  String get detailResetUserData => 'Ponastavi uporabniške podatke';

  @override
  String get detailResetUserDataSubtitle => 'Počisti urnike in pravila';

  @override
  String get detailResetWifi => 'Ponastavite nastavitve WiFi';

  @override
  String get detailResetWifiSubtitle => 'Napravo bo treba znova nastaviti';

  @override
  String get widgetBrightness => 'Svetlost';

  @override
  String get widgetEnergyStatistics => 'Energetska statistika';

  @override
  String get widgetCurrentPower => 'Trenutna moč';

  @override
  String get widgetToday => 'Danes';

  @override
  String get widgetTotal => 'Skupaj';

  @override
  String get widgetOnTimeToday => 'Danes pravočasno';

  @override
  String get widgetTotalOnTime => 'Skupni čas';

  @override
  String get widgetStandby => 'Pripravljenost';

  @override
  String get widgetUnknown => 'Neznano';

  @override
  String get widgetOpenNetwork => 'Odprto omrežje';

  @override
  String get widgetWepInsecure => 'WEP (nevarno)';
}
