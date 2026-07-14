// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Пристрій не підтримує цю дію.';

  @override
  String get errInvalidArgs => 'На пристрій надіслано недійсні аргументи.';

  @override
  String get errActionFailed => 'Пристрою не вдалося виконати запитану дію.';

  @override
  String get errInvalidValue => 'Вказано недійсне значення.';

  @override
  String get errValueOutOfRange =>
      'Значення виходить за межі прийнятного діапазону.';

  @override
  String get errFeatureNotAvailable =>
      'Ця функція недоступна на цьому пристрої.';

  @override
  String get errOutOfMemory =>
      'У пристрої бракує пам’яті. Повторіть спробу пізніше.';

  @override
  String get errManualActionRequired => 'Потрібна ручна дія на пристрої.';

  @override
  String get errActionNotAuthorized => 'Ця дія не санкціонована.';

  @override
  String get errUnexpected => 'Сталася неочікувана помилка. Спробуйте ще раз.';

  @override
  String get errDeviceUnreachableOffline =>
      'Не вдається підключитися до пристрою. Він може бути офлайн або в іншій мережі.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Час очікування запиту минув після спроб $attempts. Пристрій може бути офлайн.';
  }

  @override
  String get errRequestTimedOut =>
      'Час очікування запиту минув. Пристрій може бути офлайн.';

  @override
  String get errNoRouteToHost =>
      'Неможливо отримати доступ до пристрою. Перевірте підключення WiFi.';

  @override
  String get errHostUnreachable =>
      'Пристрій недоступний. Будь ласка, переконайтеся, що він увімкнений і підключений до WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Не вдалося зв’язатися з пристроєм після спроб $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Помилка мережі: неможливо зв’язатися з пристроєм.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Ця дія не авторизована на пристрої.';

  @override
  String get errDeviceServiceNotFound =>
      'Сервіс пристрою не знайдено. Пристрій може потребувати оновлення мікропрограми.';

  @override
  String get errDeviceEncounteredError =>
      'Під час обробки запиту на пристрої сталася помилка.';

  @override
  String get errDeviceInternalError => 'Пристрій повернув внутрішню помилку.';

  @override
  String get errDeviceTempUnavailable =>
      'Пристрій тимчасово недоступний. Спробуйте ще раз.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Пристрій повернув помилку (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Помилка $action на пристрої.';
  }

  @override
  String get errDeviceReturnedError => 'Пристрій повернув помилку.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Час очікування операції $operation минув. Спробуйте ще раз.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Час очікування операції минув через $seconds секунд.';
  }

  @override
  String get errOperationTimedOut =>
      'Час очікування операції минув. Спробуйте ще раз.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Увімкніть дозвіл локальної мережі в налаштуваннях, щоб знайти пристрої.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Не вдається отримати доступ до локальної мережі. Увімкніть дозвіл локальної мережі в налаштуваннях.';

  @override
  String get errCheckWifiConnection =>
      'Неможливо виявити пристрої. Перевірте підключення WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Відкриття перервано. Знайдено пристрої $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Пристроїв не знайдено. Будь ласка, переконайтеся, що пристрої увімкнено та підключено до вашої мережі.';

  @override
  String get actionGetDeviceState => 'отримати стан пристрою';

  @override
  String get actionSetDeviceState => 'встановити стан пристрою';

  @override
  String get actionGetEnergyData => 'отримати дані про енергію';

  @override
  String get actionScanNetworks => 'сканувати мережі';

  @override
  String get actionConnectWifi => 'підключитися до WiFi';

  @override
  String get actionCheckConnection => 'перевірити стан підключення';

  @override
  String get actionResetDevice => 'скинути пристрій';

  @override
  String get actionPerform => 'виконувати дію';

  @override
  String get suggestTryRefreshing =>
      'Спробуйте оновити список пристроїв або перевірте, чи пристрій відповідає.';

  @override
  String get suggestEnsurePoweredOn =>
      'Переконайтеся, що пристрій увімкнено та підключено до мережі WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Переконайтеся, що ваш телефон підключено до тієї ж мережі WiFi, що й ваші пристрої.';

  @override
  String get suggestCheckPhysical =>
      'Перевірте фізичний пристрій на наявність кнопок або перемикачів, які потребують уваги.';

  @override
  String get suggestWaitAndTry => 'Зачекайте хвилинку та повторіть спробу.';

  @override
  String get suggestDeviceBusy =>
      'Можливо, пристрій зайнятий. Повторіть спробу через кілька секунд.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Скасувати';

  @override
  String get commonClose => 'Закрити';

  @override
  String get commonDone => 'Готово';

  @override
  String get commonLater => 'Пізніше';

  @override
  String get commonRefresh => 'Оновити';

  @override
  String get commonTryAgain => 'Спробуйте знову';

  @override
  String get commonOpenSettings => 'Відкрийте налаштування';

  @override
  String get commonGrant => 'Грант';

  @override
  String get commonFix => 'Виправити';

  @override
  String get commonOn => 'Увімкнено';

  @override
  String get commonOff => 'Вимкнено';

  @override
  String get commonOffline => 'Офлайн';

  @override
  String get commonStatus => 'Статус';

  @override
  String get commonName => 'Ім\'я';

  @override
  String get commonType => 'Тип';

  @override
  String get commonModel => 'Модель';

  @override
  String get commonManufacturer => 'Виробник';

  @override
  String get commonSerial => 'Серійний';

  @override
  String get commonFirmware => 'Прошивка';

  @override
  String get commonHost => 'Хост';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Пароль';

  @override
  String get commonUnknownWifi => 'Невідомий Wi-Fi';

  @override
  String get commonNotConnected => 'Не підключено';

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
      other: '$seconds секунд',
      one: '1 секунда',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Розумний комутатор';

  @override
  String get deviceTypeLightSwitch => 'Вимикач світла';

  @override
  String get deviceTypeDimmer => 'Диммер';

  @override
  String get deviceTypeInsightPlug => 'Вилка Insight';

  @override
  String get deviceTypeMotionSensor => 'Датчик руху';

  @override
  String get deviceTypeMaker => 'Творець';

  @override
  String get deviceTypeBridge => 'Міст';

  @override
  String get deviceTypeCoffeeMaker => 'Кавоварка';

  @override
  String get deviceTypeCrockpot => 'Мультиварка';

  @override
  String get deviceTypeHumidifier => 'Зволожувач повітря';

  @override
  String get deviceTypeOutdoorPlug => 'Зовнішня вилка';

  @override
  String get deviceTypeUnknown => 'Невідомий пристрій';

  @override
  String get pairingStepGetStarted => 'Почніть роботу';

  @override
  String get pairingStepConnectToDevice => 'Підключитися до пристрою';

  @override
  String get pairingStepFindDevice => 'Знайти пристрій';

  @override
  String get pairingStepSelectNetwork => 'Виберіть Мережа';

  @override
  String get pairingStepConfiguring => 'Налаштування';

  @override
  String get pairingStepReconnect => 'Повторне підключення';

  @override
  String get pairingStepFinalizing => 'Доопрацювання';

  @override
  String get pairingStepSuccess => 'Успіх';

  @override
  String get pairingStepError => 'Помилка';

  @override
  String get homeToggleDebug => 'Перемкнути режим налагодження';

  @override
  String get homeRefreshDevices => 'Оновити пристрої';

  @override
  String get homeSettings => 'Налаштування';

  @override
  String get homeDismiss => 'Відхилити';

  @override
  String get homeDiscovering => 'Виявлення пристроїв...';

  @override
  String get homeNoDevices => 'Пристроїв не знайдено';

  @override
  String get homeScanDevices => 'Пошук пристроїв';

  @override
  String get homeLookingForMore => 'Шукаю більше пристроїв...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Знайдено пристрої $count',
      one: 'Знайдено 1 пристрій',
      zero: 'Пристроїв не знайдено',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Знайдено пристрої $count, сканування...',
      one: 'Знайдено 1 пристрій, сканування...',
      zero: 'Пристроїв не знайдено, сканування...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Авто';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Підключено до WiFi';

  @override
  String get homePermissionExplanation =>
      'Інформація про місцезнаходження використовується для пошуку деталей Wi-Fi. Доступ до локальної мережі дозволяє вам керувати своїми смарт-комутаторами та пристроями.';

  @override
  String get homeDebugLog => 'Журнал налагодження';

  @override
  String get homeClear => 'ясно';

  @override
  String get homeDebugEmpty =>
      'Торкніться оновити, щоб почати пошук і переглянути журнали...';

  @override
  String get homeProbeHint => 'IP:Порт (наприклад, 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Зонд';

  @override
  String get homeScanning => 'Сканування...';

  @override
  String get homeScanSubnet => 'Сканувати всю підмережу (виправлення iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Платформа: $platform $version';
  }

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get settingsSectionNetwork => 'Мережа';

  @override
  String get settingsSectionDeviceSetup => 'Налаштування пристрою';

  @override
  String get settingsSectionDiscovery => 'Відкриття';

  @override
  String get settingsSectionAbout => 'про';

  @override
  String get settingsSectionDebug => 'Налагодження';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Дозвіл надано! Назва WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Розташування надано, але також потрібен дозвіл локальної мережі. Перевірте налаштування.';

  @override
  String get settingsLocationRequired => 'Потрібен дозвіл на місцезнаходження';

  @override
  String get settingsLocationRequiredBody =>
      'Для відображення вашого мережевого імені WiFi iOS потрібен дозвіл на доступ до місцезнаходження.';

  @override
  String get settingsRequiredPermissions => 'Необхідні дозволи:';

  @override
  String get settingsPermissionList =>
      '1. Служби визначення місцезнаходження («Під час використання програми»)\n2. Локальна мережа';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Примітка. Виявлення пристрою працює без дозволу на місцезнаходження. Цей дозвіл використовується лише для відображення вашого мережевого імені WiFi.';

  @override
  String get settingsEnableLocation =>
      'Увімкніть місцезнаходження в налаштуваннях';

  @override
  String get settingsLocationDeniedBody =>
      'У дозволі на місцезнаходження відмовлено. Ви можете ввімкнути його в налаштуваннях системи.';

  @override
  String get settingsStepsToEnable => 'Кроки для ввімкнення:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Відкрийте Налаштування\n2. Перейдіть до \"Bit Switch\"\n3. Натисніть «Місцезнаходження»\n4. Виберіть «Під час використання програми»\n5. Поверніться до цієї програми та натисніть кнопку оновлення';

  @override
  String get settingsLocationOnlyWifiName =>
      'Примітка. Дозвіл на місцезнаходження потрібен лише для відображення імені WiFi. Виявлення пристрою працює без нього.';

  @override
  String get settingsAdditionalPermission => 'Потрібен додатковий дозвіл';

  @override
  String get settingsLocalNetworkBody =>
      'Для виявлення та керування пристроями Wemo потрібен дозвіл локальної мережі.';

  @override
  String get settingsWifiNameNotVisible =>
      'У вас є дозвіл на визначення місцезнаходження, але ім’я WiFi ще не відображається.';

  @override
  String get settingsPleaseEnable => 'Будь ласка, увімкніть:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Перейдіть до налаштувань iPhone\n2. Прокрутіть вниз до \"Bit Switch\"\n3. Увімкніть «Локальна мережа»';

  @override
  String get settingsLocalNetworkIosReason =>
      'Дозвіл локальної мережі потрібен як для виявлення пристрою, так і для доступу до імені WiFi на iOS.';

  @override
  String get settingsPairNewDevice => 'Створити пару з новим пристроєм';

  @override
  String get settingsPairNewDeviceSubtitle => 'Налаштуйте новий пристрій Wemo';

  @override
  String get settingsDiscoveryTimeout => 'Тайм-аут виявлення';

  @override
  String get settingsRequestTimeout => 'Час очікування запиту';

  @override
  String get settingsAutoRefresh => 'Автооновлення';

  @override
  String get settingsAutoRefreshOn =>
      'Увімк. – стани пристрою оновлюються автоматично';

  @override
  String get settingsAutoRefreshOff =>
      'Вимк. – використовувати кнопку оновлення вручну';

  @override
  String get settingsAutoRefreshInterval => 'Інтервал автооновлення';

  @override
  String get settingsAbout => 'Про Bit Switch';

  @override
  String get settingsVersion => 'Версія';

  @override
  String get settingsNetworkDiagnostics => 'Діагностика мережі';

  @override
  String get settingsShowDebug => 'Показати режим налагодження';

  @override
  String get settingsShowDebugSubtitle =>
      'Показувати елементи керування налагодженням і діагностику мережі на головному екрані';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Показати піктограму налагодження на головному екрані для вирішення проблем';

  @override
  String get settingsCurrentNetwork => 'Поточна мережа';

  @override
  String get settingsNetworkAccessStatus => 'Статус доступу до мережі';

  @override
  String get settingsNetworkAccessGranted => 'Є доступ до локальної мережі';

  @override
  String get settingsNetworkAccessMissing =>
      'Можуть знадобитися додаткові дозволи';

  @override
  String get settingsChecking => 'Перевірка...';

  @override
  String get settingsEnableLocalNetwork =>
      'Увімкніть локальну мережу в налаштуваннях';

  @override
  String get settingsNotConnectedWifi => 'Не підключено до WiFi';

  @override
  String get settingsPermissionRequiredView => 'Для перегляду потрібен дозвіл';

  @override
  String get settingsAllPermissionsGranted => 'Усі дозволи надано';

  @override
  String get settingsLocalNetworkNeeded => 'Потрібен дозвіл локальної мережі';

  @override
  String get settingsLocationNeeded => 'Потрібен дозвіл на місцезнаходження';

  @override
  String get settingsRefreshPermissions => 'Оновити дозволи';

  @override
  String get settingsAboutWifiPermission => 'Про дозвіл імені WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Ваше ім’я WiFi допомагає підтвердити, що ваш телефон і пристрої Wemo знаходяться в одній мережі.';

  @override
  String get settingsWifiPermissionIos =>
      'В iOS для відображення вашого мережевого імені WiFi потрібен дозвіл на визначення місцезнаходження.';

  @override
  String get settingsImportant => 'Важливо:';

  @override
  String get settingsPrivacyNote =>
      '• Ваше місцезнаходження ніколи не відстежується\n• Дані про місцезнаходження не збираються та не зберігаються';

  @override
  String get settingsWifiPermissionImportant =>
      '• Виявлення пристрою працює БЕЗ цього дозволу\n• Це потрібно лише для відображення імені WiFi\n• Дані про місцезнаходження не збираються та не зберігаються';

  @override
  String get settingsGrantPermission => 'Надати дозвіл';

  @override
  String get settingsHowLongScan => 'Як довго сканувати пристрої:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Час очікування виявлення встановлено на $seconds секунд';
  }

  @override
  String get settingsHowLongResponses => 'Як довго чекати відповіді пристрою:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Збільште це значення, якщо ви бачите помилку «З’єднання закрито».';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Час очікування запиту встановлено на $seconds секунд';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Встановіть інтервал для автоматичного оновлення стану:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Інтервал оновлення встановлено на $seconds секунд';
  }

  @override
  String get settingsAboutTagline =>
      'Чистий приватний локальний контролер для ваших пристроїв Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch використовує виявлення локальної мережі для пошуку та керування пристроями без залежності від хмари.';

  @override
  String get settingsVersionValue => 'Версія 1.0.1';

  @override
  String get settingsProtocol => 'Протокол: SSDP/UPnP';

  @override
  String get settingsMulticastAddress => 'Групова адреса: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Порти пристрою: 49152-49159';

  @override
  String get settingsControlProtocol => 'Протокол керування: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Порада: переконайтеся, що ваш пристрій у тій самій мережі, що й ваші пристрої Wemo, і що багатоадресна передача UDP не заблокована.';

  @override
  String get settingsDevicePaired =>
      'Пристрій підключено! Оновлення списку пристроїв...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds секунд на запит';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Оновлюється кожні ${seconds}s';
  }

  @override
  String get pairingTitle => 'Створити пару з новим пристроєм';

  @override
  String get pairingSetupTitle => 'Налаштуйте свій пристрій Wemo';

  @override
  String get pairingBeforeBegin =>
      'Перш ніж почати, переконайтеся, що ваш пристрій Wemo знаходиться в режимі налаштування:';

  @override
  String get pairingPlugInTitle => 'Підключіть пристрій Wemo';

  @override
  String get pairingPlugInBody =>
      'Підключіть його до джерела живлення та дочекайтеся запуску.';

  @override
  String get pairingBlinkingLedTitle => 'Знайдіть блимаючий світлодіод';

  @override
  String get pairingBlinkingLedBody =>
      'Блимаючий світлодіод означає, що пристрій перебуває в режимі налаштування.';

  @override
  String get pairingCheckWifiTitle => 'Перевірте наявність мережі WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Пристрій транслюватиме мережу під назвою \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Якщо світлодіод горить постійно, утримуйте кнопку скидання протягом 5 секунд, щоб увійти в режим налаштування.';

  @override
  String get pairingStart => 'Почати створення пари';

  @override
  String get pairingConnectWifiTitle => 'Підключіться до пристрою WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Відкрийте налаштування телефону WiFi і підключіться до мережі, яка починається на \"WeMo\".';

  @override
  String get pairingCurrentNetwork => 'Поточна мережа';

  @override
  String get pairingConnectedToDevice => 'Підключено до пристрою Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Відкрийте налаштування WiFi';

  @override
  String get pairingConnectedButton => 'Я підключився';

  @override
  String get pairingLookingForDevice => 'Шукаєте свій пристрій Wemo...';

  @override
  String get pairingManualIpPrompt => 'Або введіть пристрій IP вручну:';

  @override
  String get pairingDeviceIp => 'Адреса пристрою IP';

  @override
  String get pairingConnectToIp => 'Підключіться до IP';

  @override
  String get pairingSelectHomeWifi => 'Виберіть домашню мережу WiFi:';

  @override
  String get pairingRefreshNetworks => 'Оновити мережі';

  @override
  String get pairingIosScanLimitation =>
      'iOS суворо забороняє стороннім програмам сканувати найближчі мережі Wi-Fi. Можливо, вам доведеться ввести мережу SSID вручну.';

  @override
  String get pairingNoNetworks => 'Мереж не знайдено';

  @override
  String get pairingScanAgain => 'Сканувати ще раз';

  @override
  String get pairingWifiPassword => 'Пароль WiFi';

  @override
  String get pairingConnect => 'Підключитися';

  @override
  String get pairingEnterNetworkManually => 'Введіть мережу вручну';

  @override
  String get pairingEnterNetworkName => 'Введіть назву мережі:';

  @override
  String get pairingNetworkName => 'Назва мережі (SSID)';

  @override
  String get pairingUseNetwork => 'Використовуйте цю мережу';

  @override
  String get pairingConfiguringDevice => 'Налаштування пристрою...';

  @override
  String get pairingConfiguringWait =>
      'Зачекайте, поки пристрій під’єднається до вашої мережі.';

  @override
  String get pairingReconnectTitle => 'Повторно підключіться до мережі';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Зараз ваш пристрій Wemo підключається до \"$ssid\". Повторно підключіть телефон до тієї ж мережі.';
  }

  @override
  String get pairingBackOnHome => 'Знову в домашній мережі!';

  @override
  String get pairingReconnectedButton => 'Я знову підключився';

  @override
  String get pairingFinalizingSetup => 'Завершення налаштування...';

  @override
  String get pairingSetupComplete => 'Налаштування завершено!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Підключено до $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Тепер ваш пристрій налаштовано та з’явиться на головному екрані.';

  @override
  String get pairingSomethingWrong => 'Щось пішло не так';

  @override
  String get pairingStartOver => 'Почніть спочатку';

  @override
  String get pairingErrorOpenWifi =>
      'Не вдалося відкрити налаштування WiFi. Відкрийте їх вручну.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Ваш телефон все ще підключений до \"$ssid\". Відкрийте налаштування WiFi, підключіться до мережі пристрою WeMo і повторіть спробу.';
  }

  @override
  String get pairingLoadingLooking => 'Шукаю пристрій...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Не вдалося знайти пристрій WeMo на $ip. Переконайтеся, що ваш телефон підключено до мережі WeMo WiFi, а потім повторіть спробу. Ви також можете ввести пристрій IP вручну.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Помилка виявлення пристрою: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Підключення до $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'У $ip не знайдено жодного пристрою';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Помилка підключення до $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Пошук мереж...';

  @override
  String pairingErrorScanning(String error) {
    return 'Не вдалося сканувати мережі: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Виберіть мережу та введіть пароль.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Надсилання мережевих облікових даних...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Очікування підключення пристрою...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Не вдалося налаштувати мережу: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Пароль занадто короткий. Перевірте та повторіть спробу.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Не вдалося підключитися. Будь ласка, перевірте пароль.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Час очікування підключення минув. Спробуйте ще раз.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Помилка завершення налаштування: $error';
  }

  @override
  String get detailRefreshState => 'Оновити стан';

  @override
  String get detailDeviceInfo => 'Інформація про пристрій';

  @override
  String get detailAdvanced => 'Просунутий';

  @override
  String get detailWifiSetup => 'Налаштування WiFi';

  @override
  String get detailReset => 'Скинути';

  @override
  String get detailUnreachable =>
      'Пристрій недоступний. Перевірте підключення до мережі.';

  @override
  String detailFailedToggle(String error) {
    return 'Не вдалося перемкнути: $error';
  }

  @override
  String get detailDeviceInformation => 'Інформація про пристрій';

  @override
  String get detailPermissionScan =>
      'Для сканування мереж WiFi потрібен дозвіл.';

  @override
  String get detailScanFailedManual =>
      'Не вдалося сканувати мережі. Введіть назву мережі вручну.';

  @override
  String get detailEnterNetworkNameError => 'Введіть або виберіть назву мережі';

  @override
  String get detailEnterPasswordError => 'Будь ласка, введіть мережевий пароль';

  @override
  String get detailWifiSuccess => 'WiFi налаштовано успішно!';

  @override
  String get detailScanNetworks => 'Пошук мереж';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Налаштувати мережу WiFi для \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Доступні мережі';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS суворо забороняє стороннім програмам сканувати найближчі мережі Wi-Fi. Введіть назву мережі вручну нижче.';

  @override
  String get detailTapRefreshScan => 'Торкніться оновити, щоб сканувати мережі';

  @override
  String get detailEnterNetworkBelow => 'Введіть назву вашої мережі нижче';

  @override
  String get detailNetworkCredentials => 'Облікові дані мережі';

  @override
  String get detailConnecting => 'Підключення до мережі...';

  @override
  String get detailConnected => 'Підключено успішно!';

  @override
  String get detailPasswordShort => 'Пароль занадто короткий';

  @override
  String get detailAuthenticationFailed =>
      'Помилка автентифікації - перевірте пароль';

  @override
  String get detailConnectionFailed => 'Помилка підключення';

  @override
  String get detailSelectReset => 'Виберіть, що потрібно скинути';

  @override
  String get detailResetSchedulesWarning =>
      '• Усі розклади та правила автоматизації буде видалено';

  @override
  String get detailResetWifiWarning => '• Налаштування WiFi буде стерто';

  @override
  String get detailSetupAgainWarning =>
      '• Вам потрібно буде знову налаштувати пристрій';

  @override
  String get detailUnreachableWarning =>
      '• Пристрій може стати тимчасово недоступним';

  @override
  String get detailConfirmReset => 'Підтвердьте Скидання';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Ви впевнені, що бажаєте скинути \"$device\"?';
  }

  @override
  String get detailThisWill => 'Це:';

  @override
  String get detailCannotUndo => 'Цю дію не можна скасувати.';

  @override
  String get detailYesReset => 'Так, скинути';

  @override
  String get detailResetSuccess => 'Успішне скидання пристрою';

  @override
  String get detailResetRemote => 'Пристрій буде скинуто дистанційно';

  @override
  String get detailResetFailed => 'Помилка скидання';

  @override
  String get detailFactoryReset => 'Скидання до заводських налаштувань';

  @override
  String get detailFactoryResetWarning =>
      'Це призведе до видалення ВСІ параметрів і відновлення заводських налаштувань пристрою. Вам потрібно буде знову налаштувати пристрій.\n\nЦю дію не можна скасувати.';

  @override
  String get detailFactoryResetInitiated =>
      'Розпочато скидання до заводських налаштувань';

  @override
  String get detailResetDevice => 'Скидання пристрою';

  @override
  String detailResetOptionsFor(String device) {
    return 'Параметри скидання для \"$device\"';
  }

  @override
  String get detailResetUserData => 'Скидання даних користувача';

  @override
  String get detailResetUserDataSubtitle => 'Очищає графіки та правила';

  @override
  String get detailResetWifi => 'Скинути налаштування WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Пристрій потрібно буде налаштувати знову';

  @override
  String get widgetBrightness => 'Яскравість';

  @override
  String get widgetEnergyStatistics => 'Енергетична статистика';

  @override
  String get widgetCurrentPower => 'Поточна потужність';

  @override
  String get widgetToday => 'Сьогодні';

  @override
  String get widgetTotal => 'Всього';

  @override
  String get widgetOnTimeToday => 'Сьогодні вчасно';

  @override
  String get widgetTotalOnTime => 'Загальний час виконання';

  @override
  String get widgetStandby => 'Режим очікування';

  @override
  String get widgetUnknown => 'Невідомий';

  @override
  String get widgetOpenNetwork => 'Відкрита мережа';

  @override
  String get widgetWepInsecure => 'WEP (незахищений)';
}
