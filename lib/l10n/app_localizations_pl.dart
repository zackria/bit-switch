// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Urządzenie nie obsługuje tej akcji.';

  @override
  String get errInvalidArgs => 'Do urządzenia wysłano nieprawidłowe argumenty.';

  @override
  String get errActionFailed => 'Urządzenie nie wykonało żądanej akcji.';

  @override
  String get errInvalidValue => 'Podano nieprawidłową wartość.';

  @override
  String get errValueOutOfRange => 'Wartość jest poza dopuszczalnym zakresem.';

  @override
  String get errFeatureNotAvailable =>
      'Ta funkcja nie jest dostępna na tym urządzeniu.';

  @override
  String get errOutOfMemory =>
      'W urządzeniu zabrakło pamięci. Spróbuj ponownie później.';

  @override
  String get errManualActionRequired =>
      'Na urządzeniu wymagane jest ręczne działanie.';

  @override
  String get errActionNotAuthorized => 'To działanie nie jest autoryzowane.';

  @override
  String get errUnexpected => 'Wystąpił nieoczekiwany błąd. Spróbuj ponownie.';

  @override
  String get errDeviceUnreachableOffline =>
      'Nie można połączyć się z urządzeniem. Może być w trybie offline lub w innej sieci.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Upłynął limit czasu żądania po próbach $attempts. Urządzenie może być w trybie offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Upłynął limit czasu żądania. Urządzenie może być w trybie offline.';

  @override
  String get errNoRouteToHost =>
      'Nie można połączyć się z urządzeniem. Sprawdź połączenie WiFi.';

  @override
  String get errHostUnreachable =>
      'Urządzenie jest nieosiągalne. Upewnij się, że jest włączony i podłączony do WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Nie można skomunikować się z urządzeniem po próbach $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Błąd sieci: nie można komunikować się z urządzeniem.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Ta czynność nie jest autoryzowana na urządzeniu.';

  @override
  String get errDeviceServiceNotFound =>
      'Nie znaleziono usługi urządzenia. Urządzenie może wymagać aktualizacji oprogramowania sprzętowego.';

  @override
  String get errDeviceEncounteredError =>
      'Urządzenie napotkało błąd podczas przetwarzania żądania.';

  @override
  String get errDeviceInternalError => 'Urządzenie zwróciło błąd wewnętrzny.';

  @override
  String get errDeviceTempUnavailable =>
      'Urządzenie jest chwilowo niedostępne. Spróbuj ponownie.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Urządzenie zwróciło błąd (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Nie udało się $action na urządzeniu.';
  }

  @override
  String get errDeviceReturnedError => 'Urządzenie zwróciło błąd.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Upłynął limit czasu operacji $operation. Spróbuj ponownie.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Upłynął limit czasu operacji po sekundach $seconds.';
  }

  @override
  String get errOperationTimedOut =>
      'Upłynął limit czasu operacji. Spróbuj ponownie.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Włącz uprawnienia sieci lokalnej w Ustawieniach, aby znaleźć urządzenia.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Nie można uzyskać dostępu do sieci lokalnej. Włącz uprawnienia sieci lokalnej w Ustawieniach.';

  @override
  String get errCheckWifiConnection =>
      'Nie można wykryć urządzeń. Sprawdź połączenie WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Odkrywanie przerwane. Znaleziono urządzenia $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Nie znaleziono żadnych urządzeń. Upewnij się, że urządzenia są włączone i podłączone do sieci.';

  @override
  String get actionGetDeviceState => 'uzyskać stan urządzenia';

  @override
  String get actionSetDeviceState => 'ustaw stan urządzenia';

  @override
  String get actionGetEnergyData => 'uzyskać dane dotyczące energii';

  @override
  String get actionScanNetworks => 'wyszukaj sieci';

  @override
  String get actionConnectWifi => 'połącz się z WiFi';

  @override
  String get actionCheckConnection => 'sprawdź stan połączenia';

  @override
  String get actionResetDevice => 'zresetuj urządzenie';

  @override
  String get actionPerform => 'wykonać akcję';

  @override
  String get suggestTryRefreshing =>
      'Spróbuj odświeżyć listę urządzeń lub sprawdź, czy urządzenie odpowiada.';

  @override
  String get suggestEnsurePoweredOn =>
      'Upewnij się, że urządzenie jest włączone i podłączone do sieci WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Upewnij się, że Twój telefon jest podłączony do tej samej sieci WiFi, co Twoje urządzenia.';

  @override
  String get suggestCheckPhysical =>
      'Sprawdź, czy na urządzeniu fizycznym nie ma żadnych przycisków lub przełączników wymagających uwagi.';

  @override
  String get suggestWaitAndTry => 'Poczekaj chwilę i spróbuj ponownie.';

  @override
  String get suggestDeviceBusy =>
      'Urządzenie może być zajęte. Spróbuj ponownie za kilka sekund.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Anuluj';

  @override
  String get commonClose => 'Zamknij';

  @override
  String get commonDone => 'Gotowe';

  @override
  String get commonLater => 'Później';

  @override
  String get commonRefresh => 'Odśwież';

  @override
  String get commonTryAgain => 'Spróbuj ponownie';

  @override
  String get commonOpenSettings => 'Otwórz Ustawienia';

  @override
  String get commonGrant => 'Przyznaj';

  @override
  String get commonFix => 'Napraw';

  @override
  String get commonOn => 'Włączone';

  @override
  String get commonOff => 'Wyłączone';

  @override
  String get commonOffline => 'Nieaktywny';

  @override
  String get commonStatus => 'Stan';

  @override
  String get commonName => 'Imię';

  @override
  String get commonType => 'Wpisz';

  @override
  String get commonModel => 'Modelka';

  @override
  String get commonManufacturer => 'Producent';

  @override
  String get commonSerial => 'seryjny';

  @override
  String get commonFirmware => 'Oprogramowanie sprzętowe';

  @override
  String get commonHost => 'Gospodarz';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Hasło';

  @override
  String get commonUnknownWifi => 'Nieznany Wi-Fi';

  @override
  String get commonNotConnected => 'Nie podłączony';

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
      other: '$seconds sekund',
      one: '1 sekunda',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Inteligentny przełącznik';

  @override
  String get deviceTypeLightSwitch => 'Włącznik światła';

  @override
  String get deviceTypeDimmer => 'Ściemniacz';

  @override
  String get deviceTypeInsightPlug => 'Wtyczka Insight';

  @override
  String get deviceTypeMotionSensor => 'Czujnik ruchu';

  @override
  String get deviceTypeMaker => 'Twórca';

  @override
  String get deviceTypeBridge => 'Most';

  @override
  String get deviceTypeCoffeeMaker => 'Ekspres do kawy';

  @override
  String get deviceTypeCrockpot => 'Garnek';

  @override
  String get deviceTypeHumidifier => 'Nawilżacz';

  @override
  String get deviceTypeOutdoorPlug => 'Wtyczka zewnętrzna';

  @override
  String get deviceTypeUnknown => 'Nieznane urządzenie';

  @override
  String get pairingStepGetStarted => 'Rozpocznij';

  @override
  String get pairingStepConnectToDevice => 'Połącz się z urządzeniem';

  @override
  String get pairingStepFindDevice => 'Znajdź urządzenie';

  @override
  String get pairingStepSelectNetwork => 'Wybierz opcję Sieć';

  @override
  String get pairingStepConfiguring => 'Konfigurowanie';

  @override
  String get pairingStepReconnect => 'Połącz ponownie';

  @override
  String get pairingStepFinalizing => 'Finalizowanie';

  @override
  String get pairingStepSuccess => 'Sukces';

  @override
  String get pairingStepError => 'Błąd';

  @override
  String get homeToggleDebug => 'Przełącz tryb debugowania';

  @override
  String get homeRefreshDevices => 'Odśwież urządzenia';

  @override
  String get homeSettings => 'Ustawienia';

  @override
  String get homeDismiss => 'Odrzuć';

  @override
  String get homeDiscovering => 'Odkrywanie urządzeń...';

  @override
  String get homeNoDevices => 'Nie znaleziono żadnych urządzeń';

  @override
  String get homeScanDevices => 'Wyszukaj urządzenia';

  @override
  String get homeLookingForMore => 'Szukasz więcej urządzeń...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Znaleziono urządzenia $count',
      one: 'Znaleziono 1 urządzenie',
      zero: 'Nie znaleziono żadnych urządzeń',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Znaleziono urządzenia $count, skanowanie...',
      one: 'Znaleziono 1 urządzenie, skanowanie...',
      zero: 'Nie znaleziono urządzeń, skanowanie...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Automat';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Połączono z WiFi';

  @override
  String get homePermissionExplanation =>
      'Informacje o lokalizacji służą do znalezienia szczegółów Twojego Wi-Fi. Dostęp do sieci lokalnej pozwala kontrolować inteligentne przełączniki i urządzenia.';

  @override
  String get homeDebugLog => 'Dziennik debugowania';

  @override
  String get homeClear => 'Jasne';

  @override
  String get homeDebugEmpty =>
      'Kliknij Odśwież, aby rozpocząć wykrywanie i zobaczyć logi...';

  @override
  String get homeProbeHint => 'IP:Port (np. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Sonda';

  @override
  String get homeScanning => 'Skanowanie...';

  @override
  String get homeScanSubnet => 'Skanuj całą podsieć (poprawka iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platforma: $platform $version';
  }

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get settingsSectionNetwork => 'Sieć';

  @override
  String get settingsSectionDeviceSetup => 'Konfiguracja urządzenia';

  @override
  String get settingsSectionDiscovery => 'Odkrycie';

  @override
  String get settingsSectionAbout => 'O';

  @override
  String get settingsSectionDebug => 'Debuguj';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Pozwolenie udzielone! Nazwa WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Lokalizacja została przyznana, ale wymagane jest również pozwolenie na sieć lokalną. Sprawdź Ustawienia.';

  @override
  String get settingsLocationRequired => 'Wymagane pozwolenie na lokalizację';

  @override
  String get settingsLocationRequiredBody =>
      'Aby wyświetlić nazwę sieci WiFi, iOS wymaga pozwolenia na lokalizację.';

  @override
  String get settingsRequiredPermissions => 'Wymagane uprawnienia:';

  @override
  String get settingsPermissionList =>
      '1. Usługi lokalizacyjne („Podczas korzystania z aplikacji”)\n2. Sieć lokalna';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Uwaga: wykrywanie urządzeń działa bez pozwolenia na lokalizację. To uprawnienie służy wyłącznie do wyświetlania nazwy sieci WiFi.';

  @override
  String get settingsEnableLocation => 'Włącz lokalizację w Ustawieniach';

  @override
  String get settingsLocationDeniedBody =>
      'Odmówiono pozwolenia na lokalizację. Można to włączyć w ustawieniach systemu.';

  @override
  String get settingsStepsToEnable => 'Kroki, aby włączyć:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Otwórz Ustawienia\n2. Przewiń do „Bit Switch”\n3. Wybierz „Lokalizacja”\n4. Wybierz „Podczas korzystania z aplikacji”\n5. Wróć do tej aplikacji i dotknij przycisku odświeżania';

  @override
  String get settingsLocationOnlyWifiName =>
      'Uwaga: Pozwolenie na lokalizację jest potrzebne tylko do wyświetlenia nazwy WiFi. Wykrywanie urządzeń działa bez niego.';

  @override
  String get settingsAdditionalPermission => 'Potrzebne dodatkowe pozwolenie';

  @override
  String get settingsLocalNetworkBody =>
      'Do wykrywania i kontrolowania urządzeń Wemo wymagane są uprawnienia sieci lokalnej.';

  @override
  String get settingsWifiNameNotVisible =>
      'Masz uprawnienia do lokalizacji, ale nazwa WiFi nie jest jeszcze widoczna.';

  @override
  String get settingsPleaseEnable => 'Włącz:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Przejdź do Ustawień iPhone\'a\n2. Przewiń w dół do „Bit Switch”\n3. Włącz „Sieć lokalna”';

  @override
  String get settingsLocalNetworkIosReason =>
      'Zarówno do wykrywania urządzeń, jak i dostępu do nazwy WiFi w systemie iOS wymagane są uprawnienia do sieci lokalnej.';

  @override
  String get settingsPairNewDevice => 'Sparuj nowe urządzenie';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Skonfiguruj nowe urządzenie Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Limit czasu wykrywania';

  @override
  String get settingsRequestTimeout => 'Limit czasu żądania';

  @override
  String get settingsAutoRefresh => 'Automatyczne odświeżanie';

  @override
  String get settingsAutoRefreshOn =>
      'Włączone — stany urządzeń odświeżają się automatycznie';

  @override
  String get settingsAutoRefreshOff =>
      'Wyłączone — użyj przycisku ręcznego odświeżania';

  @override
  String get settingsAutoRefreshInterval =>
      'Interwał automatycznego odświeżania';

  @override
  String get settingsAbout => 'Informacje o Bit Switch';

  @override
  String get settingsVersion => 'Wersja';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostyka sieci';

  @override
  String get settingsShowDebug => 'Pokaż tryb debugowania';

  @override
  String get settingsShowDebugSubtitle =>
      'Pokaż elementy sterujące debugowaniem i diagnostykę sieci na ekranie głównym';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Pokaż ikonę debugowania na ekranie głównym, aby rozwiązać problemy';

  @override
  String get settingsCurrentNetwork => 'Bieżąca sieć';

  @override
  String get settingsNetworkAccessStatus => 'Stan dostępu do sieci';

  @override
  String get settingsNetworkAccessGranted =>
      'Dostęp do sieci lokalnej jest dostępny';

  @override
  String get settingsNetworkAccessMissing =>
      'Mogą być wymagane dodatkowe uprawnienia';

  @override
  String get settingsChecking => 'Sprawdzam...';

  @override
  String get settingsEnableLocalNetwork => 'Włącz sieć lokalną w Ustawieniach';

  @override
  String get settingsNotConnectedWifi => 'Niepodłączony do WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Wymagane pozwolenie na obejrzenie';

  @override
  String get settingsAllPermissionsGranted => 'Wszystkie uprawnienia przyznane';

  @override
  String get settingsLocalNetworkNeeded =>
      'Wymagane pozwolenie na sieć lokalną';

  @override
  String get settingsLocationNeeded => 'Potrzebne pozwolenie na lokalizację';

  @override
  String get settingsRefreshPermissions => 'Odśwież uprawnienia';

  @override
  String get settingsAboutWifiPermission =>
      'Informacje o pozwoleniu na nazwę WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Nazwa WiFi pomaga potwierdzić, że Twój telefon i urządzenia Wemo znajdują się w tej samej sieci.';

  @override
  String get settingsWifiPermissionIos =>
      'W systemie iOS wyświetlanie nazwy sieci WiFi wymaga pozwolenia na lokalizację.';

  @override
  String get settingsImportant => 'Ważne:';

  @override
  String get settingsPrivacyNote =>
      '• Twoja lokalizacja nigdy nie jest śledzona\n• Żadne dane o lokalizacji nie są gromadzone ani przechowywane';

  @override
  String get settingsWifiPermissionImportant =>
      '• Wykrywanie urządzeń działa BEZ tego pozwolenia\n• Jest to potrzebne tylko do wyświetlenia nazwy WiFi\n• Żadne dane o lokalizacji nie są gromadzone ani przechowywane';

  @override
  String get settingsGrantPermission => 'Udziel pozwolenia';

  @override
  String get settingsHowLongScan =>
      'Jak długo skanować w poszukiwaniu urządzeń:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Limit czasu wykrywania ustawiony na $seconds sekundy';
  }

  @override
  String get settingsHowLongResponses =>
      'Jak długo należy czekać na odpowiedzi urządzenia:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Zwiększ tę wartość, jeśli widzisz błędy „Połączenie zamknięte”.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Limit czasu żądania ustawiony na $seconds sekund';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Ustaw interwał automatycznego odświeżania stanu:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Interwał odświeżania ustawiony na $seconds sekundy';
  }

  @override
  String get settingsAboutTagline =>
      'Czysty, prywatny kontroler lokalny dla urządzeń Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch wykorzystuje wykrywanie sieci lokalnej do wyszukiwania i kontrolowania urządzeń bez zależności od chmury.';

  @override
  String get settingsVersionValue => 'Wersja 1.0.1';

  @override
  String get settingsProtocol => 'Protokół: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Adres multiemisji: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Porty urządzenia: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protokół sterowania: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Wskazówka: Upewnij się, że Twoje urządzenie znajduje się w tej samej sieci, co urządzenia Wemo i że multiemisji UDP nie jest blokowana.';

  @override
  String get settingsDevicePaired =>
      'Urządzenie sparowane! Odświeżanie listy urządzeń...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds sekund na żądanie';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Odświeżanie każdego $seconds';
  }

  @override
  String get pairingTitle => 'Sparuj nowe urządzenie';

  @override
  String get pairingSetupTitle => 'Skonfiguruj urządzenie Wemo';

  @override
  String get pairingBeforeBegin =>
      'Zanim zaczniesz, upewnij się, że urządzenie Wemo znajduje się w trybie konfiguracji:';

  @override
  String get pairingPlugInTitle => 'Podłącz urządzenie Wemo';

  @override
  String get pairingPlugInBody =>
      'Podłącz go do zasilania i poczekaj, aż się uruchomi.';

  @override
  String get pairingBlinkingLedTitle => 'Poszukaj migającej diody LED';

  @override
  String get pairingBlinkingLedBody =>
      'Migająca dioda LED wskazuje, że urządzenie znajduje się w trybie konfiguracji.';

  @override
  String get pairingCheckWifiTitle => 'Sprawdź sieć WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Urządzenie będzie transmitować sieć o nazwie „WeMo.XXXXXXX”.';

  @override
  String get pairingSolidLedHint =>
      'Jeśli dioda LED świeci się, przytrzymaj przycisk resetowania przez 5 sekund, aby przejść do trybu konfiguracji.';

  @override
  String get pairingStart => 'Rozpocznij parowanie';

  @override
  String get pairingConnectWifiTitle => 'Połącz się z urządzeniem WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Otwórz ustawienia telefonu WiFi i połącz się z siecią rozpoczynającą się od „WeMo”.';

  @override
  String get pairingCurrentNetwork => 'Bieżąca sieć';

  @override
  String get pairingConnectedToDevice => 'Połączono z urządzeniem Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Otwórz ustawienia WiFi';

  @override
  String get pairingConnectedButton => 'Połączyłem się';

  @override
  String get pairingLookingForDevice => 'Szukasz urządzenia Wemo...';

  @override
  String get pairingManualIpPrompt => 'Lub wprowadź urządzenie IP ręcznie:';

  @override
  String get pairingDeviceIp => 'Adres urządzenia IP';

  @override
  String get pairingConnectToIp => 'Połącz się z IP';

  @override
  String get pairingSelectHomeWifi => 'Wybierz swoją sieć domową WiFi:';

  @override
  String get pairingRefreshNetworks => 'Odśwież sieci';

  @override
  String get pairingIosScanLimitation =>
      'iOS surowo zabrania aplikacjom innych firm skanowania w poszukiwaniu pobliskich sieci Wi-Fi. Może być konieczne ręczne wprowadzenie sieci SSID.';

  @override
  String get pairingNoNetworks => 'Nie znaleziono sieci';

  @override
  String get pairingScanAgain => 'Skanuj ponownie';

  @override
  String get pairingWifiPassword => 'Hasło WiFi';

  @override
  String get pairingConnect => 'Połącz';

  @override
  String get pairingEnterNetworkManually => 'Wprowadź sieć ręcznie';

  @override
  String get pairingEnterNetworkName => 'Wpisz nazwę sieci:';

  @override
  String get pairingNetworkName => 'Nazwa sieci (SSID)';

  @override
  String get pairingUseNetwork => 'Skorzystaj z tej sieci';

  @override
  String get pairingConfiguringDevice => 'Konfiguruję urządzenie...';

  @override
  String get pairingConfiguringWait =>
      'Poczekaj, aż urządzenie połączy się z Twoją siecią.';

  @override
  String get pairingReconnectTitle => 'Połącz się ponownie ze swoją siecią';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Twoje urządzenie Wemo łączy się teraz z „$ssid”. Podłącz ponownie telefon do tej samej sieci.';
  }

  @override
  String get pairingBackOnHome => 'Powrót do sieci domowej!';

  @override
  String get pairingReconnectedButton => 'Połączyłem się ponownie';

  @override
  String get pairingFinalizingSetup => 'Finalizowanie konfiguracji...';

  @override
  String get pairingSetupComplete => 'Konfiguracja ukończona!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Połączono z $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Twoje urządzenie jest teraz skonfigurowane i pojawi się na ekranie głównym.';

  @override
  String get pairingSomethingWrong => 'Coś poszło nie tak';

  @override
  String get pairingStartOver => 'Zacznij od nowa';

  @override
  String get pairingErrorOpenWifi =>
      'Nie można otworzyć ustawień WiFi. Otwórz je ręcznie.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Twój telefon jest nadal połączony z „$ssid”. Otwórz ustawienia WiFi, połącz się z siecią urządzenia WeMo i spróbuj ponownie.';
  }

  @override
  String get pairingLoadingLooking => 'Szukam urządzenia...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Nie można znaleźć urządzenia WeMo w $ip. Upewnij się, że Twój telefon jest podłączony do sieci WeMo WiFi, a następnie spróbuj ponownie. Można także wprowadzić urządzenie IP ręcznie.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Błąd podczas wykrywania urządzenia: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Łączenie z $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Nie znaleziono urządzenia w $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Błąd połączenia z $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Skanowanie w poszukiwaniu sieci...';

  @override
  String pairingErrorScanning(String error) {
    return 'Nie można przeskanować sieci: $error';
  }

  @override
  String get pairingErrorSelectAndPassword => 'Wybierz sieć i wprowadź hasło.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Wysyłam dane uwierzytelniające sieci...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Oczekiwanie na połączenie urządzenia...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Nie udało się skonfigurować sieci: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Hasło jest za krótkie. Sprawdź i spróbuj ponownie.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Nie udało się połączyć. Sprawdź hasło.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Upłynął limit czasu połączenia. Spróbuj ponownie.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Błąd podczas finalizowania konfiguracji: $error';
  }

  @override
  String get detailRefreshState => 'Odśwież stan';

  @override
  String get detailDeviceInfo => 'Informacje o urządzeniu';

  @override
  String get detailAdvanced => 'Zaawansowane';

  @override
  String get detailWifiSetup => 'Konfiguracja WiFi';

  @override
  String get detailReset => 'Zresetuj';

  @override
  String get detailUnreachable =>
      'Urządzenie jest nieosiągalne. Sprawdź połączenie sieciowe.';

  @override
  String detailFailedToggle(String error) {
    return 'Nie udało się przełączyć: $error';
  }

  @override
  String get detailDeviceInformation => 'Informacje o urządzeniu';

  @override
  String get detailPermissionScan =>
      'Do skanowania sieci WiFi wymagane jest pozwolenie.';

  @override
  String get detailScanFailedManual =>
      'Nie można przeskanować sieci. Wprowadź nazwę sieci ręcznie.';

  @override
  String get detailEnterNetworkNameError => 'Wprowadź lub wybierz nazwę sieci';

  @override
  String get detailEnterPasswordError => 'Proszę wprowadzić hasło sieciowe';

  @override
  String get detailWifiSuccess => 'WiFi skonfigurowano pomyślnie!';

  @override
  String get detailScanNetworks => 'Wyszukaj sieci';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Skonfiguruj sieć WiFi dla „$device”';
  }

  @override
  String get detailAvailableNetworks => 'Dostępne sieci';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS surowo zabrania aplikacjom innych firm skanowania w poszukiwaniu pobliskich sieci Wi-Fi. Wpisz poniżej ręcznie nazwę swojej sieci.';

  @override
  String get detailTapRefreshScan =>
      'Stuknij opcję Odśwież, aby wyszukać sieci';

  @override
  String get detailEnterNetworkBelow => 'Wpisz poniżej nazwę swojej sieci';

  @override
  String get detailNetworkCredentials => 'Poświadczenia sieciowe';

  @override
  String get detailConnecting => 'Łączę z siecią...';

  @override
  String get detailConnected => 'Połączono pomyślnie!';

  @override
  String get detailPasswordShort => 'Hasło jest za krótkie';

  @override
  String get detailAuthenticationFailed =>
      'Uwierzytelnienie nie powiodło się - sprawdź hasło';

  @override
  String get detailConnectionFailed => 'Połączenie nie powiodło się';

  @override
  String get detailSelectReset => 'Wybierz, co chcesz zresetować';

  @override
  String get detailResetSchedulesWarning =>
      '• Wszystkie harmonogramy i reguły automatyzacji zostaną usunięte';

  @override
  String get detailResetWifiWarning => '• Ustawienia WiFi zostaną usunięte';

  @override
  String get detailSetupAgainWarning =>
      '• Konieczne będzie ponowne skonfigurowanie urządzenia';

  @override
  String get detailUnreachableWarning =>
      '• Urządzenie może stać się chwilowo nieosiągalne';

  @override
  String get detailConfirmReset => 'Potwierdź reset';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Czy na pewno chcesz zresetować „$device”?';
  }

  @override
  String get detailThisWill => 'To będzie:';

  @override
  String get detailCannotUndo => 'Tej akcji nie można cofnąć.';

  @override
  String get detailYesReset => 'Tak, zresetuj';

  @override
  String get detailResetSuccess => 'Urządzenie zostało zresetowane pomyślnie';

  @override
  String get detailResetRemote => 'Urządzenie zostanie zresetowane zdalnie';

  @override
  String get detailResetFailed => 'Resetowanie nie powiodło się';

  @override
  String get detailFactoryReset => 'Reset do ustawień fabrycznych';

  @override
  String get detailFactoryResetWarning =>
      'Spowoduje to usunięcie WSZYSTKICH ustawień i przywrócenie ustawień fabrycznych urządzenia. Konieczne będzie ponowne skonfigurowanie urządzenia.\n\nTej akcji nie można cofnąć.';

  @override
  String get detailFactoryResetInitiated =>
      'Rozpoczęto reset do ustawień fabrycznych';

  @override
  String get detailResetDevice => 'Zresetuj urządzenie';

  @override
  String detailResetOptionsFor(String device) {
    return 'Zresetuj opcje dla „$device”';
  }

  @override
  String get detailResetUserData => 'Zresetuj dane użytkownika';

  @override
  String get detailResetUserDataSubtitle => 'Czyści harmonogramy i zasady';

  @override
  String get detailResetWifi => 'Zresetuj ustawienia WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Urządzenie będzie wymagało ponownej konfiguracji';

  @override
  String get widgetBrightness => 'Jasność';

  @override
  String get widgetEnergyStatistics => 'Statystyki energii';

  @override
  String get widgetCurrentPower => 'Aktualna moc';

  @override
  String get widgetToday => 'Dzisiaj';

  @override
  String get widgetTotal => 'Razem';

  @override
  String get widgetOnTimeToday => 'Dzisiaj na czas';

  @override
  String get widgetTotalOnTime => 'Razem na czas';

  @override
  String get widgetStandby => 'Gotowość';

  @override
  String get widgetUnknown => 'Nieznany';

  @override
  String get widgetOpenNetwork => 'Otwarta sieć';

  @override
  String get widgetWepInsecure => 'WEP (niepewny)';
}
