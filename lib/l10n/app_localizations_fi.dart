// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Laite ei tue tätä toimintoa.';

  @override
  String get errInvalidArgs =>
      'Virheelliset argumentit lähetettiin laitteeseen.';

  @override
  String get errActionFailed => 'Laite ei suorittanut pyydettyä toimintoa.';

  @override
  String get errInvalidValue => 'Annettiin virheellinen arvo.';

  @override
  String get errValueOutOfRange => 'Arvo on hyväksyttävän alueen ulkopuolella.';

  @override
  String get errFeatureNotAvailable =>
      'Tämä ominaisuus ei ole käytettävissä tässä laitteessa.';

  @override
  String get errOutOfMemory =>
      'Laitteen muisti on lopussa. Yritä myöhemmin uudelleen.';

  @override
  String get errManualActionRequired =>
      'Laitteessa tarvitaan manuaalisia toimenpiteitä.';

  @override
  String get errActionNotAuthorized => 'Tämä toiminto ei ole valtuutettu.';

  @override
  String get errUnexpected => 'Tapahtui odottamaton virhe. Yritä uudelleen.';

  @override
  String get errDeviceUnreachableOffline =>
      'Laitteeseen ei saada yhteyttä. Se voi olla offline-tilassa tai eri verkossa.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Pyyntö aikakatkaistiin $attempts-yritysten jälkeen. Laite voi olla offline-tilassa.';
  }

  @override
  String get errRequestTimedOut =>
      'Pyyntö aikakatkaistiin. Laite voi olla offline-tilassa.';

  @override
  String get errNoRouteToHost =>
      'Laitteeseen ei päästä käsiksi. Tarkista WiFi-liitäntäsi.';

  @override
  String get errHostUnreachable =>
      'Laite ei ole tavoitettavissa. Varmista, että se on päällä ja kytketty WiFi:ään.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Yhteydenpito laitteen kanssa ei onnistu $attempts-yritysten jälkeen.';
  }

  @override
  String get errNetworkErrorComm =>
      'Verkkovirhe: kommunikointi laitteen kanssa ei onnistu.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Tätä toimintoa ei ole valtuutettu laitteessa.';

  @override
  String get errDeviceServiceNotFound =>
      'Laitepalvelua ei löydy. Laite saattaa tarvita laiteohjelmistopäivityksen.';

  @override
  String get errDeviceEncounteredError =>
      'Laite havaitsi virheen pyynnön käsittelyssä.';

  @override
  String get errDeviceInternalError => 'Laite palautti sisäisen virheen.';

  @override
  String get errDeviceTempUnavailable =>
      'Laite on tilapäisesti poissa käytöstä. Yritä uudelleen.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Laite palautti virheen (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Laitteen $action epäonnistui.';
  }

  @override
  String get errDeviceReturnedError => 'Laite palautti virheen.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation:n toiminta aikakatkaistiin. Yritä uudelleen.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Toiminta aikakatkaistiin $seconds sekunnin jälkeen.';
  }

  @override
  String get errOperationTimedOut =>
      'Toiminta aikakatkaistiin. Yritä uudelleen.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Ota paikallisverkon käyttöoikeus käyttöön asetuksista löytääksesi laitteita.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Paikalliseen verkkoon ei pääse. Ota paikallisverkon käyttöoikeus käyttöön asetuksista.';

  @override
  String get errCheckWifiConnection =>
      'Laitteita ei löydy. Tarkista WiFi-liitäntäsi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Löytö keskeytettiin. Löytyi $count-laitteita.';
  }

  @override
  String get errNoDevicesFound =>
      'Laitteita ei löytynyt. Varmista, että laitteet ovat päällä ja kytketty verkkoosi.';

  @override
  String get actionGetDeviceState => 'saada laitteen tila';

  @override
  String get actionSetDeviceState => 'aseta laitteen tila';

  @override
  String get actionGetEnergyData => 'saada energiatietoja';

  @override
  String get actionScanNetworks => 'etsi verkkoja';

  @override
  String get actionConnectWifi => 'yhdistä WiFi:ään';

  @override
  String get actionCheckConnection => 'tarkista yhteyden tila';

  @override
  String get actionResetDevice => 'nollaa laite';

  @override
  String get actionPerform => 'suorittaa toimintoa';

  @override
  String get suggestTryRefreshing =>
      'Yritä päivittää laiteluettelo tai tarkista, vastaako laite.';

  @override
  String get suggestEnsurePoweredOn =>
      'Varmista, että laite on päällä ja yhdistetty WiFi-verkkoosi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Varmista, että puhelimesi on yhdistetty samaan WiFi-verkkoon laitteesi kanssa.';

  @override
  String get suggestCheckPhysical =>
      'Tarkista, onko fyysisessä laitteessa painikkeita tai kytkimiä, jotka vaativat huomiota.';

  @override
  String get suggestWaitAndTry => 'Odota hetki ja yritä uudelleen.';

  @override
  String get suggestDeviceBusy =>
      'Laite voi olla varattu. Yritä uudelleen muutaman sekunnin kuluttua.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Peruuta';

  @override
  String get commonClose => 'Sulje';

  @override
  String get commonDone => 'Valmis';

  @override
  String get commonLater => 'Myöhemmin';

  @override
  String get commonRefresh => 'Päivitä';

  @override
  String get commonTryAgain => 'Yritä uudelleen';

  @override
  String get commonOpenSettings => 'Avaa Asetukset';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Korjaa';

  @override
  String get commonOn => 'Päällä';

  @override
  String get commonOff => 'Pois päältä';

  @override
  String get commonOffline => 'Offline-tilassa';

  @override
  String get commonStatus => 'Tila';

  @override
  String get commonName => 'Nimi';

  @override
  String get commonType => 'Kirjoita';

  @override
  String get commonModel => 'Malli';

  @override
  String get commonManufacturer => 'Valmistaja';

  @override
  String get commonSerial => 'Sarja';

  @override
  String get commonFirmware => 'Laiteohjelmisto';

  @override
  String get commonHost => 'Isäntä';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Salasana';

  @override
  String get commonUnknownWifi => 'Tuntematon Wi-Fi';

  @override
  String get commonNotConnected => 'Ei yhdistetty';

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
      other: '$seconds sekuntia',
      one: '1 sekunti',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Älykäs kytkin';

  @override
  String get deviceTypeLightSwitch => 'Valokytkin';

  @override
  String get deviceTypeDimmer => 'Himmennin';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Liiketunnistin';

  @override
  String get deviceTypeMaker => 'Tekijä';

  @override
  String get deviceTypeBridge => 'Silta';

  @override
  String get deviceTypeCoffeeMaker => 'Kahvinkeitin';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Kostutin';

  @override
  String get deviceTypeOutdoorPlug => 'Ulkopistoke';

  @override
  String get deviceTypeUnknown => 'Tuntematon laite';

  @override
  String get pairingStepGetStarted => 'Aloita';

  @override
  String get pairingStepConnectToDevice => 'Yhdistä laitteeseen';

  @override
  String get pairingStepFindDevice => 'Etsi laite';

  @override
  String get pairingStepSelectNetwork => 'Valitse Verkko';

  @override
  String get pairingStepConfiguring => 'Määritetään';

  @override
  String get pairingStepReconnect => 'Yhdistä uudelleen';

  @override
  String get pairingStepFinalizing => 'Viimeistellään';

  @override
  String get pairingStepSuccess => 'Menestystä';

  @override
  String get pairingStepError => 'Virhe';

  @override
  String get homeToggleDebug => 'Vaihda virheenkorjaustilaa';

  @override
  String get homeRefreshDevices => 'Päivitä laitteet';

  @override
  String get homeSettings => 'Asetukset';

  @override
  String get homeDismiss => 'Hylkää';

  @override
  String get homeDiscovering => 'Etsitään laitteita...';

  @override
  String get homeNoDevices => 'Laitteita ei löytynyt';

  @override
  String get homeScanDevices => 'Etsi laitteita';

  @override
  String get homeLookingForMore => 'Etsitään lisää laitteita...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Löytyi $count-laitteita',
      one: '1 laite löydetty',
      zero: 'Laitteita ei löytynyt',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-laitteita löydetty, skannataan...',
      one: '1 laite löydetty, skannataan...',
      zero: 'Laitteita ei löytynyt, skannataan...',
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
  String get homeConnectedWifi => 'Yhdistetty WiFi:ään';

  @override
  String get homePermissionExplanation =>
      'Sijaintitietoja käytetään Wi-Fi-tietojesi etsimiseen. Paikallisverkkoyhteyden avulla voit ohjata älykytkimiäsi ja laitteitasi.';

  @override
  String get homeDebugLog => 'Virheenkorjausloki';

  @override
  String get homeClear => 'Selkeä';

  @override
  String get homeDebugEmpty =>
      'Aloita etsiminen ja katso lokit napauttamalla Päivitä...';

  @override
  String get homeProbeHint => 'IP:Portti (esim. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Anturi';

  @override
  String get homeScanning => 'Skannataan...';

  @override
  String get homeScanSubnet => 'Tarkista koko aliverkko (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Alusta: $platform $version';
  }

  @override
  String get settingsTitle => 'Asetukset';

  @override
  String get settingsSectionNetwork => 'Verkko';

  @override
  String get settingsSectionDeviceSetup => 'Laitteen asetukset';

  @override
  String get settingsSectionDiscovery => 'Löytö';

  @override
  String get settingsSectionAbout => 'Tietoja';

  @override
  String get settingsSectionDebug => 'Debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Lupa myönnetty! WiFi nimi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Sijainti myönnetty, mutta tarvitaan myös paikallisverkon lupa. Tarkista Asetukset.';

  @override
  String get settingsLocationRequired => 'Paikkalupa vaaditaan';

  @override
  String get settingsLocationRequiredBody =>
      'WiFi-verkkonimen näyttäminen iOS vaatii sijaintiluvan.';

  @override
  String get settingsRequiredPermissions => 'Vaaditut luvat:';

  @override
  String get settingsPermissionList =>
      '1. Sijaintipalvelut (\"Käytettäessä sovellusta\")\n2. Paikallinen verkko';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Huomautus: Laitteen etsintä toimii ilman sijaintilupaa. Tätä lupaa käytetään vain WiFi-verkkonimesi näyttämiseen.';

  @override
  String get settingsEnableLocation => 'Ota sijainti käyttöön asetuksista';

  @override
  String get settingsLocationDeniedBody =>
      'Sijaintilupa evättiin. Voit ottaa sen käyttöön järjestelmäasetuksista.';

  @override
  String get settingsStepsToEnable => 'Käyttöönoton vaiheet:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Avaa Asetukset\n2. Vieritä kohtaan \"Bit Switch\"\n3. Napauta \"Sijainti\"\n4. Valitse \"Käytettäessä sovellusta\"\n5. Palaa tähän sovellukseen ja napauta päivityspainiketta';

  @override
  String get settingsLocationOnlyWifiName =>
      'Huomautus: Sijaintilupa tarvitaan vain WiFi-nimen näyttämiseen. Laitehaku toimii ilman sitä.';

  @override
  String get settingsAdditionalPermission => 'Lisälupa tarvitaan';

  @override
  String get settingsLocalNetworkBody =>
      'Paikallisen verkon lupa vaaditaan Wemo-laitteiden löytämiseen ja ohjaamiseen.';

  @override
  String get settingsWifiNameNotVisible =>
      'Sinulla on sijaintilupa, mutta WiFi-nimi ei ole vielä näkyvissä.';

  @override
  String get settingsPleaseEnable => 'Ota käyttöön:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Siirry iPhonen asetuksiin\n2. Vieritä alas kohtaan \"Bit Switch\"\n3. Ota \"Paikallinen verkko\" käyttöön';

  @override
  String get settingsLocalNetworkIosReason =>
      'Paikallisen verkon käyttöoikeus vaaditaan sekä laitteen etsintään että WiFi-nimen käyttöön iOS:ssä.';

  @override
  String get settingsPairNewDevice => 'Yhdistä uusi laite';

  @override
  String get settingsPairNewDeviceSubtitle => 'Asenna uusi Wemo-laite';

  @override
  String get settingsDiscoveryTimeout => 'Löytämisen aikakatkaisu';

  @override
  String get settingsRequestTimeout => 'Pyydä aikakatkaisua';

  @override
  String get settingsAutoRefresh => 'Automaattinen päivitys';

  @override
  String get settingsAutoRefreshOn =>
      'Päällä – Laitteen tilat päivittyvät automaattisesti';

  @override
  String get settingsAutoRefreshOff =>
      'Off - Käytä manuaalista päivityspainiketta';

  @override
  String get settingsAutoRefreshInterval =>
      'Automaattisen päivityksen aikaväli';

  @override
  String get settingsAbout => 'Tietoja Bit Switch:stä';

  @override
  String get settingsVersion => 'Versio';

  @override
  String get settingsNetworkDiagnostics => 'Verkkodiagnostiikka';

  @override
  String get settingsShowDebug => 'Näytä virheenkorjaustila';

  @override
  String get settingsShowDebugSubtitle =>
      'Näytä virheenkorjausohjaimet ja verkkodiagnostiikka aloitusnäytössä';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Näytä virheenkorjauskuvake aloitusnäytössä vianmääritystä varten';

  @override
  String get settingsCurrentNetwork => 'Nykyinen verkko';

  @override
  String get settingsNetworkAccessStatus => 'Verkkoyhteyden tila';

  @override
  String get settingsNetworkAccessGranted =>
      'Paikallinen verkkoyhteys on käytettävissä';

  @override
  String get settingsNetworkAccessMissing => 'Lisälupia voidaan tarvita';

  @override
  String get settingsChecking => 'Tarkistetaan...';

  @override
  String get settingsEnableLocalNetwork =>
      'Ota paikallinen verkko käyttöön asetuksissa';

  @override
  String get settingsNotConnectedWifi => 'Ei yhdistetty WiFi:ään';

  @override
  String get settingsPermissionRequiredView => 'Katsomiseen vaaditaan lupa';

  @override
  String get settingsAllPermissionsGranted => 'Kaikki luvat myönnetty';

  @override
  String get settingsLocalNetworkNeeded => 'Paikallisen verkon lupa tarvitaan';

  @override
  String get settingsLocationNeeded => 'Sijaintilupa tarvitaan';

  @override
  String get settingsRefreshPermissions => 'Päivitä käyttöoikeudet';

  @override
  String get settingsAboutWifiPermission => 'Tietoja WiFi-nimiluvasta';

  @override
  String get settingsWifiPermissionExplanation =>
      'WiFi-nimesi auttaa varmistamaan, että puhelimesi ja Wemo-laitteet ovat samassa verkossa.';

  @override
  String get settingsWifiPermissionIos =>
      'iOS:ssä WiFi-verkkonimen näyttäminen vaatii sijaintiluvan.';

  @override
  String get settingsImportant => 'Tärkeää:';

  @override
  String get settingsPrivacyNote =>
      '• Sijaintiasi ei koskaan seurata\n• Sijaintitietoja ei kerätä tai tallenneta';

  @override
  String get settingsWifiPermissionImportant =>
      '• Laitteen etsintä toimii ILMAN tätä lupaa\n• Tätä tarvitaan vain WiFi-nimen näyttämiseen\n• Sijaintitietoja ei kerätä tai tallenneta';

  @override
  String get settingsGrantPermission => 'Myönnä lupa';

  @override
  String get settingsHowLongScan => 'Kuinka kauan laitteita etsitään:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Etsinnän aikakatkaisuksi asetettu $seconds sekuntia';
  }

  @override
  String get settingsHowLongResponses =>
      'Kuinka kauan odottaa laitteen vastauksia:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Suurenna tätä arvoa, jos näet \"Yhteys suljettu\" -virheen.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Pyynnön aikakatkaisuksi on asetettu $seconds sekuntia';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Aseta automaattisen tilan päivityksen aikaväli:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Päivitysväliksi on asetettu $seconds sekuntia';
  }

  @override
  String get settingsAboutTagline =>
      'Puhdas, yksityinen paikallinen ohjain Wemo-laitteillesi.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch käyttää paikallisen verkon etsintää laitteiden etsimiseen ja ohjaamiseen ilman pilviriippuvuuksia.';

  @override
  String get settingsVersionValue => 'Versio 1.0.1';

  @override
  String get settingsProtocol => 'Protokolla: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast-osoite: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Laiteportit: 49152-49159';

  @override
  String get settingsControlProtocol => 'Ohjausprotokolla: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Vinkki: Varmista, että laitteesi on samassa verkossa Wemo-laitteesi kanssa ja että UDP-monilähetystä ei ole estetty.';

  @override
  String get settingsDevicePaired =>
      'Laite paritettu! Päivitetään laiteluetteloa...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekuntia per pyyntö';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Päivitys jokaiselle $seconds:lle';
  }

  @override
  String get pairingTitle => 'Yhdistä uusi laite';

  @override
  String get pairingSetupTitle => 'Asenna Wemo-laitteesi';

  @override
  String get pairingBeforeBegin =>
      'Ennen kuin aloitat, varmista, että Wemo-laitteesi on asetustilassa:';

  @override
  String get pairingPlugInTitle => 'Liitä Wemo-laitteesi';

  @override
  String get pairingPlugInBody =>
      'Kytke se virtalähteeseen ja odota, että se käynnistyy.';

  @override
  String get pairingBlinkingLedTitle => 'Etsi vilkkuva LED';

  @override
  String get pairingBlinkingLedBody =>
      'Vilkkuva LED osoittaa, että laite on asetustilassa.';

  @override
  String get pairingCheckWifiTitle => 'Tarkista WiFi-verkko';

  @override
  String get pairingCheckWifiBody =>
      'Laite lähettää verkon nimeltä \"WeMo.XXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Jos LED-valo palaa tasaisesti, paina nollauspainiketta 5 sekunnin ajan siirtyäksesi asetustilaan.';

  @override
  String get pairingStart => 'Aloita pariliitos';

  @override
  String get pairingConnectWifiTitle => 'Yhdistä laitteeseen WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Avaa puhelimesi WiFi-asetukset ja muodosta yhteys verkkoon, jonka alussa on \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Nykyinen verkko';

  @override
  String get pairingConnectedToDevice => 'Yhdistetty Wemo-laitteeseen!';

  @override
  String get pairingOpenWifiSettings => 'Avaa WiFi-asetukset';

  @override
  String get pairingConnectedButton => 'Olen muodostanut yhteyden';

  @override
  String get pairingLookingForDevice => 'Etsitkö Wemo-laitettasi...';

  @override
  String get pairingManualIpPrompt => 'Tai syötä laite IP manuaalisesti:';

  @override
  String get pairingDeviceIp => 'Laitteen IP osoite';

  @override
  String get pairingConnectToIp => 'Yhdistä IP:ään';

  @override
  String get pairingSelectHomeWifi => 'Valitse kotiverkkosi WiFi:';

  @override
  String get pairingRefreshNetworks => 'Päivitä verkot';

  @override
  String get pairingIosScanLimitation =>
      'iOS kieltää tiukasti kolmansien osapuolien sovelluksia etsimästä lähellä olevia Wi-Fi-verkkoja. Sinun on ehkä syötettävä verkko SSID manuaalisesti.';

  @override
  String get pairingNoNetworks => 'Verkkoja ei löytynyt';

  @override
  String get pairingScanAgain => 'Skannaa uudelleen';

  @override
  String get pairingWifiPassword => 'WiFi Salasana';

  @override
  String get pairingConnect => 'Yhdistä';

  @override
  String get pairingEnterNetworkManually => 'Syötä verkko manuaalisesti';

  @override
  String get pairingEnterNetworkName => 'Anna verkon nimi:';

  @override
  String get pairingNetworkName => 'Verkon nimi (SSID)';

  @override
  String get pairingUseNetwork => 'Käytä tätä verkkoa';

  @override
  String get pairingConfiguringDevice => 'Konfiguroidaan laitetta...';

  @override
  String get pairingConfiguringWait =>
      'Odota, kunnes laite muodostaa yhteyden verkkoosi.';

  @override
  String get pairingReconnectTitle => 'Muodosta yhteys verkkoosi';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Wemo-laitteesi muodostaa nyt yhteyden \"$ssid\" -laitteeseen. Yhdistä puhelimesi uudelleen samaan verkkoon.';
  }

  @override
  String get pairingBackOnHome => 'Takaisin kotiverkkoon!';

  @override
  String get pairingReconnectedButton => 'Olen muodostanut yhteyden uudelleen';

  @override
  String get pairingFinalizingSetup => 'Viimeistetään asennusta...';

  @override
  String get pairingSetupComplete => 'Asennus valmis!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Yhdistetty $ssid:ään';
  }

  @override
  String get pairingDeviceReady =>
      'Laitteesi on nyt määritetty ja näkyy aloitusnäytössä.';

  @override
  String get pairingSomethingWrong => 'Jotain meni pieleen';

  @override
  String get pairingStartOver => 'Aloita alusta';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi-asetuksia ei voitu avata. Avaa ne manuaalisesti.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Puhelimesi on edelleen yhteydessä \"$ssid\". Avaa WiFi-asetukset, muodosta yhteys WeMo-laiteverkkoon ja yritä sitten uudelleen.';
  }

  @override
  String get pairingLoadingLooking => 'Etsitään laitetta...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'WeMo-laitetta ei löytynyt osoitteesta $ip. Varmista, että puhelimesi on yhdistetty WeMo WiFi -verkkoon, ja yritä sitten uudelleen. Voit myös syöttää laitteen IP manuaalisesti.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Virhe laitteen löytämisessä: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Yhdistetään $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Laitetta ei löytynyt osoitteesta $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Virhe yhdistettäessä $ip:ään: $error';
  }

  @override
  String get pairingLoadingScanning => 'Haetaan verkkoja...';

  @override
  String pairingErrorScanning(String error) {
    return 'Verkkoja ei voitu skannata: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Valitse verkko ja anna salasana.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Lähetetään verkkotunnuksia...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Odotetaan laitteen yhdistämistä...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Verkon määritys epäonnistui: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Salasana liian lyhyt. Tarkista ja yritä uudelleen.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Yhteyden muodostaminen epäonnistui. Tarkista salasana.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Yhteys aikakatkaistiin. Yritä uudelleen.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Virhe asennuksen viimeistelyssä: $error';
  }

  @override
  String get detailRefreshState => 'Päivitä tila';

  @override
  String get detailDeviceInfo => 'Laitteen tiedot';

  @override
  String get detailAdvanced => 'Edistynyt';

  @override
  String get detailWifiSetup => 'WiFi Asennus';

  @override
  String get detailReset => 'Nollaa';

  @override
  String get detailUnreachable =>
      'Laitteeseen ei saada yhteyttä. Tarkista verkkoyhteys.';

  @override
  String detailFailedToggle(String error) {
    return 'Vaihtaminen epäonnistui: $error';
  }

  @override
  String get detailDeviceInformation => 'Laitteen tiedot';

  @override
  String get detailPermissionScan =>
      'WiFi-verkkojen skannaamiseen vaaditaan lupa.';

  @override
  String get detailScanFailedManual =>
      'Verkkoja ei voitu skannata. Syötä verkon nimi manuaalisesti.';

  @override
  String get detailEnterNetworkNameError => 'Anna tai valitse verkon nimi';

  @override
  String get detailEnterPasswordError => 'Anna verkon salasana';

  @override
  String get detailWifiSuccess => 'WiFi määritetty onnistuneesti!';

  @override
  String get detailScanNetworks => 'Etsi verkkoja';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Määritä WiFi verkko \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Käytettävissä olevat verkot';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS kieltää tiukasti kolmansien osapuolien sovelluksia etsimästä lähellä olevia Wi-Fi-verkkoja. Anna verkkosi nimi manuaalisesti alle.';

  @override
  String get detailTapRefreshScan => 'Napauta Päivitä etsiäksesi verkkoja';

  @override
  String get detailEnterNetworkBelow => 'Kirjoita verkkosi nimi alle';

  @override
  String get detailNetworkCredentials => 'Verkkotunnukset';

  @override
  String get detailConnecting => 'Yhdistetään verkkoon...';

  @override
  String get detailConnected => 'Yhteyden muodostaminen onnistui!';

  @override
  String get detailPasswordShort => 'Salasana on liian lyhyt';

  @override
  String get detailAuthenticationFailed =>
      'Todennus epäonnistui - tarkista salasana';

  @override
  String get detailConnectionFailed => 'Yhteys epäonnistui';

  @override
  String get detailSelectReset => 'Valitse, mitä nollaat';

  @override
  String get detailResetSchedulesWarning =>
      '• Kaikki aikataulut ja automaatiosäännöt poistetaan';

  @override
  String get detailResetWifiWarning => '• WiFi-asetukset poistetaan';

  @override
  String get detailSetupAgainWarning =>
      '• Sinun on määritettävä laite uudelleen';

  @override
  String get detailUnreachableWarning =>
      '• Laite voi olla tilapäisesti saavuttamaton';

  @override
  String get detailConfirmReset => 'Vahvista Reset';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Haluatko varmasti nollata \"$device\"?';
  }

  @override
  String get detailThisWill => 'Tämä:';

  @override
  String get detailCannotUndo => 'Tätä toimintoa ei voi kumota.';

  @override
  String get detailYesReset => 'Kyllä, Reset';

  @override
  String get detailResetSuccess => 'Laitteen nollaus onnistui';

  @override
  String get detailResetRemote => 'Laite nollataan etänä';

  @override
  String get detailResetFailed => 'Nollaus epäonnistui';

  @override
  String get detailFactoryReset => 'Tehdasasetusten palautus';

  @override
  String get detailFactoryResetWarning =>
      'Tämä poistaa KAIKKI asetukset ja palauttaa laitteen tehdasasetuksiin. Sinun on määritettävä laite uudelleen.\n\nTätä toimintoa ei voi kumota.';

  @override
  String get detailFactoryResetInitiated =>
      'Tehdasasetusten palautus aloitettu';

  @override
  String get detailResetDevice => 'Nollaa laite';

  @override
  String detailResetOptionsFor(String device) {
    return 'Nollaa asetukset \"$device\"';
  }

  @override
  String get detailResetUserData => 'Nollaa käyttäjätiedot';

  @override
  String get detailResetUserDataSubtitle => 'Tyhjentää aikataulut ja säännöt';

  @override
  String get detailResetWifi => 'Palauta WiFi-asetukset';

  @override
  String get detailResetWifiSubtitle => 'Laite on määritettävä uudelleen';

  @override
  String get widgetBrightness => 'Kirkkaus';

  @override
  String get widgetEnergyStatistics => 'Energiatilastot';

  @override
  String get widgetCurrentPower => 'Nykyinen teho';

  @override
  String get widgetToday => 'Tänään';

  @override
  String get widgetTotal => 'Yhteensä';

  @override
  String get widgetOnTimeToday => 'Ajoissa tänään';

  @override
  String get widgetTotalOnTime => 'Kokonaisaika';

  @override
  String get widgetStandby => 'Valmiustila';

  @override
  String get widgetUnknown => 'Tuntematon';

  @override
  String get widgetOpenNetwork => 'Avoin verkko';

  @override
  String get widgetWepInsecure => 'WEP (suojaamaton)';
}
