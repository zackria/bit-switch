// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get errDeviceNotSupportAction => '장치가 이 작업을 지원하지 않습니다.';

  @override
  String get errInvalidArgs => '잘못된 인수가 장치로 전송되었습니다.';

  @override
  String get errActionFailed => '장치가 요청된 작업을 수행하지 못했습니다.';

  @override
  String get errInvalidValue => '잘못된 값이 제공되었습니다.';

  @override
  String get errValueOutOfRange => '값이 허용 가능한 범위를 벗어났습니다.';

  @override
  String get errFeatureNotAvailable => '이 장치에서는 이 기능을 사용할 수 없습니다.';

  @override
  String get errOutOfMemory => '장치에 메모리가 부족합니다. 나중에 다시 시도하세요.';

  @override
  String get errManualActionRequired => '장치에 대한 수동 작업이 필요합니다.';

  @override
  String get errActionNotAuthorized => '이 작업은 승인되지 않았습니다.';

  @override
  String get errUnexpected => '예상치 못한 오류가 발생했습니다. 다시 시도해 주세요.';

  @override
  String get errDeviceUnreachableOffline =>
      '장치에 연결할 수 없습니다. 오프라인이거나 다른 네트워크에 있을 수 있습니다.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts 시도 후 요청 시간이 초과되었습니다. 장치가 오프라인일 수 있습니다.';
  }

  @override
  String get errRequestTimedOut => '요청 시간이 초과되었습니다. 장치가 오프라인일 수 있습니다.';

  @override
  String get errNoRouteToHost => '장치에 연결할 수 없습니다. WiFi 연결을 확인하세요.';

  @override
  String get errHostUnreachable =>
      '장치에 연결할 수 없습니다. 전원이 켜져 있고 WiFi에 연결되어 있는지 확인하세요.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts 시도 후 장치와 통신할 수 없습니다.';
  }

  @override
  String get errNetworkErrorComm => '네트워크 오류: 장치와 통신할 수 없습니다.';

  @override
  String get errActionNotAuthorizedDevice => '이 작업은 장치에서 승인되지 않았습니다.';

  @override
  String get errDeviceServiceNotFound =>
      '장치 서비스를 찾을 수 없습니다. 장치에 펌웨어 업데이트가 필요할 수 있습니다.';

  @override
  String get errDeviceEncounteredError => '장치에서 요청을 처리하는 동안 오류가 발생했습니다.';

  @override
  String get errDeviceInternalError => '장치에서 내부 오류를 반환했습니다.';

  @override
  String get errDeviceTempUnavailable => '장치를 일시적으로 사용할 수 없습니다. 다시 시도해 주세요.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return '장치에서 오류(HTTP $code)를 반환했습니다.';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '장치에서 $action에 실패했습니다.';
  }

  @override
  String get errDeviceReturnedError => '장치에서 오류가 반환되었습니다.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation 작업 시간이 초과되었습니다. 다시 시도해 주세요.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds 초 후에 작업 시간이 초과되었습니다.';
  }

  @override
  String get errOperationTimedOut => '작업 시간이 초과되었습니다. 다시 시도해 주세요.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork => '기기를 찾으려면 설정에서 로컬 네트워크 권한을 활성화하세요.';

  @override
  String get errCannotAccessLocalNetwork =>
      '로컬 네트워크에 접속할 수 없습니다. 설정에서 로컬 네트워크 권한을 활성화하세요.';

  @override
  String get errCheckWifiConnection => '장치를 검색할 수 없습니다. WiFi 연결을 확인하세요.';

  @override
  String errDiscoveryInterrupted(int count) {
    return '검색이 중단되었습니다. $count 장치를 찾았습니다.';
  }

  @override
  String get errNoDevicesFound =>
      '기기를 찾을 수 없습니다. 장치의 전원이 켜져 있고 네트워크에 연결되어 있는지 확인하세요.';

  @override
  String get actionGetDeviceState => '장치 상태 가져오기';

  @override
  String get actionSetDeviceState => '장치 상태 설정';

  @override
  String get actionGetEnergyData => '에너지 데이터를 얻다';

  @override
  String get actionScanNetworks => '네트워크 검색';

  @override
  String get actionConnectWifi => 'WiFi에 연결';

  @override
  String get actionCheckConnection => '연결 상태 확인';

  @override
  String get actionResetDevice => '기기 재설정';

  @override
  String get actionPerform => '행동을 수행하다';

  @override
  String get suggestTryRefreshing => '장치 목록을 새로 고치거나 장치가 응답하는지 확인하세요.';

  @override
  String get suggestEnsurePoweredOn =>
      '장치의 전원이 켜져 있고 WiFi 네트워크에 연결되어 있는지 확인하세요.';

  @override
  String get suggestMakeSureSameWifi =>
      '휴대폰이 장치와 동일한 WiFi 네트워크에 연결되어 있는지 확인하세요.';

  @override
  String get suggestCheckPhysical => '주의가 필요한 버튼이나 스위치가 있는지 물리적 장치를 확인하세요.';

  @override
  String get suggestWaitAndTry => '잠시 기다렸다가 다시 시도해 보세요.';

  @override
  String get suggestDeviceBusy => '장치가 사용 중일 수 있습니다. 몇 초 후에 다시 시도해 보세요.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => '취소';

  @override
  String get commonClose => '닫기';

  @override
  String get commonDone => '완료';

  @override
  String get commonLater => '나중에';

  @override
  String get commonRefresh => '새로고침';

  @override
  String get commonTryAgain => '다시 시도';

  @override
  String get commonOpenSettings => '설정 열기';

  @override
  String get commonGrant => '그랜트';

  @override
  String get commonFix => '수정';

  @override
  String get commonOn => '켜짐';

  @override
  String get commonOff => '끄기';

  @override
  String get commonOffline => '오프라인';

  @override
  String get commonStatus => '상태';

  @override
  String get commonName => '이름';

  @override
  String get commonType => '유형';

  @override
  String get commonModel => '모델';

  @override
  String get commonManufacturer => '제조업체';

  @override
  String get commonSerial => '시리얼';

  @override
  String get commonFirmware => '펌웨어';

  @override
  String get commonHost => '호스트';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => '비밀번호';

  @override
  String get commonUnknownWifi => '알 수 없는 Wi-Fi';

  @override
  String get commonNotConnected => '연결되지 않음';

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
      other: '$seconds 초',
      one: '1초',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => '스마트 스위치';

  @override
  String get deviceTypeLightSwitch => '전등 스위치';

  @override
  String get deviceTypeDimmer => '조광기';

  @override
  String get deviceTypeInsightPlug => '통찰력 플러그';

  @override
  String get deviceTypeMotionSensor => '모션 센서';

  @override
  String get deviceTypeMaker => '메이커';

  @override
  String get deviceTypeBridge => '다리';

  @override
  String get deviceTypeCoffeeMaker => '커피 메이커';

  @override
  String get deviceTypeCrockpot => '도기 냄비';

  @override
  String get deviceTypeHumidifier => '가습기';

  @override
  String get deviceTypeOutdoorPlug => '실외 플러그';

  @override
  String get deviceTypeUnknown => '알 수 없는 장치';

  @override
  String get pairingStepGetStarted => '시작하기';

  @override
  String get pairingStepConnectToDevice => '장치에 연결';

  @override
  String get pairingStepFindDevice => '장치 찾기';

  @override
  String get pairingStepSelectNetwork => '네트워크 선택';

  @override
  String get pairingStepConfiguring => '구성';

  @override
  String get pairingStepReconnect => '다시 연결';

  @override
  String get pairingStepFinalizing => '마무리 중';

  @override
  String get pairingStepSuccess => '성공';

  @override
  String get pairingStepError => '오류';

  @override
  String get homeToggleDebug => '디버그 모드 전환';

  @override
  String get homeRefreshDevices => '장치 새로 고침';

  @override
  String get homeSettings => '설정';

  @override
  String get homeDismiss => '닫기';

  @override
  String get homeDiscovering => '기기 검색 중...';

  @override
  String get homeNoDevices => '기기를 찾을 수 없습니다.';

  @override
  String get homeScanDevices => '장치 검색';

  @override
  String get homeLookingForMore => '더 많은 장치를 찾고 있습니다...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 장치를 찾았습니다.',
      one: '기기 1개 발견됨',
      zero: '기기를 찾을 수 없습니다.',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 장치를 찾았습니다. 검색 중...',
      one: '기기 1개를 찾았습니다. 검색 중...',
      zero: '장치를 찾을 수 없습니다. 검색 중...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => '자동';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi에 연결됨';

  @override
  String get homePermissionExplanation =>
      '위치 정보는 Wi-Fi 세부 정보를 찾는 데 사용됩니다. 로컬 네트워크 액세스를 통해 스마트 스위치와 장치를 제어할 수 있습니다.';

  @override
  String get homeDebugLog => '디버그 로그';

  @override
  String get homeClear => '지우기';

  @override
  String get homeDebugEmpty => '검색을 시작하고 로그를 보려면 새로고침을 탭하세요.';

  @override
  String get homeProbeHint => 'IP:포트(예: 192.168.1.100:49153)';

  @override
  String get homeProbe => '프로브';

  @override
  String get homeScanning => '스캔 중...';

  @override
  String get homeScanSubnet => '전체 서브넷 스캔(iOS 수정)';

  @override
  String homePlatform(String platform, String version) {
    return '플랫폼: $platform $version';
  }

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsSectionNetwork => '네트워크';

  @override
  String get settingsSectionDeviceSetup => '장치 설정';

  @override
  String get settingsSectionDiscovery => '발견';

  @override
  String get settingsSectionAbout => '소개';

  @override
  String get settingsSectionDebug => '디버그';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return '허가가 부여되었습니다! WiFi 이름: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      '위치는 부여되지만 로컬 네트워크 권한도 필요합니다. 설정을 확인하세요.';

  @override
  String get settingsLocationRequired => '위치 권한 필요';

  @override
  String get settingsLocationRequiredBody =>
      'WiFi 네트워크 이름을 표시하려면 iOS에 위치 권한이 필요합니다.';

  @override
  String get settingsRequiredPermissions => '필수 권한:';

  @override
  String get settingsPermissionList => '1. 위치 서비스(\'앱 사용 중\')\n2. 로컬 네트워크';

  @override
  String get settingsDiscoveryWithoutLocation =>
      '참고: 장치 검색은 위치 권한 없이 작동됩니다. 이 권한은 WiFi 네트워크 이름을 표시하는 데에만 사용됩니다.';

  @override
  String get settingsEnableLocation => '설정에서 위치 활성화';

  @override
  String get settingsLocationDeniedBody =>
      '위치 권한이 거부되었습니다. 시스템 설정에서 활성화할 수 있습니다.';

  @override
  String get settingsStepsToEnable => '활성화 단계:';

  @override
  String get settingsEnableLocationSteps =>
      '1. 설정 열기\n2. \"Bit Switch\"로 스크롤합니다.\n3. \'위치\'를 탭하세요.\n4. \'앱 사용 중\'을 선택하세요.\n5. 이 앱으로 돌아와 새로고침 버튼을 탭하세요.';

  @override
  String get settingsLocationOnlyWifiName =>
      '참고: 위치 권한은 WiFi 이름을 표시하는 데에만 필요합니다. 장치 검색은 그것 없이도 작동합니다.';

  @override
  String get settingsAdditionalPermission => '추가 권한이 필요합니다';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo 장치를 검색하고 제어하려면 로컬 네트워크 권한이 필요합니다.';

  @override
  String get settingsWifiNameNotVisible => '위치 권한이 있지만 WiFi 이름이 아직 표시되지 않습니다.';

  @override
  String get settingsPleaseEnable => '활성화하십시오:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. 아이폰 설정으로 이동\n2. \"Bit Switch\"까지 아래로 스크롤합니다.\n3. \"로컬 네트워크\"를 활성화합니다';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS에서 장치 검색 및 WiFi 이름 액세스에는 로컬 네트워크 권한이 필요합니다.';

  @override
  String get settingsPairNewDevice => '새 장치 페어링';

  @override
  String get settingsPairNewDeviceSubtitle => '새로운 Wemo 장치 설정';

  @override
  String get settingsDiscoveryTimeout => '검색 시간 초과';

  @override
  String get settingsRequestTimeout => '요청 시간 초과';

  @override
  String get settingsAutoRefresh => '자동 새로고침';

  @override
  String get settingsAutoRefreshOn => '켜기 - 장치 상태가 자동으로 새로 고쳐집니다.';

  @override
  String get settingsAutoRefreshOff => '꺼짐 - 수동 새로 고침 버튼 사용';

  @override
  String get settingsAutoRefreshInterval => '자동 새로 고침 간격';

  @override
  String get settingsAbout => 'Bit Switch 소개';

  @override
  String get settingsVersion => '버전';

  @override
  String get settingsNetworkDiagnostics => '네트워크 진단';

  @override
  String get settingsShowDebug => '디버그 모드 표시';

  @override
  String get settingsShowDebugSubtitle => '홈 화면에 디버그 제어 및 네트워크 진단 표시';

  @override
  String get settingsShowDebugHomeSubtitle => '문제 해결을 위해 홈 화면에 디버그 아이콘 표시';

  @override
  String get settingsCurrentNetwork => '현재 네트워크';

  @override
  String get settingsNetworkAccessStatus => '네트워크 접속 상태';

  @override
  String get settingsNetworkAccessGranted => '로컬 네트워크 접속이 가능합니다';

  @override
  String get settingsNetworkAccessMissing => '추가 권한이 필요할 수 있습니다.';

  @override
  String get settingsChecking => '확인 중...';

  @override
  String get settingsEnableLocalNetwork => '설정에서 로컬 네트워크 활성화';

  @override
  String get settingsNotConnectedWifi => 'WiFi에 연결되지 않음';

  @override
  String get settingsPermissionRequiredView => '보기 위해서는 권한이 필요합니다';

  @override
  String get settingsAllPermissionsGranted => '모든 권한이 부여됨';

  @override
  String get settingsLocalNetworkNeeded => '로컬 네트워크 권한이 필요합니다';

  @override
  String get settingsLocationNeeded => '위치 권한이 필요합니다';

  @override
  String get settingsRefreshPermissions => '권한 새로 고침';

  @override
  String get settingsAboutWifiPermission => 'WiFi 이름 권한 정보';

  @override
  String get settingsWifiPermissionExplanation =>
      'WiFi 이름은 휴대폰과 Wemo 장치가 동일한 네트워크에 있는지 확인하는 데 도움이 됩니다.';

  @override
  String get settingsWifiPermissionIos =>
      'iOS에서 WiFi 네트워크 이름을 표시하려면 위치 권한이 필요합니다.';

  @override
  String get settingsImportant => '중요:';

  @override
  String get settingsPrivacyNote =>
      '• 귀하의 위치는 추적되지 않습니다.\n• 위치 데이터가 수집되거나 저장되지 않습니다.';

  @override
  String get settingsWifiPermissionImportant =>
      '• 기기 검색은 이 권한 없이 작동됩니다.\n• 이는 WiFi 이름을 표시하는 데만 필요합니다.\n• 위치 데이터가 수집되거나 저장되지 않습니다.';

  @override
  String get settingsGrantPermission => '권한 부여';

  @override
  String get settingsHowLongScan => '장치를 검색하는 데 걸리는 시간:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return '$seconds 초로 설정된 검색 시간 초과';
  }

  @override
  String get settingsHowLongResponses => '장치 응답을 기다리는 시간:';

  @override
  String get settingsIncreaseTimeoutHint => '\"연결이 닫혔습니다\" 오류가 표시되면 이 값을 늘리세요.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return '요청 제한 시간이 $seconds초로 설정되었습니다.';
  }

  @override
  String get settingsSetRefreshInterval => '자동 상태 새로 고침 간격을 설정합니다.';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return '새로 고침 간격이 $seconds초로 설정됨';
  }

  @override
  String get settingsAboutTagline => 'Wemo 장치를 위한 깔끔한 개인 로컬 컨트롤러입니다.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch는 로컬 네트워크 검색을 사용하여 클라우드 종속성 없이 장치를 찾고 제어합니다.';

  @override
  String get settingsVersionValue => '버전 1.0.1';

  @override
  String get settingsProtocol => '프로토콜: SSDP/UPnP';

  @override
  String get settingsMulticastAddress => '멀티캐스트 주소: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => '장치 포트: 49152-49159';

  @override
  String get settingsControlProtocol => '제어 프로토콜: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      '팁: 장치가 Wemo 장치와 동일한 네트워크에 있고 UDP 멀티캐스트가 차단되지 않았는지 확인하세요.';

  @override
  String get settingsDevicePaired => '장치가 페어링되었습니다! 기기 목록을 새로 고치는 중...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '요청당 $seconds초';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return '모든 $seconds 새로 고침';
  }

  @override
  String get pairingTitle => '새 장치 페어링';

  @override
  String get pairingSetupTitle => 'Wemo 장치 설정';

  @override
  String get pairingBeforeBegin => '시작하기 전에 Wemo 장치가 설정 모드에 있는지 확인하세요.';

  @override
  String get pairingPlugInTitle => 'Wemo 장치를 연결하세요';

  @override
  String get pairingPlugInBody => '전원에 연결하고 시작될 때까지 기다립니다.';

  @override
  String get pairingBlinkingLedTitle => '깜박이는 LED를 찾아보세요';

  @override
  String get pairingBlinkingLedBody => '깜박이는 LED는 장치가 설정 모드에 있음을 나타냅니다.';

  @override
  String get pairingCheckWifiTitle => 'WiFi 네트워크 확인';

  @override
  String get pairingCheckWifiBody => '장치는 \"WeMo.XXXXX\"라는 네트워크를 브로드캐스트합니다.';

  @override
  String get pairingSolidLedHint =>
      'LED가 켜져 있으면 재설정 버튼을 5초 동안 눌러 설정 모드로 들어갑니다.';

  @override
  String get pairingStart => '페어링 시작';

  @override
  String get pairingConnectWifiTitle => '장치 WiFi에 연결';

  @override
  String get pairingConnectWifiBody =>
      '휴대폰의 WiFi 설정을 열고 \"WeMo\"로 시작하는 네트워크에 연결하세요.';

  @override
  String get pairingCurrentNetwork => '현재 네트워크';

  @override
  String get pairingConnectedToDevice => 'Wemo 장치에 연결되었습니다!';

  @override
  String get pairingOpenWifiSettings => 'WiFi 설정 열기';

  @override
  String get pairingConnectedButton => '연결했어요';

  @override
  String get pairingLookingForDevice => 'Wemo 장치를 찾는 중...';

  @override
  String get pairingManualIpPrompt => '또는 IP 장치를 수동으로 입력하세요.';

  @override
  String get pairingDeviceIp => '장치 IP 주소';

  @override
  String get pairingConnectToIp => 'IP에 연결';

  @override
  String get pairingSelectHomeWifi => '홈 WiFi 네트워크를 선택하세요:';

  @override
  String get pairingRefreshNetworks => '네트워크 새로 고침';

  @override
  String get pairingIosScanLimitation =>
      'iOS는 타사 앱이 근처 Wi-Fi 네트워크를 검색하는 것을 엄격히 금지합니다. 네트워크 SSID를 수동으로 입력해야 할 수도 있습니다.';

  @override
  String get pairingNoNetworks => '네트워크를 찾을 수 없습니다.';

  @override
  String get pairingScanAgain => '다시 스캔';

  @override
  String get pairingWifiPassword => 'WiFi 비밀번호';

  @override
  String get pairingConnect => '연결하다';

  @override
  String get pairingEnterNetworkManually => '수동으로 네트워크 입력';

  @override
  String get pairingEnterNetworkName => '네트워크 이름 입력:';

  @override
  String get pairingNetworkName => '네트워크 이름(SSID)';

  @override
  String get pairingUseNetwork => '이 네트워크 사용';

  @override
  String get pairingConfiguringDevice => '장치 구성 중...';

  @override
  String get pairingConfiguringWait => '장치가 네트워크에 연결되는 동안 잠시 기다려 주십시오.';

  @override
  String get pairingReconnectTitle => '네트워크에 다시 연결';

  @override
  String pairingReconnectBody(String ssid) {
    return '이제 Wemo 장치가 \"$ssid\"에 연결됩니다. 휴대폰을 동일한 네트워크에 다시 연결하세요.';
  }

  @override
  String get pairingBackOnHome => '홈 네트워크로 돌아왔습니다!';

  @override
  String get pairingReconnectedButton => '다시 연결했습니다';

  @override
  String get pairingFinalizingSetup => '설정을 마무리하는 중...';

  @override
  String get pairingSetupComplete => '설정 완료!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid에 연결됨';
  }

  @override
  String get pairingDeviceReady => '이제 장치가 설정되었으며 홈 화면에 나타납니다.';

  @override
  String get pairingSomethingWrong => '문제가 발생했습니다.';

  @override
  String get pairingStartOver => '다시 시작';

  @override
  String get pairingErrorOpenWifi => 'WiFi 설정을 열 수 없습니다. 수동으로 열어주세요.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return '귀하의 전화기는 여전히 \"$ssid\"에 연결되어 있습니다. WiFi 설정을 열고 WeMo 장치 네트워크에 연결한 후 다시 시도하세요.';
  }

  @override
  String get pairingLoadingLooking => '장치를 찾는 중...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip에서 WeMo 장치를 찾을 수 없습니다. 휴대폰이 WeMo WiFi 네트워크에 연결되어 있는지 확인한 후 다시 시도하세요. IP 장치를 수동으로 입력할 수도 있습니다.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return '장치 검색 오류: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip에 연결하는 중...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip에서 장치를 찾을 수 없습니다.';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip 연결 오류: $error';
  }

  @override
  String get pairingLoadingScanning => '네트워크 검색 중...';

  @override
  String pairingErrorScanning(String error) {
    return '네트워크를 검색할 수 없습니다: $error';
  }

  @override
  String get pairingErrorSelectAndPassword => '네트워크를 선택하고 비밀번호를 입력하세요.';

  @override
  String get pairingLoadingSendingCredentials => '네트워크 자격 증명을 보내는 중...';

  @override
  String get pairingLoadingWaitingConnection => '기기가 연결되기를 기다리는 중...';

  @override
  String pairingErrorConfigure(String error) {
    return '네트워크 구성 실패: $error';
  }

  @override
  String get pairingErrorPasswordShort => '비밀번호가 너무 짧습니다. 확인하신 후 다시 시도해 주세요.';

  @override
  String get pairingErrorPasswordIncorrect => '연결하지 못했습니다. 비밀번호를 확인해주세요.';

  @override
  String get pairingErrorConnectionTimeout => '연결 시간이 초과되었습니다. 다시 시도해 주세요.';

  @override
  String pairingErrorFinalizing(String error) {
    return '설정을 완료하는 중 오류 발생: $error';
  }

  @override
  String get detailRefreshState => '상태 새로 고침';

  @override
  String get detailDeviceInfo => '장치 정보';

  @override
  String get detailAdvanced => '고급';

  @override
  String get detailWifiSetup => 'WiFi 설정';

  @override
  String get detailReset => '재설정';

  @override
  String get detailUnreachable => '장치에 연결할 수 없습니다. 네트워크 연결을 확인하세요.';

  @override
  String detailFailedToggle(String error) {
    return '전환 실패: $error';
  }

  @override
  String get detailDeviceInformation => '장치 정보';

  @override
  String get detailPermissionScan => 'WiFi 네트워크를 스캔하려면 권한이 필요합니다.';

  @override
  String get detailScanFailedManual => '네트워크를 검색할 수 없습니다. 네트워크 이름을 수동으로 입력하세요.';

  @override
  String get detailEnterNetworkNameError => '네트워크 이름을 입력하거나 선택하세요.';

  @override
  String get detailEnterPasswordError => '네트워크 비밀번호를 입력해주세요';

  @override
  String get detailWifiSuccess => 'WiFi가 성공적으로 구성되었습니다!';

  @override
  String get detailScanNetworks => '네트워크 검색';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\"에 대한 WiFi 네트워크 구성';
  }

  @override
  String get detailAvailableNetworks => '사용 가능한 네트워크';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • 채널 $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS는 타사 앱이 근처 Wi-Fi 네트워크를 검색하는 것을 엄격히 금지합니다. 아래에 네트워크 이름을 직접 입력하세요.';

  @override
  String get detailTapRefreshScan => '네트워크를 검색하려면 새로고침을 탭하세요.';

  @override
  String get detailEnterNetworkBelow => '아래에 네트워크 이름을 입력하세요.';

  @override
  String get detailNetworkCredentials => '네트워크 자격 증명';

  @override
  String get detailConnecting => '네트워크에 연결 중...';

  @override
  String get detailConnected => '성공적으로 연결되었습니다!';

  @override
  String get detailPasswordShort => '비밀번호가 너무 짧습니다.';

  @override
  String get detailAuthenticationFailed => '인증 실패 - 비밀번호를 확인하세요';

  @override
  String get detailConnectionFailed => '연결 실패';

  @override
  String get detailSelectReset => '재설정할 항목을 선택하세요.';

  @override
  String get detailResetSchedulesWarning => '• 모든 일정 및 자동화 규칙이 삭제됩니다.';

  @override
  String get detailResetWifiWarning => '• WiFi 설정이 삭제됩니다.';

  @override
  String get detailSetupAgainWarning => '• 기기를 다시 설정해야 합니다.';

  @override
  String get detailUnreachableWarning => '• 기기에 일시적으로 연결할 수 없게 될 수 있습니다.';

  @override
  String get detailConfirmReset => '재설정 확인';

  @override
  String detailConfirmResetDevice(String device) {
    return '\"$device\"을(를) 재설정하시겠습니까?';
  }

  @override
  String get detailThisWill => '이는 다음을 수행합니다.';

  @override
  String get detailCannotUndo => '이 작업은 취소할 수 없습니다.';

  @override
  String get detailYesReset => '예, 재설정합니다.';

  @override
  String get detailResetSuccess => '기기가 재설정되었습니다.';

  @override
  String get detailResetRemote => '기기가 원격으로 재설정됩니다.';

  @override
  String get detailResetFailed => '재설정 실패';

  @override
  String get detailFactoryReset => '공장 초기화';

  @override
  String get detailFactoryResetWarning =>
      '이렇게 하면 모든 설정이 삭제되고 장치가 공장 기본값으로 복원됩니다. 장치를 다시 설정해야 합니다.\n\n이 작업은 취소할 수 없습니다.';

  @override
  String get detailFactoryResetInitiated => '공장 초기화가 시작되었습니다';

  @override
  String get detailResetDevice => '장치 재설정';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\"에 대한 재설정 옵션';
  }

  @override
  String get detailResetUserData => '사용자 데이터 재설정';

  @override
  String get detailResetUserDataSubtitle => '일정과 규칙을 지웁니다.';

  @override
  String get detailResetWifi => 'WiFi 설정 재설정';

  @override
  String get detailResetWifiSubtitle => '기기를 다시 설정해야 합니다.';

  @override
  String get widgetBrightness => '밝기';

  @override
  String get widgetEnergyStatistics => '에너지 통계';

  @override
  String get widgetCurrentPower => '현재 전력';

  @override
  String get widgetToday => '오늘';

  @override
  String get widgetTotal => '합계';

  @override
  String get widgetOnTimeToday => '오늘 정시에';

  @override
  String get widgetTotalOnTime => '총 켜짐 시간';

  @override
  String get widgetStandby => '대기';

  @override
  String get widgetUnknown => '알 수 없음';

  @override
  String get widgetOpenNetwork => '개방형 네트워크';

  @override
  String get widgetWepInsecure => 'WEP(안전하지 않음)';
}
