// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Het apparaat ondersteunt deze actie niet.';

  @override
  String get errInvalidArgs =>
      'Er zijn ongeldige argumenten naar het apparaat verzonden.';

  @override
  String get errActionFailed =>
      'Het apparaat heeft de gevraagde actie niet uitgevoerd.';

  @override
  String get errInvalidValue => 'Er is een ongeldige waarde opgegeven.';

  @override
  String get errValueOutOfRange =>
      'De waarde ligt buiten het acceptabele bereik.';

  @override
  String get errFeatureNotAvailable =>
      'Deze functie is niet beschikbaar op dit apparaat.';

  @override
  String get errOutOfMemory =>
      'Het apparaat heeft onvoldoende geheugen. Probeer het later opnieuw.';

  @override
  String get errManualActionRequired =>
      'Er is handmatige actie op het apparaat vereist.';

  @override
  String get errActionNotAuthorized => 'Deze actie is niet toegestaan.';

  @override
  String get errUnexpected =>
      'Er is een onverwachte fout opgetreden. Probeer het opnieuw.';

  @override
  String get errDeviceUnreachableOffline =>
      'Kan het apparaat niet bereiken. Het kan offline zijn of op een ander netwerk.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Er is een time-out opgetreden bij het verzoek na $attempts-pogingen. Het apparaat is mogelijk offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Verzoek is verlopen. Het apparaat is mogelijk offline.';

  @override
  String get errNoRouteToHost =>
      'Kan het apparaat niet bereiken. Controleer uw WiFi-verbinding.';

  @override
  String get errHostUnreachable =>
      'Het apparaat is onbereikbaar. Zorg ervoor dat deze is ingeschakeld en is aangesloten op de WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Kan niet communiceren met apparaat na $attempts-pogingen.';
  }

  @override
  String get errNetworkErrorComm =>
      'Netwerkfout: Kan niet communiceren met apparaat.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Deze actie is niet geautoriseerd op het apparaat.';

  @override
  String get errDeviceServiceNotFound =>
      'Apparaatservice niet gevonden. Het apparaat heeft mogelijk een firmware-update nodig.';

  @override
  String get errDeviceEncounteredError =>
      'Er is een fout opgetreden bij het verwerken van het verzoek.';

  @override
  String get errDeviceInternalError =>
      'Het apparaat heeft een interne fout geretourneerd.';

  @override
  String get errDeviceTempUnavailable =>
      'Het apparaat is tijdelijk niet beschikbaar. Probeer het opnieuw.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Apparaat heeft een fout geretourneerd (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Kan $action op het apparaat niet gebruiken.';
  }

  @override
  String get errDeviceReturnedError =>
      'Het apparaat heeft een fout geretourneerd.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Er is een time-out opgetreden bij de bewerking $operation. Probeer het opnieuw.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Er is een time-out opgetreden na $seconds seconden.';
  }

  @override
  String get errOperationTimedOut =>
      'Er is een time-out opgetreden in de bewerking. Probeer het opnieuw.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Schakel de toestemming voor het lokale netwerk in Instellingen in om apparaten te vinden.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Geen toegang tot lokaal netwerk. Schakel lokale netwerktoestemming in via Instellingen.';

  @override
  String get errCheckWifiConnection =>
      'Kan apparaten niet vinden. Controleer uw WiFi-verbinding.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Ontdekking onderbroken. $count-apparaat(en) gevonden.';
  }

  @override
  String get errNoDevicesFound =>
      'Geen apparaten gevonden. Zorg ervoor dat apparaten zijn ingeschakeld en verbonden met uw netwerk.';

  @override
  String get actionGetDeviceState => 'apparaatstatus ophalen';

  @override
  String get actionSetDeviceState => 'apparaatstatus instellen';

  @override
  String get actionGetEnergyData => 'energiegegevens verkrijgen';

  @override
  String get actionScanNetworks => 'scannen naar netwerken';

  @override
  String get actionConnectWifi => 'verbinden met WiFi';

  @override
  String get actionCheckConnection => 'controleer de verbindingsstatus';

  @override
  String get actionResetDevice => 'apparaat opnieuw instellen';

  @override
  String get actionPerform => 'actie uitvoeren';

  @override
  String get suggestTryRefreshing =>
      'Probeer de apparatenlijst te vernieuwen of controleer of het apparaat reageert.';

  @override
  String get suggestEnsurePoweredOn =>
      'Zorg ervoor dat het apparaat is ingeschakeld en is verbonden met uw WiFi-netwerk.';

  @override
  String get suggestMakeSureSameWifi =>
      'Zorg ervoor dat uw telefoon is verbonden met hetzelfde WiFi-netwerk als uw apparaten.';

  @override
  String get suggestCheckPhysical =>
      'Controleer het fysieke apparaat op knoppen of schakelaars die aandacht behoeven.';

  @override
  String get suggestWaitAndTry => 'Wacht even en probeer het opnieuw.';

  @override
  String get suggestDeviceBusy =>
      'Het apparaat is mogelijk bezet. Probeer het over een paar seconden opnieuw.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Annuleer';

  @override
  String get commonClose => 'Sluiten';

  @override
  String get commonDone => 'Klaar';

  @override
  String get commonLater => 'Later';

  @override
  String get commonRefresh => 'Vernieuwen';

  @override
  String get commonTryAgain => 'Probeer het opnieuw';

  @override
  String get commonOpenSettings => 'Instellingen openen';

  @override
  String get commonGrant => 'Verleen';

  @override
  String get commonFix => 'Repareren';

  @override
  String get commonOn => 'Aan';

  @override
  String get commonOff => 'Uit';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Naam';

  @override
  String get commonType => 'Typ';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Fabrikant';

  @override
  String get commonSerial => 'Serieel';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Gastheer';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Wachtwoord';

  @override
  String get commonUnknownWifi => 'Onbekend Wi-Fi';

  @override
  String get commonNotConnected => 'Niet verbonden';

  @override
  String commonSecondsShort(int seconds) {
    return '$seconds\'s';
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
      other: '$seconds seconden',
      one: '1 seconde',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Slimme schakelaar';

  @override
  String get deviceTypeLightSwitch => 'Lichtschakelaar';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Inzichtstekker';

  @override
  String get deviceTypeMotionSensor => 'Bewegingssensor';

  @override
  String get deviceTypeMaker => 'Maker';

  @override
  String get deviceTypeBridge => 'Brug';

  @override
  String get deviceTypeCoffeeMaker => 'Koffiezetapparaat';

  @override
  String get deviceTypeCrockpot => 'Kookpot';

  @override
  String get deviceTypeHumidifier => 'Luchtbevochtiger';

  @override
  String get deviceTypeOutdoorPlug => 'Buitenstekker';

  @override
  String get deviceTypeUnknown => 'Onbekend apparaat';

  @override
  String get pairingStepGetStarted => 'Aan de slag';

  @override
  String get pairingStepConnectToDevice => 'Verbinding maken met apparaat';

  @override
  String get pairingStepFindDevice => 'Zoek apparaat';

  @override
  String get pairingStepSelectNetwork => 'Selecteer Netwerk';

  @override
  String get pairingStepConfiguring => 'Configureren';

  @override
  String get pairingStepReconnect => 'Maak opnieuw verbinding';

  @override
  String get pairingStepFinalizing => 'Finaliseren';

  @override
  String get pairingStepSuccess => 'Succes';

  @override
  String get pairingStepError => 'Fout';

  @override
  String get homeToggleDebug => 'Schakel de foutopsporingsmodus in';

  @override
  String get homeRefreshDevices => 'Apparaten vernieuwen';

  @override
  String get homeSettings => 'Instellingen';

  @override
  String get homeDismiss => 'Negeren';

  @override
  String get homeDiscovering => 'Apparaten ontdekken...';

  @override
  String get homeNoDevices => 'Geen apparaten gevonden';

  @override
  String get homeScanDevices => 'Scannen naar apparaten';

  @override
  String get homeLookingForMore => 'Op zoek naar meer apparaten...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-apparaten gevonden',
      one: '1 apparaat gevonden',
      zero: 'Geen apparaten gevonden',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-apparaten gevonden, scannen...',
      one: '1 apparaat gevonden, bezig met scannen...',
      zero: 'Geen apparaten gevonden, scannen...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automatisch';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Verbonden met WiFi';

  @override
  String get homePermissionExplanation =>
      'Locatie-informatie wordt gebruikt om uw Wi-Fi-gegevens te vinden. Met lokale netwerktoegang kunt u uw slimme schakelaars en apparaten bedienen.';

  @override
  String get homeDebugLog => 'Foutopsporingslogboek';

  @override
  String get homeClear => 'Duidelijk';

  @override
  String get homeDebugEmpty =>
      'Tik op vernieuwen om de ontdekking te starten en logboeken te bekijken...';

  @override
  String get homeProbeHint => 'IP: Poort (bijvoorbeeld 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonde';

  @override
  String get homeScanning => 'Scannen...';

  @override
  String get homeScanSubnet => 'Hele subnet scannen (iOS-fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platform: $platform $version';
  }

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get settingsSectionNetwork => 'Netwerk';

  @override
  String get settingsSectionDeviceSetup => 'Apparaat instellen';

  @override
  String get settingsSectionDiscovery => 'Ontdekking';

  @override
  String get settingsSectionAbout => 'Over';

  @override
  String get settingsSectionDebug => 'Foutopsporing';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Toestemming verleend! WiFi-naam: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Locatie verleend, maar toestemming voor lokaal netwerk is ook vereist. Controleer Instellingen.';

  @override
  String get settingsLocationRequired => 'Locatietoestemming vereist';

  @override
  String get settingsLocationRequiredBody =>
      'Om uw WiFi-netwerknaam weer te geven, heeft iOS locatietoestemming nodig.';

  @override
  String get settingsRequiredPermissions => 'Vereiste machtigingen:';

  @override
  String get settingsPermissionList =>
      '1. Locatiediensten (\"tijdens gebruik van de app\")\n2. Lokaal netwerk';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Opmerking: Apparaatdetectie werkt zonder locatietoestemming. Deze toestemming wordt alleen gebruikt om uw WiFi-netwerknaam weer te geven.';

  @override
  String get settingsEnableLocation => 'Schakel Locatie in Instellingen in';

  @override
  String get settingsLocationDeniedBody =>
      'Locatietoestemming is geweigerd. U kunt dit inschakelen via de systeeminstellingen.';

  @override
  String get settingsStepsToEnable => 'Stappen om in te schakelen:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Open Instellingen\n2. Scroll naar \"Bit Switch\"\n3. Tik op ‘Locatie’\n4. Selecteer \"Terwijl u de app gebruikt\"\n5. Keer terug naar deze app en tik op de knop Vernieuwen';

  @override
  String get settingsLocationOnlyWifiName =>
      'Let op: Locatietoestemming is alleen nodig om de WiFi-naam weer te geven. Apparaatdetectie werkt zonder.';

  @override
  String get settingsAdditionalPermission => 'Aanvullende toestemming vereist';

  @override
  String get settingsLocalNetworkBody =>
      'Er is lokale netwerktoestemming vereist om Wemo-apparaten te detecteren en te bedienen.';

  @override
  String get settingsWifiNameNotVisible =>
      'U heeft locatietoestemming, maar de naam WiFi is nog niet zichtbaar.';

  @override
  String get settingsPleaseEnable => 'Schakel het volgende in:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Ga naar iPhone-instellingen\n2. Scroll naar beneden naar \"Bit Switch\"\n3. Schakel \"Lokaal netwerk\" in';

  @override
  String get settingsLocalNetworkIosReason =>
      'Lokale netwerktoestemming is vereist voor zowel apparaatdetectie als WiFi-naamtoegang op iOS.';

  @override
  String get settingsPairNewDevice => 'Nieuw apparaat koppelen';

  @override
  String get settingsPairNewDeviceSubtitle => 'Stel een nieuw Wemo-apparaat in';

  @override
  String get settingsDiscoveryTimeout => 'Time-out voor detectie';

  @override
  String get settingsRequestTimeout => 'Time-out aanvragen';

  @override
  String get settingsAutoRefresh => 'Automatisch vernieuwen';

  @override
  String get settingsAutoRefreshOn =>
      'Aan - Apparaatstatussen worden automatisch vernieuwd';

  @override
  String get settingsAutoRefreshOff =>
      'Uit - Gebruik de knop voor handmatig vernieuwen';

  @override
  String get settingsAutoRefreshInterval =>
      'Interval voor automatisch vernieuwen';

  @override
  String get settingsAbout => 'Over Bit Switch';

  @override
  String get settingsVersion => 'Versie';

  @override
  String get settingsNetworkDiagnostics => 'Netwerkdiagnostiek';

  @override
  String get settingsShowDebug => 'Toon foutopsporingsmodus';

  @override
  String get settingsShowDebugSubtitle =>
      'Toon foutopsporingsopties en netwerkdiagnostiek op het startscherm';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Toon het foutopsporingspictogram op het startscherm voor probleemoplossing';

  @override
  String get settingsCurrentNetwork => 'Huidig netwerk';

  @override
  String get settingsNetworkAccessStatus => 'Netwerktoegangsstatus';

  @override
  String get settingsNetworkAccessGranted =>
      'Lokale netwerktoegang is beschikbaar';

  @override
  String get settingsNetworkAccessMissing =>
      'Mogelijk zijn aanvullende machtigingen vereist';

  @override
  String get settingsChecking => 'Controleren...';

  @override
  String get settingsEnableLocalNetwork =>
      'Schakel Lokaal netwerk in Instellingen in';

  @override
  String get settingsNotConnectedWifi => 'Niet verbonden met WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Toestemming vereist om te bekijken';

  @override
  String get settingsAllPermissionsGranted => 'Alle machtigingen verleend';

  @override
  String get settingsLocalNetworkNeeded => 'Lokale netwerktoestemming vereist';

  @override
  String get settingsLocationNeeded => 'Locatietoestemming vereist';

  @override
  String get settingsRefreshPermissions => 'Machtigingen vernieuwen';

  @override
  String get settingsAboutWifiPermission => 'Over WiFi Naamtoestemming';

  @override
  String get settingsWifiPermissionExplanation =>
      'Uw WiFi-naam helpt bevestigen dat uw telefoon en Wemo-apparaten zich op hetzelfde netwerk bevinden.';

  @override
  String get settingsWifiPermissionIos =>
      'Op iOS vereist het weergeven van uw WiFi-netwerknaam locatietoestemming.';

  @override
  String get settingsImportant => 'Belangrijk:';

  @override
  String get settingsPrivacyNote =>
      '• Uw locatie wordt nooit gevolgd\n• Er worden geen locatiegegevens verzameld of opgeslagen';

  @override
  String get settingsWifiPermissionImportant =>
      '• Apparaatdetectie werkt ZONDER deze toestemming\n• Dit is alleen nodig om de WiFi-naam weer te geven\n• Er worden geen locatiegegevens verzameld of opgeslagen';

  @override
  String get settingsGrantPermission => 'Toestemming verlenen';

  @override
  String get settingsHowLongScan => 'Hoe lang scannen naar apparaten:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Time-out voor detectie ingesteld op $seconds seconden';
  }

  @override
  String get settingsHowLongResponses =>
      'Hoe lang wachten op apparaatreacties:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Verhoog deze waarde als u de foutmelding \'Verbinding gesloten\' ziet.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Verzoektime-out ingesteld op $seconds seconden';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Stel het interval in voor automatische statusvernieuwing:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Vernieuwingsinterval ingesteld op $seconds seconden';
  }

  @override
  String get settingsAboutTagline =>
      'Een schone, privé lokale controller voor uw Wemo-apparaten.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch maakt gebruik van lokale netwerkdetectie om apparaten te vinden en te bedienen zonder cloudafhankelijkheden.';

  @override
  String get settingsVersionValue => 'Versie 1.0.1';

  @override
  String get settingsProtocol => 'Protocol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast-adres: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Apparaatpoorten: 49152-49159';

  @override
  String get settingsControlProtocol => 'Controleprotocol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tip: Zorg ervoor dat uw apparaat zich op hetzelfde netwerk bevindt als uw Wemo-apparaten en dat UDP-multicast niet is geblokkeerd.';

  @override
  String get settingsDevicePaired =>
      'Apparaat gekoppeld! Apparaatlijst vernieuwen...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds seconden per verzoek';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Elke ${seconds}s vernieuwen';
  }

  @override
  String get pairingTitle => 'Nieuw apparaat koppelen';

  @override
  String get pairingSetupTitle => 'Stel uw Wemo-apparaat in';

  @override
  String get pairingBeforeBegin =>
      'Zorg ervoor dat uw Wemo-apparaat in de instelmodus staat voordat u begint:';

  @override
  String get pairingPlugInTitle => 'Sluit uw Wemo-apparaat aan';

  @override
  String get pairingPlugInBody =>
      'Sluit hem aan op de voeding en wacht tot hij opstart.';

  @override
  String get pairingBlinkingLedTitle => 'Zoek naar de knipperende LED';

  @override
  String get pairingBlinkingLedBody =>
      'Een knipperende LED geeft aan dat het apparaat zich in de instelmodus bevindt.';

  @override
  String get pairingCheckWifiTitle =>
      'Controleer of het WiFi-netwerk aanwezig is';

  @override
  String get pairingCheckWifiBody =>
      'Het apparaat zendt een netwerk uit met de naam \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Als de LED continu brandt, houdt u de resetknop 5 seconden ingedrukt om naar de instelmodus te gaan.';

  @override
  String get pairingStart => 'Begin met koppelen';

  @override
  String get pairingConnectWifiTitle => 'Maak verbinding met apparaat WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Open de WiFi-instellingen van uw telefoon en maak verbinding met het netwerk dat begint met \'WeMo\'.';

  @override
  String get pairingCurrentNetwork => 'Huidig netwerk';

  @override
  String get pairingConnectedToDevice => 'Verbonden met Wemo-apparaat!';

  @override
  String get pairingOpenWifiSettings => 'Open WiFi-instellingen';

  @override
  String get pairingConnectedButton => 'Ik heb verbinding';

  @override
  String get pairingLookingForDevice => 'Op zoek naar uw Wemo-apparaat...';

  @override
  String get pairingManualIpPrompt => 'Of voer het apparaat IP handmatig in:';

  @override
  String get pairingDeviceIp => 'Apparaat IP Adres';

  @override
  String get pairingConnectToIp => 'Maak verbinding met IP';

  @override
  String get pairingSelectHomeWifi => 'Selecteer uw thuisnetwerk WiFi:';

  @override
  String get pairingRefreshNetworks => 'Vernieuw netwerken';

  @override
  String get pairingIosScanLimitation =>
      'iOS verbiedt ten strengste dat apps van derden naar nabijgelegen Wi-Fi-netwerken scannen. Mogelijk moet u het netwerk SSID handmatig invoeren.';

  @override
  String get pairingNoNetworks => 'Geen netwerken gevonden';

  @override
  String get pairingScanAgain => 'Opnieuw scannen';

  @override
  String get pairingWifiPassword => 'WiFi Wachtwoord';

  @override
  String get pairingConnect => 'Verbinden';

  @override
  String get pairingEnterNetworkManually => 'Voer het netwerk handmatig in';

  @override
  String get pairingEnterNetworkName => 'Voer netwerknaam in:';

  @override
  String get pairingNetworkName => 'Netwerknaam (SSID)';

  @override
  String get pairingUseNetwork => 'Gebruik dit netwerk';

  @override
  String get pairingConfiguringDevice => 'Apparaat configureren...';

  @override
  String get pairingConfiguringWait =>
      'Wacht terwijl het apparaat verbinding maakt met uw netwerk.';

  @override
  String get pairingReconnectTitle => 'Maak opnieuw verbinding met uw netwerk';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Uw Wemo-apparaat maakt nu verbinding met \"$ssid\". Verbind uw telefoon opnieuw met hetzelfde netwerk.';
  }

  @override
  String get pairingBackOnHome => 'Terug op thuisnetwerk!';

  @override
  String get pairingReconnectedButton => 'Ik heb opnieuw verbinding gemaakt';

  @override
  String get pairingFinalizingSetup => 'Installatie voltooien...';

  @override
  String get pairingSetupComplete => 'Installatie voltooid!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Verbonden met $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Uw apparaat is nu ingesteld en verschijnt op het startscherm.';

  @override
  String get pairingSomethingWrong => 'Er is iets misgegaan';

  @override
  String get pairingStartOver => 'Begin opnieuw';

  @override
  String get pairingErrorOpenWifi =>
      'Kan de WiFi-instellingen niet openen. Open ze handmatig.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Uw telefoon is nog steeds verbonden met \"$ssid\". Open de WiFi-instellingen, maak verbinding met het WeMo-apparaatnetwerk en probeer het opnieuw.';
  }

  @override
  String get pairingLoadingLooking => 'Op zoek naar apparaat...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Kon het WeMo-apparaat niet vinden op $ip. Zorg ervoor dat uw telefoon is verbonden met het WeMo WiFi-netwerk en probeer het vervolgens opnieuw. U kunt het apparaat IP ook handmatig invoeren.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Fout bij detecteren van apparaat: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Verbinding maken met $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Geen apparaat gevonden op $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Fout bij verbinden met $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Scannen naar netwerken...';

  @override
  String pairingErrorScanning(String error) {
    return 'Kan netwerken niet scannen: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Selecteer een netwerk en voer het wachtwoord in.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Netwerkreferenties verzenden...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Wachten tot het apparaat verbinding maakt...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Kan netwerk niet configureren: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Wachtwoord te kort. Controleer het en probeer het opnieuw.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Kan geen verbinding maken. Controleer het wachtwoord.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Er is een time-out voor de verbinding opgetreden. Probeer het opnieuw.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Fout bij het voltooien van de installatie: $error';
  }

  @override
  String get detailRefreshState => 'Vernieuwingsstatus';

  @override
  String get detailDeviceInfo => 'Apparaatinformatie';

  @override
  String get detailAdvanced => 'Geavanceerd';

  @override
  String get detailWifiSetup => 'WiFi-installatie';

  @override
  String get detailReset => 'Opnieuw instellen';

  @override
  String get detailUnreachable =>
      'Apparaat is onbereikbaar. Controleer de netwerkverbinding.';

  @override
  String detailFailedToggle(String error) {
    return 'Kan niet schakelen: $error';
  }

  @override
  String get detailDeviceInformation => 'Apparaatinformatie';

  @override
  String get detailPermissionScan =>
      'Toestemming is vereist om WiFi-netwerken te scannen.';

  @override
  String get detailScanFailedManual =>
      'Kan netwerken niet scannen. Voer de netwerknaam handmatig in.';

  @override
  String get detailEnterNetworkNameError =>
      'Voer een netwerknaam in of selecteer deze';

  @override
  String get detailEnterPasswordError => 'Voer het netwerkwachtwoord in';

  @override
  String get detailWifiSuccess => 'WiFi succesvol geconfigureerd!';

  @override
  String get detailScanNetworks => 'Scannen naar netwerken';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configureer het WiFi-netwerk voor \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Beschikbare netwerken';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Kanaal $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS verbiedt ten strengste dat apps van derden naar nabijgelegen Wi-Fi-netwerken scannen. Voer hieronder uw netwerknaam handmatig in.';

  @override
  String get detailTapRefreshScan =>
      'Tik op vernieuwen om naar netwerken te zoeken';

  @override
  String get detailEnterNetworkBelow => 'Vul hieronder uw netwerknaam in';

  @override
  String get detailNetworkCredentials => 'Netwerkreferenties';

  @override
  String get detailConnecting => 'Verbinding maken met netwerk...';

  @override
  String get detailConnected => 'Succesvol verbonden!';

  @override
  String get detailPasswordShort => 'Wachtwoord is te kort';

  @override
  String get detailAuthenticationFailed =>
      'Authenticatie mislukt - controleer wachtwoord';

  @override
  String get detailConnectionFailed => 'Verbinding mislukt';

  @override
  String get detailSelectReset => 'Selecteer wat u wilt resetten';

  @override
  String get detailResetSchedulesWarning =>
      '• Alle planningen en automatiseringsregels worden verwijderd';

  @override
  String get detailResetWifiWarning => '• WiFi-instellingen worden gewist';

  @override
  String get detailSetupAgainWarning =>
      '• U moet het apparaat opnieuw instellen';

  @override
  String get detailUnreachableWarning =>
      '• Het apparaat kan tijdelijk onbereikbaar worden';

  @override
  String get detailConfirmReset => 'Bevestig resetten';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Weet u zeker dat u \"$device\" wilt resetten?';
  }

  @override
  String get detailThisWill => 'Dit zal:';

  @override
  String get detailCannotUndo => 'Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get detailYesReset => 'Ja, opnieuw instellen';

  @override
  String get detailResetSuccess => 'Apparaat opnieuw ingesteld';

  @override
  String get detailResetRemote => 'Apparaat wordt op afstand gereset';

  @override
  String get detailResetFailed => 'Resetten mislukt';

  @override
  String get detailFactoryReset => 'Fabrieksreset';

  @override
  String get detailFactoryResetWarning =>
      'Hierdoor worden ALLE instellingen gewist en wordt het apparaat teruggezet naar de fabrieksinstellingen. U moet het apparaat opnieuw instellen.\n\nDeze actie kan niet ongedaan worden gemaakt.';

  @override
  String get detailFactoryResetInitiated => 'Fabrieksreset gestart';

  @override
  String get detailResetDevice => 'Apparaat opnieuw instellen';

  @override
  String detailResetOptionsFor(String device) {
    return 'Resetopties voor \"$device\"';
  }

  @override
  String get detailResetUserData => 'Gebruikersgegevens opnieuw instellen';

  @override
  String get detailResetUserDataSubtitle => 'Wist schema\'s en regels';

  @override
  String get detailResetWifi => 'Reset WiFi-instellingen';

  @override
  String get detailResetWifiSubtitle =>
      'Het apparaat moet opnieuw worden ingesteld';

  @override
  String get widgetBrightness => 'Helderheid';

  @override
  String get widgetEnergyStatistics => 'Energiestatistieken';

  @override
  String get widgetCurrentPower => 'Huidig vermogen';

  @override
  String get widgetToday => 'Vandaag';

  @override
  String get widgetTotal => 'Totaal';

  @override
  String get widgetOnTimeToday => 'Op tijd vandaag';

  @override
  String get widgetTotalOnTime => 'Totaal op tijd';

  @override
  String get widgetStandby => 'Stand-by';

  @override
  String get widgetUnknown => 'Onbekend';

  @override
  String get widgetOpenNetwork => 'Open netwerk';

  @override
  String get widgetWepInsecure => 'WEP (onveilig)';
}
