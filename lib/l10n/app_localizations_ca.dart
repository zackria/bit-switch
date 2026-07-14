// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'El dispositiu no admet aquesta acció.';

  @override
  String get errInvalidArgs =>
      'S\'han enviat arguments no vàlids al dispositiu.';

  @override
  String get errActionFailed =>
      'El dispositiu no ha pogut realitzar l\'acció sol·licitada.';

  @override
  String get errInvalidValue => 'S\'ha proporcionat un valor no vàlid.';

  @override
  String get errValueOutOfRange =>
      'El valor està fora de l\'interval acceptable.';

  @override
  String get errFeatureNotAvailable =>
      'Aquesta funció no està disponible en aquest dispositiu.';

  @override
  String get errOutOfMemory =>
      'El dispositiu està sense memòria. Torna-ho a provar més tard.';

  @override
  String get errManualActionRequired => 'Cal una acció manual al dispositiu.';

  @override
  String get errActionNotAuthorized => 'Aquesta acció no està autoritzada.';

  @override
  String get errUnexpected =>
      'S\'ha produït un error inesperat. Si us plau, torna-ho a provar.';

  @override
  String get errDeviceUnreachableOffline =>
      'No es pot arribar al dispositiu. Pot estar fora de línia o en una xarxa diferent.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'La sol·licitud s\'ha esgotat després dels intents de $attempts. És possible que el dispositiu estigui fora de línia.';
  }

  @override
  String get errRequestTimedOut =>
      'La sol·licitud s\'ha esgotat. És possible que el dispositiu estigui fora de línia.';

  @override
  String get errNoRouteToHost =>
      'No es pot arribar al dispositiu. Comproveu la vostra connexió WiFi.';

  @override
  String get errHostUnreachable =>
      'El dispositiu no és accessible. Assegureu-vos que estigui encès i connectat a WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'No es pot comunicar amb el dispositiu després dels intents de $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Error de xarxa: no es pot comunicar amb el dispositiu.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Aquesta acció no està autoritzada al dispositiu.';

  @override
  String get errDeviceServiceNotFound =>
      'No s\'ha trobat el servei del dispositiu. És possible que el dispositiu necessiti una actualització del microprogramari.';

  @override
  String get errDeviceEncounteredError =>
      'El dispositiu ha trobat un error en processar la sol·licitud.';

  @override
  String get errDeviceInternalError =>
      'El dispositiu ha retornat un error intern.';

  @override
  String get errDeviceTempUnavailable =>
      'El dispositiu no està disponible temporalment. Si us plau, torna-ho a provar.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'El dispositiu ha retornat un error (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'No s\'ha pogut fer $action al dispositiu.';
  }

  @override
  String get errDeviceReturnedError => 'El dispositiu ha retornat un error.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'S\'ha esgotat el temps d\'espera de l\'operació $operation. Si us plau, torna-ho a provar.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'L\'operació s\'ha esgotat després de $seconds segons.';
  }

  @override
  String get errOperationTimedOut =>
      'L\'operació s\'ha esgotat. Si us plau, torna-ho a provar.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Activeu el permís de xarxa local a Configuració per trobar dispositius.';

  @override
  String get errCannotAccessLocalNetwork =>
      'No es pot accedir a la xarxa local. Activeu el permís de xarxa local a Configuració.';

  @override
  String get errCheckWifiConnection =>
      'No es poden descobrir els dispositius. Comproveu la vostra connexió WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'El descobriment es va interrompre. S\'han trobat dispositius $count.';
  }

  @override
  String get errNoDevicesFound =>
      'No s\'ha trobat cap dispositiu. Assegureu-vos que els dispositius estiguin encès i connectats a la vostra xarxa.';

  @override
  String get actionGetDeviceState => 'obtenir l\'estat del dispositiu';

  @override
  String get actionSetDeviceState => 'establir l\'estat del dispositiu';

  @override
  String get actionGetEnergyData => 'obtenir dades energètiques';

  @override
  String get actionScanNetworks => 'buscar xarxes';

  @override
  String get actionConnectWifi => 'connecteu-vos a WiFi';

  @override
  String get actionCheckConnection => 'comprovar l\'estat de connexió';

  @override
  String get actionResetDevice => 'restablir el dispositiu';

  @override
  String get actionPerform => 'realitzar acció';

  @override
  String get suggestTryRefreshing =>
      'Proveu d\'actualitzar la llista de dispositius o comproveu si el dispositiu respon.';

  @override
  String get suggestEnsurePoweredOn =>
      'Assegureu-vos que el dispositiu estigui encès i connectat a la vostra xarxa WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Assegureu-vos que el vostre telèfon estigui connectat a la mateixa xarxa WiFi que els vostres dispositius.';

  @override
  String get suggestCheckPhysical =>
      'Comproveu si hi ha botons o interruptors que necessiten atenció al dispositiu físic.';

  @override
  String get suggestWaitAndTry => 'Espereu un moment i torneu-ho a provar.';

  @override
  String get suggestDeviceBusy =>
      'És possible que el dispositiu estigui ocupat. Torna-ho a provar d\'aquí a uns segons.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Cancel·la';

  @override
  String get commonClose => 'Tancar';

  @override
  String get commonDone => 'Fet';

  @override
  String get commonLater => 'Més tard';

  @override
  String get commonRefresh => 'Actualitza';

  @override
  String get commonTryAgain => 'Torna-ho a provar';

  @override
  String get commonOpenSettings => 'Obriu Configuració';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonFix => 'Arreglar';

  @override
  String get commonOn => 'Encès';

  @override
  String get commonOff => 'Apagat';

  @override
  String get commonOffline => 'Fora de línia';

  @override
  String get commonStatus => 'Estat';

  @override
  String get commonName => 'Nom';

  @override
  String get commonType => 'Tipus';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Fabricant';

  @override
  String get commonSerial => 'Serial';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Amfitrió';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Contrasenya';

  @override
  String get commonUnknownWifi => 'Wi-Fi desconegut';

  @override
  String get commonNotConnected => 'No connectat';

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
      other: '$seconds segons',
      one: '1 segon',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Interruptor intel·ligent';

  @override
  String get deviceTypeLightSwitch => 'Interruptor de llum';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Endoll Insight';

  @override
  String get deviceTypeMotionSensor => 'Sensor de moviment';

  @override
  String get deviceTypeMaker => 'Creador';

  @override
  String get deviceTypeBridge => 'Pont';

  @override
  String get deviceTypeCoffeeMaker => 'Cafetera';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Humidificador';

  @override
  String get deviceTypeOutdoorPlug => 'Endoll exterior';

  @override
  String get deviceTypeUnknown => 'Dispositiu desconegut';

  @override
  String get pairingStepGetStarted => 'Comença';

  @override
  String get pairingStepConnectToDevice => 'Connecteu-vos al dispositiu';

  @override
  String get pairingStepFindDevice => 'Cerca el dispositiu';

  @override
  String get pairingStepSelectNetwork => 'Seleccioneu Xarxa';

  @override
  String get pairingStepConfiguring => 'Configuració';

  @override
  String get pairingStepReconnect => 'Torna a connectar';

  @override
  String get pairingStepFinalizing => 'Finalitzant';

  @override
  String get pairingStepSuccess => 'Èxit';

  @override
  String get pairingStepError => 'Error';

  @override
  String get homeToggleDebug => 'Canvia el mode de depuració';

  @override
  String get homeRefreshDevices => 'Actualitzar dispositius';

  @override
  String get homeSettings => 'Configuració';

  @override
  String get homeDismiss => 'Descartar';

  @override
  String get homeDiscovering => 'Descobrint dispositius...';

  @override
  String get homeNoDevices => 'No s\'ha trobat cap dispositiu';

  @override
  String get homeScanDevices => 'Busca dispositius';

  @override
  String get homeLookingForMore => 'S\'estan buscant més dispositius...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S\'han trobat dispositius $count',
      one: 'S\'ha trobat 1 dispositiu',
      zero: 'No s\'ha trobat cap dispositiu',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S\'han trobat dispositius $count, s\'escanegen...',
      one: 'S\'ha trobat 1 dispositiu, s\'està escanejant...',
      zero: 'No s\'ha trobat cap dispositiu, s\'està escanejant...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automàtic';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Connectat a WiFi';

  @override
  String get homePermissionExplanation =>
      'La informació d\'ubicació s\'utilitza per trobar els detalls del vostre Wi-Fi. L\'accés a la xarxa local us permet controlar els vostres interruptors i dispositius intel·ligents.';

  @override
  String get homeDebugLog => 'Registre de depuració';

  @override
  String get homeClear => 'Clar';

  @override
  String get homeDebugEmpty =>
      'Toqueu Actualitza per iniciar la descoberta i veure els registres...';

  @override
  String get homeProbeHint => 'IP:Port (p. ex., 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'Escanejant...';

  @override
  String get homeScanSubnet => 'Escaneja tota la subxarxa (correcció d\'iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plataforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Configuració';

  @override
  String get settingsSectionNetwork => 'Xarxa';

  @override
  String get settingsSectionDeviceSetup => 'Configuració del dispositiu';

  @override
  String get settingsSectionDiscovery => 'Descobriment';

  @override
  String get settingsSectionAbout => 'Sobre';

  @override
  String get settingsSectionDebug => 'Depuració';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Permís concedit! Nom WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'S\'ha concedit la ubicació, però també cal el permís de la xarxa local. Comproveu la configuració.';

  @override
  String get settingsLocationRequired => 'Cal permís d\'ubicació';

  @override
  String get settingsLocationRequiredBody =>
      'Per mostrar el nom de la vostra xarxa WiFi, iOS requereix permís d\'ubicació.';

  @override
  String get settingsRequiredPermissions => 'Permisos necessaris:';

  @override
  String get settingsPermissionList =>
      '1. Serveis d\'ubicació (\"Mentre s\'utilitza l\'aplicació\")\n2. Xarxa local';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Nota: la detecció de dispositius funciona sense permís d\'ubicació. Aquest permís només s\'utilitza per mostrar el nom de la vostra xarxa WiFi.';

  @override
  String get settingsEnableLocation => 'Activa la ubicació a Configuració';

  @override
  String get settingsLocationDeniedBody =>
      'S\'ha denegat el permís d\'ubicació. Podeu activar-lo des de la configuració del sistema.';

  @override
  String get settingsStepsToEnable => 'Passos per habilitar:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Obriu Configuració\n2. Desplaceu-vos fins a \"Bit Switch\"\n3. Toqueu \"Ubicació\"\n4. Seleccioneu \"Mentre utilitzeu l\'aplicació\"\n5. Torna a aquesta aplicació i toca el botó d\'actualització';

  @override
  String get settingsLocationOnlyWifiName =>
      'Nota: el permís d\'ubicació només és necessari per mostrar el nom WiFi. El descobriment de dispositius funciona sense ell.';

  @override
  String get settingsAdditionalPermission => 'Permís addicional necessari';

  @override
  String get settingsLocalNetworkBody =>
      'Es requereix permís de xarxa local per descobrir i controlar els dispositius Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Tens permís d\'ubicació, però el nom WiFi encara no és visible.';

  @override
  String get settingsPleaseEnable => 'Si us plau, activeu:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Aneu a Configuració de l\'iPhone\n2. Desplaceu-vos cap avall fins a \"Bit Switch\"\n3. Activa \"Xarxa local\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Es requereix permís de xarxa local tant per a la detecció de dispositius com per a l\'accés al nom WiFi a iOS.';

  @override
  String get settingsPairNewDevice => 'Vincula el nou dispositiu';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configura un dispositiu Wemo nou';

  @override
  String get settingsDiscoveryTimeout => 'Temps d\'espera de descobriment';

  @override
  String get settingsRequestTimeout => 'Sol·licita el temps d\'espera';

  @override
  String get settingsAutoRefresh => 'Actualització automàtica';

  @override
  String get settingsAutoRefreshOn =>
      'Activat: els estats del dispositiu s\'actualitzen automàticament';

  @override
  String get settingsAutoRefreshOff =>
      'Desactivat: utilitzeu el botó d\'actualització manual';

  @override
  String get settingsAutoRefreshInterval =>
      'Interval d\'actualització automàtica';

  @override
  String get settingsAbout => 'Sobre Bit Switch';

  @override
  String get settingsVersion => 'Versió';

  @override
  String get settingsNetworkDiagnostics => 'Diagnòstic de xarxa';

  @override
  String get settingsShowDebug => 'Mostra el mode de depuració';

  @override
  String get settingsShowDebugSubtitle =>
      'Mostra els controls de depuració i els diagnòstics de xarxa a la pantalla d\'inici';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Mostra la icona de depuració a la pantalla d\'inici per resoldre problemes';

  @override
  String get settingsCurrentNetwork => 'Xarxa actual';

  @override
  String get settingsNetworkAccessStatus => 'Estat d\'accés a la xarxa';

  @override
  String get settingsNetworkAccessGranted =>
      'L\'accés a la xarxa local està disponible';

  @override
  String get settingsNetworkAccessMissing =>
      'És possible que es requereixin permisos addicionals';

  @override
  String get settingsChecking => 'S\'està comprovant...';

  @override
  String get settingsEnableLocalNetwork =>
      'Activa la xarxa local a Configuració';

  @override
  String get settingsNotConnectedWifi => 'No connectat a WiFi';

  @override
  String get settingsPermissionRequiredView => 'Cal permís per visualitzar';

  @override
  String get settingsAllPermissionsGranted => 'Tots els permisos concedits';

  @override
  String get settingsLocalNetworkNeeded => 'Cal permís de xarxa local';

  @override
  String get settingsLocationNeeded => 'Cal permís d\'ubicació';

  @override
  String get settingsRefreshPermissions => 'Actualitza els permisos';

  @override
  String get settingsAboutWifiPermission => 'Sobre el permís de nom WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'El vostre nom WiFi ajuda a confirmar que el vostre telèfon i els dispositius Wemo estan a la mateixa xarxa.';

  @override
  String get settingsWifiPermissionIos =>
      'A iOS, per mostrar el nom de la vostra xarxa WiFi cal permís d\'ubicació.';

  @override
  String get settingsImportant => 'Important:';

  @override
  String get settingsPrivacyNote =>
      '• Mai es fa un seguiment de la vostra ubicació\n• No es recull ni s\'emmagatzema cap dada d\'ubicació';

  @override
  String get settingsWifiPermissionImportant =>
      '• La detecció de dispositius funciona SENSE aquest permís\n• Això només és necessari per mostrar el nom WiFi\n• No es recull ni s\'emmagatzema cap dada d\'ubicació';

  @override
  String get settingsGrantPermission => 'Concedir permís';

  @override
  String get settingsHowLongScan => 'Quant de temps buscar dispositius:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'El temps d\'espera de descoberta s\'ha establert en $seconds segons';
  }

  @override
  String get settingsHowLongResponses =>
      'Quant de temps cal esperar per a les respostes del dispositiu:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Augmenteu aquest valor si veieu errors \"Connexió tancada\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'El temps d\'espera de la sol·licitud s\'ha establert en $seconds segons';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Estableix l\'interval per a l\'actualització automàtica de l\'estat:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Interval d\'actualització establert en $seconds segons';
  }

  @override
  String get settingsAboutTagline =>
      'Un controlador local net i privat per als vostres dispositius Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch utilitza el descobriment de xarxes locals per trobar i controlar dispositius sense dependències del núvol.';

  @override
  String get settingsVersionValue => 'Versió 1.0.1';

  @override
  String get settingsProtocol => 'Protocol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Adreça de multidifusió: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Ports del dispositiu: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protocol de control: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Consell: assegureu-vos que el vostre dispositiu estigui a la mateixa xarxa que els vostres dispositius Wemo i que la multidifusió UDP no estigui bloquejada.';

  @override
  String get settingsDevicePaired =>
      'Dispositiu vinculat! S\'està actualitzant la llista de dispositius...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds segons per sol·licitud';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'S\'està actualitzant cada $seconds';
  }

  @override
  String get pairingTitle => 'Vincula el nou dispositiu';

  @override
  String get pairingSetupTitle => 'Configura el teu dispositiu Wemo';

  @override
  String get pairingBeforeBegin =>
      'Abans de començar, assegureu-vos que el vostre dispositiu Wemo estigui en mode de configuració:';

  @override
  String get pairingPlugInTitle => 'Connecteu el vostre dispositiu Wemo';

  @override
  String get pairingPlugInBody =>
      'Connecteu-lo a l\'alimentació i espereu que s\'iniciï.';

  @override
  String get pairingBlinkingLedTitle => 'Busqueu el LED que parpelleja';

  @override
  String get pairingBlinkingLedBody =>
      'Un LED parpellejant indica que el dispositiu està en mode de configuració.';

  @override
  String get pairingCheckWifiTitle => 'Comproveu la xarxa WiFi';

  @override
  String get pairingCheckWifiBody =>
      'El dispositiu emetrà una xarxa anomenada \"WeMo.XXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Si el LED està sòlid, manteniu premut el botó de restabliment durant 5 segons per entrar al mode de configuració.';

  @override
  String get pairingStart => 'Comença a emparellar';

  @override
  String get pairingConnectWifiTitle => 'Connecteu-vos al dispositiu WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Obriu la configuració WiFi del vostre telèfon i connecteu-vos a la xarxa que comença per \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Xarxa actual';

  @override
  String get pairingConnectedToDevice => 'Connectat al dispositiu Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Obriu la configuració de WiFi';

  @override
  String get pairingConnectedButton => 'M\'he connectat';

  @override
  String get pairingLookingForDevice =>
      'Esteu buscant el vostre dispositiu Wemo...';

  @override
  String get pairingManualIpPrompt =>
      'O introduïu el dispositiu IP manualment:';

  @override
  String get pairingDeviceIp => 'Adreça del dispositiu IP';

  @override
  String get pairingConnectToIp => 'Connecteu-vos a IP';

  @override
  String get pairingSelectHomeWifi =>
      'Seleccioneu la vostra xarxa domèstica WiFi:';

  @override
  String get pairingRefreshNetworks => 'Actualitzar xarxes';

  @override
  String get pairingIosScanLimitation =>
      'iOS prohibeix estrictament que les aplicacions de tercers escanegin les xarxes Wi-Fi properes. És possible que hàgiu d\'introduir manualment la xarxa SSID.';

  @override
  String get pairingNoNetworks => 'No s\'han trobat xarxes';

  @override
  String get pairingScanAgain => 'Escaneja de nou';

  @override
  String get pairingWifiPassword => 'Contrasenya WiFi';

  @override
  String get pairingConnect => 'Connecta\'t';

  @override
  String get pairingEnterNetworkManually => 'Introduïu la xarxa manualment';

  @override
  String get pairingEnterNetworkName => 'Introduïu el nom de la xarxa:';

  @override
  String get pairingNetworkName => 'Nom de la xarxa (SSID)';

  @override
  String get pairingUseNetwork => 'Utilitzeu aquesta xarxa';

  @override
  String get pairingConfiguringDevice => 'S\'està configurant el dispositiu...';

  @override
  String get pairingConfiguringWait =>
      'Espereu mentre el dispositiu es connecta a la vostra xarxa.';

  @override
  String get pairingReconnectTitle =>
      'Torneu a connectar-vos a la vostra xarxa';

  @override
  String pairingReconnectBody(String ssid) {
    return 'El vostre dispositiu Wemo s\'està connectant a \"$ssid\". Torneu a connectar el telèfon a la mateixa xarxa.';
  }

  @override
  String get pairingBackOnHome => 'Torna a la xarxa domèstica!';

  @override
  String get pairingReconnectedButton => 'M\'he tornat a connectar';

  @override
  String get pairingFinalizingSetup => 'S\'està finalitzant la configuració...';

  @override
  String get pairingSetupComplete => 'Configuració completa!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Connectat a $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'El vostre dispositiu ja està configurat i apareixerà a la pantalla d\'inici.';

  @override
  String get pairingSomethingWrong => 'Alguna cosa va sortir malament';

  @override
  String get pairingStartOver => 'Torna a començar';

  @override
  String get pairingErrorOpenWifi =>
      'No s\'ha pogut obrir la configuració de WiFi. Obriu-los manualment.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'El teu telèfon encara està connectat a \"$ssid\". Obriu la configuració del WiFi, connecteu-vos a la xarxa del dispositiu WeMo i torneu-ho a provar.';
  }

  @override
  String get pairingLoadingLooking => 'Es busca un dispositiu...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'No s\'ha pogut trobar el dispositiu WeMo a $ip. Assegureu-vos que el vostre telèfon estigui connectat a la xarxa WeMo WiFi i torneu-ho a provar. També podeu introduir el dispositiu IP manualment.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Error en descobrir el dispositiu: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'S\'està connectant a $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'No s\'ha trobat cap dispositiu a $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Error en connectar amb $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Buscant xarxes...';

  @override
  String pairingErrorScanning(String error) {
    return 'No s\'han pogut escanejar les xarxes: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Seleccioneu una xarxa i introduïu la contrasenya.';

  @override
  String get pairingLoadingSendingCredentials =>
      'S\'estan enviant les credencials de xarxa...';

  @override
  String get pairingLoadingWaitingConnection =>
      'S\'està esperant que el dispositiu es connecti...';

  @override
  String pairingErrorConfigure(String error) {
    return 'No s\'ha pogut configurar la xarxa: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'La contrasenya és massa curta. Comprova i torna-ho a provar.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'No s\'ha pogut connectar. Comproveu la contrasenya.';

  @override
  String get pairingErrorConnectionTimeout =>
      'La connexió s\'ha esgotat. Si us plau, torna-ho a provar.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Error en finalitzar la configuració: $error';
  }

  @override
  String get detailRefreshState => 'Actualitzar l\'estat';

  @override
  String get detailDeviceInfo => 'Informació del dispositiu';

  @override
  String get detailAdvanced => 'Avançat';

  @override
  String get detailWifiSetup => 'Configuració WiFi';

  @override
  String get detailReset => 'Restableix';

  @override
  String get detailUnreachable =>
      'El dispositiu no és accessible. Comproveu la connexió de xarxa.';

  @override
  String detailFailedToggle(String error) {
    return 'No s\'ha pogut canviar: $error';
  }

  @override
  String get detailDeviceInformation => 'Informació del dispositiu';

  @override
  String get detailPermissionScan => 'Cal permís per escanejar xarxes WiFi.';

  @override
  String get detailScanFailedManual =>
      'No s\'han pogut escanejar les xarxes. Introduïu el nom de la xarxa manualment.';

  @override
  String get detailEnterNetworkNameError =>
      'Introduïu o seleccioneu un nom de xarxa';

  @override
  String get detailEnterPasswordError => 'Introduïu la contrasenya de la xarxa';

  @override
  String get detailWifiSuccess => 'WiFi s\'ha configurat correctament!';

  @override
  String get detailScanNetworks => 'Busca xarxes';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configura la xarxa WiFi per a \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Xarxes disponibles';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS prohibeix estrictament que les aplicacions de tercers escanegin les xarxes Wi-Fi properes. Introduïu manualment el nom de la vostra xarxa a continuació.';

  @override
  String get detailTapRefreshScan => 'Toqueu Actualitza per buscar xarxes';

  @override
  String get detailEnterNetworkBelow =>
      'Introduïu el nom de la vostra xarxa a continuació';

  @override
  String get detailNetworkCredentials => 'Credencials de xarxa';

  @override
  String get detailConnecting => 'S\'està connectant a la xarxa...';

  @override
  String get detailConnected => 'Connectat correctament!';

  @override
  String get detailPasswordShort => 'La contrasenya és massa curta';

  @override
  String get detailAuthenticationFailed =>
      'L\'autenticació ha fallat: comproveu la contrasenya';

  @override
  String get detailConnectionFailed => 'La connexió ha fallat';

  @override
  String get detailSelectReset => 'Seleccioneu què voleu restablir';

  @override
  String get detailResetSchedulesWarning =>
      '• S\'eliminaran tots els horaris i regles d\'automatització';

  @override
  String get detailResetWifiWarning => '• La configuració de WiFi s\'esborrarà';

  @override
  String get detailSetupAgainWarning =>
      '• Haureu de tornar a configurar el dispositiu';

  @override
  String get detailUnreachableWarning =>
      '• El dispositiu pot quedar temporalment inaccessible';

  @override
  String get detailConfirmReset => 'Confirmeu el restabliment';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Esteu segur que voleu restablir \"$device\"?';
  }

  @override
  String get detailThisWill => 'Això farà:';

  @override
  String get detailCannotUndo => 'Aquesta acció no es pot desfer.';

  @override
  String get detailYesReset => 'Sí, reinicia';

  @override
  String get detailResetSuccess =>
      'El dispositiu s\'ha restablert correctament';

  @override
  String get detailResetRemote => 'El dispositiu es restablirà de forma remota';

  @override
  String get detailResetFailed => 'No s\'ha pogut restablir';

  @override
  String get detailFactoryReset => 'Restabliment de fàbrica';

  @override
  String get detailFactoryResetWarning =>
      'Això esborrarà TOTA la configuració i restaurarà el dispositiu als valors predeterminats de fàbrica. Haureu de tornar a configurar el dispositiu.\n\nAquesta acció no es pot desfer.';

  @override
  String get detailFactoryResetInitiated =>
      'S\'ha iniciat el restabliment de fàbrica';

  @override
  String get detailResetDevice => 'Restableix el dispositiu';

  @override
  String detailResetOptionsFor(String device) {
    return 'Restableix les opcions per a \"$device\"';
  }

  @override
  String get detailResetUserData => 'Restableix les dades d\'usuari';

  @override
  String get detailResetUserDataSubtitle => 'Esborra els horaris i les regles';

  @override
  String get detailResetWifi => 'Restableix la configuració de WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'El dispositiu s\'haurà de tornar a configurar';

  @override
  String get widgetBrightness => 'Brillantor';

  @override
  String get widgetEnergyStatistics => 'Estadístiques energètiques';

  @override
  String get widgetCurrentPower => 'Potència actual';

  @override
  String get widgetToday => 'Avui';

  @override
  String get widgetTotal => 'Total';

  @override
  String get widgetOnTimeToday => 'Avui a temps';

  @override
  String get widgetTotalOnTime => 'Temps total';

  @override
  String get widgetStandby => 'En espera';

  @override
  String get widgetUnknown => 'Desconegut';

  @override
  String get widgetOpenNetwork => 'Xarxa oberta';

  @override
  String get widgetWepInsecure => 'WEP (insegur)';
}
