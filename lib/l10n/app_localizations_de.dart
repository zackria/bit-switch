// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Das Gerät unterstützt diese Aktion nicht.';

  @override
  String get errInvalidArgs =>
      'Es wurden ungültige Argumente an das Gerät gesendet.';

  @override
  String get errActionFailed =>
      'Das Gerät konnte die angeforderte Aktion nicht ausführen.';

  @override
  String get errInvalidValue => 'Es wurde ein ungültiger Wert angegeben.';

  @override
  String get errValueOutOfRange =>
      'Der Wert liegt außerhalb des akzeptablen Bereichs.';

  @override
  String get errFeatureNotAvailable =>
      'Diese Funktion ist auf diesem Gerät nicht verfügbar.';

  @override
  String get errOutOfMemory =>
      'Das Gerät verfügt nicht über genügend Speicher. Versuchen Sie es später noch einmal.';

  @override
  String get errManualActionRequired =>
      'Am Gerät sind manuelle Eingriffe erforderlich.';

  @override
  String get errActionNotAuthorized => 'Diese Aktion ist nicht autorisiert.';

  @override
  String get errUnexpected =>
      'Es ist ein unerwarteter Fehler aufgetreten. Bitte versuchen Sie es erneut.';

  @override
  String get errDeviceUnreachableOffline =>
      'Das Gerät kann nicht erreicht werden. Es kann offline oder in einem anderen Netzwerk sein.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Zeitüberschreitung der Anforderung nach $attempts-Versuchen. Das Gerät ist möglicherweise offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Zeitüberschreitung bei der Anfrage. Das Gerät ist möglicherweise offline.';

  @override
  String get errNoRouteToHost =>
      'Das Gerät kann nicht erreicht werden. Bitte überprüfen Sie Ihre WiFi-Verbindung.';

  @override
  String get errHostUnreachable =>
      'Das Gerät ist nicht erreichbar. Bitte stellen Sie sicher, dass es eingeschaltet und mit dem WiFi verbunden ist.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Nach $attempts-Versuchen konnte nicht mit dem Gerät kommuniziert werden.';
  }

  @override
  String get errNetworkErrorComm =>
      'Netzwerkfehler: Kommunikation mit dem Gerät nicht möglich.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Diese Aktion ist auf dem Gerät nicht autorisiert.';

  @override
  String get errDeviceServiceNotFound =>
      'Gerätedienst nicht gefunden. Das Gerät benötigt möglicherweise ein Firmware-Update.';

  @override
  String get errDeviceEncounteredError =>
      'Das Gerät hat bei der Verarbeitung der Anfrage einen Fehler festgestellt.';

  @override
  String get errDeviceInternalError =>
      'Das Gerät hat einen internen Fehler zurückgegeben.';

  @override
  String get errDeviceTempUnavailable =>
      'Das Gerät ist vorübergehend nicht verfügbar. Bitte versuchen Sie es erneut.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Das Gerät hat einen Fehler zurückgegeben (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Fehler bei $action auf dem Gerät.';
  }

  @override
  String get errDeviceReturnedError =>
      'Das Gerät hat einen Fehler zurückgegeben.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Beim $operation-Vorgang ist eine Zeitüberschreitung aufgetreten. Bitte versuchen Sie es erneut.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Zeitüberschreitung des Vorgangs nach $seconds Sekunden.';
  }

  @override
  String get errOperationTimedOut =>
      'Zeitüberschreitung beim Vorgang. Bitte versuchen Sie es erneut.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Bitte aktivieren Sie die Berechtigung für das lokale Netzwerk in den Einstellungen, um Geräte zu finden.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Auf das lokale Netzwerk kann nicht zugegriffen werden. Bitte aktivieren Sie die Berechtigung für das lokale Netzwerk in den Einstellungen.';

  @override
  String get errCheckWifiConnection =>
      'Geräte können nicht erkannt werden. Bitte überprüfen Sie Ihre WiFi-Verbindung.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Entdeckung unterbrochen. $count-Gerät(e) gefunden.';
  }

  @override
  String get errNoDevicesFound =>
      'Keine Geräte gefunden. Bitte stellen Sie sicher, dass die Geräte eingeschaltet und mit Ihrem Netzwerk verbunden sind.';

  @override
  String get actionGetDeviceState => 'Gerätestatus abrufen';

  @override
  String get actionSetDeviceState => 'Gerätestatus festlegen';

  @override
  String get actionGetEnergyData => 'Energiedaten abrufen';

  @override
  String get actionScanNetworks => 'Nach Netzwerken suchen';

  @override
  String get actionConnectWifi => 'Verbinden Sie sich mit WiFi';

  @override
  String get actionCheckConnection => 'Überprüfen Sie den Verbindungsstatus';

  @override
  String get actionResetDevice => 'Gerät zurücksetzen';

  @override
  String get actionPerform => 'Aktion ausführen';

  @override
  String get suggestTryRefreshing =>
      'Versuchen Sie, die Geräteliste zu aktualisieren oder prüfen Sie, ob das Gerät reagiert.';

  @override
  String get suggestEnsurePoweredOn =>
      'Stellen Sie sicher, dass das Gerät eingeschaltet und mit Ihrem WiFi-Netzwerk verbunden ist.';

  @override
  String get suggestMakeSureSameWifi =>
      'Stellen Sie sicher, dass Ihr Telefon mit demselben WiFi-Netzwerk verbunden ist wie Ihre Geräte.';

  @override
  String get suggestCheckPhysical =>
      'Überprüfen Sie das physische Gerät auf Tasten oder Schalter, die Ihrer Aufmerksamkeit bedürfen.';

  @override
  String get suggestWaitAndTry =>
      'Warten Sie einen Moment und versuchen Sie es erneut.';

  @override
  String get suggestDeviceBusy =>
      'Das Gerät ist möglicherweise beschäftigt. Versuchen Sie es in ein paar Sekunden noch einmal.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Abbrechen';

  @override
  String get commonClose => 'Schließen';

  @override
  String get commonDone => 'Fertig';

  @override
  String get commonLater => 'Später';

  @override
  String get commonRefresh => 'Aktualisieren';

  @override
  String get commonTryAgain => 'Versuchen Sie es erneut';

  @override
  String get commonOpenSettings => 'Öffnen Sie Einstellungen';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Beheben';

  @override
  String get commonOn => 'Auf';

  @override
  String get commonOff => 'Aus';

  @override
  String get commonOffline => 'Offline';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Name';

  @override
  String get commonType => 'Typ';

  @override
  String get commonModel => 'Modell';

  @override
  String get commonManufacturer => 'Hersteller';

  @override
  String get commonSerial => 'Seriell';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Gastgeber';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Passwort';

  @override
  String get commonUnknownWifi => 'Unbekannt Wi-Fi';

  @override
  String get commonNotConnected => 'Nicht verbunden';

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
      other: '$seconds Sekunden',
      one: '1 Sekunde',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Intelligenter Schalter';

  @override
  String get deviceTypeLightSwitch => 'Lichtschalter';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Bewegungssensor';

  @override
  String get deviceTypeMaker => 'Hersteller';

  @override
  String get deviceTypeBridge => 'Brücke';

  @override
  String get deviceTypeCoffeeMaker => 'Kaffeemaschine';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Luftbefeuchter';

  @override
  String get deviceTypeOutdoorPlug => 'Außenstecker';

  @override
  String get deviceTypeUnknown => 'Unbekanntes Gerät';

  @override
  String get pairingStepGetStarted => 'Legen Sie los';

  @override
  String get pairingStepConnectToDevice => 'Mit Gerät verbinden';

  @override
  String get pairingStepFindDevice => 'Gerät finden';

  @override
  String get pairingStepSelectNetwork => 'Wählen Sie Netzwerk';

  @override
  String get pairingStepConfiguring => 'Konfigurieren';

  @override
  String get pairingStepReconnect => 'Wieder verbinden';

  @override
  String get pairingStepFinalizing => 'Finalisierung';

  @override
  String get pairingStepSuccess => 'Erfolg';

  @override
  String get pairingStepError => 'Fehler';

  @override
  String get homeToggleDebug => 'Debug-Modus umschalten';

  @override
  String get homeRefreshDevices => 'Geräte aktualisieren';

  @override
  String get homeSettings => 'Einstellungen';

  @override
  String get homeDismiss => 'Entlassen';

  @override
  String get homeDiscovering => 'Geräte werden entdeckt...';

  @override
  String get homeNoDevices => 'Keine Geräte gefunden';

  @override
  String get homeScanDevices => 'Nach Geräten suchen';

  @override
  String get homeLookingForMore => 'Auf der Suche nach weiteren Geräten...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-Geräte gefunden',
      one: '1 Gerät gefunden',
      zero: 'Keine Geräte gefunden',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-Geräte gefunden, scannt...',
      one: '1 Gerät gefunden, wird gescannt...',
      zero: 'Keine Geräte gefunden, wird gescannt...',
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
  String get homeConnectedWifi => 'Verbunden mit WiFi';

  @override
  String get homePermissionExplanation =>
      'Standortinformationen werden verwendet, um Ihre Wi-Fi-Details zu finden. Durch den lokalen Netzwerkzugriff können Sie Ihre intelligenten Schalter und Geräte steuern.';

  @override
  String get homeDebugLog => 'Debug-Protokoll';

  @override
  String get homeClear => 'Klar';

  @override
  String get homeDebugEmpty =>
      'Tippen Sie auf „Aktualisieren“, um die Erkennung zu starten und Protokolle anzuzeigen ...';

  @override
  String get homeProbeHint => 'IP:Port (z. B. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonde';

  @override
  String get homeScanning => 'Scannen...';

  @override
  String get homeScanSubnet => 'Gesamtes Subnetz scannen (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plattform: $platform $version';
  }

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsSectionNetwork => 'Netzwerk';

  @override
  String get settingsSectionDeviceSetup => 'Geräteeinrichtung';

  @override
  String get settingsSectionDiscovery => 'Entdeckung';

  @override
  String get settingsSectionAbout => 'Über';

  @override
  String get settingsSectionDebug => 'Debuggen';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Erlaubnis erteilt! WiFi-Name: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Standort gewährt, es ist jedoch auch eine lokale Netzwerkberechtigung erforderlich. Überprüfen Sie die Einstellungen.';

  @override
  String get settingsLocationRequired => 'Standortgenehmigung erforderlich';

  @override
  String get settingsLocationRequiredBody =>
      'Um Ihren WiFi-Netzwerknamen anzuzeigen, benötigt iOS die Standortberechtigung.';

  @override
  String get settingsRequiredPermissions => 'Erforderliche Berechtigungen:';

  @override
  String get settingsPermissionList =>
      '1. Ortungsdienste („Während der Nutzung der App“)\n2. Lokales Netzwerk';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Hinweis: Die Geräteerkennung funktioniert ohne Standortberechtigung. Diese Berechtigung wird nur zur Anzeige Ihres WiFi-Netzwerknamens verwendet.';

  @override
  String get settingsEnableLocation =>
      'Aktivieren Sie den Standort in den Einstellungen';

  @override
  String get settingsLocationDeniedBody =>
      'Die Standortgenehmigung wurde verweigert. Sie können es in den Systemeinstellungen aktivieren.';

  @override
  String get settingsStepsToEnable => 'Schritte zum Aktivieren:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Öffnen Sie die Einstellungen\n2. Scrollen Sie zu „Bit Switch“\n3. Tippen Sie auf „Standort“\n4. Wählen Sie „Während der Nutzung der App“\n5. Kehren Sie zu dieser App zurück und tippen Sie auf die Schaltfläche „Aktualisieren“.';

  @override
  String get settingsLocationOnlyWifiName =>
      'Hinweis: Die Standortberechtigung ist nur zum Anzeigen des WiFi-Namens erforderlich. Die Geräteerkennung funktioniert auch ohne.';

  @override
  String get settingsAdditionalPermission =>
      'Zusätzliche Genehmigung erforderlich';

  @override
  String get settingsLocalNetworkBody =>
      'Zur Erkennung und Steuerung von Wemo-Geräten ist eine lokale Netzwerkberechtigung erforderlich.';

  @override
  String get settingsWifiNameNotVisible =>
      'Sie haben die Standortberechtigung, aber der Name WiFi ist noch nicht sichtbar.';

  @override
  String get settingsPleaseEnable => 'Bitte aktivieren Sie:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Gehen Sie zu den iPhone-Einstellungen\n2. Scrollen Sie nach unten zu „Bit Switch“.\n3. Aktivieren Sie „Lokales Netzwerk“';

  @override
  String get settingsLocalNetworkIosReason =>
      'Für die Geräteerkennung und den WiFi-Namenszugriff unter iOS ist eine lokale Netzwerkberechtigung erforderlich.';

  @override
  String get settingsPairNewDevice => 'Neues Gerät koppeln';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Richten Sie ein neues Wemo-Gerät ein';

  @override
  String get settingsDiscoveryTimeout => 'Discovery-Timeout';

  @override
  String get settingsRequestTimeout => 'Zeitüberschreitung anfordern';

  @override
  String get settingsAutoRefresh => 'Automatische Aktualisierung';

  @override
  String get settingsAutoRefreshOn =>
      'Ein – Gerätestatus werden automatisch aktualisiert';

  @override
  String get settingsAutoRefreshOff =>
      'Aus – Manuelle Aktualisierungsschaltfläche verwenden';

  @override
  String get settingsAutoRefreshInterval =>
      'Automatisches Aktualisierungsintervall';

  @override
  String get settingsAbout => 'Über Bit Switch';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsNetworkDiagnostics => 'Netzwerkdiagnose';

  @override
  String get settingsShowDebug => 'Debug-Modus anzeigen';

  @override
  String get settingsShowDebugSubtitle =>
      'Zeigen Sie Debug-Steuerelemente und Netzwerkdiagnosen auf dem Startbildschirm an';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Zur Fehlerbehebung wird das Debug-Symbol auf dem Startbildschirm angezeigt';

  @override
  String get settingsCurrentNetwork => 'Aktuelles Netzwerk';

  @override
  String get settingsNetworkAccessStatus => 'Netzwerkzugriffsstatus';

  @override
  String get settingsNetworkAccessGranted =>
      'Ein lokaler Netzwerkzugriff ist verfügbar';

  @override
  String get settingsNetworkAccessMissing =>
      'Möglicherweise sind zusätzliche Berechtigungen erforderlich';

  @override
  String get settingsChecking => 'Überprüfen...';

  @override
  String get settingsEnableLocalNetwork =>
      'Aktivieren Sie das lokale Netzwerk in den Einstellungen';

  @override
  String get settingsNotConnectedWifi => 'Nicht mit WiFi verbunden';

  @override
  String get settingsPermissionRequiredView =>
      'Zum Betrachten ist eine Genehmigung erforderlich';

  @override
  String get settingsAllPermissionsGranted => 'Alle Berechtigungen erteilt';

  @override
  String get settingsLocalNetworkNeeded =>
      'Berechtigung für das lokale Netzwerk erforderlich';

  @override
  String get settingsLocationNeeded => 'Standortgenehmigung erforderlich';

  @override
  String get settingsRefreshPermissions => 'Berechtigungen aktualisieren';

  @override
  String get settingsAboutWifiPermission =>
      'Informationen zur WiFi-Namensberechtigung';

  @override
  String get settingsWifiPermissionExplanation =>
      'Mithilfe Ihres WiFi-Namens können Sie bestätigen, dass sich Ihr Telefon und Ihre Wemo-Geräte im selben Netzwerk befinden.';

  @override
  String get settingsWifiPermissionIos =>
      'Unter iOS erfordert die Anzeige Ihres WiFi-Netzwerknamens eine Standortberechtigung.';

  @override
  String get settingsImportant => 'Wichtig:';

  @override
  String get settingsPrivacyNote =>
      '• Ihr Standort wird niemals verfolgt\n• Es werden keine Standortdaten erfasst oder gespeichert';

  @override
  String get settingsWifiPermissionImportant =>
      '• Die Geräteerkennung funktioniert OHNE diese Berechtigung\n• Dies ist nur erforderlich, um den WiFi-Namen anzuzeigen\n• Es werden keine Standortdaten erhoben oder gespeichert';

  @override
  String get settingsGrantPermission => 'Erlaubnis erteilen';

  @override
  String get settingsHowLongScan => 'So lange wird nach Geräten gesucht:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Discovery-Timeout auf $seconds Sekunden eingestellt';
  }

  @override
  String get settingsHowLongResponses =>
      'So lange muss auf Geräteantworten gewartet werden:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Erhöhen Sie diesen Wert, wenn die Fehlermeldung „Verbindung geschlossen“ angezeigt wird.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Anforderungszeitlimit auf $seconds Sekunden eingestellt';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Legen Sie das Intervall für die automatische Statusaktualisierung fest:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Aktualisierungsintervall auf $seconds Sekunden eingestellt';
  }

  @override
  String get settingsAboutTagline =>
      'Ein sauberer, privater lokaler Controller für Ihre Wemo-Geräte.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch nutzt die lokale Netzwerkerkennung, um Geräte ohne Cloud-Abhängigkeiten zu finden und zu steuern.';

  @override
  String get settingsVersionValue => 'Version 1.0.1';

  @override
  String get settingsProtocol => 'Protokoll: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Multicast-Adresse: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Geräteports: 49152-49159';

  @override
  String get settingsControlProtocol => 'Steuerprotokoll: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tipp: Stellen Sie sicher, dass sich Ihr Gerät im selben Netzwerk wie Ihre Wemo-Geräte befindet und dass UDP-Multicast nicht blockiert ist.';

  @override
  String get settingsDevicePaired =>
      'Gerät gekoppelt! Geräteliste wird aktualisiert...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds Sekunden pro Anfrage';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Erfrischend für jeden ${seconds}s';
  }

  @override
  String get pairingTitle => 'Neues Gerät koppeln';

  @override
  String get pairingSetupTitle => 'Richten Sie Ihr Wemo-Gerät ein';

  @override
  String get pairingBeforeBegin =>
      'Bevor Sie beginnen, stellen Sie sicher, dass sich Ihr Wemo-Gerät im Setup-Modus befindet:';

  @override
  String get pairingPlugInTitle => 'Schließen Sie Ihr Wemo-Gerät an';

  @override
  String get pairingPlugInBody =>
      'Schließen Sie es an die Stromversorgung an und warten Sie, bis es startet.';

  @override
  String get pairingBlinkingLedTitle => 'Suchen Sie nach der blinkenden LED';

  @override
  String get pairingBlinkingLedBody =>
      'Eine blinkende LED zeigt an, dass sich das Gerät im Setup-Modus befindet.';

  @override
  String get pairingCheckWifiTitle => 'Suchen Sie nach dem WiFi-Netzwerk';

  @override
  String get pairingCheckWifiBody =>
      'Das Gerät sendet ein Netzwerk mit dem Namen „WeMo.XXXXX“.';

  @override
  String get pairingSolidLedHint =>
      'Wenn die LED dauerhaft leuchtet, halten Sie die Reset-Taste 5 Sekunden lang gedrückt, um in den Setup-Modus zu gelangen.';

  @override
  String get pairingStart => 'Starten Sie die Kopplung';

  @override
  String get pairingConnectWifiTitle => 'Verbinden Sie sich mit dem Gerät WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Öffnen Sie die WiFi-Einstellungen Ihres Telefons und stellen Sie eine Verbindung zu dem Netzwerk her, das mit „WeMo“ beginnt.';

  @override
  String get pairingCurrentNetwork => 'Aktuelles Netzwerk';

  @override
  String get pairingConnectedToDevice => 'Verbunden mit dem Wemo-Gerät!';

  @override
  String get pairingOpenWifiSettings => 'Öffnen Sie die WiFi-Einstellungen';

  @override
  String get pairingConnectedButton => 'Ich habe eine Verbindung hergestellt';

  @override
  String get pairingLookingForDevice =>
      'Auf der Suche nach Ihrem Wemo-Gerät...';

  @override
  String get pairingManualIpPrompt =>
      'Oder geben Sie das Gerät IP manuell ein:';

  @override
  String get pairingDeviceIp => 'Adresse des Geräts IP';

  @override
  String get pairingConnectToIp => 'An IP anschließen';

  @override
  String get pairingSelectHomeWifi => 'Wählen Sie Ihr WiFi-Heimnetzwerk aus:';

  @override
  String get pairingRefreshNetworks => 'Netzwerke aktualisieren';

  @override
  String get pairingIosScanLimitation =>
      'iOS verbietet Drittanbieter-Apps strikt, nach Wi-Fi-Netzwerken in der Nähe zu suchen. Möglicherweise müssen Sie das Netzwerk SSID manuell eingeben.';

  @override
  String get pairingNoNetworks => 'Keine Netzwerke gefunden';

  @override
  String get pairingScanAgain => 'Erneut scannen';

  @override
  String get pairingWifiPassword => 'WiFi Passwort';

  @override
  String get pairingConnect => 'Verbinden';

  @override
  String get pairingEnterNetworkManually =>
      'Geben Sie das Netzwerk manuell ein';

  @override
  String get pairingEnterNetworkName => 'Geben Sie den Netzwerknamen ein:';

  @override
  String get pairingNetworkName => 'Netzwerkname (SSID)';

  @override
  String get pairingUseNetwork => 'Nutzen Sie dieses Netzwerk';

  @override
  String get pairingConfiguringDevice => 'Gerät konfigurieren...';

  @override
  String get pairingConfiguringWait =>
      'Bitte warten Sie, während das Gerät eine Verbindung zu Ihrem Netzwerk herstellt.';

  @override
  String get pairingReconnectTitle =>
      'Stellen Sie die Verbindung zu Ihrem Netzwerk wieder her';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Ihr Wemo-Gerät verbindet sich jetzt mit „$ssid“. Bitte verbinden Sie Ihr Telefon erneut mit demselben Netzwerk.';
  }

  @override
  String get pairingBackOnHome => 'Zurück im Heimnetzwerk!';

  @override
  String get pairingReconnectedButton =>
      'Ich habe die Verbindung wiederhergestellt';

  @override
  String get pairingFinalizingSetup => 'Einrichtung wird abgeschlossen...';

  @override
  String get pairingSetupComplete => 'Einrichtung abgeschlossen!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Verbunden mit $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Ihr Gerät ist nun eingerichtet und erscheint auf dem Startbildschirm.';

  @override
  String get pairingSomethingWrong => 'Etwas ist schief gelaufen';

  @override
  String get pairingStartOver => 'Beginnen Sie von vorne';

  @override
  String get pairingErrorOpenWifi =>
      'Die WiFi-Einstellungen konnten nicht geöffnet werden. Bitte öffnen Sie sie manuell.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Ihr Telefon ist weiterhin mit „$ssid“ verbunden. Bitte öffnen Sie die WiFi-Einstellungen, stellen Sie eine Verbindung zum WeMo-Gerätenetzwerk her und versuchen Sie es dann erneut.';
  }

  @override
  String get pairingLoadingLooking => 'Auf der Suche nach Gerät...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Das WeMo-Gerät konnte unter $ip nicht gefunden werden. Stellen Sie sicher, dass Ihr Telefon mit dem WeMo WiFi-Netzwerk verbunden ist, und versuchen Sie es dann erneut. Sie können das Gerät IP auch manuell eingeben.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Fehler beim Erkennen des Geräts: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Verbindung mit $ip herstellen...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Kein Gerät bei $ip gefunden';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Fehler beim Herstellen einer Verbindung zu $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Nach Netzwerken suchen...';

  @override
  String pairingErrorScanning(String error) {
    return 'Netzwerke konnten nicht gescannt werden: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Bitte wählen Sie ein Netzwerk aus und geben Sie das Passwort ein.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Netzwerkanmeldeinformationen werden gesendet...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Warten auf die Verbindung des Geräts...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Netzwerk konnte nicht konfiguriert werden: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Passwort zu kurz. Bitte überprüfen Sie es und versuchen Sie es erneut.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Verbindung konnte nicht hergestellt werden. Bitte überprüfen Sie das Passwort.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Zeitüberschreitung bei der Verbindung. Bitte versuchen Sie es erneut.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Fehler beim Abschließen des Setups: $error';
  }

  @override
  String get detailRefreshState => 'Status aktualisieren';

  @override
  String get detailDeviceInfo => 'Geräteinformationen';

  @override
  String get detailAdvanced => 'Fortgeschritten';

  @override
  String get detailWifiSetup => 'WiFi-Setup';

  @override
  String get detailReset => 'Zurücksetzen';

  @override
  String get detailUnreachable =>
      'Gerät ist nicht erreichbar. Überprüfen Sie die Netzwerkverbindung.';

  @override
  String detailFailedToggle(String error) {
    return 'Umschalten fehlgeschlagen: $error';
  }

  @override
  String get detailDeviceInformation => 'Geräteinformationen';

  @override
  String get detailPermissionScan =>
      'Zum Scannen von WiFi-Netzwerken ist eine Genehmigung erforderlich.';

  @override
  String get detailScanFailedManual =>
      'Netzwerke konnten nicht gescannt werden. Geben Sie den Netzwerknamen manuell ein.';

  @override
  String get detailEnterNetworkNameError =>
      'Bitte geben Sie einen Netzwerknamen ein oder wählen Sie ihn aus';

  @override
  String get detailEnterPasswordError =>
      'Bitte geben Sie das Netzwerkpasswort ein';

  @override
  String get detailWifiSuccess => 'WiFi erfolgreich konfiguriert!';

  @override
  String get detailScanNetworks => 'Nach Netzwerken suchen';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurieren Sie das WiFi-Netzwerk für „$device“';
  }

  @override
  String get detailAvailableNetworks => 'Verfügbare Netzwerke';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS verbietet Drittanbieter-Apps strikt, nach Wi-Fi-Netzwerken in der Nähe zu suchen. Bitte geben Sie unten Ihren Netzwerknamen manuell ein.';

  @override
  String get detailTapRefreshScan =>
      'Tippen Sie auf „Aktualisieren“, um nach Netzwerken zu suchen';

  @override
  String get detailEnterNetworkBelow =>
      'Geben Sie unten Ihren Netzwerknamen ein';

  @override
  String get detailNetworkCredentials => 'Netzwerkanmeldeinformationen';

  @override
  String get detailConnecting => 'Verbindung zum Netzwerk herstellen...';

  @override
  String get detailConnected => 'Erfolgreich verbunden!';

  @override
  String get detailPasswordShort => 'Das Passwort ist zu kurz';

  @override
  String get detailAuthenticationFailed =>
      'Authentifizierung fehlgeschlagen – Passwort prüfen';

  @override
  String get detailConnectionFailed => 'Verbindung fehlgeschlagen';

  @override
  String get detailSelectReset =>
      'Bitte wählen Sie aus, was zurückgesetzt werden soll';

  @override
  String get detailResetSchedulesWarning =>
      '• Alle Zeitpläne und Automatisierungsregeln werden gelöscht';

  @override
  String get detailResetWifiWarning => '• WiFi-Einstellungen werden gelöscht';

  @override
  String get detailSetupAgainWarning =>
      '• Sie müssen das Gerät erneut einrichten';

  @override
  String get detailUnreachableWarning =>
      '• Das Gerät kann vorübergehend nicht erreichbar sein';

  @override
  String get detailConfirmReset => 'Bestätigen Sie das Zurücksetzen';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Sind Sie sicher, dass Sie „$device“ zurücksetzen möchten?';
  }

  @override
  String get detailThisWill => 'Dies wird:';

  @override
  String get detailCannotUndo =>
      'Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get detailYesReset => 'Ja, Zurücksetzen';

  @override
  String get detailResetSuccess => 'Gerät erfolgreich zurückgesetzt';

  @override
  String get detailResetRemote => 'Das Gerät wird aus der Ferne zurückgesetzt';

  @override
  String get detailResetFailed => 'Zurücksetzen fehlgeschlagen';

  @override
  String get detailFactoryReset => 'Werksreset';

  @override
  String get detailFactoryResetWarning =>
      'Dadurch werden ALLE Einstellungen gelöscht und das Gerät auf die Werkseinstellungen zurückgesetzt. Sie müssen das Gerät erneut einrichten.\n\nDiese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get detailFactoryResetInitiated => 'Werksreset eingeleitet';

  @override
  String get detailResetDevice => 'Gerät zurücksetzen';

  @override
  String detailResetOptionsFor(String device) {
    return 'Optionen für „$device“ zurücksetzen';
  }

  @override
  String get detailResetUserData => 'Benutzerdaten zurücksetzen';

  @override
  String get detailResetUserDataSubtitle => 'Löscht Zeitpläne und Regeln';

  @override
  String get detailResetWifi => 'Setzen Sie die WiFi-Einstellungen zurück';

  @override
  String get detailResetWifiSubtitle =>
      'Das Gerät muss erneut eingerichtet werden';

  @override
  String get widgetBrightness => 'Helligkeit';

  @override
  String get widgetEnergyStatistics => 'Energiestatistik';

  @override
  String get widgetCurrentPower => 'Aktuelle Leistung';

  @override
  String get widgetToday => 'Heute';

  @override
  String get widgetTotal => 'Insgesamt';

  @override
  String get widgetOnTimeToday => 'Heute pünktlich';

  @override
  String get widgetTotalOnTime => 'Total pünktlich';

  @override
  String get widgetStandby => 'Standby';

  @override
  String get widgetUnknown => 'Unbekannt';

  @override
  String get widgetOpenNetwork => 'Offenes Netzwerk';

  @override
  String get widgetWepInsecure => 'WEP (unsicher)';
}
