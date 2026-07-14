// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'L\'appareil ne prend pas en charge cette action.';

  @override
  String get errInvalidArgs =>
      'Des arguments non valides ont été envoyés à l\'appareil.';

  @override
  String get errActionFailed =>
      'L\'appareil n\'a pas réussi à effectuer l\'action demandée.';

  @override
  String get errInvalidValue => 'Une valeur non valide a été fournie.';

  @override
  String get errValueOutOfRange => 'La valeur est hors de la plage acceptable.';

  @override
  String get errFeatureNotAvailable =>
      'Cette fonctionnalité n\'est pas disponible sur cet appareil.';

  @override
  String get errOutOfMemory =>
      'L\'appareil manque de mémoire. Réessayez plus tard.';

  @override
  String get errManualActionRequired =>
      'Une action manuelle est requise sur l’appareil.';

  @override
  String get errActionNotAuthorized => 'Cette action n\'est pas autorisée.';

  @override
  String get errUnexpected =>
      'Une erreur inattendue s\'est produite. Veuillez réessayer.';

  @override
  String get errDeviceUnreachableOffline =>
      'Impossible d\'atteindre l\'appareil. Il peut être hors ligne ou sur un autre réseau.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'La demande a expiré après les tentatives $attempts. L\'appareil est peut-être hors ligne.';
  }

  @override
  String get errRequestTimedOut =>
      'La demande a expiré. L\'appareil est peut-être hors ligne.';

  @override
  String get errNoRouteToHost =>
      'Impossible d\'atteindre l\'appareil. Veuillez vérifier votre connexion WiFi.';

  @override
  String get errHostUnreachable =>
      'L\'appareil est inaccessible. Veuillez vous assurer qu\'il est sous tension et connecté au WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Impossible de communiquer avec l\'appareil après les tentatives du $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Erreur réseau : impossible de communiquer avec l\'appareil.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Cette action n\'est pas autorisée sur l\'appareil.';

  @override
  String get errDeviceServiceNotFound =>
      'Service de périphérique introuvable. L\'appareil peut avoir besoin d\'une mise à jour du micrologiciel.';

  @override
  String get errDeviceEncounteredError =>
      'L\'appareil a rencontré une erreur lors du traitement de la demande.';

  @override
  String get errDeviceInternalError =>
      'L\'appareil a renvoyé une erreur interne.';

  @override
  String get errDeviceTempUnavailable =>
      'L\'appareil est temporairement indisponible. Veuillez réessayer.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'L\'appareil a renvoyé une erreur (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Échec de $action sur l\'appareil.';
  }

  @override
  String get errDeviceReturnedError => 'L\'appareil a renvoyé une erreur.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'L’opération $operation a expiré. Veuillez réessayer.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'L’opération a expiré après $seconds secondes.';
  }

  @override
  String get errOperationTimedOut =>
      'L’opération a expiré. Veuillez réessayer.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName : $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Veuillez activer l\'autorisation du réseau local dans les paramètres pour rechercher des appareils.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Impossible d\'accéder au réseau local. Veuillez activer l\'autorisation du réseau local dans les paramètres.';

  @override
  String get errCheckWifiConnection =>
      'Impossible de découvrir les appareils. Veuillez vérifier votre connexion WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Découverte interrompue. Appareil(s) $count trouvé(s).';
  }

  @override
  String get errNoDevicesFound =>
      'Aucun appareil trouvé. Veuillez vous assurer que les appareils sont allumés et connectés à votre réseau.';

  @override
  String get actionGetDeviceState => 'obtenir l\'état de l\'appareil';

  @override
  String get actionSetDeviceState => 'définir l\'état de l\'appareil';

  @override
  String get actionGetEnergyData => 'obtenir des données énergétiques';

  @override
  String get actionScanNetworks => 'rechercher des réseaux';

  @override
  String get actionConnectWifi => 'se connecter à WiFi';

  @override
  String get actionCheckConnection => 'vérifier l\'état de la connexion';

  @override
  String get actionResetDevice => 'réinitialiser l\'appareil';

  @override
  String get actionPerform => 'effectuer une action';

  @override
  String get suggestTryRefreshing =>
      'Essayez d\'actualiser la liste des appareils ou vérifiez si l\'appareil répond.';

  @override
  String get suggestEnsurePoweredOn =>
      'Assurez-vous que l\'appareil est allumé et connecté à votre réseau WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Assurez-vous que votre téléphone est connecté au même réseau WiFi que vos appareils.';

  @override
  String get suggestCheckPhysical =>
      'Vérifiez le périphérique physique pour détecter tout bouton ou commutateur nécessitant une attention particulière.';

  @override
  String get suggestWaitAndTry => 'Attendez un moment et réessayez.';

  @override
  String get suggestDeviceBusy =>
      'L\'appareil est peut-être occupé. Réessayez dans quelques secondes.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonClose => 'Fermer';

  @override
  String get commonDone => 'Terminé';

  @override
  String get commonLater => 'Plus tard';

  @override
  String get commonRefresh => 'Actualiser';

  @override
  String get commonTryAgain => 'Réessayez';

  @override
  String get commonOpenSettings => 'Ouvrir les paramètres';

  @override
  String get commonGrant => 'Subvention';

  @override
  String get commonFix => 'Corriger';

  @override
  String get commonOn => 'Sur';

  @override
  String get commonOff => 'Désactivé';

  @override
  String get commonOffline => 'Hors ligne';

  @override
  String get commonStatus => 'Statut';

  @override
  String get commonName => 'Nom';

  @override
  String get commonType => 'Tapez';

  @override
  String get commonModel => 'Modèle';

  @override
  String get commonManufacturer => 'Fabricant';

  @override
  String get commonSerial => 'Série';

  @override
  String get commonFirmware => 'Micrologiciel';

  @override
  String get commonHost => 'Hôte';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Mot de passe';

  @override
  String get commonUnknownWifi => 'Inconnu Wi-Fi';

  @override
  String get commonNotConnected => 'Non connecté';

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
      other: '$seconds secondes',
      one: '1 seconde',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Commutateur intelligent';

  @override
  String get deviceTypeLightSwitch => 'Interrupteur d\'éclairage';

  @override
  String get deviceTypeDimmer => 'Gradateur';

  @override
  String get deviceTypeInsightPlug => 'Fiche d\'information';

  @override
  String get deviceTypeMotionSensor => 'Capteur de mouvement';

  @override
  String get deviceTypeMaker => 'Créateur';

  @override
  String get deviceTypeBridge => 'Pont';

  @override
  String get deviceTypeCoffeeMaker => 'Cafetière';

  @override
  String get deviceTypeCrockpot => 'Mijoteuse';

  @override
  String get deviceTypeHumidifier => 'Humidificateur';

  @override
  String get deviceTypeOutdoorPlug => 'Prise extérieure';

  @override
  String get deviceTypeUnknown => 'Appareil inconnu';

  @override
  String get pairingStepGetStarted => 'Commencer';

  @override
  String get pairingStepConnectToDevice => 'Se connecter à l\'appareil';

  @override
  String get pairingStepFindDevice => 'Rechercher un appareil';

  @override
  String get pairingStepSelectNetwork => 'Sélectionnez le réseau';

  @override
  String get pairingStepConfiguring => 'Configuration';

  @override
  String get pairingStepReconnect => 'Reconnecter';

  @override
  String get pairingStepFinalizing => 'Finalisation';

  @override
  String get pairingStepSuccess => 'Succès';

  @override
  String get pairingStepError => 'Erreur';

  @override
  String get homeToggleDebug => 'Activer/désactiver le mode débogage';

  @override
  String get homeRefreshDevices => 'Actualiser les appareils';

  @override
  String get homeSettings => 'Paramètres';

  @override
  String get homeDismiss => 'Rejeter';

  @override
  String get homeDiscovering => 'Découverte des appareils...';

  @override
  String get homeNoDevices => 'Aucun appareil trouvé';

  @override
  String get homeScanDevices => 'Rechercher des appareils';

  @override
  String get homeLookingForMore => 'Vous cherchez plus d\'appareils...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Appareils $count trouvés',
      one: '1 appareil trouvé',
      zero: 'Aucun appareil trouvé',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Appareils $count trouvés, analyse...',
      one: '1 appareil trouvé, analyse...',
      zero: 'Aucun appareil trouvé, analyse...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automatique';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi : $name';
  }

  @override
  String get homeConnectedWifi => 'Connecté à WiFi';

  @override
  String get homePermissionExplanation =>
      'Les informations de localisation sont utilisées pour trouver les détails de votre Wi-Fi. L\'accès au réseau local vous permet de contrôler vos commutateurs et appareils intelligents.';

  @override
  String get homeDebugLog => 'Journal de débogage';

  @override
  String get homeClear => 'Effacer';

  @override
  String get homeDebugEmpty =>
      'Appuyez sur Actualiser pour démarrer la découverte et voir les journaux...';

  @override
  String get homeProbeHint => 'IP :Port (par exemple 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonde';

  @override
  String get homeScanning => 'Numérisation...';

  @override
  String get homeScanSubnet =>
      'Analyser l\'intégralité du sous-réseau (correctif iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plateforme : $platform $version';
  }

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get settingsSectionNetwork => 'Réseau';

  @override
  String get settingsSectionDeviceSetup => 'Configuration du périphérique';

  @override
  String get settingsSectionDiscovery => 'Découverte';

  @override
  String get settingsSectionAbout => 'À propos';

  @override
  String get settingsSectionDebug => 'Débogage';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Autorisation accordée ! Nom WiFi : $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Emplacement accordé, mais l\'autorisation du réseau local est également nécessaire. Vérifiez les paramètres.';

  @override
  String get settingsLocationRequired => 'Autorisation de localisation requise';

  @override
  String get settingsLocationRequiredBody =>
      'Pour afficher le nom de votre réseau WiFi, iOS nécessite une autorisation de localisation.';

  @override
  String get settingsRequiredPermissions => 'Autorisations requises :';

  @override
  String get settingsPermissionList =>
      '1. Services de localisation (« lors de l\'utilisation de l\'application »)\n2. Réseau local';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Remarque : La découverte de périphériques fonctionne sans autorisation de localisation. Cette autorisation est uniquement utilisée pour afficher le nom de votre réseau WiFi.';

  @override
  String get settingsEnableLocation =>
      'Activer la localisation dans les paramètres';

  @override
  String get settingsLocationDeniedBody =>
      'L\'autorisation de localisation a été refusée. Vous pouvez l\'activer à partir des paramètres système.';

  @override
  String get settingsStepsToEnable => 'Étapes pour activer :';

  @override
  String get settingsEnableLocationSteps =>
      '1. Ouvrez les paramètres\n2. Faites défiler jusqu\'à \"Bit Switch\".\n3. Appuyez sur « Localisation »\n4. Sélectionnez « Pendant l\'utilisation de l\'application »\n5. Revenez à cette application et appuyez sur le bouton d\'actualisation';

  @override
  String get settingsLocationOnlyWifiName =>
      'Remarque : l\'autorisation de localisation n\'est nécessaire que pour afficher le nom WiFi. La découverte de périphériques fonctionne sans cela.';

  @override
  String get settingsAdditionalPermission =>
      'Autorisation supplémentaire requise';

  @override
  String get settingsLocalNetworkBody =>
      'L\'autorisation du réseau local est requise pour découvrir et contrôler les appareils Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Vous disposez de l\'autorisation de localisation, mais le nom WiFi n\'est pas encore visible.';

  @override
  String get settingsPleaseEnable => 'Veuillez activer :';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Accédez aux paramètres de l\'iPhone\n2. Faites défiler jusqu\'à « Bit Switch »\n3. Activez « Réseau local »';

  @override
  String get settingsLocalNetworkIosReason =>
      'L\'autorisation du réseau local est requise pour la découverte de l\'appareil et l\'accès au nom WiFi sur iOS.';

  @override
  String get settingsPairNewDevice => 'Associer un nouvel appareil';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configurer un nouvel appareil Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Délai de découverte';

  @override
  String get settingsRequestTimeout => 'Délai d\'expiration de la demande';

  @override
  String get settingsAutoRefresh => 'Actualisation automatique';

  @override
  String get settingsAutoRefreshOn =>
      'Activé : les états des appareils s\'actualisent automatiquement';

  @override
  String get settingsAutoRefreshOff =>
      'Désactivé : utiliser le bouton d\'actualisation manuelle';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervalle de rafraîchissement automatique';

  @override
  String get settingsAbout => 'À propos de Bit Switch';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostic réseau';

  @override
  String get settingsShowDebug => 'Afficher le mode débogage';

  @override
  String get settingsShowDebugSubtitle =>
      'Afficher les commandes de débogage et les diagnostics réseau sur l\'écran d\'accueil';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Afficher l\'icône de débogage sur l\'écran d\'accueil pour le dépannage';

  @override
  String get settingsCurrentNetwork => 'Réseau actuel';

  @override
  String get settingsNetworkAccessStatus => 'État d\'accès au réseau';

  @override
  String get settingsNetworkAccessGranted =>
      'L\'accès au réseau local est disponible';

  @override
  String get settingsNetworkAccessMissing =>
      'Des autorisations supplémentaires peuvent être requises';

  @override
  String get settingsChecking => 'Vérification...';

  @override
  String get settingsEnableLocalNetwork =>
      'Activer le réseau local dans les paramètres';

  @override
  String get settingsNotConnectedWifi => 'Non connecté au WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Autorisation requise pour visualiser';

  @override
  String get settingsAllPermissionsGranted =>
      'Toutes les autorisations accordées';

  @override
  String get settingsLocalNetworkNeeded =>
      'Autorisation du réseau local requise';

  @override
  String get settingsLocationNeeded => 'Autorisation de localisation requise';

  @override
  String get settingsRefreshPermissions => 'Actualiser les autorisations';

  @override
  String get settingsAboutWifiPermission =>
      'À propos de l\'autorisation de nom WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Votre nom WiFi permet de confirmer que votre téléphone et vos appareils Wemo sont sur le même réseau.';

  @override
  String get settingsWifiPermissionIos =>
      'Sur iOS, l\'affichage du nom de votre réseau WiFi nécessite une autorisation de localisation.';

  @override
  String get settingsImportant => 'Important :';

  @override
  String get settingsPrivacyNote =>
      '• Votre position n\'est jamais suivie\n• Aucune donnée de localisation n\'est collectée ou stockée';

  @override
  String get settingsWifiPermissionImportant =>
      '• La découverte de périphériques fonctionne SANS cette autorisation\n• Ceci n\'est nécessaire que pour afficher le nom WiFi.\n• Aucune donnée de localisation n\'est collectée ou stockée';

  @override
  String get settingsGrantPermission => 'Accorder l\'autorisation';

  @override
  String get settingsHowLongScan =>
      'Combien de temps faut-il rechercher des appareils :';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Délai d\'expiration de la découverte défini sur $seconds secondes';
  }

  @override
  String get settingsHowLongResponses =>
      'Combien de temps attendre les réponses de l\'appareil :';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Augmentez cette valeur si vous voyez des erreurs « Connexion fermée ».';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Délai d\'expiration de la demande défini sur $seconds secondes';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Définissez l\'intervalle d\'actualisation automatique de l\'état :';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervalle d\'actualisation défini sur $seconds secondes';
  }

  @override
  String get settingsAboutTagline =>
      'Un contrôleur local propre et privé pour vos appareils Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch utilise la découverte du réseau local pour rechercher et contrôler les appareils sans dépendances au cloud.';

  @override
  String get settingsVersionValue => 'Version 1.0.1';

  @override
  String get settingsProtocol => 'Protocole : SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Adresse de multidiffusion : 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Ports de périphérique : 49152-49159';

  @override
  String get settingsControlProtocol =>
      'Protocole de contrôle : SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Astuce : assurez-vous que votre appareil est sur le même réseau que vos appareils Wemo et que la multidiffusion UDP n\'est pas bloquée.';

  @override
  String get settingsDevicePaired =>
      'Appareil couplé ! Actualisation de la liste des appareils...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds secondes par requête';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Actualisation de tous les $seconds';
  }

  @override
  String get pairingTitle => 'Associer un nouvel appareil';

  @override
  String get pairingSetupTitle => 'Configurez votre appareil Wemo';

  @override
  String get pairingBeforeBegin =>
      'Avant de commencer, assurez-vous que votre appareil Wemo est en mode configuration :';

  @override
  String get pairingPlugInTitle => 'Branchez votre appareil Wemo';

  @override
  String get pairingPlugInBody =>
      'Connectez-le à l\'alimentation et attendez qu\'il démarre.';

  @override
  String get pairingBlinkingLedTitle => 'Recherchez la LED clignotante';

  @override
  String get pairingBlinkingLedBody =>
      'Une LED clignotante indique que l\'appareil est en mode configuration.';

  @override
  String get pairingCheckWifiTitle => 'Vérifiez le réseau WiFi';

  @override
  String get pairingCheckWifiBody =>
      'L\'appareil diffusera un réseau nommé « WeMo.XXXXX ».';

  @override
  String get pairingSolidLedHint =>
      'Si la LED est fixe, maintenez le bouton de réinitialisation enfoncé pendant 5 secondes pour passer en mode configuration.';

  @override
  String get pairingStart => 'Commencer le jumelage';

  @override
  String get pairingConnectWifiTitle => 'Se connecter à l\'appareil WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Ouvrez les paramètres WiFi de votre téléphone et connectez-vous au réseau qui commence par « WeMo ».';

  @override
  String get pairingCurrentNetwork => 'Réseau actuel';

  @override
  String get pairingConnectedToDevice => 'Connecté à l\'appareil Wemo !';

  @override
  String get pairingOpenWifiSettings => 'Ouvrir les paramètres du WiFi';

  @override
  String get pairingConnectedButton => 'Je me suis connecté';

  @override
  String get pairingLookingForDevice =>
      'Vous recherchez votre appareil Wemo...';

  @override
  String get pairingManualIpPrompt =>
      'Ou saisissez manuellement l\'appareil IP :';

  @override
  String get pairingDeviceIp => 'Adresse de l’appareil IP';

  @override
  String get pairingConnectToIp => 'Connectez-vous à IP';

  @override
  String get pairingSelectHomeWifi =>
      'Sélectionnez votre réseau domestique WiFi :';

  @override
  String get pairingRefreshNetworks => 'Actualiser les réseaux';

  @override
  String get pairingIosScanLimitation =>
      'iOS interdit strictement aux applications tierces de rechercher les réseaux Wi-Fi à proximité. Vous devrez peut-être saisir manuellement le réseau SSID.';

  @override
  String get pairingNoNetworks => 'Aucun réseau trouvé';

  @override
  String get pairingScanAgain => 'Scanner à nouveau';

  @override
  String get pairingWifiPassword => 'WiFi Mot de passe';

  @override
  String get pairingConnect => 'Se connecter';

  @override
  String get pairingEnterNetworkManually => 'Entrer le réseau manuellement';

  @override
  String get pairingEnterNetworkName => 'Entrez le nom du réseau :';

  @override
  String get pairingNetworkName => 'Nom du réseau (SSID)';

  @override
  String get pairingUseNetwork => 'Utiliser ce réseau';

  @override
  String get pairingConfiguringDevice => 'Configuration de l\'appareil...';

  @override
  String get pairingConfiguringWait =>
      'Veuillez patienter pendant que l\'appareil se connecte à votre réseau.';

  @override
  String get pairingReconnectTitle => 'Reconnectez-vous à votre réseau';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Votre appareil Wemo se connecte maintenant à « $ssid ». Veuillez reconnecter votre téléphone au même réseau.';
  }

  @override
  String get pairingBackOnHome => 'Retour sur le réseau domestique !';

  @override
  String get pairingReconnectedButton => 'Je me suis reconnecté';

  @override
  String get pairingFinalizingSetup => 'Finalisation de la configuration...';

  @override
  String get pairingSetupComplete => 'Configuration terminée !';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Connecté au $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Votre appareil est maintenant configuré et apparaîtra sur l\'écran d\'accueil.';

  @override
  String get pairingSomethingWrong => 'Quelque chose s\'est mal passé';

  @override
  String get pairingStartOver => 'Recommencer';

  @override
  String get pairingErrorOpenWifi =>
      'Impossible d\'ouvrir les paramètres du WiFi. Veuillez les ouvrir manuellement.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Votre téléphone est toujours connecté à « $ssid ». Veuillez ouvrir les paramètres du WiFi, vous connecter au réseau de l\'appareil WeMo, puis réessayer.';
  }

  @override
  String get pairingLoadingLooking => 'Je recherche un appareil...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Impossible de trouver le périphérique WeMo sur $ip. Assurez-vous que votre téléphone est connecté au réseau WeMo WiFi, puis réessayez. Vous pouvez également saisir manuellement l\'appareil IP.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Erreur lors de la découverte du périphérique : $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Connexion au $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Aucun appareil trouvé sur $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Erreur de connexion à $ip : $error';
  }

  @override
  String get pairingLoadingScanning => 'Recherche de réseaux...';

  @override
  String pairingErrorScanning(String error) {
    return 'Impossible d\'analyser les réseaux : $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Veuillez sélectionner un réseau et saisir le mot de passe.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Envoi des identifiants réseau...';

  @override
  String get pairingLoadingWaitingConnection =>
      'En attente de connexion de l\'appareil...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Échec de la configuration du réseau : $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Mot de passe trop court. Veuillez vérifier et réessayer.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Échec de la connexion. Veuillez vérifier le mot de passe.';

  @override
  String get pairingErrorConnectionTimeout =>
      'La connexion a expiré. Veuillez réessayer.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Erreur lors de la finalisation de la configuration : $error';
  }

  @override
  String get detailRefreshState => 'Actualiser l\'état';

  @override
  String get detailDeviceInfo => 'Informations sur l\'appareil';

  @override
  String get detailAdvanced => 'Avancé';

  @override
  String get detailWifiSetup => 'Configuration du WiFi';

  @override
  String get detailReset => 'Réinitialiser';

  @override
  String get detailUnreachable =>
      'L\'appareil est inaccessible. Vérifiez la connexion réseau.';

  @override
  String detailFailedToggle(String error) {
    return 'Échec du basculement : $error';
  }

  @override
  String get detailDeviceInformation => 'Informations sur l\'appareil';

  @override
  String get detailPermissionScan =>
      'Une autorisation est requise pour analyser les réseaux WiFi.';

  @override
  String get detailScanFailedManual =>
      'Impossible d\'analyser les réseaux. Entrez le nom du réseau manuellement.';

  @override
  String get detailEnterNetworkNameError =>
      'Veuillez saisir ou sélectionner un nom de réseau';

  @override
  String get detailEnterPasswordError =>
      'Veuillez saisir le mot de passe du réseau';

  @override
  String get detailWifiSuccess => 'WiFi configuré avec succès !';

  @override
  String get detailScanNetworks => 'Rechercher des réseaux';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configurez le réseau WiFi pour \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Réseaux disponibles';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch. $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS interdit strictement aux applications tierces de rechercher les réseaux Wi-Fi à proximité. Veuillez saisir manuellement le nom de votre réseau ci-dessous.';

  @override
  String get detailTapRefreshScan =>
      'Appuyez sur Actualiser pour rechercher des réseaux';

  @override
  String get detailEnterNetworkBelow =>
      'Entrez le nom de votre réseau ci-dessous';

  @override
  String get detailNetworkCredentials =>
      'Informations d\'identification réseau';

  @override
  String get detailConnecting => 'Connexion au réseau...';

  @override
  String get detailConnected => 'Connecté avec succès !';

  @override
  String get detailPasswordShort => 'Le mot de passe est trop court';

  @override
  String get detailAuthenticationFailed =>
      'L\'authentification a échoué - vérifiez le mot de passe';

  @override
  String get detailConnectionFailed => 'La connexion a échoué';

  @override
  String get detailSelectReset =>
      'Veuillez sélectionner ce qu\'il faut réinitialiser';

  @override
  String get detailResetSchedulesWarning =>
      '• Tous les horaires et règles d\'automatisation seront supprimés';

  @override
  String get detailResetWifiWarning =>
      '• Les paramètres du WiFi seront effacés';

  @override
  String get detailSetupAgainWarning =>
      '• Vous devrez reconfigurer l\'appareil';

  @override
  String get detailUnreachableWarning =>
      '• L\'appareil peut devenir temporairement inaccessible';

  @override
  String get detailConfirmReset => 'Confirmer la réinitialisation';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Êtes-vous sûr de vouloir réinitialiser « $device » ?';
  }

  @override
  String get detailThisWill => 'Cela va :';

  @override
  String get detailCannotUndo => 'Cette action ne peut pas être annulée.';

  @override
  String get detailYesReset => 'Oui, réinitialiser';

  @override
  String get detailResetSuccess => 'L\'appareil a été réinitialisé avec succès';

  @override
  String get detailResetRemote => 'L\'appareil sera réinitialisé à distance';

  @override
  String get detailResetFailed => 'Échec de la réinitialisation';

  @override
  String get detailFactoryReset => 'Réinitialisation d\'usine';

  @override
  String get detailFactoryResetWarning =>
      'Cela effacera TOUS les paramètres et restaurera l\'appareil aux paramètres d\'usine par défaut. Vous devrez reconfigurer l\'appareil.\n\nCette action ne peut pas être annulée.';

  @override
  String get detailFactoryResetInitiated => 'Réinitialisation d\'usine lancée';

  @override
  String get detailResetDevice => 'Réinitialiser l\'appareil';

  @override
  String detailResetOptionsFor(String device) {
    return 'Options de réinitialisation pour \"$device\"';
  }

  @override
  String get detailResetUserData => 'Réinitialiser les données utilisateur';

  @override
  String get detailResetUserDataSubtitle => 'Efface les horaires et les règles';

  @override
  String get detailResetWifi => 'Réinitialiser les paramètres du WiFi';

  @override
  String get detailResetWifiSubtitle => 'L\'appareil devra être reconfiguré';

  @override
  String get widgetBrightness => 'Luminosité';

  @override
  String get widgetEnergyStatistics => 'Statistiques énergétiques';

  @override
  String get widgetCurrentPower => 'Puissance actuelle';

  @override
  String get widgetToday => 'Aujourd\'hui';

  @override
  String get widgetTotal => 'Total';

  @override
  String get widgetOnTimeToday => 'À l\'heure aujourd\'hui';

  @override
  String get widgetTotalOnTime => 'Total à temps';

  @override
  String get widgetStandby => 'En veille';

  @override
  String get widgetUnknown => 'Inconnu';

  @override
  String get widgetOpenNetwork => 'Réseau ouvert';

  @override
  String get widgetWepInsecure => 'WEP (non sécurisé)';
}

/// The translations for French, as used in Canada (`fr_CA`).
class AppLocalizationsFrCa extends AppLocalizationsFr {
  AppLocalizationsFrCa() : super('fr_CA');

  @override
  String get errDeviceNotSupportAction =>
      'L\'appareil ne supporte pas cette action.';

  @override
  String get errInvalidArgs =>
      'Des arguments invalides ont été envoyés à l\'appareil.';

  @override
  String get errActionFailed =>
      'L\'appareil n\'a pas réussi à effectuer l\'action demandée.';

  @override
  String get errInvalidValue => 'Une valeur invalide a été fournie.';

  @override
  String get errValueOutOfRange => 'La valeur est hors de la plage acceptable.';

  @override
  String get errFeatureNotAvailable =>
      'Cette fonctionnalité n\'est pas disponible sur cet appareil.';

  @override
  String get errOutOfMemory =>
      'L\'appareil manque de mémoire. Réessayez plus tard.';

  @override
  String get errManualActionRequired =>
      'Une action manuelle est requise sur l’appareil.';

  @override
  String get errActionNotAuthorized => 'Cette action n\'est pas autorisée.';

  @override
  String get errUnexpected =>
      'Une erreur inattendue s\'est produite. Veuillez réessayer.';

  @override
  String get errDeviceUnreachableOffline =>
      'Impossible d\'atteindre l\'appareil. Il peut être hors ligne ou sur un autre réseau.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'La demande a expiré après les tentatives $attempts. L\'appareil est peut-être hors ligne.';
  }

  @override
  String get errRequestTimedOut =>
      'La demande a expiré. L\'appareil est peut-être hors ligne.';

  @override
  String get errNoRouteToHost =>
      'Impossible d\'atteindre l\'appareil. Veuillez vérifier votre connexion WiFi.';

  @override
  String get errHostUnreachable =>
      'L\'appareil est inaccessible. Assurez-vous qu\'il est sous tension et branché au WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Impossible de communiquer avec l\'appareil après les tentatives du $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Erreur réseau : impossible de communiquer avec l\'appareil.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Cette action n\'est pas permise sur l\'appareil.';

  @override
  String get errDeviceServiceNotFound =>
      'Service de périphérique introuvable. L\'appareil pourrait avoir besoin d\'une mise à jour du micrologiciel.';

  @override
  String get errDeviceEncounteredError =>
      'L\'appareil a rencontré une erreur lors du traitement de la demande.';

  @override
  String get errDeviceInternalError =>
      'L\'appareil a retourné une erreur interne.';

  @override
  String get errDeviceTempUnavailable =>
      'L\'appareil est temporairement indisponible. Veuillez réessayer.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'L\'appareil a retourné une erreur (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Échec de $action sur l\'appareil.';
  }

  @override
  String get errDeviceReturnedError => 'L\'appareil a retourné une erreur.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'L\'opération $operation a expiré. Veuillez réessayer.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'L\'opération a expiré après $seconds secondes.';
  }

  @override
  String get errOperationTimedOut =>
      'L\'opération a expiré. Veuillez réessayer.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName : $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Veuillez activer l\'autorisation du réseau local dans les paramètres pour rechercher des appareils.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Impossible d\'accéder au réseau local. Veuillez activer l\'autorisation du réseau local dans les paramètres.';

  @override
  String get errCheckWifiConnection =>
      'Impossible de découvrir les appareils. Veuillez vérifier votre connexion WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Découverte interrompue. Appareil(s) $count trouvé(s).';
  }

  @override
  String get errNoDevicesFound =>
      'Aucun appareil trouvé. Assurez-vous que les appareils sont allumés et connectés à votre réseau.';

  @override
  String get actionGetDeviceState => 'obtenir l\'état de l\'appareil';

  @override
  String get actionSetDeviceState => 'définir l\'état de l\'appareil';

  @override
  String get actionGetEnergyData => 'obtenir des données énergétiques';

  @override
  String get actionScanNetworks => 'rechercher des réseaux';

  @override
  String get actionConnectWifi => 'se connecter à WiFi';

  @override
  String get actionCheckConnection => 'vérifier l\'état de la connexion';

  @override
  String get actionResetDevice => 'réinitialiser l\'appareil';

  @override
  String get actionPerform => 'effectuer une action';

  @override
  String get suggestTryRefreshing =>
      'Essayez de rafraîchir la liste des appareils ou vérifiez si l\'appareil répond.';

  @override
  String get suggestEnsurePoweredOn =>
      'Assurez-vous que l\'appareil est allumé et branché à votre réseau WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Assurez-vous que votre téléphone est connecté au même réseau WiFi que vos appareils.';

  @override
  String get suggestCheckPhysical =>
      'Vérifiez l\'appareil physique pour détecter tout bouton ou commutateur nécessitant une attention particulière.';

  @override
  String get suggestWaitAndTry => 'Attendez un peu et réessayez.';

  @override
  String get suggestDeviceBusy =>
      'L\'appareil est peut-être occupé. Réessayez dans quelques secondes.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonClose => 'Fermer';

  @override
  String get commonDone => 'Terminé';

  @override
  String get commonLater => 'Plus tard';

  @override
  String get commonRefresh => 'Rafraîchir';

  @override
  String get commonTryAgain => 'Réessayez';

  @override
  String get commonOpenSettings => 'Ouvrir les paramètres';

  @override
  String get commonGrant => 'Subvention';

  @override
  String get commonFix => 'Corriger';

  @override
  String get commonOn => 'Sur';

  @override
  String get commonOff => 'Désactivé';

  @override
  String get commonOffline => 'Hors ligne';

  @override
  String get commonStatus => 'Statut';

  @override
  String get commonName => 'Nom';

  @override
  String get commonType => 'Tapez';

  @override
  String get commonModel => 'Modèle';

  @override
  String get commonManufacturer => 'Fabricant';

  @override
  String get commonSerial => 'Série';

  @override
  String get commonFirmware => 'Micrologiciel';

  @override
  String get commonHost => 'Hôte';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Mot de passe';

  @override
  String get commonUnknownWifi => 'Inconnu Wi-Fi';

  @override
  String get commonNotConnected => 'Non connecté';

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
      other: '$seconds secondes',
      one: '1 seconde',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Commutateur intelligent';

  @override
  String get deviceTypeLightSwitch => 'Interrupteur d\'éclairage';

  @override
  String get deviceTypeDimmer => 'Gradateur';

  @override
  String get deviceTypeInsightPlug => 'Fiche d\'information';

  @override
  String get deviceTypeMotionSensor => 'Capteur de mouvement';

  @override
  String get deviceTypeMaker => 'Créateur';

  @override
  String get deviceTypeBridge => 'Pont';

  @override
  String get deviceTypeCoffeeMaker => 'Cafetière';

  @override
  String get deviceTypeCrockpot => 'Mijoteuse';

  @override
  String get deviceTypeHumidifier => 'Humidificateur';

  @override
  String get deviceTypeOutdoorPlug => 'Prise extérieure';

  @override
  String get deviceTypeUnknown => 'Appareil inconnu';

  @override
  String get pairingStepGetStarted => 'Commencer';

  @override
  String get pairingStepConnectToDevice => 'Se connecter à l\'appareil';

  @override
  String get pairingStepFindDevice => 'Trouver un appareil';

  @override
  String get pairingStepSelectNetwork => 'Sélectionnez le réseau';

  @override
  String get pairingStepConfiguring => 'Configuration';

  @override
  String get pairingStepReconnect => 'Reconnecter';

  @override
  String get pairingStepFinalizing => 'Finalisation';

  @override
  String get pairingStepSuccess => 'Succès';

  @override
  String get pairingStepError => 'Erreur';

  @override
  String get homeToggleDebug => 'Activer/désactiver le mode débogage';

  @override
  String get homeRefreshDevices => 'Rafraîchir les appareils';

  @override
  String get homeSettings => 'Paramètres';

  @override
  String get homeDismiss => 'Rejeter';

  @override
  String get homeDiscovering => 'Découverte des appareils...';

  @override
  String get homeNoDevices => 'Aucun appareil trouvé';

  @override
  String get homeScanDevices => 'Rechercher des appareils';

  @override
  String get homeLookingForMore => 'Vous cherchez plus d\'appareils...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Appareils $count trouvés',
      one: '1 appareil trouvé',
      zero: 'Aucun appareil trouvé',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Appareils $count trouvés, analyse...',
      one: '1 appareil trouvé, analyse...',
      zero: 'Aucun appareil trouvé, analyse...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automatique';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi : $name';
  }

  @override
  String get homeConnectedWifi => 'Connecté à WiFi';

  @override
  String get homePermissionExplanation =>
      'Les informations de localisation sont utilisées pour trouver les détails de votre Wi-Fi. L\'accès au réseau local vous permet de contrôler vos commutateurs et appareils intelligents.';

  @override
  String get homeDebugLog => 'Journal de débogage';

  @override
  String get homeClear => 'Effacer';

  @override
  String get homeDebugEmpty =>
      'Appuyez sur Rafraîchir pour démarrer la découverte et voir les journaux...';

  @override
  String get homeProbeHint => 'IP :Port (par exemple 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonde';

  @override
  String get homeScanning => 'Numérisation...';

  @override
  String get homeScanSubnet =>
      'Analyser l\'intégralité du sous-réseau (correctif iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Plateforme : $platform $version';
  }

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get settingsSectionNetwork => 'Réseau';

  @override
  String get settingsSectionDeviceSetup => 'Configuration de l\'appareil';

  @override
  String get settingsSectionDiscovery => 'Découverte';

  @override
  String get settingsSectionAbout => 'À propos';

  @override
  String get settingsSectionDebug => 'Débogage';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Autorisation accordée ! Nom WiFi : $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Emplacement accordé, mais l\'autorisation du réseau local est également nécessaire. Vérifiez les paramètres.';

  @override
  String get settingsLocationRequired => 'Autorisation de localisation requise';

  @override
  String get settingsLocationRequiredBody =>
      'Pour afficher le nom de votre réseau WiFi, iOS nécessite une autorisation de localisation.';

  @override
  String get settingsRequiredPermissions => 'Autorisations requises :';

  @override
  String get settingsPermissionList =>
      '1. Services de localisation (« lors de l\'utilisation de l\'application »)\n2. Réseau local';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Remarque : La découverte d\'appareils fonctionne sans autorisation de localisation. Cette permission sert uniquement à afficher le nom de votre réseau WiFi.';

  @override
  String get settingsEnableLocation =>
      'Activer la localisation dans les paramètres';

  @override
  String get settingsLocationDeniedBody =>
      'L\'autorisation de localisation a été refusée. Vous pouvez l\'activer à partir des paramètres du système.';

  @override
  String get settingsStepsToEnable => 'Étapes pour activer :';

  @override
  String get settingsEnableLocationSteps =>
      '1. Ouvrez les paramètres\n2. Faites défiler jusqu\'à \"Bit Switch\".\n3. Appuyez sur « Emplacement »\n4. Sélectionnez « Pendant l\'utilisation de l\'application »\n5. Retournez à cette application et appuyez sur le bouton d\'actualisation';

  @override
  String get settingsLocationOnlyWifiName =>
      'Remarque : l\'autorisation de localisation n\'est nécessaire que pour afficher le nom WiFi. La découverte de périphériques fonctionne sans cela.';

  @override
  String get settingsAdditionalPermission =>
      'Autorisation supplémentaire requise';

  @override
  String get settingsLocalNetworkBody =>
      'L\'autorisation du réseau local est requise pour découvrir et contrôler les appareils Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Vous avez l\'autorisation de localisation, mais le nom WiFi n\'est pas encore visible.';

  @override
  String get settingsPleaseEnable => 'Veuillez activer :';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Accédez aux paramètres de l\'iPhone\n2. Faites défiler jusqu\'à « Bit Switch »\n3. Activez « Réseau local »';

  @override
  String get settingsLocalNetworkIosReason =>
      'L\'autorisation du réseau local est requise pour la découverte de l\'appareil et l\'accès au nom WiFi sur iOS.';

  @override
  String get settingsPairNewDevice => 'Associer un nouvel appareil';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Configurer un nouvel appareil Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Délai de découverte';

  @override
  String get settingsRequestTimeout => 'Délai d\'expiration de la demande';

  @override
  String get settingsAutoRefresh => 'Mise à jour automatique';

  @override
  String get settingsAutoRefreshOn =>
      'Activé : les états des appareils s\'actualisent automatiquement';

  @override
  String get settingsAutoRefreshOff =>
      'Désactivé : utiliser le bouton de rafraîchissement manuel';

  @override
  String get settingsAutoRefreshInterval =>
      'Intervalle de rafraîchissement automatique';

  @override
  String get settingsAbout => 'À propos de Bit Switch';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostic du réseau';

  @override
  String get settingsShowDebug => 'Afficher le mode débogage';

  @override
  String get settingsShowDebugSubtitle =>
      'Afficher les commandes de débogage et les diagnostics réseau sur l\'écran d\'accueil';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Afficher l\'icône de débogage sur l\'écran d\'accueil pour le dépannage';

  @override
  String get settingsCurrentNetwork => 'Réseau actuel';

  @override
  String get settingsNetworkAccessStatus => 'État d\'accès au réseau';

  @override
  String get settingsNetworkAccessGranted =>
      'L\'accès au réseau local est disponible';

  @override
  String get settingsNetworkAccessMissing =>
      'Des autorisations supplémentaires peuvent être requises';

  @override
  String get settingsChecking => 'Vérification...';

  @override
  String get settingsEnableLocalNetwork =>
      'Activer le réseau local dans les paramètres';

  @override
  String get settingsNotConnectedWifi => 'Non connecté au WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Autorisation requise pour visionner';

  @override
  String get settingsAllPermissionsGranted =>
      'Toutes les autorisations accordées';

  @override
  String get settingsLocalNetworkNeeded =>
      'Autorisation du réseau local requise';

  @override
  String get settingsLocationNeeded => 'Autorisation de localisation requise';

  @override
  String get settingsRefreshPermissions => 'Rafraîchir les autorisations';

  @override
  String get settingsAboutWifiPermission =>
      'À propos de l\'autorisation de nom WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Votre nom WiFi confirme que votre téléphone et vos appareils Wemo sont sur le même réseau.';

  @override
  String get settingsWifiPermissionIos =>
      'Sur iOS, l\'affichage du nom de votre réseau WiFi nécessite une autorisation de localisation.';

  @override
  String get settingsImportant => 'Important :';

  @override
  String get settingsPrivacyNote =>
      '• Votre position n\'est jamais suivie\n• Aucune donnée de localisation n\'est recueillie ou stockée';

  @override
  String get settingsWifiPermissionImportant =>
      '• La découverte de périphériques fonctionne SANS cette autorisation\n• Ceci n\'est nécessaire que pour afficher le nom WiFi.\n• Aucune donnée de localisation n\'est recueillie ou stockée';

  @override
  String get settingsGrantPermission => 'Accorder la permission';

  @override
  String get settingsHowLongScan =>
      'Combien de temps faut-il chercher des appareils :';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Délai d\'expiration de la découverte défini sur $seconds secondes';
  }

  @override
  String get settingsHowLongResponses =>
      'Combien de temps attendre les réponses de l\'appareil :';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Augmentez cette valeur si vous voyez des erreurs « Connexion fermée ».';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Délai d\'expiration de la demande défini à $seconds secondes';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Définissez l\'intervalle d\'actualisation automatique de l\'état :';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Intervalle d\'actualisation réglé à $seconds secondes';
  }

  @override
  String get settingsAboutTagline =>
      'Un contrôleur local propre et privé pour vos appareils Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch utilise la découverte du réseau local pour rechercher et contrôler les appareils sans dépendances au cloud.';

  @override
  String get settingsVersionValue => 'Version 1.0.1';

  @override
  String get settingsProtocol => 'Protocole : SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Adresse de multidiffusion : 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Ports de périphérique : 49152-49159';

  @override
  String get settingsControlProtocol =>
      'Protocole de contrôle : SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Conseil : assurez-vous que votre appareil est sur le même réseau que vos appareils Wemo et que la multidiffusion UDP n\'est pas bloquée.';

  @override
  String get settingsDevicePaired =>
      'Appareil couplé ! Mise à jour de la liste des appareils...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds secondes par requête';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Mise à jour de tous les $seconds';
  }

  @override
  String get pairingTitle => 'Associer un nouvel appareil';

  @override
  String get pairingSetupTitle => 'Configurez votre appareil Wemo';

  @override
  String get pairingBeforeBegin =>
      'Avant de commencer, assurez-vous que votre appareil Wemo est en mode configuration :';

  @override
  String get pairingPlugInTitle => 'Branchez votre appareil Wemo';

  @override
  String get pairingPlugInBody =>
      'Branchez-le à l\'alimentation et attendez qu\'il démarre.';

  @override
  String get pairingBlinkingLedTitle => 'Cherchez la DEL clignotante';

  @override
  String get pairingBlinkingLedBody =>
      'Une DEL clignotante indique que l\'appareil est en mode de configuration.';

  @override
  String get pairingCheckWifiTitle => 'Vérifiez le réseau WiFi';

  @override
  String get pairingCheckWifiBody =>
      'L\'appareil diffusera un réseau nommé « WeMo.XXXXX ».';

  @override
  String get pairingSolidLedHint =>
      'Si la DEL est fixe, maintenez le bouton de réinitialisation enfoncé pendant 5 secondes pour passer en mode de configuration.';

  @override
  String get pairingStart => 'Commencer le jumelage';

  @override
  String get pairingConnectWifiTitle => 'Se connecter à l\'appareil WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Ouvrez les paramètres WiFi de votre téléphone et connectez-vous au réseau qui commence par « WeMo ».';

  @override
  String get pairingCurrentNetwork => 'Réseau actuel';

  @override
  String get pairingConnectedToDevice => 'Connecté à l\'appareil Wemo !';

  @override
  String get pairingOpenWifiSettings => 'Ouvrir les paramètres du WiFi';

  @override
  String get pairingConnectedButton => 'Je me suis connecté';

  @override
  String get pairingLookingForDevice =>
      'Vous recherchez votre appareil Wemo...';

  @override
  String get pairingManualIpPrompt =>
      'Ou saisissez manuellement l\'appareil IP :';

  @override
  String get pairingDeviceIp => 'Adresse de l\'appareil IP';

  @override
  String get pairingConnectToIp => 'Connectez-vous à IP';

  @override
  String get pairingSelectHomeWifi =>
      'Sélectionnez votre réseau résidentiel WiFi :';

  @override
  String get pairingRefreshNetworks => 'Rafraîchir les réseaux';

  @override
  String get pairingIosScanLimitation =>
      'iOS interdit strictement aux applications tierces de rechercher les réseaux Wi-Fi à proximité. Vous devrez peut-être saisir manuellement le réseau SSID.';

  @override
  String get pairingNoNetworks => 'Aucun réseau trouvé';

  @override
  String get pairingScanAgain => 'Scanner à nouveau';

  @override
  String get pairingWifiPassword => 'WiFi Mot de passe';

  @override
  String get pairingConnect => 'Se connecter';

  @override
  String get pairingEnterNetworkManually => 'Entrez le réseau manuellement';

  @override
  String get pairingEnterNetworkName => 'Entrez le nom du réseau :';

  @override
  String get pairingNetworkName => 'Nom du réseau (SSID)';

  @override
  String get pairingUseNetwork => 'Utiliser ce réseau';

  @override
  String get pairingConfiguringDevice => 'Configuration de l\'appareil...';

  @override
  String get pairingConfiguringWait =>
      'Veuillez patienter pendant que l\'appareil se connecte à votre réseau.';

  @override
  String get pairingReconnectTitle => 'Reconnectez-vous à votre réseau';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Votre appareil Wemo se connecte maintenant à « $ssid ». Veuillez reconnecter votre téléphone au même réseau.';
  }

  @override
  String get pairingBackOnHome => 'Retour sur le réseau à domicile !';

  @override
  String get pairingReconnectedButton => 'Je me suis reconnecté';

  @override
  String get pairingFinalizingSetup => 'Finalisation de la configuration...';

  @override
  String get pairingSetupComplete => 'Configuration terminée !';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Connecté au $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Votre appareil est maintenant configuré et apparaîtra à l\'écran d\'accueil.';

  @override
  String get pairingSomethingWrong => 'Quelque chose a mal tourné';

  @override
  String get pairingStartOver => 'Recommencer';

  @override
  String get pairingErrorOpenWifi =>
      'Impossible d\'ouvrir les paramètres du WiFi. Ouvrez-les manuellement.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Votre téléphone est toujours connecté à « $ssid ». Veuillez ouvrir les paramètres du WiFi, vous connecter au réseau de l\'appareil WeMo, puis réessayer.';
  }

  @override
  String get pairingLoadingLooking =>
      'Je suis à la recherche d\'un appareil...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Impossible de trouver le périphérique WeMo sur $ip. Assurez-vous que votre téléphone est connecté au réseau WeMo WiFi, puis réessayez. Vous pouvez également saisir manuellement l\'appareil IP.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Erreur lors de la découverte de l\'appareil : $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Connexion au $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Aucun appareil trouvé sur $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Erreur de connexion à $ip : $error';
  }

  @override
  String get pairingLoadingScanning => 'Recherche de réseaux...';

  @override
  String pairingErrorScanning(String error) {
    return 'Impossible d\'analyser les réseaux : $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Veuillez sélectionner un réseau et entrer le mot de passe.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Envoi des identifiants réseau...';

  @override
  String get pairingLoadingWaitingConnection =>
      'En attente de connexion de l\'appareil...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Échec de la configuration du réseau : $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Mot de passe trop court. Veuillez vérifier et réessayer.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Échec de la connexion. Veuillez vérifier le mot de passe.';

  @override
  String get pairingErrorConnectionTimeout =>
      'La connexion a expiré. Veuillez réessayer.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Erreur lors de la finalisation de la configuration : $error';
  }

  @override
  String get detailRefreshState => 'Rafraîchir l\'état';

  @override
  String get detailDeviceInfo => 'Informations sur l\'appareil';

  @override
  String get detailAdvanced => 'Avancé';

  @override
  String get detailWifiSetup => 'Configuration du WiFi';

  @override
  String get detailReset => 'Réinitialiser';

  @override
  String get detailUnreachable =>
      'L\'appareil est inaccessible. Vérifiez la connexion réseau.';

  @override
  String detailFailedToggle(String error) {
    return 'Échec du basculement : $error';
  }

  @override
  String get detailDeviceInformation => 'Informations sur l\'appareil';

  @override
  String get detailPermissionScan =>
      'Une autorisation est requise pour analyser les réseaux WiFi.';

  @override
  String get detailScanFailedManual =>
      'Impossible d\'analyser les réseaux. Entrez le nom du réseau manuellement.';

  @override
  String get detailEnterNetworkNameError =>
      'Veuillez saisir ou sélectionner un nom de réseau';

  @override
  String get detailEnterPasswordError =>
      'Veuillez saisir le mot de passe du réseau';

  @override
  String get detailWifiSuccess => 'WiFi configuré avec succès !';

  @override
  String get detailScanNetworks => 'Rechercher des réseaux';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Configurez le réseau WiFi pour « $device »';
  }

  @override
  String get detailAvailableNetworks => 'Réseaux disponibles';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch. $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS interdit strictement aux applications tierces de rechercher les réseaux Wi-Fi à proximité. Veuillez saisir manuellement le nom de votre réseau ci-dessous.';

  @override
  String get detailTapRefreshScan =>
      'Appuyez sur Rafraîchir pour rechercher des réseaux';

  @override
  String get detailEnterNetworkBelow =>
      'Entrez le nom de votre réseau ci-dessous';

  @override
  String get detailNetworkCredentials =>
      'Informations d\'identification du réseau';

  @override
  String get detailConnecting => 'Connexion au réseau...';

  @override
  String get detailConnected => 'Connecté avec succès !';

  @override
  String get detailPasswordShort => 'Le mot de passe est trop court';

  @override
  String get detailAuthenticationFailed =>
      'L\'authentification a échoué - vérifiez le mot de passe';

  @override
  String get detailConnectionFailed => 'La connexion a échoué';

  @override
  String get detailSelectReset =>
      'Veuillez choisir ce qu\'il faut réinitialiser';

  @override
  String get detailResetSchedulesWarning =>
      '• Tous les horaires et règles d\'automatisation seront supprimés';

  @override
  String get detailResetWifiWarning =>
      '• Les paramètres du WiFi seront effacés';

  @override
  String get detailSetupAgainWarning =>
      '• Vous devrez reconfigurer l\'appareil';

  @override
  String get detailUnreachableWarning =>
      '• L\'appareil peut devenir temporairement inaccessible';

  @override
  String get detailConfirmReset => 'Confirmer la réinitialisation';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Êtes-vous certain de vouloir réinitialiser « $device » ?';
  }

  @override
  String get detailThisWill => 'Ça va :';

  @override
  String get detailCannotUndo => 'Cette action ne peut pas être annulée.';

  @override
  String get detailYesReset => 'Oui, réinitialiser';

  @override
  String get detailResetSuccess => 'L\'appareil a été réinitialisé avec succès';

  @override
  String get detailResetRemote => 'L\'appareil sera réinitialisé à distance';

  @override
  String get detailResetFailed => 'Échec de la réinitialisation';

  @override
  String get detailFactoryReset => 'Réinitialisation d\'usine';

  @override
  String get detailFactoryResetWarning =>
      'Cela effacera TOUS les paramètres et restaurera l\'appareil aux paramètres d\'usine par défaut. Vous devrez reconfigurer l\'appareil.\n\nCette action ne peut pas être annulée.';

  @override
  String get detailFactoryResetInitiated => 'Réinitialisation d\'usine lancée';

  @override
  String get detailResetDevice => 'Réinitialiser l\'appareil';

  @override
  String detailResetOptionsFor(String device) {
    return 'Options de réinitialisation pour « $device »';
  }

  @override
  String get detailResetUserData => 'Réinitialiser les données utilisateur';

  @override
  String get detailResetUserDataSubtitle => 'Efface les horaires et les règles';

  @override
  String get detailResetWifi => 'Réinitialiser les paramètres du WiFi';

  @override
  String get detailResetWifiSubtitle => 'L\'appareil devra être reconfiguré';

  @override
  String get widgetBrightness => 'Luminosité';

  @override
  String get widgetEnergyStatistics => 'Statistiques énergétiques';

  @override
  String get widgetCurrentPower => 'Puissance actuelle';

  @override
  String get widgetToday => 'Aujourd\'hui';

  @override
  String get widgetTotal => 'Total';

  @override
  String get widgetOnTimeToday => 'À l\'heure aujourd\'hui';

  @override
  String get widgetTotalOnTime => 'Total à temps';

  @override
  String get widgetStandby => 'En veille';

  @override
  String get widgetUnknown => 'Inconnu';

  @override
  String get widgetOpenNetwork => 'Réseau ouvert';

  @override
  String get widgetWepInsecure => 'WEP (non sécurisé)';
}
