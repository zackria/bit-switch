// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get errDeviceNotSupportAction => '该设备不支持此操作。';

  @override
  String get errInvalidArgs => '向设备发送了无效参数。';

  @override
  String get errActionFailed => '设备无法执行请求的操作。';

  @override
  String get errInvalidValue => '提供的值无效。';

  @override
  String get errValueOutOfRange => '该值超出了可接受的范围。';

  @override
  String get errFeatureNotAvailable => '此功能在此设备上不可用。';

  @override
  String get errOutOfMemory => '设备内存不足。稍后再试。';

  @override
  String get errManualActionRequired => '需要在设备上进行手动操作。';

  @override
  String get errActionNotAuthorized => '此操作未经授权。';

  @override
  String get errUnexpected => '发生意外错误。请再试一次。';

  @override
  String get errDeviceUnreachableOffline => '无法访问设备。它可能处于离线状态或位于不同的网络上。';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts 尝试后请求超时。设备可能处于离线状态。';
  }

  @override
  String get errRequestTimedOut => '请求超时。设备可能处于离线状态。';

  @override
  String get errNoRouteToHost => '无法到达设备。请检查您的 WiFi 连接。';

  @override
  String get errHostUnreachable => '设备无法访问。请确保已上电并连接至WiFi。';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts 尝试后无法与设备通信。';
  }

  @override
  String get errNetworkErrorComm => '网络错误：无法与设备通信。';

  @override
  String get errActionNotAuthorizedDevice => '该操作未在设备上获得授权。';

  @override
  String get errDeviceServiceNotFound => '未找到设备服务。该设备可能需要固件更新。';

  @override
  String get errDeviceEncounteredError => '设备在处理请求时遇到错误。';

  @override
  String get errDeviceInternalError => '设备返回内部错误。';

  @override
  String get errDeviceTempUnavailable => '该设备暂时不可用。请再试一次。';

  @override
  String errDeviceReturnedHttpError(int code) {
    return '设备返回错误 (HTTP $code)。';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '无法在设备上执行 $action。';
  }

  @override
  String get errDeviceReturnedError => '设备返回错误。';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation操作超时。请再试一次。';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds 秒后操作超时。';
  }

  @override
  String get errOperationTimedOut => '操作超时。请再试一次。';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork => '请在“设置”中启用本地网络权限以查找设备。';

  @override
  String get errCannotAccessLocalNetwork => '无法访问本地网络。请在“设置”中启用本地网络权限。';

  @override
  String get errCheckWifiConnection => '无法发现设备。请检查您的 WiFi 连接。';

  @override
  String errDiscoveryInterrupted(int count) {
    return '发现打断了。找到 $count 设备。';
  }

  @override
  String get errNoDevicesFound => '未找到设备。请确保设备已开机并连接到您的网络。';

  @override
  String get actionGetDeviceState => '获取设备状态';

  @override
  String get actionSetDeviceState => '设置设备状态';

  @override
  String get actionGetEnergyData => '获取能源数据';

  @override
  String get actionScanNetworks => '扫描网络';

  @override
  String get actionConnectWifi => '连接到WiFi';

  @override
  String get actionCheckConnection => '检查连接状态';

  @override
  String get actionResetDevice => '重置设备';

  @override
  String get actionPerform => '执行动作';

  @override
  String get suggestTryRefreshing => '尝试刷新设备列表或检查设备是否有响应。';

  @override
  String get suggestEnsurePoweredOn => '确保设备已开机并连接到 WiFi 网络。';

  @override
  String get suggestMakeSureSameWifi => '确保您的手机与您的设备连接到同一 WiFi 网络。';

  @override
  String get suggestCheckPhysical => '检查物理设备中是否有任何需要注意的按钮或开关。';

  @override
  String get suggestWaitAndTry => '稍等片刻，然后重试。';

  @override
  String get suggestDeviceBusy => '设备可能正忙。几秒钟后重试。';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => '取消';

  @override
  String get commonClose => '关闭';

  @override
  String get commonDone => '完成';

  @override
  String get commonLater => '后来';

  @override
  String get commonRefresh => '刷新';

  @override
  String get commonTryAgain => '再试一次';

  @override
  String get commonOpenSettings => '打开设置';

  @override
  String get commonGrant => '格兰特';

  @override
  String get commonFix => '修复';

  @override
  String get commonOn => '开';

  @override
  String get commonOff => '关闭';

  @override
  String get commonOffline => '离线';

  @override
  String get commonStatus => '状态';

  @override
  String get commonName => '名称';

  @override
  String get commonType => '类型';

  @override
  String get commonModel => '型号';

  @override
  String get commonManufacturer => '制造商';

  @override
  String get commonSerial => '串行';

  @override
  String get commonFirmware => '固件';

  @override
  String get commonHost => '主持人';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => '密码';

  @override
  String get commonUnknownWifi => '未知 Wi-Fi';

  @override
  String get commonNotConnected => '未连接';

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
      other: '$seconds秒',
      one: '1秒',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => '智能开关';

  @override
  String get deviceTypeLightSwitch => '灯开关';

  @override
  String get deviceTypeDimmer => '调光器';

  @override
  String get deviceTypeInsightPlug => '洞察插头';

  @override
  String get deviceTypeMotionSensor => '运动传感器';

  @override
  String get deviceTypeMaker => '创客';

  @override
  String get deviceTypeBridge => '桥';

  @override
  String get deviceTypeCoffeeMaker => '咖啡机';

  @override
  String get deviceTypeCrockpot => '克罗克波特';

  @override
  String get deviceTypeHumidifier => '加湿器';

  @override
  String get deviceTypeOutdoorPlug => '户外插头';

  @override
  String get deviceTypeUnknown => '未知设备';

  @override
  String get pairingStepGetStarted => '开始使用';

  @override
  String get pairingStepConnectToDevice => '连接到设备';

  @override
  String get pairingStepFindDevice => '查找设备';

  @override
  String get pairingStepSelectNetwork => '选择网络';

  @override
  String get pairingStepConfiguring => '配置';

  @override
  String get pairingStepReconnect => '重新连接';

  @override
  String get pairingStepFinalizing => '敲定';

  @override
  String get pairingStepSuccess => '成功';

  @override
  String get pairingStepError => '错误';

  @override
  String get homeToggleDebug => '切换调试模式';

  @override
  String get homeRefreshDevices => '刷新设备';

  @override
  String get homeSettings => '设置';

  @override
  String get homeDismiss => '解雇';

  @override
  String get homeDiscovering => '正在发现设备...';

  @override
  String get homeNoDevices => '未找到设备';

  @override
  String get homeScanDevices => '扫描设备';

  @override
  String get homeLookingForMore => '正在寻找更多设备...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 设备',
      one: '找到 1 个设备',
      zero: '未找到设备',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 设备，正在扫描...',
      one: '找到 1 个设备，正在扫描...',
      zero: '未找到设备，正在扫描...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => '汽车';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => '连接至WiFi';

  @override
  String get homePermissionExplanation =>
      '位置信息用于查找您的 Wi-Fi 详细信息。本地网络访问允许您控制您的智能交换机和设备。';

  @override
  String get homeDebugLog => '调试日志';

  @override
  String get homeClear => '清除';

  @override
  String get homeDebugEmpty => '点击刷新开始发现并查看日志...';

  @override
  String get homeProbeHint => 'IP：端口（例如192.168.1.100:49153）';

  @override
  String get homeProbe => '探针';

  @override
  String get homeScanning => '正在扫描...';

  @override
  String get homeScanSubnet => '扫描整个子网（iOS 修复）';

  @override
  String homePlatform(String platform, String version) {
    return '平台：$platform $version';
  }

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsSectionNetwork => '网络';

  @override
  String get settingsSectionDeviceSetup => '设备设置';

  @override
  String get settingsSectionDiscovery => '发现';

  @override
  String get settingsSectionAbout => '关于';

  @override
  String get settingsSectionDebug => '调试';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return '已获得许可！ WiFi 名称：$ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded => '已授予位置，但还需要本地网络许可。检查设置。';

  @override
  String get settingsLocationRequired => '需要位置许可';

  @override
  String get settingsLocationRequiredBody => '要显示您的 WiFi 网络名称，iOS 需要位置权限。';

  @override
  String get settingsRequiredPermissions => '所需权限：';

  @override
  String get settingsPermissionList => '1. 定位服务（“使用应用程序时”）\n2. 本地网络';

  @override
  String get settingsDiscoveryWithoutLocation =>
      '注意：设备发现无需位置许可即可进行。该权限仅用于显示您的WiFi网络名称。';

  @override
  String get settingsEnableLocation => '在设置中启用位置';

  @override
  String get settingsLocationDeniedBody => '位置权限被拒绝。您可以从系统设置中启用它。';

  @override
  String get settingsStepsToEnable => '启用步骤：';

  @override
  String get settingsEnableLocationSteps =>
      '1. 打开设置\n2. 滚动到“Bit Switch”\n3. 点击“位置”\n4. 选择“使用应用程序时”\n5. 返回此应用程序并点击刷新按钮';

  @override
  String get settingsLocationOnlyWifiName =>
      '注意：仅需要位置权限才能显示 WiFi 名称。没有它，设备发现也可以工作。';

  @override
  String get settingsAdditionalPermission => '需要额外许可';

  @override
  String get settingsLocalNetworkBody => '发现和控制 Wemo 设备需要本地网络权限。';

  @override
  String get settingsWifiNameNotVisible => '您拥有“位置”权限，但 WiFi 名称尚不可见。';

  @override
  String get settingsPleaseEnable => '请启用：';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. 进入 iPhone 设置\n2. 向下滚动到“Bit Switch”\n3.启用“本地网络”';

  @override
  String get settingsLocalNetworkIosReason => 'iOS 上的设备发现和 WiFi 名称访问都需要本地网络权限。';

  @override
  String get settingsPairNewDevice => '配对新设备';

  @override
  String get settingsPairNewDeviceSubtitle => '设置新的 Wemo 设备';

  @override
  String get settingsDiscoveryTimeout => '发现超时';

  @override
  String get settingsRequestTimeout => '请求超时';

  @override
  String get settingsAutoRefresh => '自动刷新';

  @override
  String get settingsAutoRefreshOn => '开 - 设备状态自动刷新';

  @override
  String get settingsAutoRefreshOff => '关闭 - 使用手动刷新按钮';

  @override
  String get settingsAutoRefreshInterval => '自动刷新间隔';

  @override
  String get settingsAbout => '关于Bit Switch';

  @override
  String get settingsVersion => '版本';

  @override
  String get settingsNetworkDiagnostics => '网络诊断';

  @override
  String get settingsShowDebug => '显示调试模式';

  @override
  String get settingsShowDebugSubtitle => '在主屏幕上显示调试控件和网络诊断';

  @override
  String get settingsShowDebugHomeSubtitle => '在主屏幕上显示调试图标以进行故障排除';

  @override
  String get settingsCurrentNetwork => '当前网络';

  @override
  String get settingsNetworkAccessStatus => '网络接入状态';

  @override
  String get settingsNetworkAccessGranted => '本地网络可以访问';

  @override
  String get settingsNetworkAccessMissing => '可能需要额外的权限';

  @override
  String get settingsChecking => '正在检查...';

  @override
  String get settingsEnableLocalNetwork => '在设置中启用本地网络';

  @override
  String get settingsNotConnectedWifi => '未连接至 WiFi';

  @override
  String get settingsPermissionRequiredView => '需要权限才能查看';

  @override
  String get settingsAllPermissionsGranted => '已授予所有权限';

  @override
  String get settingsLocalNetworkNeeded => '需要本地网络许可';

  @override
  String get settingsLocationNeeded => '需要位置许可';

  @override
  String get settingsRefreshPermissions => '刷新权限';

  @override
  String get settingsAboutWifiPermission => '关于WiFi名称权限';

  @override
  String get settingsWifiPermissionExplanation =>
      '您的 WiFi 名称有助于确认您的手机和 Wemo 设备位于同一网络上。';

  @override
  String get settingsWifiPermissionIos => '在 iOS 上，显示您的 WiFi 网络名称需要位置权限。';

  @override
  String get settingsImportant => '重要：';

  @override
  String get settingsPrivacyNote => '• 您的位置永远不会被追踪\n• 不收集或存储任何位置数据';

  @override
  String get settingsWifiPermissionImportant =>
      '• 无需此权限即可进行设备发现\n• 这仅需要显示 WiFi 名称\n• 不收集或存储任何位置数据';

  @override
  String get settingsGrantPermission => '授予许可';

  @override
  String get settingsHowLongScan => '扫描设备需要多长时间：';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return '发现超时设置为 $seconds 秒';
  }

  @override
  String get settingsHowLongResponses => '等待设备响应的时间：';

  @override
  String get settingsIncreaseTimeoutHint => '如果您看到“连接已关闭”错误，请增加此值。';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return '请求超时设置为 $seconds 秒';
  }

  @override
  String get settingsSetRefreshInterval => '设置自动状态刷新的时间间隔：';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return '刷新间隔设置为 $seconds 秒';
  }

  @override
  String get settingsAboutTagline => '适用于 Wemo 设备的干净、私有的本地控制器。';

  @override
  String get settingsAboutDescription => 'Bit Switch 使用本地网络发现来查找和控制设备，无需依赖云。';

  @override
  String get settingsVersionValue => '版本1.0.1';

  @override
  String get settingsProtocol => '协议：SSDP/UPnP';

  @override
  String get settingsMulticastAddress => '组播地址：239.255.255.250:1900';

  @override
  String get settingsDevicePorts => '设备端口：49152-49159';

  @override
  String get settingsControlProtocol => '控制协议：SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      '提示：确保您的设备与 Wemo 设备位于同一网络，并且 UDP 多播未被阻止。';

  @override
  String get settingsDevicePaired => '设备已配对！正在刷新设备列表...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds 每个请求的秒数';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return '刷新每台 $seconds';
  }

  @override
  String get pairingTitle => '配对新设备';

  @override
  String get pairingSetupTitle => '设置您的 Wemo 设备';

  @override
  String get pairingBeforeBegin => '开始之前，请确保您的 Wemo 设备处于设置模式：';

  @override
  String get pairingPlugInTitle => '插入您的 Wemo 设备';

  @override
  String get pairingPlugInBody => '将其连接到电源并等待其启动。';

  @override
  String get pairingBlinkingLedTitle => '寻找闪烁的 LED';

  @override
  String get pairingBlinkingLedBody => '闪烁的 LED 表示设备处于设置模式。';

  @override
  String get pairingCheckWifiTitle => '检查 WiFi 网络';

  @override
  String get pairingCheckWifiBody => '设备将广播名为“WeMo.XXXXX”的网络。';

  @override
  String get pairingSolidLedHint => '如果 LED 常亮，请按住重置按钮 5 秒钟以进入设置模式。';

  @override
  String get pairingStart => '开始配对';

  @override
  String get pairingConnectWifiTitle => '连接到设备 WiFi';

  @override
  String get pairingConnectWifiBody => '打开手机的 WiFi 设置并连接到以“WeMo”开头的网络。';

  @override
  String get pairingCurrentNetwork => '当前网络';

  @override
  String get pairingConnectedToDevice => '已连接Wemo设备！';

  @override
  String get pairingOpenWifiSettings => '打开WiFi设置';

  @override
  String get pairingConnectedButton => '我已连接';

  @override
  String get pairingLookingForDevice => '正在寻找您的 Wemo 设备...';

  @override
  String get pairingManualIpPrompt => '或者手动输入设备IP：';

  @override
  String get pairingDeviceIp => '设备 IP 地址';

  @override
  String get pairingConnectToIp => '连接至IP';

  @override
  String get pairingSelectHomeWifi => '选择您的家庭 WiFi 网络：';

  @override
  String get pairingRefreshNetworks => '刷新网络';

  @override
  String get pairingIosScanLimitation =>
      'iOS严格禁止第三方应用程序扫描附近的Wi-Fi网络。您可能需要手动输入网络SSID。';

  @override
  String get pairingNoNetworks => '未找到网络';

  @override
  String get pairingScanAgain => '再次扫描';

  @override
  String get pairingWifiPassword => 'WiFi 密码';

  @override
  String get pairingConnect => '连接';

  @override
  String get pairingEnterNetworkManually => '手动输入网络';

  @override
  String get pairingEnterNetworkName => '输入网络名称：';

  @override
  String get pairingNetworkName => '网络名称 (SSID)';

  @override
  String get pairingUseNetwork => '使用这个网络';

  @override
  String get pairingConfiguringDevice => '配置设备...';

  @override
  String get pairingConfiguringWait => '设备正在连接到您的网络，请稍候。';

  @override
  String get pairingReconnectTitle => '重新连接到您的网络';

  @override
  String pairingReconnectBody(String ssid) {
    return '您的 Wemo 设备现在正在连接到“$ssid”。请重新将您的手机连接到同一网络。';
  }

  @override
  String get pairingBackOnHome => '回到家庭网络！';

  @override
  String get pairingReconnectedButton => '我已重新连接';

  @override
  String get pairingFinalizingSetup => '正在完成设置...';

  @override
  String get pairingSetupComplete => '设置完成！';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '连接至$ssid';
  }

  @override
  String get pairingDeviceReady => '您的设备现已设置完毕并将显示在主屏幕上。';

  @override
  String get pairingSomethingWrong => '出了点问题';

  @override
  String get pairingStartOver => '重新开始';

  @override
  String get pairingErrorOpenWifi => '无法打开 WiFi 设置。请手动打开它们。';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return '您的手机仍连接到“$ssid”。请打开WiFi设置，连接到WeMo设备网络，然后重试。';
  }

  @override
  String get pairingLoadingLooking => '正在寻找设备...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '在 $ip 上找不到 WeMo 设备。请确保您的手机已连接至 WeMo WiFi 网络，然后重试。您也可以手动输入设备IP。';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return '发现设备时出错：$error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '正在连接到 $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '在 $ip 处找不到设备';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '连接到 $ip 时出错：$error';
  }

  @override
  String get pairingLoadingScanning => '正在扫描网络...';

  @override
  String pairingErrorScanning(String error) {
    return '无法扫描网络：$error';
  }

  @override
  String get pairingErrorSelectAndPassword => '请选择网络并输入密码。';

  @override
  String get pairingLoadingSendingCredentials => '正在发送网络凭据...';

  @override
  String get pairingLoadingWaitingConnection => '正在等待设备连接...';

  @override
  String pairingErrorConfigure(String error) {
    return '配置网络失败：$error';
  }

  @override
  String get pairingErrorPasswordShort => '密码太短。请检查并重试。';

  @override
  String get pairingErrorPasswordIncorrect => '连接失败。请检查密码。';

  @override
  String get pairingErrorConnectionTimeout => '连接超时。请再试一次。';

  @override
  String pairingErrorFinalizing(String error) {
    return '完成设置时出错：$error';
  }

  @override
  String get detailRefreshState => '刷新状态';

  @override
  String get detailDeviceInfo => '设备信息';

  @override
  String get detailAdvanced => '高级';

  @override
  String get detailWifiSetup => 'WiFi 设置';

  @override
  String get detailReset => '重置';

  @override
  String get detailUnreachable => '设备无法访问。检查网络连接。';

  @override
  String detailFailedToggle(String error) {
    return '切换失败：$error';
  }

  @override
  String get detailDeviceInformation => '设备信息';

  @override
  String get detailPermissionScan => '扫描 WiFi 网络需要权限。';

  @override
  String get detailScanFailedManual => '无法扫描网络。手动输入网络名称。';

  @override
  String get detailEnterNetworkNameError => '请输入或选择网络名称';

  @override
  String get detailEnterPasswordError => '请输入网络密码';

  @override
  String get detailWifiSuccess => 'WiFi配置成功！';

  @override
  String get detailScanNetworks => '扫描网络';

  @override
  String detailConfigureWifiFor(String device) {
    return '为“$device”配置WiFi网络';
  }

  @override
  String get detailAvailableNetworks => '可用网络';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • 通道 $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS严格禁止第三方应用程序扫描附近的Wi-Fi网络。请在下面手动输入您的网络名称。';

  @override
  String get detailTapRefreshScan => '点击刷新以扫描网络';

  @override
  String get detailEnterNetworkBelow => '在下面输入您的网络名称';

  @override
  String get detailNetworkCredentials => '网络凭证';

  @override
  String get detailConnecting => '正在连接到网络...';

  @override
  String get detailConnected => '连接成功！';

  @override
  String get detailPasswordShort => '密码太短';

  @override
  String get detailAuthenticationFailed => '身份验证失败 - 检查密码';

  @override
  String get detailConnectionFailed => '连接失败';

  @override
  String get detailSelectReset => '请选择要重置的内容';

  @override
  String get detailResetSchedulesWarning => '• 所有计划和自动化规则都将被删除';

  @override
  String get detailResetWifiWarning => '• WiFi 设置将被删除';

  @override
  String get detailSetupAgainWarning => '• 您将需要重新设置设备';

  @override
  String get detailUnreachableWarning => '• 设备可能会暂时无法访问';

  @override
  String get detailConfirmReset => '确认重置';

  @override
  String detailConfirmResetDevice(String device) {
    return '您确定要重置“$device”吗？';
  }

  @override
  String get detailThisWill => '这将：';

  @override
  String get detailCannotUndo => '此操作无法撤消。';

  @override
  String get detailYesReset => '是的，重置';

  @override
  String get detailResetSuccess => '设备重置成功';

  @override
  String get detailResetRemote => '设备将远程重置';

  @override
  String get detailResetFailed => '重置失败';

  @override
  String get detailFactoryReset => '恢复出厂设置';

  @override
  String get detailFactoryResetWarning =>
      '这将清除所有设置并将设备恢复为出厂默认设置。您将需要再次设置设备。\n\n此操作无法撤消。';

  @override
  String get detailFactoryResetInitiated => '已启动恢复出厂设置';

  @override
  String get detailResetDevice => '重置设备';

  @override
  String detailResetOptionsFor(String device) {
    return '“$device”的重置选项';
  }

  @override
  String get detailResetUserData => '重置用户数据';

  @override
  String get detailResetUserDataSubtitle => '明确时间表和规则';

  @override
  String get detailResetWifi => '重置 WiFi 设置';

  @override
  String get detailResetWifiSubtitle => '设备需要重新设置';

  @override
  String get widgetBrightness => '亮度';

  @override
  String get widgetEnergyStatistics => '能源统计';

  @override
  String get widgetCurrentPower => '当前功率';

  @override
  String get widgetToday => '今天';

  @override
  String get widgetTotal => '总计';

  @override
  String get widgetOnTimeToday => '今天准时';

  @override
  String get widgetTotalOnTime => '总准时时间';

  @override
  String get widgetStandby => '待机';

  @override
  String get widgetUnknown => '未知';

  @override
  String get widgetOpenNetwork => '开放网络';

  @override
  String get widgetWepInsecure => 'WEP（不安全）';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get errDeviceNotSupportAction => '该设备不支持此操作。';

  @override
  String get errInvalidArgs => '向设备发送了无效参数。';

  @override
  String get errActionFailed => '设备无法执行请求的操作。';

  @override
  String get errInvalidValue => '提供的值无效。';

  @override
  String get errValueOutOfRange => '该值超出了可接受的范围。';

  @override
  String get errFeatureNotAvailable => '此功能在此设备上不可用。';

  @override
  String get errOutOfMemory => '设备内存不足。稍后再试。';

  @override
  String get errManualActionRequired => '需要在设备上进行手动操作。';

  @override
  String get errActionNotAuthorized => '此操作未经授权。';

  @override
  String get errUnexpected => '发生意外错误。请再试一次。';

  @override
  String get errDeviceUnreachableOffline => '无法访问设备。它可能处于离线状态或位于不同的网络上。';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts 尝试后请求超时。设备可能处于离线状态。';
  }

  @override
  String get errRequestTimedOut => '请求超时。设备可能处于离线状态。';

  @override
  String get errNoRouteToHost => '无法到达设备。请检查您的 WiFi 连接。';

  @override
  String get errHostUnreachable => '设备无法访问。请确保已上电并连接至WiFi。';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts 尝试后无法与设备通信。';
  }

  @override
  String get errNetworkErrorComm => '网络错误：无法与设备通信。';

  @override
  String get errActionNotAuthorizedDevice => '该操作未在设备上获得授权。';

  @override
  String get errDeviceServiceNotFound => '未找到设备服务。该设备可能需要固件更新。';

  @override
  String get errDeviceEncounteredError => '设备在处理请求时遇到错误。';

  @override
  String get errDeviceInternalError => '设备返回内部错误。';

  @override
  String get errDeviceTempUnavailable => '该设备暂时不可用。请再试一次。';

  @override
  String errDeviceReturnedHttpError(int code) {
    return '设备返回错误 (HTTP $code)。';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '无法在设备上执行 $action。';
  }

  @override
  String get errDeviceReturnedError => '设备返回错误。';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation操作超时。请再试一次。';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds 秒后操作超时。';
  }

  @override
  String get errOperationTimedOut => '操作超时。请再试一次。';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork => '请在“设置”中启用本地网络权限以查找设备。';

  @override
  String get errCannotAccessLocalNetwork => '无法访问本地网络。请在“设置”中启用本地网络权限。';

  @override
  String get errCheckWifiConnection => '无法发现设备。请检查您的 WiFi 连接。';

  @override
  String errDiscoveryInterrupted(int count) {
    return '发现打断了。找到 $count 设备。';
  }

  @override
  String get errNoDevicesFound => '未找到设备。请确保设备已开机并连接到您的网络。';

  @override
  String get actionGetDeviceState => '获取设备状态';

  @override
  String get actionSetDeviceState => '设置设备状态';

  @override
  String get actionGetEnergyData => '获取能源数据';

  @override
  String get actionScanNetworks => '扫描网络';

  @override
  String get actionConnectWifi => '连接到WiFi';

  @override
  String get actionCheckConnection => '检查连接状态';

  @override
  String get actionResetDevice => '重置设备';

  @override
  String get actionPerform => '执行动作';

  @override
  String get suggestTryRefreshing => '尝试刷新设备列表或检查设备是否有响应。';

  @override
  String get suggestEnsurePoweredOn => '确保设备已开机并连接到 WiFi 网络。';

  @override
  String get suggestMakeSureSameWifi => '确保您的手机与您的设备连接到同一 WiFi 网络。';

  @override
  String get suggestCheckPhysical => '检查物理设备中是否有任何需要注意的按钮或开关。';

  @override
  String get suggestWaitAndTry => '稍等片刻，然后重试。';

  @override
  String get suggestDeviceBusy => '设备可能正忙。几秒钟后重试。';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => '取消';

  @override
  String get commonClose => '关闭';

  @override
  String get commonDone => '完成';

  @override
  String get commonLater => '后来';

  @override
  String get commonRefresh => '刷新';

  @override
  String get commonTryAgain => '再试一次';

  @override
  String get commonOpenSettings => '打开设置';

  @override
  String get commonGrant => '格兰特';

  @override
  String get commonFix => '修复';

  @override
  String get commonOn => '开';

  @override
  String get commonOff => '关闭';

  @override
  String get commonOffline => '离线';

  @override
  String get commonStatus => '状态';

  @override
  String get commonName => '名称';

  @override
  String get commonType => '类型';

  @override
  String get commonModel => '型号';

  @override
  String get commonManufacturer => '制造商';

  @override
  String get commonSerial => '串行';

  @override
  String get commonFirmware => '固件';

  @override
  String get commonHost => '主持人';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => '密码';

  @override
  String get commonUnknownWifi => '未知 Wi-Fi';

  @override
  String get commonNotConnected => '未连接';

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
      other: '$seconds秒',
      one: '1秒',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => '智能开关';

  @override
  String get deviceTypeLightSwitch => '灯开关';

  @override
  String get deviceTypeDimmer => '调光器';

  @override
  String get deviceTypeInsightPlug => '洞察插头';

  @override
  String get deviceTypeMotionSensor => '运动传感器';

  @override
  String get deviceTypeMaker => '创客';

  @override
  String get deviceTypeBridge => '桥';

  @override
  String get deviceTypeCoffeeMaker => '咖啡机';

  @override
  String get deviceTypeCrockpot => '克罗克波特';

  @override
  String get deviceTypeHumidifier => '加湿器';

  @override
  String get deviceTypeOutdoorPlug => '户外插头';

  @override
  String get deviceTypeUnknown => '未知设备';

  @override
  String get pairingStepGetStarted => '开始使用';

  @override
  String get pairingStepConnectToDevice => '连接到设备';

  @override
  String get pairingStepFindDevice => '查找设备';

  @override
  String get pairingStepSelectNetwork => '选择网络';

  @override
  String get pairingStepConfiguring => '配置';

  @override
  String get pairingStepReconnect => '重新连接';

  @override
  String get pairingStepFinalizing => '敲定';

  @override
  String get pairingStepSuccess => '成功';

  @override
  String get pairingStepError => '错误';

  @override
  String get homeToggleDebug => '切换调试模式';

  @override
  String get homeRefreshDevices => '刷新设备';

  @override
  String get homeSettings => '设置';

  @override
  String get homeDismiss => '解雇';

  @override
  String get homeDiscovering => '正在发现设备...';

  @override
  String get homeNoDevices => '未找到设备';

  @override
  String get homeScanDevices => '扫描设备';

  @override
  String get homeLookingForMore => '正在寻找更多设备...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 设备',
      one: '找到 1 个设备',
      zero: '未找到设备',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 设备，正在扫描...',
      one: '找到 1 个设备，正在扫描...',
      zero: '未找到设备，正在扫描...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => '汽车';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => '连接至WiFi';

  @override
  String get homePermissionExplanation =>
      '位置信息用于查找您的 Wi-Fi 详细信息。本地网络访问允许您控制您的智能交换机和设备。';

  @override
  String get homeDebugLog => '调试日志';

  @override
  String get homeClear => '清除';

  @override
  String get homeDebugEmpty => '点击刷新开始发现并查看日志...';

  @override
  String get homeProbeHint => 'IP：端口（例如192.168.1.100:49153）';

  @override
  String get homeProbe => '探针';

  @override
  String get homeScanning => '正在扫描...';

  @override
  String get homeScanSubnet => '扫描整个子网（iOS 修复）';

  @override
  String homePlatform(String platform, String version) {
    return '平台：$platform $version';
  }

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsSectionNetwork => '网络';

  @override
  String get settingsSectionDeviceSetup => '设备设置';

  @override
  String get settingsSectionDiscovery => '发现';

  @override
  String get settingsSectionAbout => '关于';

  @override
  String get settingsSectionDebug => '调试';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return '已获得许可！ WiFi 名称：$ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded => '已授予位置，但还需要本地网络许可。检查设置。';

  @override
  String get settingsLocationRequired => '需要位置许可';

  @override
  String get settingsLocationRequiredBody => '要显示您的 WiFi 网络名称，iOS 需要位置权限。';

  @override
  String get settingsRequiredPermissions => '所需权限：';

  @override
  String get settingsPermissionList => '1. 定位服务（“使用应用程序时”）\n2. 本地网络';

  @override
  String get settingsDiscoveryWithoutLocation =>
      '注意：设备发现无需位置许可即可进行。该权限仅用于显示您的WiFi网络名称。';

  @override
  String get settingsEnableLocation => '在设置中启用位置';

  @override
  String get settingsLocationDeniedBody => '位置权限被拒绝。您可以从系统设置中启用它。';

  @override
  String get settingsStepsToEnable => '启用步骤：';

  @override
  String get settingsEnableLocationSteps =>
      '1. 打开设置\n2. 滚动到“Bit Switch”\n3. 点击“位置”\n4. 选择“使用应用程序时”\n5. 返回此应用程序并点击刷新按钮';

  @override
  String get settingsLocationOnlyWifiName =>
      '注意：仅需要位置权限才能显示 WiFi 名称。没有它，设备发现也可以工作。';

  @override
  String get settingsAdditionalPermission => '需要额外许可';

  @override
  String get settingsLocalNetworkBody => '发现和控制 Wemo 设备需要本地网络权限。';

  @override
  String get settingsWifiNameNotVisible => '您拥有“位置”权限，但 WiFi 名称尚不可见。';

  @override
  String get settingsPleaseEnable => '请启用：';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. 进入 iPhone 设置\n2. 向下滚动到“Bit Switch”\n3.启用“本地网络”';

  @override
  String get settingsLocalNetworkIosReason => 'iOS 上的设备发现和 WiFi 名称访问都需要本地网络权限。';

  @override
  String get settingsPairNewDevice => '配对新设备';

  @override
  String get settingsPairNewDeviceSubtitle => '设置新的 Wemo 设备';

  @override
  String get settingsDiscoveryTimeout => '发现超时';

  @override
  String get settingsRequestTimeout => '请求超时';

  @override
  String get settingsAutoRefresh => '自动刷新';

  @override
  String get settingsAutoRefreshOn => '开 - 设备状态自动刷新';

  @override
  String get settingsAutoRefreshOff => '关闭 - 使用手动刷新按钮';

  @override
  String get settingsAutoRefreshInterval => '自动刷新间隔';

  @override
  String get settingsAbout => '关于Bit Switch';

  @override
  String get settingsVersion => '版本';

  @override
  String get settingsNetworkDiagnostics => '网络诊断';

  @override
  String get settingsShowDebug => '显示调试模式';

  @override
  String get settingsShowDebugSubtitle => '在主屏幕上显示调试控件和网络诊断';

  @override
  String get settingsShowDebugHomeSubtitle => '在主屏幕上显示调试图标以进行故障排除';

  @override
  String get settingsCurrentNetwork => '当前网络';

  @override
  String get settingsNetworkAccessStatus => '网络接入状态';

  @override
  String get settingsNetworkAccessGranted => '本地网络可以访问';

  @override
  String get settingsNetworkAccessMissing => '可能需要额外的权限';

  @override
  String get settingsChecking => '正在检查...';

  @override
  String get settingsEnableLocalNetwork => '在设置中启用本地网络';

  @override
  String get settingsNotConnectedWifi => '未连接至 WiFi';

  @override
  String get settingsPermissionRequiredView => '需要权限才能查看';

  @override
  String get settingsAllPermissionsGranted => '已授予所有权限';

  @override
  String get settingsLocalNetworkNeeded => '需要本地网络许可';

  @override
  String get settingsLocationNeeded => '需要位置许可';

  @override
  String get settingsRefreshPermissions => '刷新权限';

  @override
  String get settingsAboutWifiPermission => '关于WiFi名称权限';

  @override
  String get settingsWifiPermissionExplanation =>
      '您的 WiFi 名称有助于确认您的手机和 Wemo 设备位于同一网络上。';

  @override
  String get settingsWifiPermissionIos => '在 iOS 上，显示您的 WiFi 网络名称需要位置权限。';

  @override
  String get settingsImportant => '重要：';

  @override
  String get settingsPrivacyNote => '• 您的位置永远不会被追踪\n• 不收集或存储任何位置数据';

  @override
  String get settingsWifiPermissionImportant =>
      '• 无需此权限即可进行设备发现\n• 这仅需要显示 WiFi 名称\n• 不收集或存储任何位置数据';

  @override
  String get settingsGrantPermission => '授予许可';

  @override
  String get settingsHowLongScan => '扫描设备需要多长时间：';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return '发现超时设置为 $seconds 秒';
  }

  @override
  String get settingsHowLongResponses => '等待设备响应的时间：';

  @override
  String get settingsIncreaseTimeoutHint => '如果您看到“连接已关闭”错误，请增加此值。';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return '请求超时设置为 $seconds 秒';
  }

  @override
  String get settingsSetRefreshInterval => '设置自动状态刷新的时间间隔：';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return '刷新间隔设置为 $seconds 秒';
  }

  @override
  String get settingsAboutTagline => '适用于 Wemo 设备的干净、私有的本地控制器。';

  @override
  String get settingsAboutDescription => 'Bit Switch 使用本地网络发现来查找和控制设备，无需依赖云。';

  @override
  String get settingsVersionValue => '版本1.0.1';

  @override
  String get settingsProtocol => '协议：SSDP/UPnP';

  @override
  String get settingsMulticastAddress => '组播地址：239.255.255.250:1900';

  @override
  String get settingsDevicePorts => '设备端口：49152-49159';

  @override
  String get settingsControlProtocol => '控制协议：SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      '提示：确保您的设备与 Wemo 设备位于同一网络，并且 UDP 多播未被阻止。';

  @override
  String get settingsDevicePaired => '设备已配对！正在刷新设备列表...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds 每个请求的秒数';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return '刷新每台 $seconds';
  }

  @override
  String get pairingTitle => '配对新设备';

  @override
  String get pairingSetupTitle => '设置您的 Wemo 设备';

  @override
  String get pairingBeforeBegin => '开始之前，请确保您的 Wemo 设备处于设置模式：';

  @override
  String get pairingPlugInTitle => '插入您的 Wemo 设备';

  @override
  String get pairingPlugInBody => '将其连接到电源并等待其启动。';

  @override
  String get pairingBlinkingLedTitle => '寻找闪烁的 LED';

  @override
  String get pairingBlinkingLedBody => '闪烁的 LED 表示设备处于设置模式。';

  @override
  String get pairingCheckWifiTitle => '检查 WiFi 网络';

  @override
  String get pairingCheckWifiBody => '设备将广播名为“WeMo.XXXXX”的网络。';

  @override
  String get pairingSolidLedHint => '如果 LED 常亮，请按住重置按钮 5 秒钟以进入设置模式。';

  @override
  String get pairingStart => '开始配对';

  @override
  String get pairingConnectWifiTitle => '连接到设备 WiFi';

  @override
  String get pairingConnectWifiBody => '打开手机的 WiFi 设置并连接到以“WeMo”开头的网络。';

  @override
  String get pairingCurrentNetwork => '当前网络';

  @override
  String get pairingConnectedToDevice => '已连接Wemo设备！';

  @override
  String get pairingOpenWifiSettings => '打开WiFi设置';

  @override
  String get pairingConnectedButton => '我已连接';

  @override
  String get pairingLookingForDevice => '正在寻找您的 Wemo 设备...';

  @override
  String get pairingManualIpPrompt => '或者手动输入设备IP：';

  @override
  String get pairingDeviceIp => '设备 IP 地址';

  @override
  String get pairingConnectToIp => '连接至IP';

  @override
  String get pairingSelectHomeWifi => '选择您的家庭 WiFi 网络：';

  @override
  String get pairingRefreshNetworks => '刷新网络';

  @override
  String get pairingIosScanLimitation =>
      'iOS严格禁止第三方应用程序扫描附近的Wi-Fi网络。您可能需要手动输入网络SSID。';

  @override
  String get pairingNoNetworks => '未找到网络';

  @override
  String get pairingScanAgain => '再次扫描';

  @override
  String get pairingWifiPassword => 'WiFi 密码';

  @override
  String get pairingConnect => '连接';

  @override
  String get pairingEnterNetworkManually => '手动输入网络';

  @override
  String get pairingEnterNetworkName => '输入网络名称：';

  @override
  String get pairingNetworkName => '网络名称 (SSID)';

  @override
  String get pairingUseNetwork => '使用这个网络';

  @override
  String get pairingConfiguringDevice => '配置设备...';

  @override
  String get pairingConfiguringWait => '设备正在连接到您的网络，请稍候。';

  @override
  String get pairingReconnectTitle => '重新连接到您的网络';

  @override
  String pairingReconnectBody(String ssid) {
    return '您的 Wemo 设备现在正在连接到“$ssid”。请重新将您的手机连接到同一网络。';
  }

  @override
  String get pairingBackOnHome => '回到家庭网络！';

  @override
  String get pairingReconnectedButton => '我已重新连接';

  @override
  String get pairingFinalizingSetup => '正在完成设置...';

  @override
  String get pairingSetupComplete => '设置完成！';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '连接至$ssid';
  }

  @override
  String get pairingDeviceReady => '您的设备现已设置完毕并将显示在主屏幕上。';

  @override
  String get pairingSomethingWrong => '出了点问题';

  @override
  String get pairingStartOver => '重新开始';

  @override
  String get pairingErrorOpenWifi => '无法打开 WiFi 设置。请手动打开它们。';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return '您的手机仍连接到“$ssid”。请打开WiFi设置，连接到WeMo设备网络，然后重试。';
  }

  @override
  String get pairingLoadingLooking => '正在寻找设备...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '在 $ip 上找不到 WeMo 设备。请确保您的手机已连接至 WeMo WiFi 网络，然后重试。您也可以手动输入设备IP。';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return '发现设备时出错：$error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '正在连接到 $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '在 $ip 处找不到设备';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '连接到 $ip 时出错：$error';
  }

  @override
  String get pairingLoadingScanning => '正在扫描网络...';

  @override
  String pairingErrorScanning(String error) {
    return '无法扫描网络：$error';
  }

  @override
  String get pairingErrorSelectAndPassword => '请选择网络并输入密码。';

  @override
  String get pairingLoadingSendingCredentials => '正在发送网络凭据...';

  @override
  String get pairingLoadingWaitingConnection => '正在等待设备连接...';

  @override
  String pairingErrorConfigure(String error) {
    return '配置网络失败：$error';
  }

  @override
  String get pairingErrorPasswordShort => '密码太短。请检查并重试。';

  @override
  String get pairingErrorPasswordIncorrect => '连接失败。请检查密码。';

  @override
  String get pairingErrorConnectionTimeout => '连接超时。请再试一次。';

  @override
  String pairingErrorFinalizing(String error) {
    return '完成设置时出错：$error';
  }

  @override
  String get detailRefreshState => '刷新状态';

  @override
  String get detailDeviceInfo => '设备信息';

  @override
  String get detailAdvanced => '高级';

  @override
  String get detailWifiSetup => 'WiFi 设置';

  @override
  String get detailReset => '重置';

  @override
  String get detailUnreachable => '设备无法访问。检查网络连接。';

  @override
  String detailFailedToggle(String error) {
    return '切换失败：$error';
  }

  @override
  String get detailDeviceInformation => '设备信息';

  @override
  String get detailPermissionScan => '扫描 WiFi 网络需要权限。';

  @override
  String get detailScanFailedManual => '无法扫描网络。手动输入网络名称。';

  @override
  String get detailEnterNetworkNameError => '请输入或选择网络名称';

  @override
  String get detailEnterPasswordError => '请输入网络密码';

  @override
  String get detailWifiSuccess => 'WiFi配置成功！';

  @override
  String get detailScanNetworks => '扫描网络';

  @override
  String detailConfigureWifiFor(String device) {
    return '为“$device”配置WiFi网络';
  }

  @override
  String get detailAvailableNetworks => '可用网络';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • 通道 $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS严格禁止第三方应用程序扫描附近的Wi-Fi网络。请在下面手动输入您的网络名称。';

  @override
  String get detailTapRefreshScan => '点击刷新以扫描网络';

  @override
  String get detailEnterNetworkBelow => '在下面输入您的网络名称';

  @override
  String get detailNetworkCredentials => '网络凭证';

  @override
  String get detailConnecting => '正在连接到网络...';

  @override
  String get detailConnected => '连接成功！';

  @override
  String get detailPasswordShort => '密码太短';

  @override
  String get detailAuthenticationFailed => '身份验证失败 - 检查密码';

  @override
  String get detailConnectionFailed => '连接失败';

  @override
  String get detailSelectReset => '请选择要重置的内容';

  @override
  String get detailResetSchedulesWarning => '• 所有计划和自动化规则都将被删除';

  @override
  String get detailResetWifiWarning => '• WiFi 设置将被删除';

  @override
  String get detailSetupAgainWarning => '• 您将需要重新设置设备';

  @override
  String get detailUnreachableWarning => '• 设备可能会暂时无法访问';

  @override
  String get detailConfirmReset => '确认重置';

  @override
  String detailConfirmResetDevice(String device) {
    return '您确定要重置“$device”吗？';
  }

  @override
  String get detailThisWill => '这将：';

  @override
  String get detailCannotUndo => '此操作无法撤消。';

  @override
  String get detailYesReset => '是的，重置';

  @override
  String get detailResetSuccess => '设备重置成功';

  @override
  String get detailResetRemote => '设备将远程重置';

  @override
  String get detailResetFailed => '重置失败';

  @override
  String get detailFactoryReset => '恢复出厂设置';

  @override
  String get detailFactoryResetWarning =>
      '这将清除所有设置并将设备恢复为出厂默认设置。您将需要再次设置设备。\n\n此操作无法撤消。';

  @override
  String get detailFactoryResetInitiated => '已启动恢复出厂设置';

  @override
  String get detailResetDevice => '重置设备';

  @override
  String detailResetOptionsFor(String device) {
    return '“$device”的重置选项';
  }

  @override
  String get detailResetUserData => '重置用户数据';

  @override
  String get detailResetUserDataSubtitle => '明确时间表和规则';

  @override
  String get detailResetWifi => '重置 WiFi 设置';

  @override
  String get detailResetWifiSubtitle => '设备需要重新设置';

  @override
  String get widgetBrightness => '亮度';

  @override
  String get widgetEnergyStatistics => '能源统计';

  @override
  String get widgetCurrentPower => '当前功率';

  @override
  String get widgetToday => '今天';

  @override
  String get widgetTotal => '总计';

  @override
  String get widgetOnTimeToday => '今天准时';

  @override
  String get widgetTotalOnTime => '总准时时间';

  @override
  String get widgetStandby => '待机';

  @override
  String get widgetUnknown => '未知';

  @override
  String get widgetOpenNetwork => '开放网络';

  @override
  String get widgetWepInsecure => 'WEP（不安全）';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get errDeviceNotSupportAction => '該設備不支援此操作。';

  @override
  String get errInvalidArgs => '向設備發送了無效參數。';

  @override
  String get errActionFailed => '設備無法執行請求的操作。';

  @override
  String get errInvalidValue => '提供的值無效。';

  @override
  String get errValueOutOfRange => '該值超出了可接受的範圍。';

  @override
  String get errFeatureNotAvailable => '此功能在此裝置上不可用。';

  @override
  String get errOutOfMemory => '設備記憶體不足。稍後再試。';

  @override
  String get errManualActionRequired => '需要在設備上進行手動操作。';

  @override
  String get errActionNotAuthorized => '此操作未經授權。';

  @override
  String get errUnexpected => '發生意外錯誤。請再試一次。';

  @override
  String get errDeviceUnreachableOffline => '無法存取設備。它可能處於離線狀態或位於不同的網路上。';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts 嘗試後請求逾時。設備可能處於離線狀態。';
  }

  @override
  String get errRequestTimedOut => '請求超時。設備可能處於離線狀態。';

  @override
  String get errNoRouteToHost => '無法到達設備。請檢查您的 WiFi 連線。';

  @override
  String get errHostUnreachable => '設備無法存取。請確保已上電並連接至WiFi。';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts 嘗試後無法與裝置通訊。';
  }

  @override
  String get errNetworkErrorComm => '網路錯誤：無法與設備通訊。';

  @override
  String get errActionNotAuthorizedDevice => '該操作未在設備上獲得授權。';

  @override
  String get errDeviceServiceNotFound => '未找到設備服務。該設備可能需要韌體更新。';

  @override
  String get errDeviceEncounteredError => '設備在處理請求時遇到錯誤。';

  @override
  String get errDeviceInternalError => '設備返回內部錯誤。';

  @override
  String get errDeviceTempUnavailable => '該設備暫時無法使用。請再試一次。';

  @override
  String errDeviceReturnedHttpError(int code) {
    return '裝置回傳錯誤 (HTTP $code)。';
  }

  @override
  String errFailedToPerformAction(String action) {
    return '無法在裝置上執行 $action。';
  }

  @override
  String get errDeviceReturnedError => '設備回傳錯誤。';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation操作逾時。請再試一次。';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds 秒後操作逾時。';
  }

  @override
  String get errOperationTimedOut => '操作超時。請再試一次。';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork => '請在「設定」中啟用本機網路權限以尋找裝置。';

  @override
  String get errCannotAccessLocalNetwork => '無法存取本地網路。請在「設定」中啟用本機網路權限。';

  @override
  String get errCheckWifiConnection => '無法發現設備。請檢查您的 WiFi 連線。';

  @override
  String errDiscoveryInterrupted(int count) {
    return '發現打斷了。找到 $count 裝置。';
  }

  @override
  String get errNoDevicesFound => '未找到設備。請確保設備已開啟並連接到您的網路。';

  @override
  String get actionGetDeviceState => '取得設備狀態';

  @override
  String get actionSetDeviceState => '設定設備狀態';

  @override
  String get actionGetEnergyData => '取得能源數據';

  @override
  String get actionScanNetworks => '掃描網路';

  @override
  String get actionConnectWifi => '連接到WiFi';

  @override
  String get actionCheckConnection => '檢查連線狀態';

  @override
  String get actionResetDevice => '重置設備';

  @override
  String get actionPerform => '執行動作';

  @override
  String get suggestTryRefreshing => '嘗試刷新設備清單或檢查設備是否有回應。';

  @override
  String get suggestEnsurePoweredOn => '確保裝置已開啟並連接至 WiFi 網路。';

  @override
  String get suggestMakeSureSameWifi => '確保您的手機與您的裝置連接到相同 WiFi 網路。';

  @override
  String get suggestCheckPhysical => '檢查實體設備中是否有任何需要注意的按鈕或開關。';

  @override
  String get suggestWaitAndTry => '稍等片刻，然後再試一次。';

  @override
  String get suggestDeviceBusy => '設備可能正忙。幾秒鐘後重試。';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => '取消';

  @override
  String get commonClose => '關閉';

  @override
  String get commonDone => '完成';

  @override
  String get commonLater => '後來';

  @override
  String get commonRefresh => '重新整理';

  @override
  String get commonTryAgain => '再試一次';

  @override
  String get commonOpenSettings => '開啟設定';

  @override
  String get commonGrant => '格蘭特';

  @override
  String get commonFix => '修復';

  @override
  String get commonOn => '開';

  @override
  String get commonOff => '關閉';

  @override
  String get commonOffline => '離線';

  @override
  String get commonStatus => '狀態';

  @override
  String get commonName => '名稱';

  @override
  String get commonType => '類型';

  @override
  String get commonModel => '型號';

  @override
  String get commonManufacturer => '製造商';

  @override
  String get commonSerial => '序列';

  @override
  String get commonFirmware => '韌體';

  @override
  String get commonHost => '主持人';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => '密碼';

  @override
  String get commonUnknownWifi => '未知 Wi-Fi';

  @override
  String get commonNotConnected => '未連接';

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
      other: '$seconds秒',
      one: '1秒',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => '智慧開關';

  @override
  String get deviceTypeLightSwitch => '燈開關';

  @override
  String get deviceTypeDimmer => '調光器';

  @override
  String get deviceTypeInsightPlug => '洞察插頭';

  @override
  String get deviceTypeMotionSensor => '運動感應器';

  @override
  String get deviceTypeMaker => '創客';

  @override
  String get deviceTypeBridge => '橋';

  @override
  String get deviceTypeCoffeeMaker => '咖啡機';

  @override
  String get deviceTypeCrockpot => '克羅克波特';

  @override
  String get deviceTypeHumidifier => '加濕器';

  @override
  String get deviceTypeOutdoorPlug => '戶外插頭';

  @override
  String get deviceTypeUnknown => '未知設備';

  @override
  String get pairingStepGetStarted => '開始使用';

  @override
  String get pairingStepConnectToDevice => '連接到裝置';

  @override
  String get pairingStepFindDevice => '尋找設備';

  @override
  String get pairingStepSelectNetwork => '選擇網路';

  @override
  String get pairingStepConfiguring => '配置';

  @override
  String get pairingStepReconnect => '重新連接';

  @override
  String get pairingStepFinalizing => '敲定';

  @override
  String get pairingStepSuccess => '成功';

  @override
  String get pairingStepError => '錯誤';

  @override
  String get homeToggleDebug => '切換調試模式';

  @override
  String get homeRefreshDevices => '重新整理裝置';

  @override
  String get homeSettings => '設定';

  @override
  String get homeDismiss => '解僱';

  @override
  String get homeDiscovering => '正在發現設備...';

  @override
  String get homeNoDevices => '未找到設備';

  @override
  String get homeScanDevices => '掃描設備';

  @override
  String get homeLookingForMore => '正在尋找更多設備...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 設備',
      one: '找到 1 個設備',
      zero: '未找到設備',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '找到 $count 設備，正在掃描...',
      one: '找到 1 個設備，正在掃描...',
      zero: '未找到設備，正在掃描...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => '汽車';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => '連接至WiFi';

  @override
  String get homePermissionExplanation =>
      '位置資訊用於尋找您的 Wi-Fi 詳細資訊。本機網路存取可讓您控制您的智慧交換器和設備。';

  @override
  String get homeDebugLog => '偵錯日誌';

  @override
  String get homeClear => '清除';

  @override
  String get homeDebugEmpty => '點擊刷新開始發現並查看日誌...';

  @override
  String get homeProbeHint => 'IP：連接埠（例如192.168.1.100:49153）';

  @override
  String get homeProbe => '探針';

  @override
  String get homeScanning => '正在掃描...';

  @override
  String get homeScanSubnet => '掃描整個子網路（iOS 修復）';

  @override
  String homePlatform(String platform, String version) {
    return '平台：$platform $version';
  }

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsSectionNetwork => '網路';

  @override
  String get settingsSectionDeviceSetup => '設備設定';

  @override
  String get settingsSectionDiscovery => '發現';

  @override
  String get settingsSectionAbout => '關於';

  @override
  String get settingsSectionDebug => '偵錯';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return '已獲得許可！ WiFi 名稱：$ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded => '已授予位置，但也需要本地網路許可。檢查設定。';

  @override
  String get settingsLocationRequired => '需要位置許可';

  @override
  String get settingsLocationRequiredBody => '若要顯示您的 WiFi 網路名稱，iOS 需要位置權限。';

  @override
  String get settingsRequiredPermissions => '所需權限：';

  @override
  String get settingsPermissionList => '1. 定位服務（「使用應用程式時」）\n2. 本地網路';

  @override
  String get settingsDiscoveryWithoutLocation =>
      '注意：設備發現無需位置許可即可進行。此權限僅用於顯示您的WiFi網路名稱。';

  @override
  String get settingsEnableLocation => '在設定中啟用位置';

  @override
  String get settingsLocationDeniedBody => '位置權限被拒絕。您可以從系統設定中啟用它。';

  @override
  String get settingsStepsToEnable => '啟用步驟：';

  @override
  String get settingsEnableLocationSteps =>
      '1. 開啟設定\n2. 捲動到“Bit Switch”\n3. 點擊“位置”\n4. 選擇“使用應用程式時”\n5. 返回此應用程式並點擊刷新按鈕';

  @override
  String get settingsLocationOnlyWifiName =>
      '注意：僅需要位置權限才能顯示 WiFi 名稱。沒有它，設備發現也可以工作。';

  @override
  String get settingsAdditionalPermission => '需要額外許可';

  @override
  String get settingsLocalNetworkBody => '發現和控制 Wemo 設備需要本地網路權限。';

  @override
  String get settingsWifiNameNotVisible => '您擁有「位置」權限，但 WiFi 名稱尚不可見。';

  @override
  String get settingsPleaseEnable => '請啟用：';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. 進入 iPhone 設定\n2. 向下捲動到“Bit Switch”\n3.啟用“本地網路”';

  @override
  String get settingsLocalNetworkIosReason => 'iOS 上的裝置發現和 WiFi 名稱存取都需要本機網路權限。';

  @override
  String get settingsPairNewDevice => '配對新設備';

  @override
  String get settingsPairNewDeviceSubtitle => '設定新的 Wemo 設備';

  @override
  String get settingsDiscoveryTimeout => '發現超時';

  @override
  String get settingsRequestTimeout => '請求超時';

  @override
  String get settingsAutoRefresh => '自動重新整理';

  @override
  String get settingsAutoRefreshOn => '開 - 設備狀態自動刷新';

  @override
  String get settingsAutoRefreshOff => '關閉 - 使用手動刷新按鈕';

  @override
  String get settingsAutoRefreshInterval => '自動刷新間隔';

  @override
  String get settingsAbout => '關於Bit Switch';

  @override
  String get settingsVersion => '版本';

  @override
  String get settingsNetworkDiagnostics => '網路診斷';

  @override
  String get settingsShowDebug => '顯示調試模式';

  @override
  String get settingsShowDebugSubtitle => '在主畫面上顯示調試控制項和網路診斷';

  @override
  String get settingsShowDebugHomeSubtitle => '在主畫面上顯示偵錯圖示以進行故障排除';

  @override
  String get settingsCurrentNetwork => '目前網路';

  @override
  String get settingsNetworkAccessStatus => '網路存取狀態';

  @override
  String get settingsNetworkAccessGranted => '本地網路可以存取';

  @override
  String get settingsNetworkAccessMissing => '可能需要額外的權限';

  @override
  String get settingsChecking => '正在檢查...';

  @override
  String get settingsEnableLocalNetwork => '在設定中啟用本機網絡';

  @override
  String get settingsNotConnectedWifi => '未連接至 WiFi';

  @override
  String get settingsPermissionRequiredView => '需要權限才能查看';

  @override
  String get settingsAllPermissionsGranted => '已授予所有權限';

  @override
  String get settingsLocalNetworkNeeded => '需要本地網路許可';

  @override
  String get settingsLocationNeeded => '需要位置許可';

  @override
  String get settingsRefreshPermissions => '刷新權限';

  @override
  String get settingsAboutWifiPermission => '關於WiFi名稱權限';

  @override
  String get settingsWifiPermissionExplanation =>
      '您的 WiFi 名稱有助於確認您的手機和 Wemo 裝置位於同一網路上。';

  @override
  String get settingsWifiPermissionIos => '在 iOS 上，顯示您的 WiFi 網路名稱需要位置權限。';

  @override
  String get settingsImportant => '重要：';

  @override
  String get settingsPrivacyNote => '• 您的位置永遠不會被追蹤\n• 不收集或儲存任何位置數據';

  @override
  String get settingsWifiPermissionImportant =>
      '• 無需此權限即可進行設備發現\n• 這只需要顯示 WiFi 名稱\n• 不收集或儲存任何位置數據';

  @override
  String get settingsGrantPermission => '授予許可';

  @override
  String get settingsHowLongScan => '掃描設備需要多長時間：';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return '發現超時設定為 $seconds 秒';
  }

  @override
  String get settingsHowLongResponses => '等待設備回應的時間：';

  @override
  String get settingsIncreaseTimeoutHint => '如果您看到「連線已關閉」錯誤，請增加此值。';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return '請求超時設定為 $seconds 秒';
  }

  @override
  String get settingsSetRefreshInterval => '設定自動狀態刷新的時間間隔：';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return '刷新間隔設定為 $seconds 秒';
  }

  @override
  String get settingsAboutTagline => '適用於 Wemo 裝置的乾淨、私人的本機控制器。';

  @override
  String get settingsAboutDescription => 'Bit Switch 使用本地網路發現來尋找和控制設備，無需依賴雲端。';

  @override
  String get settingsVersionValue => '版本1.0.1';

  @override
  String get settingsProtocol => '協議：SSDP/UPnP';

  @override
  String get settingsMulticastAddress => '群播位址：239.255.255.250:1900';

  @override
  String get settingsDevicePorts => '設備連接埠：49152-49159';

  @override
  String get settingsControlProtocol => '控制協定：SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip => '提示：確保您的裝置與 Wemo 裝置位於同一網絡，且 UDP 多播未被封鎖。';

  @override
  String get settingsDevicePaired => '裝置已配對！正在刷新設備清單...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds 每個請求的秒數';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return '刷新每台 $seconds';
  }

  @override
  String get pairingTitle => '配對新設備';

  @override
  String get pairingSetupTitle => '設定您的 Wemo 設備';

  @override
  String get pairingBeforeBegin => '開始之前，請確保您的 Wemo 裝置處於設定模式：';

  @override
  String get pairingPlugInTitle => '插入您的 Wemo 設備';

  @override
  String get pairingPlugInBody => '將其連接到電源並等待其啟動。';

  @override
  String get pairingBlinkingLedTitle => '尋找閃爍的 LED';

  @override
  String get pairingBlinkingLedBody => '閃爍的 LED 表示設備處於設定模式。';

  @override
  String get pairingCheckWifiTitle => '檢查 WiFi 網絡';

  @override
  String get pairingCheckWifiBody => '設備將廣播名為「WeMo.XXXXX」的網路。';

  @override
  String get pairingSolidLedHint => '如果 LED 常亮，請按住重設按鈕 5 秒鐘以進入設定模式。';

  @override
  String get pairingStart => '開始配對';

  @override
  String get pairingConnectWifiTitle => '連接到裝置 WiFi';

  @override
  String get pairingConnectWifiBody => '開啟手機的 WiFi 設定並連接到以「WeMo」開頭的網路。';

  @override
  String get pairingCurrentNetwork => '目前網路';

  @override
  String get pairingConnectedToDevice => '已連接Wemo設備！';

  @override
  String get pairingOpenWifiSettings => '開啟WiFi設定';

  @override
  String get pairingConnectedButton => '我已連接';

  @override
  String get pairingLookingForDevice => '正在尋找您的 Wemo 裝置...';

  @override
  String get pairingManualIpPrompt => '或手動輸入設備IP：';

  @override
  String get pairingDeviceIp => '設備 IP 位址';

  @override
  String get pairingConnectToIp => '連接至IP';

  @override
  String get pairingSelectHomeWifi => '選擇您的家庭 WiFi 網路：';

  @override
  String get pairingRefreshNetworks => '重新整理網路';

  @override
  String get pairingIosScanLimitation =>
      'iOS嚴格禁止第三方應用程式掃描附近的Wi-Fi網路。您可能需要手動輸入網路SSID。';

  @override
  String get pairingNoNetworks => '未找到網絡';

  @override
  String get pairingScanAgain => '再次掃描';

  @override
  String get pairingWifiPassword => 'WiFi 密碼';

  @override
  String get pairingConnect => '連接';

  @override
  String get pairingEnterNetworkManually => '手動輸入網絡';

  @override
  String get pairingEnterNetworkName => '輸入網路名稱：';

  @override
  String get pairingNetworkName => '網路名稱 (SSID)';

  @override
  String get pairingUseNetwork => '使用這個網絡';

  @override
  String get pairingConfiguringDevice => '配置設備...';

  @override
  String get pairingConfiguringWait => '設備正在連接到您的網絡，請稍候。';

  @override
  String get pairingReconnectTitle => '重新連接到您的網絡';

  @override
  String pairingReconnectBody(String ssid) {
    return '您的 Wemo 裝置現在正在連接到「$ssid」。請重新將您的手機連接到相同網路。';
  }

  @override
  String get pairingBackOnHome => '回到家庭網絡！';

  @override
  String get pairingReconnectedButton => '我已重新連接';

  @override
  String get pairingFinalizingSetup => '正在完成設定...';

  @override
  String get pairingSetupComplete => '設定完成！';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '連接至$ssid';
  }

  @override
  String get pairingDeviceReady => '您的裝置現已設定完畢並將顯示在主畫面上。';

  @override
  String get pairingSomethingWrong => '出了點問題';

  @override
  String get pairingStartOver => '重新開始';

  @override
  String get pairingErrorOpenWifi => '無法開啟 WiFi 設定。請手動打開它們。';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return '您的手機仍連接到“$ssid”。請開啟WiFi設置，連接到WeMo設備網絡，然後再試一次。';
  }

  @override
  String get pairingLoadingLooking => '正在尋找設備...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '在 $ip 上找不到 WeMo 裝置。請確保您的手機已連接至 WeMo WiFi 網絡，然後再試一次。您也可以手動輸入設備IP。';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return '發現設備時發生錯誤：$error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '正在連接到 $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '在 $ip 處找不到設備';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '連接到 $ip 時發生錯誤：$error';
  }

  @override
  String get pairingLoadingScanning => '正在掃描網路...';

  @override
  String pairingErrorScanning(String error) {
    return '無法掃描網路：$error';
  }

  @override
  String get pairingErrorSelectAndPassword => '請選擇網路並輸入密碼。';

  @override
  String get pairingLoadingSendingCredentials => '正在傳送網路憑證...';

  @override
  String get pairingLoadingWaitingConnection => '正在等待裝置連接...';

  @override
  String pairingErrorConfigure(String error) {
    return '設定網路失敗：$error';
  }

  @override
  String get pairingErrorPasswordShort => '密碼太短。請檢查並重試。';

  @override
  String get pairingErrorPasswordIncorrect => '連線失敗。請檢查密碼。';

  @override
  String get pairingErrorConnectionTimeout => '連接逾時。請再試一次。';

  @override
  String pairingErrorFinalizing(String error) {
    return '完成設定時發生錯誤：$error';
  }

  @override
  String get detailRefreshState => '刷新狀態';

  @override
  String get detailDeviceInfo => '設備資訊';

  @override
  String get detailAdvanced => '進階';

  @override
  String get detailWifiSetup => 'WiFi 設定';

  @override
  String get detailReset => '重置';

  @override
  String get detailUnreachable => '設備無法存取。檢查網路連線。';

  @override
  String detailFailedToggle(String error) {
    return '切換失敗：$error';
  }

  @override
  String get detailDeviceInformation => '設備資訊';

  @override
  String get detailPermissionScan => '掃描 WiFi 網路需要權限。';

  @override
  String get detailScanFailedManual => '無法掃描網路。手動輸入網路名稱。';

  @override
  String get detailEnterNetworkNameError => '請輸入或選擇網路名稱';

  @override
  String get detailEnterPasswordError => '請輸入網路密碼';

  @override
  String get detailWifiSuccess => 'WiFi配置成功！';

  @override
  String get detailScanNetworks => '掃描網路';

  @override
  String detailConfigureWifiFor(String device) {
    return '為“$device”配置WiFi網絡';
  }

  @override
  String get detailAvailableNetworks => '可用網路';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • 頻道 $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS嚴格禁止第三方應用程式掃描附近的Wi-Fi網路。請在下面手動輸入您的網路名稱。';

  @override
  String get detailTapRefreshScan => '點擊刷新以掃描網絡';

  @override
  String get detailEnterNetworkBelow => '在下方輸入您的網路名稱';

  @override
  String get detailNetworkCredentials => '網路憑證';

  @override
  String get detailConnecting => '正在連接網路...';

  @override
  String get detailConnected => '連結成功！';

  @override
  String get detailPasswordShort => '密碼太短';

  @override
  String get detailAuthenticationFailed => '身份驗證失敗 - 檢查密碼';

  @override
  String get detailConnectionFailed => '連線失敗';

  @override
  String get detailSelectReset => '請選擇要重設的內容';

  @override
  String get detailResetSchedulesWarning => '• 所有計劃和自動化規則都將被刪除';

  @override
  String get detailResetWifiWarning => '• WiFi 設定將會被刪除';

  @override
  String get detailSetupAgainWarning => '• 您將需要重新設定設備';

  @override
  String get detailUnreachableWarning => '• 設備可能會暫時無法存取';

  @override
  String get detailConfirmReset => '確認重置';

  @override
  String detailConfirmResetDevice(String device) {
    return '您確定要重置“$device”嗎？';
  }

  @override
  String get detailThisWill => '這將：';

  @override
  String get detailCannotUndo => '此操作無法撤銷。';

  @override
  String get detailYesReset => '是的，重置';

  @override
  String get detailResetSuccess => '設備重置成功';

  @override
  String get detailResetRemote => '設備將遠端重置';

  @override
  String get detailResetFailed => '重置失敗';

  @override
  String get detailFactoryReset => '恢復出廠設定';

  @override
  String get detailFactoryResetWarning =>
      '這將清除所有設定並將設備恢復為出廠預設值。您將需要再次設定設備。\n\n此操作無法撤銷。';

  @override
  String get detailFactoryResetInitiated => '已啟動恢復出廠設定';

  @override
  String get detailResetDevice => '重置設備';

  @override
  String detailResetOptionsFor(String device) {
    return '“$device”的重置選項';
  }

  @override
  String get detailResetUserData => '重置用戶數據';

  @override
  String get detailResetUserDataSubtitle => '明確時間表和規則';

  @override
  String get detailResetWifi => '重置 WiFi 設定';

  @override
  String get detailResetWifiSubtitle => '設備需要重新設定';

  @override
  String get widgetBrightness => '亮度';

  @override
  String get widgetEnergyStatistics => '能源統計';

  @override
  String get widgetCurrentPower => '當前功率';

  @override
  String get widgetToday => '今天';

  @override
  String get widgetTotal => '總計';

  @override
  String get widgetOnTimeToday => '今天準時';

  @override
  String get widgetTotalOnTime => '總準時時間';

  @override
  String get widgetStandby => '待機';

  @override
  String get widgetUnknown => '未知';

  @override
  String get widgetOpenNetwork => '開放網路';

  @override
  String get widgetWepInsecure => 'WEP（不安全）';
}
