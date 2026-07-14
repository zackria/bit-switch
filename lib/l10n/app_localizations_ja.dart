// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'デバイスはこのアクションをサポートしていません。';

  @override
  String get errInvalidArgs => '無効な引数がデバイスに送信されました。';

  @override
  String get errActionFailed => 'デバイスは要求されたアクションを実行できませんでした。';

  @override
  String get errInvalidValue => '無効な値が指定されました。';

  @override
  String get errValueOutOfRange => '値が許容範囲外です。';

  @override
  String get errFeatureNotAvailable => 'この機能はこのデバイスでは利用できません。';

  @override
  String get errOutOfMemory => 'デバイスのメモリが不足しています。後でもう一度試してください。';

  @override
  String get errManualActionRequired => 'デバイスでは手動での操作が必要です。';

  @override
  String get errActionNotAuthorized => 'このアクションは許可されていません。';

  @override
  String get errUnexpected => '予期しないエラーが発生しました。もう一度試してください。';

  @override
  String get errDeviceUnreachableOffline =>
      'デバイスに到達できません。オフラインまたは別のネットワーク上にある可能性があります。';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts の試行後にリクエストがタイムアウトしました。デバイスがオフラインになっている可能性があります。';
  }

  @override
  String get errRequestTimedOut => 'リクエストがタイムアウトしました。デバイスがオフラインになっている可能性があります。';

  @override
  String get errNoRouteToHost => 'デバイスに到達できません。 WiFi の接続を確認してください。';

  @override
  String get errHostUnreachable =>
      'デバイスに到達できません。電源がオンになっていて、WiFi に接続されていることを確認してください。';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts の試行後、デバイスと通信できません。';
  }

  @override
  String get errNetworkErrorComm => 'ネットワーク エラー: デバイスと通信できません。';

  @override
  String get errActionNotAuthorizedDevice => 'このアクションはデバイス上で許可されていません。';

  @override
  String get errDeviceServiceNotFound =>
      'デバイスサービスが見つかりません。デバイスにはファームウェアのアップデートが必要な場合があります。';

  @override
  String get errDeviceEncounteredError => 'デバイスでリクエストの処理中にエラーが発生しました。';

  @override
  String get errDeviceInternalError => 'デバイスが内部エラーを返しました。';

  @override
  String get errDeviceTempUnavailable => 'デバイスは一時的に利用できません。もう一度試してください。';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'デバイスがエラーを返しました (HTTP $code)。';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'デバイス上で $action に失敗しました。';
  }

  @override
  String get errDeviceReturnedError => 'デバイスがエラーを返しました。';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation 操作がタイムアウトしました。もう一度試してください。';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds 秒後に操作がタイムアウトしました。';
  }

  @override
  String get errOperationTimedOut => '操作がタイムアウトしました。もう一度試してください。';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'デバイスを検索するには、設定でローカル ネットワークの許可を有効にしてください。';

  @override
  String get errCannotAccessLocalNetwork =>
      'ローカルネットワークにアクセスできません。設定でローカルネットワーク許可を有効にしてください。';

  @override
  String get errCheckWifiConnection => 'デバイスを検出できません。 WiFi の接続を確認してください。';

  @override
  String errDiscoveryInterrupted(int count) {
    return '探索が中断されました。 $count デバイスが見つかりました。';
  }

  @override
  String get errNoDevicesFound =>
      'デバイスが見つかりませんでした。デバイスの電源が入っており、ネットワークに接続されていることを確認してください。';

  @override
  String get actionGetDeviceState => 'デバイスの状態を取得する';

  @override
  String get actionSetDeviceState => 'デバイスの状態を設定する';

  @override
  String get actionGetEnergyData => 'エネルギーデータを取得する';

  @override
  String get actionScanNetworks => 'ネットワークをスキャンする';

  @override
  String get actionConnectWifi => 'WiFiに接続';

  @override
  String get actionCheckConnection => '接続ステータスを確認する';

  @override
  String get actionResetDevice => 'デバイスをリセットする';

  @override
  String get actionPerform => 'アクションを実行する';

  @override
  String get suggestTryRefreshing => 'デバイスリストを更新するか、デバイスが応答しているかどうかを確認してください。';

  @override
  String get suggestEnsurePoweredOn =>
      'デバイスの電源が入っており、WiFi ネットワークに接続されていることを確認します。';

  @override
  String get suggestMakeSureSameWifi =>
      '電話機がデバイスと同じ WiFi ネットワークに接続されていることを確認してください。';

  @override
  String get suggestCheckPhysical => '物理デバイスに注意が必要なボタンやスイッチがないか確認してください。';

  @override
  String get suggestWaitAndTry => 'しばらく待ってからもう一度試してください。';

  @override
  String get suggestDeviceBusy => 'デバイスがビジー状態である可能性があります。数秒後にもう一度試してください。';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'キャンセル';

  @override
  String get commonClose => '閉じる';

  @override
  String get commonDone => '完了';

  @override
  String get commonLater => '後で';

  @override
  String get commonRefresh => 'リフレッシュ';

  @override
  String get commonTryAgain => 'もう一度試してください';

  @override
  String get commonOpenSettings => '設定を開く';

  @override
  String get commonGrant => 'グラント';

  @override
  String get commonFix => '修正';

  @override
  String get commonOn => 'オン';

  @override
  String get commonOff => 'オフ';

  @override
  String get commonOffline => 'オフライン';

  @override
  String get commonStatus => 'ステータス';

  @override
  String get commonName => '名前';

  @override
  String get commonType => '種類';

  @override
  String get commonModel => 'モデル';

  @override
  String get commonManufacturer => 'メーカー';

  @override
  String get commonSerial => 'シリアル';

  @override
  String get commonFirmware => 'ファームウェア';

  @override
  String get commonHost => 'ホスト';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'パスワード';

  @override
  String get commonUnknownWifi => '不明 Wi-Fi';

  @override
  String get commonNotConnected => '接続されていません';

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
      other: '$seconds 秒',
      one: '1秒',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'スマートスイッチ';

  @override
  String get deviceTypeLightSwitch => 'ライトスイッチ';

  @override
  String get deviceTypeDimmer => '調光器';

  @override
  String get deviceTypeInsightPlug => 'インサイトプラグ';

  @override
  String get deviceTypeMotionSensor => 'モーションセンサー';

  @override
  String get deviceTypeMaker => 'メーカー';

  @override
  String get deviceTypeBridge => '橋';

  @override
  String get deviceTypeCoffeeMaker => 'コーヒーメーカー';

  @override
  String get deviceTypeCrockpot => 'クロックポット';

  @override
  String get deviceTypeHumidifier => '加湿器';

  @override
  String get deviceTypeOutdoorPlug => 'アウトドアプラグ';

  @override
  String get deviceTypeUnknown => '不明なデバイス';

  @override
  String get pairingStepGetStarted => '始めましょう';

  @override
  String get pairingStepConnectToDevice => 'デバイスに接続する';

  @override
  String get pairingStepFindDevice => 'デバイスの検索';

  @override
  String get pairingStepSelectNetwork => 'ネットワークの選択';

  @override
  String get pairingStepConfiguring => '設定中';

  @override
  String get pairingStepReconnect => '再接続';

  @override
  String get pairingStepFinalizing => 'ファイナライズ中';

  @override
  String get pairingStepSuccess => '成功';

  @override
  String get pairingStepError => 'エラー';

  @override
  String get homeToggleDebug => 'デバッグモードを切り替える';

  @override
  String get homeRefreshDevices => 'デバイスをリフレッシュする';

  @override
  String get homeSettings => '設定';

  @override
  String get homeDismiss => '解雇する';

  @override
  String get homeDiscovering => 'デバイスを検出しています...';

  @override
  String get homeNoDevices => 'デバイスが見つかりません';

  @override
  String get homeScanDevices => 'デバイスのスキャン';

  @override
  String get homeLookingForMore => 'さらにデバイスを探しています...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count デバイスが見つかりました',
      one: '1 台のデバイスが見つかりました',
      zero: 'デバイスが見つかりません',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count デバイスが見つかりました、スキャン中...',
      one: '1 台のデバイスが見つかりました、スキャン中...',
      zero: 'デバイスが見つかりませんでした。スキャンしています...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => '自動';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFiに接続';

  @override
  String get homePermissionExplanation =>
      '位置情報は、Wi-Fi の詳細を見つけるために使用されます。ローカル ネットワーク アクセスにより、スマート スイッチとデバイスを制御できます。';

  @override
  String get homeDebugLog => 'デバッグログ';

  @override
  String get homeClear => 'クリア';

  @override
  String get homeDebugEmpty => '[更新] をタップして検出を開始し、ログを確認します...';

  @override
  String get homeProbeHint => 'IP:ポート (例: 192.168.1.100:49153)';

  @override
  String get homeProbe => 'プローブ';

  @override
  String get homeScanning => 'スキャン中...';

  @override
  String get homeScanSubnet => 'サブネット全体をスキャン (iOS 修正)';

  @override
  String homePlatform(String platform, String version) {
    return 'プラットフォーム: $platform $version';
  }

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsSectionNetwork => 'ネットワーク';

  @override
  String get settingsSectionDeviceSetup => 'デバイスのセットアップ';

  @override
  String get settingsSectionDiscovery => '発見';

  @override
  String get settingsSectionAbout => 'について';

  @override
  String get settingsSectionDebug => 'デバッグ';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return '許可が下りました！ WiFi 名前: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      '場所は許可されていますが、ローカル ネットワークの許可も必要です。設定を確認してください。';

  @override
  String get settingsLocationRequired => '場所の許可が必要です';

  @override
  String get settingsLocationRequiredBody =>
      'WiFi ネットワーク名を表示するには、iOS に位置情報のアクセス許可が必要です。';

  @override
  String get settingsRequiredPermissions => '必要な権限:';

  @override
  String get settingsPermissionList => '1. 位置情報サービス（「アプリ使用中」）\n2. ローカルネットワーク';

  @override
  String get settingsDiscoveryWithoutLocation =>
      '注: デバイスの検出は、位置情報の許可がなくても機能します。この権限は、WiFi ネットワーク名を表示するためにのみ使用されます。';

  @override
  String get settingsEnableLocation => '設定で位置情報を有効にする';

  @override
  String get settingsLocationDeniedBody =>
      '位置情報の許可が拒否されました。システム設定から有効にすることができます。';

  @override
  String get settingsStepsToEnable => '有効にする手順:';

  @override
  String get settingsEnableLocationSteps =>
      '1.設定を開きます\n2.「Bit Switch」までスクロールします。\n3.「位置情報」をタップします\n4.「アプリ使用中」を選択します。\n5. このアプリに戻り、更新ボタンをタップします';

  @override
  String get settingsLocationOnlyWifiName =>
      '注: 位置情報のアクセス許可は、WiFi の名前を表示する場合にのみ必要です。デバイス検出はそれがなくても機能します。';

  @override
  String get settingsAdditionalPermission => '追加の許可が必要です';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo デバイスを検出して制御するには、ローカル ネットワークの許可が必要です。';

  @override
  String get settingsWifiNameNotVisible =>
      '位置情報のアクセス許可はありますが、WiFi の名前はまだ表示されていません。';

  @override
  String get settingsPleaseEnable => '有効にしてください:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1.iPhoneの設定に移動します\n2.「Bit Switch」まで下にスクロールします。\n3.「ローカルネットワーク」を有効にする';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS でのデバイス検出と WiFi 名アクセスの両方に、ローカル ネットワークの許可が必要です。';

  @override
  String get settingsPairNewDevice => '新しいデバイスをペアリングする';

  @override
  String get settingsPairNewDeviceSubtitle => '新しい Wemo デバイスをセットアップする';

  @override
  String get settingsDiscoveryTimeout => '検出タイムアウト';

  @override
  String get settingsRequestTimeout => 'リクエストのタイムアウト';

  @override
  String get settingsAutoRefresh => '自動更新';

  @override
  String get settingsAutoRefreshOn => 'オン - デバイスの状態が自動的に更新されます';

  @override
  String get settingsAutoRefreshOff => 'オフ - 手動更新ボタンを使用します';

  @override
  String get settingsAutoRefreshInterval => '自動更新間隔';

  @override
  String get settingsAbout => 'Bit Switchについて';

  @override
  String get settingsVersion => 'バージョン';

  @override
  String get settingsNetworkDiagnostics => 'ネットワーク診断';

  @override
  String get settingsShowDebug => 'デバッグモードを表示';

  @override
  String get settingsShowDebugSubtitle => 'ホーム画面にデバッグ コントロールとネットワーク診断を表示する';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'トラブルシューティングのためにホーム画面にデバッグ アイコンを表示します';

  @override
  String get settingsCurrentNetwork => '現在のネットワーク';

  @override
  String get settingsNetworkAccessStatus => 'ネットワークアクセスステータス';

  @override
  String get settingsNetworkAccessGranted => 'ローカルネットワークアクセスが可能です';

  @override
  String get settingsNetworkAccessMissing => '追加の権限が必要になる場合があります';

  @override
  String get settingsChecking => '確認中...';

  @override
  String get settingsEnableLocalNetwork => '設定でローカルネットワークを有効にする';

  @override
  String get settingsNotConnectedWifi => 'WiFiには接続されていません';

  @override
  String get settingsPermissionRequiredView => '閲覧には許可が必要です';

  @override
  String get settingsAllPermissionsGranted => '付与されたすべての権限';

  @override
  String get settingsLocalNetworkNeeded => 'ローカルネットワーク許可が必要です';

  @override
  String get settingsLocationNeeded => '位置情報の許可が必要です';

  @override
  String get settingsRefreshPermissions => '権限を更新する';

  @override
  String get settingsAboutWifiPermission => 'WiFi 名前の許可について';

  @override
  String get settingsWifiPermissionExplanation =>
      'WiFi 名は、電話機と Wemo デバイスが同じネットワーク上にあることを確認するのに役立ちます。';

  @override
  String get settingsWifiPermissionIos =>
      'iOS では、WiFi ネットワーク名を表示するには位置情報の許可が必要です。';

  @override
  String get settingsImportant => '重要:';

  @override
  String get settingsPrivacyNote =>
      '• あなたの位置情報は決して追跡されません\n• 位置データは収集または保存されません。';

  @override
  String get settingsWifiPermissionImportant =>
      '• デバイス検出は、この権限なしで機能します。\n• これは、WiFi 名を表示する場合にのみ必要です。\n• 位置データは収集または保存されません。';

  @override
  String get settingsGrantPermission => '許可を与える';

  @override
  String get settingsHowLongScan => 'デバイスをスキャンする時間:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return '検出タイムアウトを $seconds 秒に設定';
  }

  @override
  String get settingsHowLongResponses => 'デバイスの応答を待つ時間:';

  @override
  String get settingsIncreaseTimeoutHint =>
      '「接続が閉じられました」エラーが表示される場合は、この値を増やします。';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'リクエストのタイムアウトを $seconds 秒に設定';
  }

  @override
  String get settingsSetRefreshInterval => '自動状態更新の間隔を設定します。';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'リフレッシュ間隔を $seconds 秒に設定';
  }

  @override
  String get settingsAboutTagline => 'Wemo デバイス用のクリーンなプライベート ローカル コントローラー。';

  @override
  String get settingsAboutDescription =>
      'Bit Switch は、ローカル ネットワーク検出を使用して、クラウドに依存せずにデバイスを検索および制御します。';

  @override
  String get settingsVersionValue => 'バージョン1.0.1';

  @override
  String get settingsProtocol => 'プロトコル: SSDP/UPnP';

  @override
  String get settingsMulticastAddress => 'マルチキャスト アドレス: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'デバイスポート: 49152-49159';

  @override
  String get settingsControlProtocol => '制御プロトコル: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'ヒント: デバイスが Wemo デバイスと同じネットワーク上にあり、UDP マルチキャストがブロックされていないことを確認してください。';

  @override
  String get settingsDevicePaired => 'デバイスがペアリングされました!デバイスリストを更新しています...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'リクエストごとに $seconds 秒';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return '$secondsごとにリフレッシュ';
  }

  @override
  String get pairingTitle => '新しいデバイスをペアリングする';

  @override
  String get pairingSetupTitle => 'Wemo デバイスをセットアップする';

  @override
  String get pairingBeforeBegin =>
      '始める前に、Wemo デバイスがセットアップ モードになっていることを確認してください。';

  @override
  String get pairingPlugInTitle => 'Wemo デバイスを接続します';

  @override
  String get pairingPlugInBody => '電源に接続し、起動するまで待ちます。';

  @override
  String get pairingBlinkingLedTitle => '点滅している LED を探してください';

  @override
  String get pairingBlinkingLedBody => 'LED の点滅は、デバイスがセットアップ モードであることを示します。';

  @override
  String get pairingCheckWifiTitle => 'WiFi ネットワークを確認する';

  @override
  String get pairingCheckWifiBody =>
      'デバイスは「WeMo.XXXXX」という名前のネットワークをブロードキャストします。';

  @override
  String get pairingSolidLedHint =>
      'LED が点灯している場合は、リセット ボタンを 5 秒間押し続けてセットアップ モードに入ります。';

  @override
  String get pairingStart => 'ペアリングを開始する';

  @override
  String get pairingConnectWifiTitle => 'デバイス WiFi に接続する';

  @override
  String get pairingConnectWifiBody => '携帯電話のWiFi設定を開き、「WeMo」で始まるネットワークに接続します。';

  @override
  String get pairingCurrentNetwork => '現在のネットワーク';

  @override
  String get pairingConnectedToDevice => 'Wemo デバイスに接続しました!';

  @override
  String get pairingOpenWifiSettings => 'WiFi設定を開く';

  @override
  String get pairingConnectedButton => 'つながりました';

  @override
  String get pairingLookingForDevice => 'Wemo デバイスを探しています...';

  @override
  String get pairingManualIpPrompt => 'または、デバイス IP を手動で入力します。';

  @override
  String get pairingDeviceIp => 'デバイス IP アドレス';

  @override
  String get pairingConnectToIp => 'IPに接続';

  @override
  String get pairingSelectHomeWifi => 'ホーム WiFi ネットワークを選択してください:';

  @override
  String get pairingRefreshNetworks => 'ネットワークを更新する';

  @override
  String get pairingIosScanLimitation =>
      'iOS では、サードパーティ製アプリが近くの Wi-Fi ネットワークをスキャンすることを厳しく禁止しています。ネットワーク SSID を手動で入力する必要がある場合があります。';

  @override
  String get pairingNoNetworks => 'ネットワークが見つかりません';

  @override
  String get pairingScanAgain => '再スキャン';

  @override
  String get pairingWifiPassword => 'WiFi パスワード';

  @override
  String get pairingConnect => '接続する';

  @override
  String get pairingEnterNetworkManually => 'ネットワークを手動で入力する';

  @override
  String get pairingEnterNetworkName => 'ネットワーク名を入力してください:';

  @override
  String get pairingNetworkName => 'ネットワーク名 (SSID)';

  @override
  String get pairingUseNetwork => 'このネットワークを使用する';

  @override
  String get pairingConfiguringDevice => 'デバイスを構成しています...';

  @override
  String get pairingConfiguringWait => 'デバイスがネットワークに接続されるまでお待ちください。';

  @override
  String get pairingReconnectTitle => 'ネットワークに再接続する';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Wemo デバイスは現在「$ssid」に接続しています。電話機を同じネットワークに再接続してください。';
  }

  @override
  String get pairingBackOnHome => 'ホームネットワークに戻りました！';

  @override
  String get pairingReconnectedButton => '再接続しました';

  @override
  String get pairingFinalizingSetup => 'セットアップを終了しています...';

  @override
  String get pairingSetupComplete => 'セットアップ完了！';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssidに接続';
  }

  @override
  String get pairingDeviceReady => 'デバイスがセットアップされ、ホーム画面に表示されます。';

  @override
  String get pairingSomethingWrong => '何か問題が発生しました';

  @override
  String get pairingStartOver => '最初からやり直す';

  @override
  String get pairingErrorOpenWifi => 'WiFi 設定を開けませんでした。手動で開いてください。';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return '電話機はまだ「$ssid」に接続されています。 WiFi 設定を開き、WeMo デバイス ネットワークに接続して、もう一度試してください。';
  }

  @override
  String get pairingLoadingLooking => 'デバイスを探しています...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip で WeMo デバイスが見つかりませんでした。電話機が WeMo WiFi ネットワークに接続されていることを確認して、もう一度試してください。デバイス IP を手動で入力することもできます。';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'デバイス検出エラー: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ipに接続しています...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip にデバイスが見つかりません';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip への接続エラー: $error';
  }

  @override
  String get pairingLoadingScanning => 'ネットワークをスキャンしています...';

  @override
  String pairingErrorScanning(String error) {
    return 'ネットワークをスキャンできませんでした: $error';
  }

  @override
  String get pairingErrorSelectAndPassword => 'ネットワークを選択し、パスワードを入力してください。';

  @override
  String get pairingLoadingSendingCredentials => 'ネットワーク認証情報を送信しています...';

  @override
  String get pairingLoadingWaitingConnection => 'デバイスの接続を待機しています...';

  @override
  String pairingErrorConfigure(String error) {
    return 'ネットワークの構成に失敗しました: $error';
  }

  @override
  String get pairingErrorPasswordShort => 'パスワードが短すぎます。確認してもう一度お試しください。';

  @override
  String get pairingErrorPasswordIncorrect => '接続に失敗しました。パスワードをご確認ください。';

  @override
  String get pairingErrorConnectionTimeout => '接続がタイムアウトしました。もう一度試してください。';

  @override
  String pairingErrorFinalizing(String error) {
    return 'セットアップ終了時のエラー: $error';
  }

  @override
  String get detailRefreshState => 'リフレッシュ状態';

  @override
  String get detailDeviceInfo => 'デバイス情報';

  @override
  String get detailAdvanced => '上級者向け';

  @override
  String get detailWifiSetup => 'WiFi セットアップ';

  @override
  String get detailReset => 'リセット';

  @override
  String get detailUnreachable => 'デバイスに到達できません。ネットワーク接続を確認してください。';

  @override
  String detailFailedToggle(String error) {
    return '切り替えに失敗しました: $error';
  }

  @override
  String get detailDeviceInformation => 'デバイス情報';

  @override
  String get detailPermissionScan => 'WiFi ネットワークをスキャンするには許可が必要です。';

  @override
  String get detailScanFailedManual => 'ネットワークをスキャンできませんでした。ネットワーク名を手動で入力します。';

  @override
  String get detailEnterNetworkNameError => 'ネットワーク名を入力または選択してください';

  @override
  String get detailEnterPasswordError => 'ネットワークパスワードを入力してください';

  @override
  String get detailWifiSuccess => 'WiFi は正常に構成されました。';

  @override
  String get detailScanNetworks => 'ネットワークをスキャンする';

  @override
  String detailConfigureWifiFor(String device) {
    return '「$device」用にWiFiネットワークを構成します';
  }

  @override
  String get detailAvailableNetworks => '利用可能なネットワーク';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security・ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS では、サードパーティ製アプリが近くの Wi-Fi ネットワークをスキャンすることを厳しく禁止しています。以下にネットワーク名を手動で入力してください。';

  @override
  String get detailTapRefreshScan => '「更新」をタップしてネットワークをスキャンします';

  @override
  String get detailEnterNetworkBelow => '以下にネットワーク名を入力してください';

  @override
  String get detailNetworkCredentials => 'ネットワーク認証情報';

  @override
  String get detailConnecting => 'ネットワークに接続しています...';

  @override
  String get detailConnected => '無事接続されました！';

  @override
  String get detailPasswordShort => 'パスワードが短すぎます';

  @override
  String get detailAuthenticationFailed => '認証に失敗しました - パスワードを確認してください';

  @override
  String get detailConnectionFailed => '接続に失敗しました';

  @override
  String get detailSelectReset => 'リセットするものを選択してください';

  @override
  String get detailResetSchedulesWarning => '• すべてのスケジュールと自動化ルールが削除されます。';

  @override
  String get detailResetWifiWarning => '• WiFi の設定は消去されます。';

  @override
  String get detailSetupAgainWarning => '• デバイスを再度セットアップする必要があります';

  @override
  String get detailUnreachableWarning => '• デバイスが一時的にアクセスできなくなる可能性があります';

  @override
  String get detailConfirmReset => 'リセットの確認';

  @override
  String detailConfirmResetDevice(String device) {
    return '「$device」をリセットしてもよろしいですか?';
  }

  @override
  String get detailThisWill => 'これにより、次のことが行われます。';

  @override
  String get detailCannotUndo => 'この操作は元に戻すことができません。';

  @override
  String get detailYesReset => 'はい、リセットします';

  @override
  String get detailResetSuccess => 'デバイスが正常にリセットされました';

  @override
  String get detailResetRemote => 'デバイスはリモートでリセットされます';

  @override
  String get detailResetFailed => 'リセットに失敗しました';

  @override
  String get detailFactoryReset => '工場出荷時設定にリセット';

  @override
  String get detailFactoryResetWarning =>
      'これにより、すべての設定が消去され、デバイスが工場出荷時のデフォルトに復元されます。デバイスを再度セットアップする必要があります。\n\nこの操作は元に戻すことができません。';

  @override
  String get detailFactoryResetInitiated => '工場出荷時設定へのリセットが開始されました';

  @override
  String get detailResetDevice => 'デバイスをリセットする';

  @override
  String detailResetOptionsFor(String device) {
    return '「$device」のリセットオプション';
  }

  @override
  String get detailResetUserData => 'ユーザーデータのリセット';

  @override
  String get detailResetUserDataSubtitle => 'スケジュールやルールをクリアする';

  @override
  String get detailResetWifi => 'WiFi 設定をリセットする';

  @override
  String get detailResetWifiSubtitle => 'デバイスを再度セットアップする必要があります';

  @override
  String get widgetBrightness => '明るさ';

  @override
  String get widgetEnergyStatistics => 'エネルギー統計';

  @override
  String get widgetCurrentPower => '現在の電力';

  @override
  String get widgetToday => '今日';

  @override
  String get widgetTotal => '合計';

  @override
  String get widgetOnTimeToday => '今日は予定どおり';

  @override
  String get widgetTotalOnTime => '合計オンタイム';

  @override
  String get widgetStandby => 'スタンバイ';

  @override
  String get widgetUnknown => '不明';

  @override
  String get widgetOpenNetwork => 'オープンネットワーク';

  @override
  String get widgetWepInsecure => 'WEP (安全でない)';
}
