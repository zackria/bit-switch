// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Устройство не поддерживает это действие.';

  @override
  String get errInvalidArgs =>
      'На устройство отправлены недопустимые аргументы.';

  @override
  String get errActionFailed =>
      'Устройство не смогло выполнить запрошенное действие.';

  @override
  String get errInvalidValue => 'Было указано недопустимое значение.';

  @override
  String get errValueOutOfRange =>
      'Значение выходит за пределы допустимого диапазона.';

  @override
  String get errFeatureNotAvailable =>
      'Эта функция недоступна на этом устройстве.';

  @override
  String get errOutOfMemory =>
      'На устройстве недостаточно памяти. Повторите попытку позже.';

  @override
  String get errManualActionRequired =>
      'На устройстве требуется действие вручную.';

  @override
  String get errActionNotAuthorized => 'Это действие не разрешено.';

  @override
  String get errUnexpected =>
      'Произошла непредвиденная ошибка. Пожалуйста, попробуйте еще раз.';

  @override
  String get errDeviceUnreachableOffline =>
      'Не удалось связаться с устройством. Возможно, он находится в автономном режиме или в другой сети.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Тайм-аут запроса истек после попыток $attempts. Возможно, устройство отключено от сети.';
  }

  @override
  String get errRequestTimedOut =>
      'Время запроса истекло. Возможно, устройство отключено от сети.';

  @override
  String get errNoRouteToHost =>
      'Невозможно связаться с устройством. Пожалуйста, проверьте соединение WiFi.';

  @override
  String get errHostUnreachable =>
      'Устройство недоступно. Убедитесь, что он включен и подключен к WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Невозможно связаться с устройством после попытки $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Ошибка сети: невозможно связаться с устройством.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Это действие не разрешено на устройстве.';

  @override
  String get errDeviceServiceNotFound =>
      'Служба устройства не найдена. Возможно, устройству потребуется обновление прошивки.';

  @override
  String get errDeviceEncounteredError =>
      'На устройстве произошла ошибка при обработке запроса.';

  @override
  String get errDeviceInternalError => 'Устройство вернуло внутреннюю ошибку.';

  @override
  String get errDeviceTempUnavailable =>
      'Устройство временно недоступно. Пожалуйста, попробуйте еще раз.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Устройство вернуло ошибку (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Не удалось выполнить $action на устройстве.';
  }

  @override
  String get errDeviceReturnedError => 'Устройство вернуло ошибку.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Время ожидания операции $operation истекло. Пожалуйста, попробуйте еще раз.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Тайм-аут операции истек через $seconds секунд.';
  }

  @override
  String get errOperationTimedOut =>
      'Время операции истекло. Пожалуйста, попробуйте еще раз.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Пожалуйста, включите разрешение локальной сети в настройках, чтобы найти устройства.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Невозможно получить доступ к локальной сети. Пожалуйста, включите разрешение локальной сети в настройках.';

  @override
  String get errCheckWifiConnection =>
      'Невозможно обнаружить устройства. Пожалуйста, проверьте соединение WiFi.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Открытие прервано. Обнаружены устройства $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Устройства не найдены. Убедитесь, что устройства включены и подключены к вашей сети.';

  @override
  String get actionGetDeviceState => 'получить состояние устройства';

  @override
  String get actionSetDeviceState => 'установить состояние устройства';

  @override
  String get actionGetEnergyData => 'получить данные об энергии';

  @override
  String get actionScanNetworks => 'сканировать сети';

  @override
  String get actionConnectWifi => 'подключиться к WiFi';

  @override
  String get actionCheckConnection => 'проверить статус соединения';

  @override
  String get actionResetDevice => 'сбросить устройство';

  @override
  String get actionPerform => 'выполнить действие';

  @override
  String get suggestTryRefreshing =>
      'Попробуйте обновить список устройств или проверьте, отвечает ли устройство.';

  @override
  String get suggestEnsurePoweredOn =>
      'Убедитесь, что устройство включено и подключено к сети WiFi.';

  @override
  String get suggestMakeSureSameWifi =>
      'Убедитесь, что ваш телефон подключен к той же сети WiFi, что и ваши устройства.';

  @override
  String get suggestCheckPhysical =>
      'Проверьте физическое устройство на наличие кнопок или переключателей, требующих внимания.';

  @override
  String get suggestWaitAndTry => 'Подождите немного и повторите попытку.';

  @override
  String get suggestDeviceBusy =>
      'Возможно, устройство занято. Повторите попытку через несколько секунд.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Отмена';

  @override
  String get commonClose => 'Закрыть';

  @override
  String get commonDone => 'Готово';

  @override
  String get commonLater => 'Позже';

  @override
  String get commonRefresh => 'Обновить';

  @override
  String get commonTryAgain => 'Попробуйте еще раз';

  @override
  String get commonOpenSettings => 'Открыть настройки';

  @override
  String get commonGrant => 'Грант';

  @override
  String get commonFix => 'Исправить';

  @override
  String get commonOn => 'Вкл.';

  @override
  String get commonOff => 'Выкл.';

  @override
  String get commonOffline => 'Оффлайн';

  @override
  String get commonStatus => 'Статус';

  @override
  String get commonName => 'Имя';

  @override
  String get commonType => 'Тип';

  @override
  String get commonModel => 'Модель';

  @override
  String get commonManufacturer => 'Производитель';

  @override
  String get commonSerial => 'Серийный';

  @override
  String get commonFirmware => 'Прошивка';

  @override
  String get commonHost => 'Хост';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Пароль';

  @override
  String get commonUnknownWifi => 'Неизвестно Wi-Fi';

  @override
  String get commonNotConnected => 'Не подключено';

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
  String get deviceTypeSmartSwitch => 'Умный переключатель';

  @override
  String get deviceTypeLightSwitch => 'Выключатель света';

  @override
  String get deviceTypeDimmer => 'Диммер';

  @override
  String get deviceTypeInsightPlug => 'Прозрачная вилка';

  @override
  String get deviceTypeMotionSensor => 'Датчик движения';

  @override
  String get deviceTypeMaker => 'Создатель';

  @override
  String get deviceTypeBridge => 'Мост';

  @override
  String get deviceTypeCoffeeMaker => 'Кофеварка';

  @override
  String get deviceTypeCrockpot => 'Мультиварка';

  @override
  String get deviceTypeHumidifier => 'Увлажнитель';

  @override
  String get deviceTypeOutdoorPlug => 'Наружная вилка';

  @override
  String get deviceTypeUnknown => 'Неизвестное устройство';

  @override
  String get pairingStepGetStarted => 'Начать';

  @override
  String get pairingStepConnectToDevice => 'Подключиться к устройству';

  @override
  String get pairingStepFindDevice => 'Найти устройство';

  @override
  String get pairingStepSelectNetwork => 'Выберите сеть';

  @override
  String get pairingStepConfiguring => 'Настройка';

  @override
  String get pairingStepReconnect => 'Восстановить соединение';

  @override
  String get pairingStepFinalizing => 'Завершение';

  @override
  String get pairingStepSuccess => 'Успех';

  @override
  String get pairingStepError => 'Ошибка';

  @override
  String get homeToggleDebug => 'Переключить режим отладки';

  @override
  String get homeRefreshDevices => 'Обновить устройства';

  @override
  String get homeSettings => 'Настройки';

  @override
  String get homeDismiss => 'Уволить';

  @override
  String get homeDiscovering => 'Обнаружение устройств...';

  @override
  String get homeNoDevices => 'Устройства не найдены';

  @override
  String get homeScanDevices => 'Сканировать устройства';

  @override
  String get homeLookingForMore => 'Ищем больше устройств...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Обнаружены устройства $count',
      one: 'Найдено 1 устройство',
      zero: 'Устройства не найдены',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Обнаружены устройства $count, сканирование...',
      one: 'Найдено 1 устройство, сканирование...',
      zero: 'Устройства не найдены, сканирование...',
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
  String get homeConnectedWifi => 'Подключен к WiFi.';

  @override
  String get homePermissionExplanation =>
      'Информация о местоположении используется для поиска деталей вашего Wi-Fi. Доступ к локальной сети позволяет вам управлять своими интеллектуальными коммутаторами и устройствами.';

  @override
  String get homeDebugLog => 'Журнал отладки';

  @override
  String get homeClear => 'Очистить';

  @override
  String get homeDebugEmpty =>
      'Нажмите «Обновить», чтобы начать обнаружение и просмотреть журналы...';

  @override
  String get homeProbeHint => 'IP:Порт (например, 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Зонд';

  @override
  String get homeScanning => 'Сканирование...';

  @override
  String get homeScanSubnet => 'Сканировать всю подсеть (исправление iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Платформа: $platform $version';
  }

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsSectionNetwork => 'Сеть';

  @override
  String get settingsSectionDeviceSetup => 'Настройка устройства';

  @override
  String get settingsSectionDiscovery => 'Открытие';

  @override
  String get settingsSectionAbout => 'О';

  @override
  String get settingsSectionDebug => 'Отладка';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Разрешение получено! Имя WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Местоположение предоставлено, но также необходимо разрешение локальной сети. Проверьте настройки.';

  @override
  String get settingsLocationRequired =>
      'Требуется разрешение на определение местоположения';

  @override
  String get settingsLocationRequiredBody =>
      'Чтобы отобразить сетевое имя WiFi, iOS требуется разрешение на определение местоположения.';

  @override
  String get settingsRequiredPermissions => 'Требуемые разрешения:';

  @override
  String get settingsPermissionList =>
      '1. Службы определения местоположения («При использовании приложения»)\n2. Локальная сеть';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Примечание. Обнаружение устройств работает без разрешения на определение местоположения. Это разрешение используется только для отображения вашего сетевого имени WiFi.';

  @override
  String get settingsEnableLocation => 'Включить местоположение в настройках';

  @override
  String get settingsLocationDeniedBody =>
      'В разрешении на размещение было отказано. Вы можете включить его в настройках системы.';

  @override
  String get settingsStepsToEnable => 'Шаги для включения:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Откройте настройки\n2. Прокрутите до «Bit Switch».\n3. Нажмите «Местоположение».\n4. Выберите «При использовании приложения».\n5. Вернитесь в это приложение и нажмите кнопку обновления.';

  @override
  String get settingsLocationOnlyWifiName =>
      'Примечание. Разрешение на определение местоположения необходимо только для отображения имени WiFi. Обнаружение устройств работает и без него.';

  @override
  String get settingsAdditionalPermission =>
      'Требуется дополнительное разрешение';

  @override
  String get settingsLocalNetworkBody =>
      'Для обнаружения устройств Wemo и управления ими требуется разрешение локальной сети.';

  @override
  String get settingsWifiNameNotVisible =>
      'У вас есть разрешение на определение местоположения, но имя WiFi пока не отображается.';

  @override
  String get settingsPleaseEnable => 'Пожалуйста, включите:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Зайдите в настройки iPhone.\n2. Прокрутите вниз до «Bit Switch».\n3. Включите «Локальную сеть».';

  @override
  String get settingsLocalNetworkIosReason =>
      'Разрешение локальной сети требуется как для обнаружения устройства, так и для доступа к имени WiFi на iOS.';

  @override
  String get settingsPairNewDevice => 'Подключить новое устройство';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'Настройте новое устройство Wemo.';

  @override
  String get settingsDiscoveryTimeout => 'Тайм-аут обнаружения';

  @override
  String get settingsRequestTimeout => 'Тайм-аут запроса';

  @override
  String get settingsAutoRefresh => 'Автообновление';

  @override
  String get settingsAutoRefreshOn =>
      'Вкл. — состояния устройства обновляются автоматически.';

  @override
  String get settingsAutoRefreshOff =>
      'Выкл. – использовать кнопку обновления вручную.';

  @override
  String get settingsAutoRefreshInterval =>
      'Интервал автоматического обновления';

  @override
  String get settingsAbout => 'О Bit Switch';

  @override
  String get settingsVersion => 'Версия';

  @override
  String get settingsNetworkDiagnostics => 'Диагностика сети';

  @override
  String get settingsShowDebug => 'Показать режим отладки';

  @override
  String get settingsShowDebugSubtitle =>
      'Показывать элементы управления отладкой и диагностику сети на главном экране.';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Показывать значок отладки на главном экране для устранения неполадок.';

  @override
  String get settingsCurrentNetwork => 'Текущая сеть';

  @override
  String get settingsNetworkAccessStatus => 'Статус доступа к сети';

  @override
  String get settingsNetworkAccessGranted => 'Доступ к локальной сети имеется.';

  @override
  String get settingsNetworkAccessMissing =>
      'Могут потребоваться дополнительные разрешения';

  @override
  String get settingsChecking => 'Проверка...';

  @override
  String get settingsEnableLocalNetwork =>
      'Включить локальную сеть в настройках';

  @override
  String get settingsNotConnectedWifi => 'Не подключен к WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Требуется разрешение для просмотра';

  @override
  String get settingsAllPermissionsGranted => 'Все разрешения предоставлены';

  @override
  String get settingsLocalNetworkNeeded =>
      'Требуется разрешение локальной сети';

  @override
  String get settingsLocationNeeded =>
      'Требуется разрешение на определение местоположения';

  @override
  String get settingsRefreshPermissions => 'Обновить разрешения';

  @override
  String get settingsAboutWifiPermission => 'О разрешении имени WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Ваше имя WiFi помогает подтвердить, что ваш телефон и устройства Wemo находятся в одной сети.';

  @override
  String get settingsWifiPermissionIos =>
      'В iOS для отображения сетевого имени WiFi требуется разрешение на определение местоположения.';

  @override
  String get settingsImportant => 'Важно:';

  @override
  String get settingsPrivacyNote =>
      '• Ваше местоположение никогда не отслеживается.\n• Данные о местоположении не собираются и не сохраняются.';

  @override
  String get settingsWifiPermissionImportant =>
      '• Обнаружение устройств работает БЕЗ этого разрешения.\n• Это необходимо только для отображения имени WiFi.\n• Данные о местоположении не собираются и не сохраняются.';

  @override
  String get settingsGrantPermission => 'Предоставить разрешение';

  @override
  String get settingsHowLongScan => 'Как долго сканировать устройства:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Таймаут обнаружения установлен на $seconds секунд.';
  }

  @override
  String get settingsHowLongResponses => 'Как долго ждать ответа устройства:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Увеличьте это значение, если вы видите ошибки «Соединение закрыто».';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Таймаут запроса установлен на $seconds секунд.';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Установите интервал автоматического обновления состояния:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Интервал обновления установлен на $seconds секунд.';
  }

  @override
  String get settingsAboutTagline =>
      'Чистый частный локальный контроллер для ваших устройств Wemo.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch использует обнаружение локальной сети для поиска и управления устройствами без зависимости от облака.';

  @override
  String get settingsVersionValue => 'Версия 1.0.1';

  @override
  String get settingsProtocol => 'Протокол: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Многоадресный адрес: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Порты устройства: 49152-49159';

  @override
  String get settingsControlProtocol => 'Протокол управления: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Совет. Убедитесь, что ваше устройство находится в той же сети, что и устройства Wemo, и что многоадресная рассылка UDP не заблокирована.';

  @override
  String get settingsDevicePaired =>
      'Устройство сопряжено! Обновление списка устройств...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds секунд на запрос';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Обновление каждого $seconds';
  }

  @override
  String get pairingTitle => 'Подключить новое устройство';

  @override
  String get pairingSetupTitle => 'Настройте свое устройство Wemo';

  @override
  String get pairingBeforeBegin =>
      'Прежде чем начать, убедитесь, что ваше устройство Wemo находится в режиме настройки:';

  @override
  String get pairingPlugInTitle => 'Подключите устройство Wemo';

  @override
  String get pairingPlugInBody =>
      'Подключите его к питанию и подождите, пока он запустится.';

  @override
  String get pairingBlinkingLedTitle => 'Ищите мигающий светодиод';

  @override
  String get pairingBlinkingLedBody =>
      'Мигающий светодиод указывает на то, что устройство находится в режиме настройки.';

  @override
  String get pairingCheckWifiTitle => 'Проверьте сеть WiFi.';

  @override
  String get pairingCheckWifiBody =>
      'Устройство будет транслировать сеть под названием «WeMo.XXXXX».';

  @override
  String get pairingSolidLedHint =>
      'Если светодиод горит, удерживайте кнопку сброса в течение 5 секунд, чтобы войти в режим настройки.';

  @override
  String get pairingStart => 'Начать сопряжение';

  @override
  String get pairingConnectWifiTitle => 'Подключиться к устройству WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Откройте настройки WiFi вашего телефона и подключитесь к сети, название которой начинается с «WeMo».';

  @override
  String get pairingCurrentNetwork => 'Текущая сеть';

  @override
  String get pairingConnectedToDevice => 'Подключен к устройству Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Откройте настройки WiFi.';

  @override
  String get pairingConnectedButton => 'Я подключился';

  @override
  String get pairingLookingForDevice => 'Ищете свое устройство Wemo...';

  @override
  String get pairingManualIpPrompt => 'Или введите устройство IP вручную:';

  @override
  String get pairingDeviceIp => 'Адрес устройства IP';

  @override
  String get pairingConnectToIp => 'Подключиться к IP';

  @override
  String get pairingSelectHomeWifi => 'Выберите домашнюю сеть WiFi:';

  @override
  String get pairingRefreshNetworks => 'Обновить сети';

  @override
  String get pairingIosScanLimitation =>
      'iOS строго запрещает сторонним приложениям сканировать близлежащие сети Wi-Fi. Возможно, вам придется войти в сеть SSID вручную.';

  @override
  String get pairingNoNetworks => 'Сети не найдены';

  @override
  String get pairingScanAgain => 'Сканировать еще раз';

  @override
  String get pairingWifiPassword => 'WiFi Пароль';

  @override
  String get pairingConnect => 'Подключиться';

  @override
  String get pairingEnterNetworkManually => 'Введите сеть вручную';

  @override
  String get pairingEnterNetworkName => 'Введите имя сети:';

  @override
  String get pairingNetworkName => 'Сетевое имя (SSID)';

  @override
  String get pairingUseNetwork => 'Используйте эту сеть';

  @override
  String get pairingConfiguringDevice => 'Настройка устройства...';

  @override
  String get pairingConfiguringWait =>
      'Пожалуйста, подождите, пока устройство подключится к вашей сети.';

  @override
  String get pairingReconnectTitle => 'Повторно подключитесь к своей сети';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Ваше устройство Wemo теперь подключается к «$ssid». Пожалуйста, повторно подключите телефон к той же сети.';
  }

  @override
  String get pairingBackOnHome => 'Вернитесь в домашнюю сеть!';

  @override
  String get pairingReconnectedButton => 'Я восстановил соединение';

  @override
  String get pairingFinalizingSetup => 'Завершаем настройку...';

  @override
  String get pairingSetupComplete => 'Настройка завершена!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Подключен к $ssid.';
  }

  @override
  String get pairingDeviceReady =>
      'Теперь ваше устройство настроено и появится на главном экране.';

  @override
  String get pairingSomethingWrong => 'Что-то пошло не так';

  @override
  String get pairingStartOver => 'Начать сначала';

  @override
  String get pairingErrorOpenWifi =>
      'Не удалось открыть настройки WiFi. Пожалуйста, откройте их вручную.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Ваш телефон все еще подключен к «$ssid». Откройте настройки WiFi, подключитесь к сети устройства WeMo и повторите попытку.';
  }

  @override
  String get pairingLoadingLooking => 'Ищу устройство...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Не удалось найти устройство WeMo на $ip. Убедитесь, что ваш телефон подключен к сети WeMo WiFi, затем повторите попытку. Вы также можете ввести устройство IP вручную.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Ошибка обнаружения устройства: $error.';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Подключение к $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Устройство по адресу $ip не найдено.';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Ошибка подключения к $ip: $error.';
  }

  @override
  String get pairingLoadingScanning => 'Ищем сети...';

  @override
  String pairingErrorScanning(String error) {
    return 'Не удалось сканировать сети: $error.';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Пожалуйста, выберите сеть и введите пароль.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Отправка сетевых учетных данных...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Ожидание подключения устройства...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Не удалось настроить сеть: $error.';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Пароль слишком короткий. Пожалуйста, проверьте и попробуйте еще раз.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Не удалось подключиться. Пожалуйста, проверьте пароль.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Время подключения истекло. Пожалуйста, попробуйте еще раз.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Ошибка завершения настройки: $error.';
  }

  @override
  String get detailRefreshState => 'Обновить состояние';

  @override
  String get detailDeviceInfo => 'Информация об устройстве';

  @override
  String get detailAdvanced => 'Расширенный';

  @override
  String get detailWifiSetup => 'Настройка WiFi';

  @override
  String get detailReset => 'Сброс';

  @override
  String get detailUnreachable =>
      'Устройство недоступно. Проверьте сетевое соединение.';

  @override
  String detailFailedToggle(String error) {
    return 'Не удалось переключить: $error.';
  }

  @override
  String get detailDeviceInformation => 'Информация об устройстве';

  @override
  String get detailPermissionScan =>
      'Для сканирования сетей WiFi требуется разрешение.';

  @override
  String get detailScanFailedManual =>
      'Не удалось сканировать сети. Введите имя сети вручную.';

  @override
  String get detailEnterNetworkNameError =>
      'Пожалуйста, введите или выберите имя сети';

  @override
  String get detailEnterPasswordError => 'Пожалуйста, введите сетевой пароль';

  @override
  String get detailWifiSuccess => 'WiFi настроен успешно!';

  @override
  String get detailScanNetworks => 'Сканировать сети';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Настройте сеть WiFi для «$device».';
  }

  @override
  String get detailAvailableNetworks => 'Доступные сети';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS строго запрещает сторонним приложениям сканировать близлежащие сети Wi-Fi. Пожалуйста, введите имя вашей сети вручную ниже.';

  @override
  String get detailTapRefreshScan =>
      'Нажмите «Обновить», чтобы выполнить поиск сетей.';

  @override
  String get detailEnterNetworkBelow => 'Введите имя вашей сети ниже';

  @override
  String get detailNetworkCredentials => 'Сетевые учетные данные';

  @override
  String get detailConnecting => 'Подключение к сети...';

  @override
  String get detailConnected => 'Подключено успешно!';

  @override
  String get detailPasswordShort => 'Пароль слишком короткий';

  @override
  String get detailAuthenticationFailed =>
      'Ошибка аутентификации – проверьте пароль';

  @override
  String get detailConnectionFailed => 'Соединение не удалось';

  @override
  String get detailSelectReset => 'Пожалуйста, выберите, что сбросить';

  @override
  String get detailResetSchedulesWarning =>
      '• Все расписания и правила автоматизации будут удалены.';

  @override
  String get detailResetWifiWarning => '• Настройки WiFi будут удалены.';

  @override
  String get detailSetupAgainWarning =>
      '• Вам потребуется заново настроить устройство.';

  @override
  String get detailUnreachableWarning =>
      '• Устройство может стать временно недоступным.';

  @override
  String get detailConfirmReset => 'Подтвердить сброс';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Вы уверены, что хотите сбросить «$device»?';
  }

  @override
  String get detailThisWill => 'Это будет:';

  @override
  String get detailCannotUndo => 'Это действие невозможно отменить.';

  @override
  String get detailYesReset => 'Да, сброс';

  @override
  String get detailResetSuccess => 'Устройство успешно сброшено';

  @override
  String get detailResetRemote => 'Устройство будет перезагружено удаленно';

  @override
  String get detailResetFailed => 'Сбросить не удалось';

  @override
  String get detailFactoryReset => 'Сброс к заводским настройкам';

  @override
  String get detailFactoryResetWarning =>
      'Это сотрет ВСЕ настройки и восстановит заводские настройки устройства. Вам придется заново настроить устройство.\n\nЭто действие невозможно отменить.';

  @override
  String get detailFactoryResetInitiated =>
      'Сброс к заводским настройкам начат';

  @override
  String get detailResetDevice => 'Сбросить устройство';

  @override
  String detailResetOptionsFor(String device) {
    return 'Сбросить параметры для «$device»';
  }

  @override
  String get detailResetUserData => 'Сбросить данные пользователя';

  @override
  String get detailResetUserDataSubtitle => 'Очищает расписания и правила';

  @override
  String get detailResetWifi => 'Сброс настроек WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Устройство необходимо будет настроить заново';

  @override
  String get widgetBrightness => 'Яркость';

  @override
  String get widgetEnergyStatistics => 'Энергетическая статистика';

  @override
  String get widgetCurrentPower => 'Текущая мощность';

  @override
  String get widgetToday => 'Сегодня';

  @override
  String get widgetTotal => 'Итого';

  @override
  String get widgetOnTimeToday => 'Сегодня вовремя';

  @override
  String get widgetTotalOnTime => 'Общее время выполнения';

  @override
  String get widgetStandby => 'Режим ожидания';

  @override
  String get widgetUnknown => 'Неизвестно';

  @override
  String get widgetOpenNetwork => 'Открытая сеть';

  @override
  String get widgetWepInsecure => 'WEP (небезопасно)';
}
