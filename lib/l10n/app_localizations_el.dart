// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Η συσκευή δεν υποστηρίζει αυτήν την ενέργεια.';

  @override
  String get errInvalidArgs => 'Στη συσκευή στάλθηκαν μη έγκυρα ορίσματα.';

  @override
  String get errActionFailed =>
      'Η συσκευή απέτυχε να εκτελέσει την ενέργεια που ζητήθηκε.';

  @override
  String get errInvalidValue => 'Δόθηκε μια μη έγκυρη τιμή.';

  @override
  String get errValueOutOfRange => 'Η τιμή είναι εκτός του αποδεκτού εύρους.';

  @override
  String get errFeatureNotAvailable =>
      'Αυτή η δυνατότητα δεν είναι διαθέσιμη σε αυτήν τη συσκευή.';

  @override
  String get errOutOfMemory =>
      'Η μνήμη της συσκευής έχει εξαντληθεί. Δοκιμάστε ξανά αργότερα.';

  @override
  String get errManualActionRequired =>
      'Απαιτείται χειροκίνητη ενέργεια στη συσκευή.';

  @override
  String get errActionNotAuthorized =>
      'Αυτή η ενέργεια δεν είναι εξουσιοδοτημένη.';

  @override
  String get errUnexpected =>
      'Παρουσιάστηκε απροσδόκητο σφάλμα. Δοκιμάστε ξανά.';

  @override
  String get errDeviceUnreachableOffline =>
      'Δεν είναι δυνατή η πρόσβαση στη συσκευή. Μπορεί να είναι εκτός σύνδεσης ή σε διαφορετικό δίκτυο.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Το χρονικό όριο του αιτήματος έληξε μετά από προσπάθειες $attempts. Η συσκευή μπορεί να είναι εκτός σύνδεσης.';
  }

  @override
  String get errRequestTimedOut =>
      'Το χρονικό όριο του αιτήματος έληξε. Η συσκευή μπορεί να είναι εκτός σύνδεσης.';

  @override
  String get errNoRouteToHost =>
      'Δεν είναι δυνατή η πρόσβαση στη συσκευή. Ελέγξτε τη σύνδεσή σας WiFi.';

  @override
  String get errHostUnreachable =>
      'Η συσκευή δεν είναι προσβάσιμη. Βεβαιωθείτε ότι είναι ενεργοποιημένο και συνδεδεμένο στο WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Δεν είναι δυνατή η επικοινωνία με τη συσκευή μετά από προσπάθειες $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Σφάλμα δικτύου: Δεν είναι δυνατή η επικοινωνία με τη συσκευή.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Αυτή η ενέργεια δεν είναι εξουσιοδοτημένη στη συσκευή.';

  @override
  String get errDeviceServiceNotFound =>
      'Η υπηρεσία συσκευής δεν βρέθηκε. Η συσκευή ενδέχεται να χρειάζεται ενημέρωση υλικολογισμικού.';

  @override
  String get errDeviceEncounteredError =>
      'Η συσκευή αντιμετώπισε σφάλμα κατά την επεξεργασία του αιτήματος.';

  @override
  String get errDeviceInternalError =>
      'Η συσκευή επέστρεψε ένα εσωτερικό σφάλμα.';

  @override
  String get errDeviceTempUnavailable =>
      'Η συσκευή δεν είναι προσωρινά διαθέσιμη. Δοκιμάστε ξανά.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Η συσκευή επέστρεψε ένα σφάλμα (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Αποτυχία $action στη συσκευή.';
  }

  @override
  String get errDeviceReturnedError => 'Η συσκευή επέστρεψε ένα σφάλμα.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Η λειτουργία $operation έληξε. Δοκιμάστε ξανά.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Η λειτουργία έληξε μετά από $seconds δευτερόλεπτα.';
  }

  @override
  String get errOperationTimedOut => 'Η λειτουργία έληξε. Δοκιμάστε ξανά.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Ενεργοποιήστε την άδεια τοπικού δικτύου στις Ρυθμίσεις για να βρείτε συσκευές.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Δεν είναι δυνατή η πρόσβαση στο τοπικό δίκτυο. Ενεργοποιήστε την άδεια τοπικού δικτύου στις Ρυθμίσεις.';

  @override
  String get errCheckWifiConnection =>
      'Δεν είναι δυνατός ο εντοπισμός συσκευών. Ελέγξτε τη σύνδεσή σας WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Η ανακάλυψη διακόπηκε. Βρέθηκαν συσκευές $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Δεν βρέθηκαν συσκευές. Βεβαιωθείτε ότι οι συσκευές είναι ενεργοποιημένες και συνδεδεμένες στο δίκτυό σας.';

  @override
  String get actionGetDeviceState => 'λήψη κατάστασης συσκευής';

  @override
  String get actionSetDeviceState => 'ορίστε την κατάσταση της συσκευής';

  @override
  String get actionGetEnergyData => 'λάβετε ενεργειακά δεδομένα';

  @override
  String get actionScanNetworks => 'σάρωση για δίκτυα';

  @override
  String get actionConnectWifi => 'συνδεθείτε στο WiFi';

  @override
  String get actionCheckConnection => 'ελέγξτε την κατάσταση σύνδεσης';

  @override
  String get actionResetDevice => 'επαναφορά συσκευής';

  @override
  String get actionPerform => 'εκτελέστε δράση';

  @override
  String get suggestTryRefreshing =>
      'Δοκιμάστε να ανανεώσετε τη λίστα συσκευών ή ελέγξτε εάν η συσκευή ανταποκρίνεται.';

  @override
  String get suggestEnsurePoweredOn =>
      'Βεβαιωθείτε ότι η συσκευή είναι ενεργοποιημένη και συνδεδεμένη στο δίκτυο WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Βεβαιωθείτε ότι το τηλέφωνό σας είναι συνδεδεμένο στο ίδιο δίκτυο WiFi με τις συσκευές σας.';

  @override
  String get suggestCheckPhysical =>
      'Ελέγξτε τη φυσική συσκευή για τυχόν κουμπιά ή διακόπτες που χρειάζονται προσοχή.';

  @override
  String get suggestWaitAndTry => 'Περιμένετε λίγο και δοκιμάστε ξανά.';

  @override
  String get suggestDeviceBusy =>
      'Η συσκευή μπορεί να είναι απασχολημένη. Δοκιμάστε ξανά σε λίγα δευτερόλεπτα.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Ακύρωση';

  @override
  String get commonClose => 'Κλείσιμο';

  @override
  String get commonDone => 'Έγινε';

  @override
  String get commonLater => 'Αργότερα';

  @override
  String get commonRefresh => 'Ανανέωση';

  @override
  String get commonTryAgain => 'Δοκιμάστε ξανά';

  @override
  String get commonOpenSettings => 'Ανοίξτε τις Ρυθμίσεις';

  @override
  String get commonGrant => 'Επιχορήγηση';

  @override
  String get commonFix => 'Διορθώστε';

  @override
  String get commonOn => 'Ενεργό';

  @override
  String get commonOff => 'Απενεργοποίηση';

  @override
  String get commonOffline => 'Εκτός σύνδεσης';

  @override
  String get commonStatus => 'Κατάσταση';

  @override
  String get commonName => 'Όνομα';

  @override
  String get commonType => 'Τύπος';

  @override
  String get commonModel => 'Μοντέλο';

  @override
  String get commonManufacturer => 'Κατασκευαστής';

  @override
  String get commonSerial => 'Σειρά';

  @override
  String get commonFirmware => 'Υλικολογισμικό';

  @override
  String get commonHost => 'οικοδεσπότης';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Κωδικός πρόσβασης';

  @override
  String get commonUnknownWifi => 'Άγνωστο Wi-Fi';

  @override
  String get commonNotConnected => 'Δεν είναι συνδεδεμένο';

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
      other: '$seconds δευτερόλεπτα',
      one: '1 δευτερόλεπτο',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Έξυπνος διακόπτης';

  @override
  String get deviceTypeLightSwitch => 'Διακόπτης φωτός';

  @override
  String get deviceTypeDimmer => 'Dimmer';

  @override
  String get deviceTypeInsightPlug => 'Insight Plug';

  @override
  String get deviceTypeMotionSensor => 'Αισθητήρας κίνησης';

  @override
  String get deviceTypeMaker => 'Κατασκευαστής';

  @override
  String get deviceTypeBridge => 'Γέφυρα';

  @override
  String get deviceTypeCoffeeMaker => 'Καφετιέρα';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Υγραντήρας';

  @override
  String get deviceTypeOutdoorPlug => 'Βύσμα εξωτερικού χώρου';

  @override
  String get deviceTypeUnknown => 'Άγνωστη Συσκευή';

  @override
  String get pairingStepGetStarted => 'Ξεκινήστε';

  @override
  String get pairingStepConnectToDevice => 'Σύνδεση στη Συσκευή';

  @override
  String get pairingStepFindDevice => 'Εύρεση συσκευής';

  @override
  String get pairingStepSelectNetwork => 'Επιλέξτε Δίκτυο';

  @override
  String get pairingStepConfiguring => 'Διαμόρφωση';

  @override
  String get pairingStepReconnect => 'Επανασυνδέστε';

  @override
  String get pairingStepFinalizing => 'Οριστικοποίηση';

  @override
  String get pairingStepSuccess => 'Επιτυχία';

  @override
  String get pairingStepError => 'Σφάλμα';

  @override
  String get homeToggleDebug => 'Εναλλαγή λειτουργίας εντοπισμού σφαλμάτων';

  @override
  String get homeRefreshDevices => 'Ανανέωση συσκευών';

  @override
  String get homeSettings => 'Ρυθμίσεις';

  @override
  String get homeDismiss => 'Απόρριψη';

  @override
  String get homeDiscovering => 'Ανακάλυψη συσκευών...';

  @override
  String get homeNoDevices => 'Δεν βρέθηκαν συσκευές';

  @override
  String get homeScanDevices => 'Σάρωση για συσκευές';

  @override
  String get homeLookingForMore => 'Αναζήτηση για περισσότερες συσκευές...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Βρέθηκαν συσκευές $count',
      one: 'Βρέθηκε 1 συσκευή',
      zero: 'Δεν βρέθηκαν συσκευές',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Βρέθηκαν συσκευές $count, σάρωση...',
      one: 'Βρέθηκε 1 συσκευή, σε σάρωση...',
      zero: 'Δεν βρέθηκαν συσκευές, σάρωση...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Αυτόματο';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Συνδέθηκε στο WiFi';

  @override
  String get homePermissionExplanation =>
      'Οι πληροφορίες τοποθεσίας χρησιμοποιούνται για την εύρεση των στοιχείων Wi-Fi. Η πρόσβαση στο τοπικό δίκτυο σάς επιτρέπει να ελέγχετε τους έξυπνους διακόπτες και τις συσκευές σας.';

  @override
  String get homeDebugLog => 'Μητρώο εντοπισμού σφαλμάτων';

  @override
  String get homeClear => 'Καθαρό';

  @override
  String get homeDebugEmpty =>
      'Πατήστε ανανέωση για να ξεκινήσετε την ανακάλυψη και να δείτε αρχεία καταγραφής...';

  @override
  String get homeProbeHint => 'IP: Θύρα (π.χ. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Ανιχνευτής';

  @override
  String get homeScanning => 'Σάρωση...';

  @override
  String get homeScanSubnet => 'Σάρωση ολόκληρου του υποδικτύου (διόρθωση iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Πλατφόρμα: $platform $version';
  }

  @override
  String get settingsTitle => 'Ρυθμίσεις';

  @override
  String get settingsSectionNetwork => 'Δίκτυο';

  @override
  String get settingsSectionDeviceSetup => 'Ρύθμιση συσκευής';

  @override
  String get settingsSectionDiscovery => 'Ανακάλυψη';

  @override
  String get settingsSectionAbout => 'Περίπου';

  @override
  String get settingsSectionDebug => 'Εντοπισμός σφαλμάτων';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Δόθηκε άδεια! Όνομα WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Η τοποθεσία παραχωρήθηκε, αλλά απαιτείται επίσης άδεια τοπικού δικτύου. Ελέγξτε τις Ρυθμίσεις.';

  @override
  String get settingsLocationRequired => 'Απαιτείται άδεια τοποθεσίας';

  @override
  String get settingsLocationRequiredBody =>
      'Για την εμφάνιση του ονόματος δικτύου WiFi, το iOS απαιτεί άδεια τοποθεσίας.';

  @override
  String get settingsRequiredPermissions => 'Απαιτούμενα δικαιώματα:';

  @override
  String get settingsPermissionList =>
      '1. Υπηρεσίες τοποθεσίας (\"Κατά τη χρήση της εφαρμογής\")\n2. Τοπικό Δίκτυο';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Σημείωση: Η ανακάλυψη συσκευής λειτουργεί χωρίς άδεια τοποθεσίας. Αυτή η άδεια χρησιμοποιείται μόνο για την εμφάνιση του ονόματος δικτύου WiFi.';

  @override
  String get settingsEnableLocation =>
      'Ενεργοποιήστε την τοποθεσία στις Ρυθμίσεις';

  @override
  String get settingsLocationDeniedBody =>
      'Η άδεια τοποθεσίας απορρίφθηκε. Μπορείτε να το ενεργοποιήσετε από τις ρυθμίσεις συστήματος.';

  @override
  String get settingsStepsToEnable => 'Βήματα για ενεργοποίηση:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Ανοίξτε τις Ρυθμίσεις\n2. Κάντε κύλιση στο \"Bit Switch\"\n3. Πατήστε \"Τοποθεσία\"\n4. Επιλέξτε \"Κατά τη χρήση της εφαρμογής\"\n5. Επιστρέψτε σε αυτήν την εφαρμογή και πατήστε το κουμπί ανανέωσης';

  @override
  String get settingsLocationOnlyWifiName =>
      'Σημείωση: Η άδεια τοποθεσίας απαιτείται μόνο για την εμφάνιση του ονόματος WiFi. Η ανακάλυψη συσκευής λειτουργεί χωρίς αυτήν.';

  @override
  String get settingsAdditionalPermission => 'Απαιτείται πρόσθετη άδεια';

  @override
  String get settingsLocalNetworkBody =>
      'Απαιτείται άδεια τοπικού δικτύου για τον εντοπισμό και τον έλεγχο συσκευών Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Έχετε άδεια τοποθεσίας, αλλά το όνομα WiFi δεν είναι ακόμα ορατό.';

  @override
  String get settingsPleaseEnable => 'Ενεργοποιήστε:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Μεταβείτε στις Ρυθμίσεις iPhone\n2. Κάντε κύλιση προς τα κάτω στο \"Bit Switch\"\n3. Ενεργοποιήστε το \"Τοπικό δίκτυο\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Απαιτείται άδεια τοπικού δικτύου τόσο για τον εντοπισμό συσκευής όσο και για την πρόσβαση ονόματος WiFi στο iOS.';

  @override
  String get settingsPairNewDevice => 'Σύζευξη νέας συσκευής';

  @override
  String get settingsPairNewDeviceSubtitle => 'Ρυθμίστε μια νέα συσκευή Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Χρονικό όριο ανακάλυψης';

  @override
  String get settingsRequestTimeout => 'Χρονικό όριο αιτήματος';

  @override
  String get settingsAutoRefresh => 'Αυτόματη ανανέωση';

  @override
  String get settingsAutoRefreshOn =>
      'Ενεργό - Οι καταστάσεις της συσκευής ανανεώνονται αυτόματα';

  @override
  String get settingsAutoRefreshOff =>
      'Off - Χρησιμοποιήστε το κουμπί χειροκίνητης ανανέωσης';

  @override
  String get settingsAutoRefreshInterval => 'Διάστημα αυτόματης ανανέωσης';

  @override
  String get settingsAbout => 'Σχετικά με το Bit Switch';

  @override
  String get settingsVersion => 'Έκδοση';

  @override
  String get settingsNetworkDiagnostics => 'Διαγνωστικά Δικτύων';

  @override
  String get settingsShowDebug => 'Εμφάνιση λειτουργίας εντοπισμού σφαλμάτων';

  @override
  String get settingsShowDebugSubtitle =>
      'Εμφάνιση στοιχείων ελέγχου εντοπισμού σφαλμάτων και διαγνωστικών δικτύων στην αρχική οθόνη';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Εμφάνιση εικονιδίου εντοπισμού σφαλμάτων στην αρχική οθόνη για αντιμετώπιση προβλημάτων';

  @override
  String get settingsCurrentNetwork => 'Τρέχον δίκτυο';

  @override
  String get settingsNetworkAccessStatus => 'Κατάσταση πρόσβασης δικτύου';

  @override
  String get settingsNetworkAccessGranted =>
      'Διατίθεται πρόσβαση σε τοπικό δίκτυο';

  @override
  String get settingsNetworkAccessMissing =>
      'Ενδέχεται να απαιτούνται πρόσθετες άδειες';

  @override
  String get settingsChecking => 'Έλεγχος...';

  @override
  String get settingsEnableLocalNetwork =>
      'Ενεργοποιήστε το Τοπικό δίκτυο στις Ρυθμίσεις';

  @override
  String get settingsNotConnectedWifi => 'Δεν είναι συνδεδεμένο στο WiFi';

  @override
  String get settingsPermissionRequiredView => 'Απαιτείται άδεια για προβολή';

  @override
  String get settingsAllPermissionsGranted => 'Χορηγήθηκαν όλες οι άδειες';

  @override
  String get settingsLocalNetworkNeeded => 'Απαιτείται άδεια τοπικού δικτύου';

  @override
  String get settingsLocationNeeded => 'Απαιτείται άδεια τοποθεσίας';

  @override
  String get settingsRefreshPermissions => 'Ανανέωση αδειών';

  @override
  String get settingsAboutWifiPermission =>
      'Σχετικά με την άδεια ονόματος WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Το όνομά σας WiFi σας βοηθά να επιβεβαιώσετε ότι το τηλέφωνό σας και οι συσκευές Wemo βρίσκονται στο ίδιο δίκτυο.';

  @override
  String get settingsWifiPermissionIos =>
      'Σε iOS, η εμφάνιση του ονόματος δικτύου WiFi απαιτεί άδεια τοποθεσίας.';

  @override
  String get settingsImportant => 'Σημαντικό:';

  @override
  String get settingsPrivacyNote =>
      '• Η τοποθεσία σας δεν παρακολουθείται ποτέ\n• Δεν συλλέγονται ούτε αποθηκεύονται δεδομένα τοποθεσίας';

  @override
  String get settingsWifiPermissionImportant =>
      '• Η ανακάλυψη συσκευής λειτουργεί ΧΩΡΙΣ αυτήν την άδεια\n• Αυτό απαιτείται μόνο για την εμφάνιση του ονόματος WiFi\n• Δεν συλλέγονται ούτε αποθηκεύονται δεδομένα τοποθεσίας';

  @override
  String get settingsGrantPermission => 'Χορήγηση άδειας';

  @override
  String get settingsHowLongScan => 'Πόσος χρόνος για σάρωση για συσκευές:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Το χρονικό όριο λήξης εντοπισμού ορίστηκε σε $seconds δευτερόλεπτα';
  }

  @override
  String get settingsHowLongResponses =>
      'Πόσο καιρό να περιμένετε για τις απαντήσεις της συσκευής:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Αυξήστε αυτήν την τιμή εάν δείτε σφάλματα \"Σύνδεση κλειστή\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Το χρονικό όριο λήξης αιτήματος ορίστηκε σε $seconds δευτερόλεπτα';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Ορίστε το διάστημα για αυτόματη ανανέωση κατάστασης:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Το διάστημα ανανέωσης ορίστηκε σε $seconds δευτερόλεπτα';
  }

  @override
  String get settingsAboutTagline =>
      'Ένας καθαρός, ιδιωτικός τοπικός ελεγκτής για τις συσκευές Wemo.';

  @override
  String get settingsAboutDescription =>
      'Το Bit Switch χρησιμοποιεί εντοπισμό τοπικού δικτύου για την εύρεση και τον έλεγχο συσκευών χωρίς εξαρτήσεις cloud.';

  @override
  String get settingsVersionValue => 'Έκδοση 1.0.1';

  @override
  String get settingsProtocol => 'Πρωτόκολλο: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Διεύθυνση Multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Θύρες συσκευής: 49152-49159';

  @override
  String get settingsControlProtocol => 'Πρωτόκολλο ελέγχου: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Συμβουλή: Βεβαιωθείτε ότι η συσκευή σας βρίσκεται στο ίδιο δίκτυο με τις συσκευές Wemo και ότι το UDP multicast δεν είναι αποκλεισμένο.';

  @override
  String get settingsDevicePaired =>
      'Η συσκευή έγινε αντιστοίχιση! Ανανέωση λίστας συσκευών...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds δευτερόλεπτα ανά αίτημα';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Ανανέωση κάθε $seconds';
  }

  @override
  String get pairingTitle => 'Σύζευξη νέας συσκευής';

  @override
  String get pairingSetupTitle => 'Ρυθμίστε τη συσκευή Wemo';

  @override
  String get pairingBeforeBegin =>
      'Πριν ξεκινήσετε, βεβαιωθείτε ότι η συσκευή Wemo βρίσκεται σε λειτουργία εγκατάστασης:';

  @override
  String get pairingPlugInTitle => 'Συνδέστε τη συσκευή Wemo';

  @override
  String get pairingPlugInBody =>
      'Συνδέστε το στο ρεύμα και περιμένετε να ξεκινήσει.';

  @override
  String get pairingBlinkingLedTitle => 'Αναζητήστε το LED που αναβοσβήνει';

  @override
  String get pairingBlinkingLedBody =>
      'Ένα LED που αναβοσβήνει υποδεικνύει ότι η συσκευή βρίσκεται σε λειτουργία εγκατάστασης.';

  @override
  String get pairingCheckWifiTitle => 'Ελέγξτε για το δίκτυο WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Η συσκευή θα εκπέμπει ένα δίκτυο με το όνομα \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Εάν η λυχνία LED είναι σταθερή, κρατήστε πατημένο το κουμπί επαναφοράς για 5 δευτερόλεπτα για να μπείτε στη λειτουργία ρύθμισης.';

  @override
  String get pairingStart => 'Ξεκινήστε τη σύζευξη';

  @override
  String get pairingConnectWifiTitle => 'Συνδεθείτε στη συσκευή WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Ανοίξτε τις ρυθμίσεις WiFi του τηλεφώνου σας και συνδεθείτε στο δίκτυο που ξεκινά με \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Τρέχον δίκτυο';

  @override
  String get pairingConnectedToDevice => 'Συνδέθηκε στη συσκευή Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Ανοίξτε τις Ρυθμίσεις WiFi';

  @override
  String get pairingConnectedButton => 'Έχω συνδεθεί';

  @override
  String get pairingLookingForDevice => 'Αναζητάτε τη συσκευή σας Wemo...';

  @override
  String get pairingManualIpPrompt =>
      'Ή πληκτρολογήστε τη συσκευή IP με μη αυτόματο τρόπο:';

  @override
  String get pairingDeviceIp => 'Διεύθυνση συσκευής IP';

  @override
  String get pairingConnectToIp => 'Συνδεθείτε στο IP';

  @override
  String get pairingSelectHomeWifi => 'Επιλέξτε το οικιακό σας δίκτυο WiFi:';

  @override
  String get pairingRefreshNetworks => 'Ανανέωση δικτύων';

  @override
  String get pairingIosScanLimitation =>
      'Το iOS απαγορεύει αυστηρά σε εφαρμογές τρίτων τη σάρωση για κοντινά δίκτυα Wi-Fi. Ίσως χρειαστεί να εισαγάγετε το δίκτυο SSID με μη αυτόματο τρόπο.';

  @override
  String get pairingNoNetworks => 'Δεν βρέθηκαν δίκτυα';

  @override
  String get pairingScanAgain => 'Σάρωση ξανά';

  @override
  String get pairingWifiPassword => 'Κωδικός πρόσβασης WiFi';

  @override
  String get pairingConnect => 'Συνδεθείτε';

  @override
  String get pairingEnterNetworkManually => 'Μπείτε στο δίκτυο μη αυτόματα';

  @override
  String get pairingEnterNetworkName => 'Εισαγάγετε όνομα δικτύου:';

  @override
  String get pairingNetworkName => 'Όνομα δικτύου (SSID)';

  @override
  String get pairingUseNetwork => 'Χρησιμοποιήστε αυτό το δίκτυο';

  @override
  String get pairingConfiguringDevice => 'Διαμόρφωση συσκευής...';

  @override
  String get pairingConfiguringWait =>
      'Περιμένετε μέχρι να συνδεθεί η συσκευή στο δίκτυό σας.';

  @override
  String get pairingReconnectTitle => 'Επανασυνδεθείτε στο δίκτυό σας';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Η συσκευή σας Wemo συνδέεται τώρα στο \"$ssid\". Συνδέστε ξανά το τηλέφωνό σας στο ίδιο δίκτυο.';
  }

  @override
  String get pairingBackOnHome => 'Επιστροφή στο οικιακό δίκτυο!';

  @override
  String get pairingReconnectedButton => 'Έχω επανασυνδεθεί';

  @override
  String get pairingFinalizingSetup => 'Ολοκληρώνεται η ρύθμιση...';

  @override
  String get pairingSetupComplete => 'Η εγκατάσταση ολοκληρώθηκε!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Συνδέθηκε στο $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Η συσκευή σας έχει πλέον ρυθμιστεί και θα εμφανιστεί στην αρχική οθόνη.';

  @override
  String get pairingSomethingWrong => 'Κάτι πήγε στραβά';

  @override
  String get pairingStartOver => 'Ξεκινήστε από την αρχή';

  @override
  String get pairingErrorOpenWifi =>
      'Δεν ήταν δυνατό το άνοιγμα των ρυθμίσεων WiFi. Ανοίξτε τα χειροκίνητα.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Το τηλέφωνό σας εξακολουθεί να είναι συνδεδεμένο στο \"$ssid\". Ανοίξτε τις ρυθμίσεις WiFi, συνδεθείτε στο δίκτυο συσκευών WeMo και δοκιμάστε ξανά.';
  }

  @override
  String get pairingLoadingLooking => 'Αναζήτηση συσκευής...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Δεν ήταν δυνατή η εύρεση της συσκευής WeMo στο $ip. Βεβαιωθείτε ότι το τηλέφωνό σας είναι συνδεδεμένο στο δίκτυο WeMo WiFi και, στη συνέχεια, δοκιμάστε ξανά. Μπορείτε επίσης να εισαγάγετε τη συσκευή IP χειροκίνητα.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Σφάλμα ανακάλυψης συσκευής: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Σύνδεση στο $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Δεν βρέθηκε συσκευή στο $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Σφάλμα σύνδεσης στο $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Σάρωση για δίκτυα...';

  @override
  String pairingErrorScanning(String error) {
    return 'Δεν ήταν δυνατή η σάρωση δικτύων: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Επιλέξτε ένα δίκτυο και εισαγάγετε τον κωδικό πρόσβασης.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Αποστολή διαπιστευτηρίων δικτύου...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Αναμονή για σύνδεση της συσκευής...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Απέτυχε η διαμόρφωση του δικτύου: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Ο κωδικός πρόσβασης είναι πολύ μικρός. Ελέγξτε και δοκιμάστε ξανά.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Αποτυχία σύνδεσης. Ελέγξτε τον κωδικό πρόσβασης.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Το χρονικό όριο της σύνδεσης έληξε. Δοκιμάστε ξανά.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Σφάλμα ολοκλήρωσης της ρύθμισης: $error';
  }

  @override
  String get detailRefreshState => 'Κατάσταση ανανέωσης';

  @override
  String get detailDeviceInfo => 'Πληροφορίες συσκευής';

  @override
  String get detailAdvanced => 'Προχωρημένο';

  @override
  String get detailWifiSetup => 'Ρύθμιση WiFi';

  @override
  String get detailReset => 'Επαναφορά';

  @override
  String get detailUnreachable =>
      'Η συσκευή δεν είναι προσβάσιμη. Ελέγξτε τη σύνδεση δικτύου.';

  @override
  String detailFailedToggle(String error) {
    return 'Αποτυχία εναλλαγής: $error';
  }

  @override
  String get detailDeviceInformation => 'Πληροφορίες συσκευής';

  @override
  String get detailPermissionScan =>
      'Απαιτείται άδεια για τη σάρωση δικτύων WiFi.';

  @override
  String get detailScanFailedManual =>
      'Δεν ήταν δυνατή η σάρωση δικτύων. Εισαγάγετε το όνομα του δικτύου μη αυτόματα.';

  @override
  String get detailEnterNetworkNameError =>
      'Εισαγάγετε ή επιλέξτε ένα όνομα δικτύου';

  @override
  String get detailEnterPasswordError =>
      'Εισαγάγετε τον κωδικό πρόσβασης δικτύου';

  @override
  String get detailWifiSuccess => 'Το WiFi διαμορφώθηκε με επιτυχία!';

  @override
  String get detailScanNetworks => 'Σάρωση για δίκτυα';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Διαμόρφωση του δικτύου WiFi για \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Διαθέσιμα Δίκτυα';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'Το iOS απαγορεύει αυστηρά σε εφαρμογές τρίτων τη σάρωση για κοντινά δίκτυα Wi-Fi. Εισαγάγετε το όνομα του δικτύου σας χειροκίνητα παρακάτω.';

  @override
  String get detailTapRefreshScan => 'Πατήστε ανανέωση για σάρωση για δίκτυα';

  @override
  String get detailEnterNetworkBelow =>
      'Εισαγάγετε το όνομα του δικτύου σας παρακάτω';

  @override
  String get detailNetworkCredentials => 'Διαπιστευτήρια Δικτύου';

  @override
  String get detailConnecting => 'Σύνδεση στο δίκτυο...';

  @override
  String get detailConnected => 'Συνδέθηκε με επιτυχία!';

  @override
  String get detailPasswordShort => 'Ο κωδικός πρόσβασης είναι πολύ μικρός';

  @override
  String get detailAuthenticationFailed =>
      'Ο έλεγχος ταυτότητας απέτυχε - ελέγξτε τον κωδικό πρόσβασης';

  @override
  String get detailConnectionFailed => 'Η σύνδεση απέτυχε';

  @override
  String get detailSelectReset => 'Επιλέξτε τι θα επαναφέρετε';

  @override
  String get detailResetSchedulesWarning =>
      '• Όλα τα χρονοδιαγράμματα και οι κανόνες αυτοματισμού θα διαγραφούν';

  @override
  String get detailResetWifiWarning => '• Οι ρυθμίσεις WiFi θα διαγραφούν';

  @override
  String get detailSetupAgainWarning =>
      '• Θα χρειαστεί να ρυθμίσετε ξανά τη συσκευή';

  @override
  String get detailUnreachableWarning =>
      '• Η συσκευή μπορεί να γίνει προσωρινά μη προσβάσιμη';

  @override
  String get detailConfirmReset => 'Επιβεβαίωση επαναφοράς';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Είστε βέβαιοι ότι θέλετε να επαναφέρετε το \"$device\";';
  }

  @override
  String get detailThisWill => 'Αυτό θα:';

  @override
  String get detailCannotUndo => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';

  @override
  String get detailYesReset => 'Ναι, Επαναφορά';

  @override
  String get detailResetSuccess => 'Επιτυχής επαναφορά της συσκευής';

  @override
  String get detailResetRemote => 'Η συσκευή θα επαναφέρει απομακρυσμένα';

  @override
  String get detailResetFailed => 'Η επαναφορά απέτυχε';

  @override
  String get detailFactoryReset => 'Επαναφορά εργοστασιακών ρυθμίσεων';

  @override
  String get detailFactoryResetWarning =>
      'Αυτό θα διαγράψει ΟΛΕΣ τις ρυθμίσεις και θα επαναφέρει τη συσκευή στις εργοστασιακές προεπιλογές. Θα χρειαστεί να ρυθμίσετε ξανά τη συσκευή.\n\nΑυτή η ενέργεια δεν μπορεί να αναιρεθεί.';

  @override
  String get detailFactoryResetInitiated =>
      'Ξεκίνησε η επαναφορά εργοστασιακών ρυθμίσεων';

  @override
  String get detailResetDevice => 'Επαναφορά συσκευής';

  @override
  String detailResetOptionsFor(String device) {
    return 'Επαναφορά επιλογών για \"$device\"';
  }

  @override
  String get detailResetUserData => 'Επαναφορά δεδομένων χρήστη';

  @override
  String get detailResetUserDataSubtitle =>
      'Καθαρίζει χρονοδιαγράμματα και κανόνες';

  @override
  String get detailResetWifi => 'Επαναφέρετε τις ρυθμίσεις WiFi';

  @override
  String get detailResetWifiSubtitle => 'Η συσκευή θα πρέπει να ρυθμιστεί ξανά';

  @override
  String get widgetBrightness => 'Φωτεινότητα';

  @override
  String get widgetEnergyStatistics => 'Ενεργειακή Στατιστική';

  @override
  String get widgetCurrentPower => 'Τρέχουσα ισχύς';

  @override
  String get widgetToday => 'Σήμερα';

  @override
  String get widgetTotal => 'Σύνολο';

  @override
  String get widgetOnTimeToday => 'Στην ώρα σήμερα';

  @override
  String get widgetTotalOnTime => 'Σύνολο στην ώρα';

  @override
  String get widgetStandby => 'Αναμονή';

  @override
  String get widgetUnknown => 'Άγνωστο';

  @override
  String get widgetOpenNetwork => 'Ανοιχτό δίκτυο';

  @override
  String get widgetWepInsecure => 'WEP (ανασφαλές)';
}
