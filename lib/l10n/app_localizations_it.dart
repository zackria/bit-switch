// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Il dispositivo non supporta questa azione.';

  @override
  String get errInvalidArgs =>
      'Al dispositivo sono stati inviati argomenti non validi.';

  @override
  String get errActionFailed =>
      'Il dispositivo non è riuscito a eseguire l\'azione richiesta.';

  @override
  String get errInvalidValue => 'È stato fornito un valore non valido.';

  @override
  String get errValueOutOfRange =>
      'Il valore è fuori dall\'intervallo accettabile.';

  @override
  String get errFeatureNotAvailable =>
      'Questa funzione non è disponibile su questo dispositivo.';

  @override
  String get errOutOfMemory =>
      'La memoria del dispositivo è esaurita. Riprova più tardi.';

  @override
  String get errManualActionRequired =>
      'È richiesta un\'azione manuale sul dispositivo.';

  @override
  String get errActionNotAuthorized => 'Questa azione non è autorizzata.';

  @override
  String get errUnexpected =>
      'Si è verificato un errore imprevisto. Per favore riprova.';

  @override
  String get errDeviceUnreachableOffline =>
      'Impossibile raggiungere il dispositivo. Potrebbe essere offline o su una rete diversa.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Richiesta scaduta dopo i tentativi $attempts. Il dispositivo potrebbe essere offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Richiesta scaduta. Il dispositivo potrebbe essere offline.';

  @override
  String get errNoRouteToHost =>
      'Impossibile raggiungere il dispositivo. Controlla la connessione WiFi.';

  @override
  String get errHostUnreachable =>
      'Il dispositivo è irraggiungibile. Assicurati che sia acceso e collegato a WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Impossibile comunicare con il dispositivo dopo i tentativi $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Errore di rete: impossibile comunicare con il dispositivo.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Questa azione non è autorizzata sul dispositivo.';

  @override
  String get errDeviceServiceNotFound =>
      'Servizio dispositivo non trovato. Il dispositivo potrebbe richiedere un aggiornamento del firmware.';

  @override
  String get errDeviceEncounteredError =>
      'Il dispositivo ha riscontrato un errore durante l\'elaborazione della richiesta.';

  @override
  String get errDeviceInternalError =>
      'Il dispositivo ha restituito un errore interno.';

  @override
  String get errDeviceTempUnavailable =>
      'Il dispositivo è temporaneamente non disponibile. Per favore riprova.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Il dispositivo ha restituito un errore (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Impossibile $action sul dispositivo.';
  }

  @override
  String get errDeviceReturnedError =>
      'Il dispositivo ha restituito un errore.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Il funzionamento dello $operation è scaduto. Per favore riprova.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'L\'operazione è scaduta dopo $seconds secondi.';
  }

  @override
  String get errOperationTimedOut =>
      'L\'operazione è scaduta. Per favore riprova.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Abilita l\'autorizzazione Rete locale nelle Impostazioni per trovare i dispositivi.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Impossibile accedere alla rete locale. Abilita l\'autorizzazione Rete locale nelle Impostazioni.';

  @override
  String get errCheckWifiConnection =>
      'Impossibile rilevare i dispositivi. Controlla la connessione WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Scoperta interrotta. Dispositivi $count trovati.';
  }

  @override
  String get errNoDevicesFound =>
      'Nessun dispositivo trovato. Assicurati che i dispositivi siano accesi e connessi alla rete.';

  @override
  String get actionGetDeviceState => 'ottenere lo stato del dispositivo';

  @override
  String get actionSetDeviceState => 'impostare lo stato del dispositivo';

  @override
  String get actionGetEnergyData => 'ottenere dati energetici';

  @override
  String get actionScanNetworks => 'eseguire la scansione delle reti';

  @override
  String get actionConnectWifi => 'connettersi a WiFi';

  @override
  String get actionCheckConnection => 'controllare lo stato della connessione';

  @override
  String get actionResetDevice => 'ripristinare il dispositivo';

  @override
  String get actionPerform => 'eseguire un\'azione';

  @override
  String get suggestTryRefreshing =>
      'Prova ad aggiornare l\'elenco dei dispositivi o controlla se il dispositivo risponde.';

  @override
  String get suggestEnsurePoweredOn =>
      'Assicurati che il dispositivo sia acceso e connesso alla rete WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Assicurati che il tuo telefono sia connesso alla stessa rete WiFi dei tuoi dispositivi.';

  @override
  String get suggestCheckPhysical =>
      'Controlla il dispositivo fisico per eventuali pulsanti o interruttori che richiedono attenzione.';

  @override
  String get suggestWaitAndTry => 'Aspetta un attimo e riprova.';

  @override
  String get suggestDeviceBusy =>
      'Il dispositivo potrebbe essere occupato. Riprova tra qualche secondo.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Annulla';

  @override
  String get commonClose => 'Chiudi';

  @override
  String get commonDone => 'Fatto';

  @override
  String get commonLater => 'Più tardi';

  @override
  String get commonRefresh => 'Aggiorna';

  @override
  String get commonTryAgain => 'Riprova';

  @override
  String get commonOpenSettings => 'Apri Impostazioni';

  @override
  String get commonGrant => 'Concedere';

  @override
  String get commonFix => 'Correggi';

  @override
  String get commonOn => 'Su';

  @override
  String get commonOff => 'Spento';

  @override
  String get commonOffline => 'Non in linea';

  @override
  String get commonStatus => 'Stato';

  @override
  String get commonName => 'Nome';

  @override
  String get commonType => 'Digitare';

  @override
  String get commonModel => 'Modello';

  @override
  String get commonManufacturer => 'Produttore';

  @override
  String get commonSerial => 'Seriale';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Ospite';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Parola d\'ordine';

  @override
  String get commonUnknownWifi => 'Wi-Fi sconosciuto';

  @override
  String get commonNotConnected => 'Non connesso';

  @override
  String commonSecondsShort(int seconds) {
    return '$seconds';
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
      other: '$seconds secondi',
      one: '1 secondo',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Interruttore intelligente';

  @override
  String get deviceTypeLightSwitch => 'Interruttore della luce';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Spina di intuizione';

  @override
  String get deviceTypeMotionSensor => 'Sensore di movimento';

  @override
  String get deviceTypeMaker => 'Creatore';

  @override
  String get deviceTypeBridge => 'Ponte';

  @override
  String get deviceTypeCoffeeMaker => 'Caffettiera';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Umidificatore';

  @override
  String get deviceTypeOutdoorPlug => 'Spina esterna';

  @override
  String get deviceTypeUnknown => 'Dispositivo sconosciuto';

  @override
  String get pairingStepGetStarted => 'Inizia';

  @override
  String get pairingStepConnectToDevice => 'Connetti al dispositivo';

  @override
  String get pairingStepFindDevice => 'Trova dispositivo';

  @override
  String get pairingStepSelectNetwork => 'Seleziona Rete';

  @override
  String get pairingStepConfiguring => 'Configurazione';

  @override
  String get pairingStepReconnect => 'Riconnettiti';

  @override
  String get pairingStepFinalizing => 'Finalizzazione';

  @override
  String get pairingStepSuccess => 'Successo';

  @override
  String get pairingStepError => 'Errore';

  @override
  String get homeToggleDebug => 'Attiva/disattiva la modalità debug';

  @override
  String get homeRefreshDevices => 'Aggiorna i dispositivi';

  @override
  String get homeSettings => 'Impostazioni';

  @override
  String get homeDismiss => 'Ignora';

  @override
  String get homeDiscovering => 'Individuazione dei dispositivi...';

  @override
  String get homeNoDevices => 'Nessun dispositivo trovato';

  @override
  String get homeScanDevices => 'Cerca dispositivi';

  @override
  String get homeLookingForMore => 'Alla ricerca di altri dispositivi...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivi $count trovati',
      one: '1 dispositivo trovato',
      zero: 'Nessun dispositivo trovato',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dispositivi $count trovati, scansione in corso...',
      one: '1 dispositivo trovato, scansione in corso...',
      zero: 'Nessun dispositivo trovato, scansione in corso...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automatico';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Collegato a WiFi';

  @override
  String get homePermissionExplanation =>
      'Le informazioni sulla posizione vengono utilizzate per trovare i dettagli del tuo Wi-Fi. L\'accesso alla rete locale ti consente di controllare i tuoi interruttori e dispositivi intelligenti.';

  @override
  String get homeDebugLog => 'Registro di debug';

  @override
  String get homeClear => 'Chiaro';

  @override
  String get homeDebugEmpty =>
      'Tocca Aggiorna per avviare il rilevamento e visualizzare i registri...';

  @override
  String get homeProbeHint => 'IP:Porta (ad esempio 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'Scansione...';

  @override
  String get homeScanSubnet =>
      'Scansione dell\'intera sottorete (correzione iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Piattaforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get settingsSectionNetwork => 'Rete';

  @override
  String get settingsSectionDeviceSetup => 'Configurazione del dispositivo';

  @override
  String get settingsSectionDiscovery => 'Scoperta';

  @override
  String get settingsSectionAbout => 'Circa';

  @override
  String get settingsSectionDebug => 'Debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Autorizzazione concessa! Nome WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Posizione concessa, ma è necessaria anche l\'autorizzazione della rete locale. Controlla le Impostazioni.';

  @override
  String get settingsLocationRequired =>
      'È richiesta l\'autorizzazione alla posizione';

  @override
  String get settingsLocationRequiredBody =>
      'Per visualizzare il nome della rete WiFi, iOS richiede l\'autorizzazione alla posizione.';

  @override
  String get settingsRequiredPermissions => 'Autorizzazioni richieste:';

  @override
  String get settingsPermissionList =>
      '1. Servizi di localizzazione (\"Durante l\'utilizzo dell\'App\")\n2. Rete locale';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Nota: il rilevamento del dispositivo funziona senza l\'autorizzazione alla posizione. Questa autorizzazione viene utilizzata solo per visualizzare il nome della rete WiFi.';

  @override
  String get settingsEnableLocation =>
      'Abilita la posizione nelle Impostazioni';

  @override
  String get settingsLocationDeniedBody =>
      'L\'autorizzazione alla posizione è stata negata. Puoi abilitarlo dalle impostazioni di sistema.';

  @override
  String get settingsStepsToEnable => 'Passaggi per abilitare:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Apri Impostazioni\n2. Scorrere fino a \"Bit Switch\"\n3. Tocca \"Posizione\"\n4. Seleziona \"Durante l\'utilizzo dell\'app\"\n5. Torna a questa app e tocca il pulsante Aggiorna';

  @override
  String get settingsLocationOnlyWifiName =>
      'Nota: l\'autorizzazione alla posizione è necessaria solo per visualizzare il nome WiFi. Il rilevamento del dispositivo funziona senza di esso.';

  @override
  String get settingsAdditionalPermission =>
      'È necessaria un\'ulteriore autorizzazione';

  @override
  String get settingsLocalNetworkBody =>
      'Per rilevare e controllare i dispositivi Wemo è necessaria l\'autorizzazione della rete locale.';

  @override
  String get settingsWifiNameNotVisible =>
      'Hai l\'autorizzazione alla posizione, ma il nome WiFi non è ancora visibile.';

  @override
  String get settingsPleaseEnable => 'Si prega di abilitare:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Vai alle Impostazioni dell\'iPhone\n2. Scorri verso il basso fino a \"Bit Switch\"\n3. Abilita \"Rete locale\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'È necessaria l\'autorizzazione della rete locale sia per il rilevamento del dispositivo che per l\'accesso al nome WiFi su iOS.';

  @override
  String get settingsPairNewDevice => 'Associa il nuovo dispositivo';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configura un nuovo dispositivo Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Timeout di scoperta';

  @override
  String get settingsRequestTimeout => 'Richiedi timeout';

  @override
  String get settingsAutoRefresh => 'Aggiornamento automatico';

  @override
  String get settingsAutoRefreshOn =>
      'On: gli stati del dispositivo si aggiornano automaticamente';

  @override
  String get settingsAutoRefreshOff =>
      'Spento: utilizza il pulsante di aggiornamento manuale';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervallo di aggiornamento automatico';

  @override
  String get settingsAbout => 'Informazioni su Bit Switch';

  @override
  String get settingsVersion => 'Versione';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostica di rete';

  @override
  String get settingsShowDebug => 'Mostra modalità debug';

  @override
  String get settingsShowDebugSubtitle =>
      'Mostra i controlli di debug e la diagnostica di rete nella schermata principale';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Mostra l\'icona di debug nella schermata principale per la risoluzione dei problemi';

  @override
  String get settingsCurrentNetwork => 'Rete attuale';

  @override
  String get settingsNetworkAccessStatus => 'Stato di accesso alla rete';

  @override
  String get settingsNetworkAccessGranted =>
      'È disponibile l\'accesso alla rete locale';

  @override
  String get settingsNetworkAccessMissing =>
      'Potrebbero essere necessarie autorizzazioni aggiuntive';

  @override
  String get settingsChecking => 'Controllo...';

  @override
  String get settingsEnableLocalNetwork =>
      'Abilita la rete locale nelle Impostazioni';

  @override
  String get settingsNotConnectedWifi => 'Non collegato a WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Permesso richiesto per visualizzare';

  @override
  String get settingsAllPermissionsGranted =>
      'Tutte le autorizzazioni concesse';

  @override
  String get settingsLocalNetworkNeeded =>
      'È necessaria l\'autorizzazione di rete locale';

  @override
  String get settingsLocationNeeded =>
      'È necessaria l\'autorizzazione alla posizione';

  @override
  String get settingsRefreshPermissions => 'Aggiorna le autorizzazioni';

  @override
  String get settingsAboutWifiPermission =>
      'Informazioni sull\'autorizzazione del nome WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Il tuo nome WiFi aiuta a confermare che il tuo telefono e i dispositivi Wemo sono sulla stessa rete.';

  @override
  String get settingsWifiPermissionIos =>
      'Su iOS, la visualizzazione del nome della rete WiFi richiede l\'autorizzazione alla posizione.';

  @override
  String get settingsImportant => 'Importante:';

  @override
  String get settingsPrivacyNote =>
      '• La tua posizione non viene mai tracciata\n• Nessun dato sulla posizione viene raccolto o archiviato';

  @override
  String get settingsWifiPermissionImportant =>
      '• Il rilevamento del dispositivo funziona SENZA questa autorizzazione\n• Ciò è necessario solo per mostrare il nome WiFi\n• Nessun dato sulla posizione viene raccolto o archiviato';

  @override
  String get settingsGrantPermission => 'Concedere l\'autorizzazione';

  @override
  String get settingsHowLongScan =>
      'Quanto tempo per la scansione dei dispositivi:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Timeout di rilevamento impostato su $seconds secondi';
  }

  @override
  String get settingsHowLongResponses =>
      'Quanto tempo attendere per le risposte del dispositivo:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Aumenta questo valore se vedi errori \"Connessione chiusa\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Timeout richiesta impostato su $seconds secondi';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Imposta l\'intervallo per l\'aggiornamento automatico dello stato:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervallo di aggiornamento impostato su $seconds secondi';
  }

  @override
  String get settingsAboutTagline =>
      'Un controller locale pulito e privato per i tuoi dispositivi Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch utilizza il rilevamento della rete locale per trovare e controllare i dispositivi senza dipendenze cloud.';

  @override
  String get settingsVersionValue => 'Versione 1.0.1';

  @override
  String get settingsProtocol => 'Protocollo: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Indirizzo multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Porte del dispositivo: 49152-49159';

  @override
  String get settingsControlProtocol =>
      'Protocollo di controllo: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Suggerimento: assicurati che il tuo dispositivo sia sulla stessa rete dei tuoi dispositivi Wemo e che il multicast UDP non sia bloccato.';

  @override
  String get settingsDevicePaired =>
      'Dispositivo accoppiato! Aggiornamento elenco dispositivi...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds secondi per richiesta';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Aggiornamento di ogni $seconds';
  }

  @override
  String get pairingTitle => 'Associa il nuovo dispositivo';

  @override
  String get pairingSetupTitle => 'Configura il tuo dispositivo Wemo';

  @override
  String get pairingBeforeBegin =>
      'Prima di iniziare, assicurati che il tuo dispositivo Wemo sia in modalità di configurazione:';

  @override
  String get pairingPlugInTitle => 'Collega il tuo dispositivo Wemo';

  @override
  String get pairingPlugInBody =>
      'Collegalo all\'alimentazione e attendi che si avvii.';

  @override
  String get pairingBlinkingLedTitle => 'Cerca il LED lampeggiante';

  @override
  String get pairingBlinkingLedBody =>
      'Un LED lampeggiante indica che il dispositivo è in modalità di configurazione.';

  @override
  String get pairingCheckWifiTitle => 'Verifica la rete WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Il dispositivo trasmetterà una rete denominata \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Se il LED è fisso, tenere premuto il pulsante di ripristino per 5 secondi per accedere alla modalità di configurazione.';

  @override
  String get pairingStart => 'Inizia l\'abbinamento';

  @override
  String get pairingConnectWifiTitle => 'Connetti al dispositivo WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Apri le impostazioni WiFi del tuo telefono e connettiti alla rete che inizia con \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Rete attuale';

  @override
  String get pairingConnectedToDevice => 'Connesso al dispositivo Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Apri le Impostazioni WiFi';

  @override
  String get pairingConnectedButton => 'Mi sono connesso';

  @override
  String get pairingLookingForDevice =>
      'Stai cercando il tuo dispositivo Wemo...';

  @override
  String get pairingManualIpPrompt =>
      'Oppure inserisci manualmente il dispositivo IP:';

  @override
  String get pairingDeviceIp => 'Indirizzo dispositivo IP';

  @override
  String get pairingConnectToIp => 'Connettersi a IP';

  @override
  String get pairingSelectHomeWifi => 'Seleziona la tua rete domestica WiFi:';

  @override
  String get pairingRefreshNetworks => 'Aggiorna le reti';

  @override
  String get pairingIosScanLimitation =>
      'iOS vieta severamente alle app di terze parti di eseguire la scansione delle reti Wi-Fi vicine. Potrebbe essere necessario inserire manualmente la rete SSID.';

  @override
  String get pairingNoNetworks => 'Nessuna rete trovata';

  @override
  String get pairingScanAgain => 'Scansione di nuovo';

  @override
  String get pairingWifiPassword => 'WiFi Parola d\'ordine';

  @override
  String get pairingConnect => 'Connettiti';

  @override
  String get pairingEnterNetworkManually => 'Inserisci la rete manualmente';

  @override
  String get pairingEnterNetworkName => 'Inserisci il nome della rete:';

  @override
  String get pairingNetworkName => 'Nome della rete (SSID)';

  @override
  String get pairingUseNetwork => 'Usa questa rete';

  @override
  String get pairingConfiguringDevice => 'Configurazione del dispositivo...';

  @override
  String get pairingConfiguringWait =>
      'Attendi mentre il dispositivo si connette alla rete.';

  @override
  String get pairingReconnectTitle => 'Riconnettiti alla tua rete';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Il tuo dispositivo Wemo è ora connesso a \"$ssid\". Ricollega il telefono alla stessa rete.';
  }

  @override
  String get pairingBackOnHome => 'Di nuovo sulla rete domestica!';

  @override
  String get pairingReconnectedButton => 'Mi sono ricollegato';

  @override
  String get pairingFinalizingSetup => 'Finalizzazione della configurazione...';

  @override
  String get pairingSetupComplete => 'Configurazione completata!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Connesso a $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Il tuo dispositivo è ora configurato e verrà visualizzato nella schermata principale.';

  @override
  String get pairingSomethingWrong => 'Qualcosa è andato storto';

  @override
  String get pairingStartOver => 'Ricominciare daccapo';

  @override
  String get pairingErrorOpenWifi =>
      'Impossibile aprire le impostazioni WiFi. Si prega di aprirli manualmente.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Il tuo telefono è ancora connesso a \"$ssid\". Apri le impostazioni WiFi, connettiti alla rete del dispositivo WeMo, quindi riprova.';
  }

  @override
  String get pairingLoadingLooking => 'Alla ricerca del dispositivo...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Impossibile trovare il dispositivo WeMo su $ip. Assicurati che il telefono sia connesso alla rete WeMo WiFi, quindi riprova. Puoi anche inserire manualmente il dispositivo IP.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Errore nel rilevamento del dispositivo: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Collegamento a $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Nessun dispositivo trovato su $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Errore di connessione a $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Ricerca reti in corso...';

  @override
  String pairingErrorScanning(String error) {
    return 'Impossibile scansionare le reti: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Seleziona una rete e inserisci la password.';

  @override
  String get pairingLoadingSendingCredentials => 'Invio credenziali di rete...';

  @override
  String get pairingLoadingWaitingConnection =>
      'In attesa della connessione del dispositivo...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Impossibile configurare la rete: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Password troppo corta. Per favore controlla e riprova.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Impossibile connettersi. Si prega di verificare la password.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Connessione scaduta. Per favore riprova.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Errore durante la finalizzazione della configurazione: $error';
  }

  @override
  String get detailRefreshState => 'Aggiorna stato';

  @override
  String get detailDeviceInfo => 'Informazioni sul dispositivo';

  @override
  String get detailAdvanced => 'Avanzato';

  @override
  String get detailWifiSetup => 'WiFi Configurazione';

  @override
  String get detailReset => 'Ripristina';

  @override
  String get detailUnreachable =>
      'Il dispositivo non è raggiungibile. Controlla la connessione di rete.';

  @override
  String detailFailedToggle(String error) {
    return 'Impossibile attivare/disattivare: $error';
  }

  @override
  String get detailDeviceInformation => 'Informazioni sul dispositivo';

  @override
  String get detailPermissionScan =>
      'È necessaria l\'autorizzazione per scansionare le reti WiFi.';

  @override
  String get detailScanFailedManual =>
      'Impossibile eseguire la scansione delle reti. Immettere manualmente il nome della rete.';

  @override
  String get detailEnterNetworkNameError =>
      'Inserisci o seleziona un nome di rete';

  @override
  String get detailEnterPasswordError => 'Inserisci la password di rete';

  @override
  String get detailWifiSuccess => 'WiFi configurato con successo!';

  @override
  String get detailScanNetworks => 'Cerca reti';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configurare la rete WiFi per \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Reti disponibili';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Cap $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS vieta severamente alle app di terze parti di eseguire la scansione delle reti Wi-Fi vicine. Inserisci manualmente il nome della tua rete qui sotto.';

  @override
  String get detailTapRefreshScan => 'Tocca Aggiorna per cercare le reti';

  @override
  String get detailEnterNetworkBelow =>
      'Inserisci il nome della tua rete qui sotto';

  @override
  String get detailNetworkCredentials => 'Credenziali di rete';

  @override
  String get detailConnecting => 'Connessione alla rete...';

  @override
  String get detailConnected => 'Connesso con successo!';

  @override
  String get detailPasswordShort => 'La password è troppo corta';

  @override
  String get detailAuthenticationFailed =>
      'Autenticazione non riuscita: controlla la password';

  @override
  String get detailConnectionFailed => 'Connessione non riuscita';

  @override
  String get detailSelectReset => 'Seleziona cosa reimpostare';

  @override
  String get detailResetSchedulesWarning =>
      '• Tutte le pianificazioni e le regole di automazione verranno eliminate';

  @override
  String get detailResetWifiWarning =>
      '• Le impostazioni WiFi verranno cancellate';

  @override
  String get detailSetupAgainWarning =>
      '• Sarà necessario configurare nuovamente il dispositivo';

  @override
  String get detailUnreachableWarning =>
      '• Il dispositivo potrebbe diventare temporaneamente irraggiungibile';

  @override
  String get detailConfirmReset => 'Conferma reimpostazione';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Sei sicuro di voler reimpostare \"$device\"?';
  }

  @override
  String get detailThisWill => 'Ciò:';

  @override
  String get detailCannotUndo => 'Questa azione non può essere annullata.';

  @override
  String get detailYesReset => 'Sì, ripristina';

  @override
  String get detailResetSuccess => 'Reimpostazione del dispositivo riuscita';

  @override
  String get detailResetRemote => 'Il dispositivo verrà ripristinato da remoto';

  @override
  String get detailResetFailed => 'Reimpostazione non riuscita';

  @override
  String get detailFactoryReset => 'Ripristino delle impostazioni di fabbrica';

  @override
  String get detailFactoryResetWarning =>
      'Ciò cancellerà TUTTE le impostazioni e ripristinerà il dispositivo alle impostazioni di fabbrica. Sarà necessario configurare nuovamente il dispositivo.\n\nQuesta azione non può essere annullata.';

  @override
  String get detailFactoryResetInitiated =>
      'Ripristino delle impostazioni di fabbrica avviato';

  @override
  String get detailResetDevice => 'Ripristina dispositivo';

  @override
  String detailResetOptionsFor(String device) {
    return 'Ripristina opzioni per \"$device\"';
  }

  @override
  String get detailResetUserData => 'Reimposta i dati utente';

  @override
  String get detailResetUserDataSubtitle => 'Cancella orari e regole';

  @override
  String get detailResetWifi => 'Ripristina le impostazioni WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Il dispositivo dovrà essere configurato nuovamente';

  @override
  String get widgetBrightness => 'Luminosità';

  @override
  String get widgetEnergyStatistics => 'Statistiche energetiche';

  @override
  String get widgetCurrentPower => 'Potenza attuale';

  @override
  String get widgetToday => 'Oggi';

  @override
  String get widgetTotal => 'Totale';

  @override
  String get widgetOnTimeToday => 'In orario oggi';

  @override
  String get widgetTotalOnTime => 'Tempo totale di puntualità';

  @override
  String get widgetStandby => 'Pronta attesa';

  @override
  String get widgetUnknown => 'Sconosciuto';

  @override
  String get widgetOpenNetwork => 'Rete aperta';

  @override
  String get widgetWepInsecure => 'WEP (non sicuro)';
}
