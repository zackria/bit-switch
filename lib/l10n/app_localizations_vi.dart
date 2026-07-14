// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Thiết bị không hỗ trợ hành động này.';

  @override
  String get errInvalidArgs => 'Đối số không hợp lệ đã được gửi đến thiết bị.';

  @override
  String get errActionFailed =>
      'Thiết bị không thực hiện được hành động được yêu cầu.';

  @override
  String get errInvalidValue => 'Một giá trị không hợp lệ đã được cung cấp.';

  @override
  String get errValueOutOfRange => 'Giá trị nằm ngoài phạm vi chấp nhận được.';

  @override
  String get errFeatureNotAvailable =>
      'Tính năng này không có sẵn trên thiết bị này.';

  @override
  String get errOutOfMemory => 'Thiết bị đã hết bộ nhớ. Hãy thử lại sau.';

  @override
  String get errManualActionRequired =>
      'Cần phải thực hiện thao tác thủ công trên thiết bị.';

  @override
  String get errActionNotAuthorized => 'Hành động này không được phép.';

  @override
  String get errUnexpected =>
      'Đã xảy ra lỗi không mong muốn. Vui lòng thử lại.';

  @override
  String get errDeviceUnreachableOffline =>
      'Không thể kết nối với thiết bị. Nó có thể ngoại tuyến hoặc trên một mạng khác.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Yêu cầu đã hết thời gian chờ sau khi thử $attempts. Thiết bị có thể ngoại tuyến.';
  }

  @override
  String get errRequestTimedOut =>
      'Yêu cầu đã hết thời gian chờ. Thiết bị có thể ngoại tuyến.';

  @override
  String get errNoRouteToHost =>
      'Không thể tiếp cận thiết bị. Vui lòng kiểm tra kết nối WiFi của bạn.';

  @override
  String get errHostUnreachable =>
      'Thiết bị này không thể truy cập được. Hãy đảm bảo rằng nó đã được bật nguồn và kết nối với WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Không thể giao tiếp với thiết bị sau khi thử $attempts.';
  }

  @override
  String get errNetworkErrorComm => 'Lỗi mạng: Không thể kết nối với thiết bị.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Hành động này không được phép trên thiết bị.';

  @override
  String get errDeviceServiceNotFound =>
      'Không tìm thấy dịch vụ thiết bị. Thiết bị có thể cần cập nhật chương trình cơ sở.';

  @override
  String get errDeviceEncounteredError => 'Thiết bị gặp lỗi khi xử lý yêu cầu.';

  @override
  String get errDeviceInternalError => 'Thiết bị trả về lỗi nội bộ.';

  @override
  String get errDeviceTempUnavailable =>
      'Thiết bị tạm thời không khả dụng. Vui lòng thử lại.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Thiết bị trả về lỗi (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Không thể truy cập $action trên thiết bị.';
  }

  @override
  String get errDeviceReturnedError => 'Thiết bị trả về lỗi.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Thao tác $operation đã hết thời gian chờ. Vui lòng thử lại.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Hết thời gian hoạt động sau $seconds giây.';
  }

  @override
  String get errOperationTimedOut =>
      'Đã hết thời gian hoạt động. Vui lòng thử lại.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Vui lòng bật quyền Mạng cục bộ trong Cài đặt để tìm thiết bị.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Không thể truy cập mạng cục bộ. Vui lòng bật quyền Mạng cục bộ trong Cài đặt.';

  @override
  String get errCheckWifiConnection =>
      'Không thể khám phá các thiết bị. Vui lòng kiểm tra kết nối WiFi của bạn.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Việc khám phá bị gián đoạn. Đã tìm thấy (các) thiết bị $count.';
  }

  @override
  String get errNoDevicesFound =>
      'Không tìm thấy thiết bị nào. Hãy đảm bảo các thiết bị đã được bật nguồn và kết nối với mạng của bạn.';

  @override
  String get actionGetDeviceState => 'lấy trạng thái thiết bị';

  @override
  String get actionSetDeviceState => 'đặt trạng thái thiết bị';

  @override
  String get actionGetEnergyData => 'lấy dữ liệu năng lượng';

  @override
  String get actionScanNetworks => 'quét mạng';

  @override
  String get actionConnectWifi => 'kết nối với WiFi';

  @override
  String get actionCheckConnection => 'kiểm tra trạng thái kết nối';

  @override
  String get actionResetDevice => 'thiết lập lại thiết bị';

  @override
  String get actionPerform => 'thực hiện hành động';

  @override
  String get suggestTryRefreshing =>
      'Hãy thử làm mới danh sách thiết bị hoặc kiểm tra xem thiết bị có phản hồi không.';

  @override
  String get suggestEnsurePoweredOn =>
      'Đảm bảo thiết bị đã được bật và kết nối với mạng WiFi của bạn.';

  @override
  String get suggestMakeSureSameWifi =>
      'Đảm bảo điện thoại của bạn được kết nối với cùng mạng WiFi như các thiết bị của bạn.';

  @override
  String get suggestCheckPhysical =>
      'Kiểm tra thiết bị vật lý xem có nút hoặc công tắc nào cần chú ý không.';

  @override
  String get suggestWaitAndTry => 'Hãy đợi một lát và thử lại.';

  @override
  String get suggestDeviceBusy =>
      'Máy có thể đang bận. Hãy thử lại sau vài giây.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Hủy bỏ';

  @override
  String get commonClose => 'Đóng';

  @override
  String get commonDone => 'Xong';

  @override
  String get commonLater => 'sau này';

  @override
  String get commonRefresh => 'Làm mới';

  @override
  String get commonTryAgain => 'Thử lại';

  @override
  String get commonOpenSettings => 'Mở Cài đặt';

  @override
  String get commonGrant => 'Cấp';

  @override
  String get commonFix => 'sửa chữa';

  @override
  String get commonOn => 'Bật';

  @override
  String get commonOff => 'Tắt';

  @override
  String get commonOffline => 'Ngoại tuyến';

  @override
  String get commonStatus => 'Trạng thái';

  @override
  String get commonName => 'Tên';

  @override
  String get commonType => 'loại';

  @override
  String get commonModel => 'người mẫu';

  @override
  String get commonManufacturer => 'nhà sản xuất';

  @override
  String get commonSerial => 'nối tiếp';

  @override
  String get commonFirmware => 'Phần sụn';

  @override
  String get commonHost => 'Máy chủ';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Mật khẩu';

  @override
  String get commonUnknownWifi => 'Wi-Fi không xác định';

  @override
  String get commonNotConnected => 'Không được kết nối';

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
      other: '$seconds giây',
      one: '1 giây',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Công tắc thông minh';

  @override
  String get deviceTypeLightSwitch => 'Công tắc đèn';

  @override
  String get deviceTypeDimmer => 'Bộ điều chỉnh độ sáng';

  @override
  String get deviceTypeInsightPlug => 'Cắm cái nhìn sâu sắc';

  @override
  String get deviceTypeMotionSensor => 'Cảm biến chuyển động';

  @override
  String get deviceTypeMaker => 'Người tạo';

  @override
  String get deviceTypeBridge => 'Cầu';

  @override
  String get deviceTypeCoffeeMaker => 'Máy pha cà phê';

  @override
  String get deviceTypeCrockpot => 'nồi sành';

  @override
  String get deviceTypeHumidifier => 'Máy tạo độ ẩm';

  @override
  String get deviceTypeOutdoorPlug => 'Cắm ngoài trời';

  @override
  String get deviceTypeUnknown => 'Thiết bị không xác định';

  @override
  String get pairingStepGetStarted => 'Bắt đầu';

  @override
  String get pairingStepConnectToDevice => 'Kết nối với thiết bị';

  @override
  String get pairingStepFindDevice => 'Tìm thiết bị';

  @override
  String get pairingStepSelectNetwork => 'Chọn mạng';

  @override
  String get pairingStepConfiguring => 'Cấu hình';

  @override
  String get pairingStepReconnect => 'Kết nối lại';

  @override
  String get pairingStepFinalizing => 'Đang hoàn thiện';

  @override
  String get pairingStepSuccess => 'thành công';

  @override
  String get pairingStepError => 'Lỗi';

  @override
  String get homeToggleDebug => 'Chuyển đổi chế độ gỡ lỗi';

  @override
  String get homeRefreshDevices => 'Làm mới thiết bị';

  @override
  String get homeSettings => 'Cài đặt';

  @override
  String get homeDismiss => 'Loại bỏ';

  @override
  String get homeDiscovering => 'Đang phát hiện thiết bị...';

  @override
  String get homeNoDevices => 'Không tìm thấy thiết bị nào';

  @override
  String get homeScanDevices => 'Quét tìm thiết bị';

  @override
  String get homeLookingForMore => 'Đang tìm kiếm thêm thiết bị...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã tìm thấy thiết bị $count',
      one: 'Đã tìm thấy 1 thiết bị',
      zero: 'Không tìm thấy thiết bị nào',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã tìm thấy thiết bị $count, đang quét...',
      one: 'Đã tìm thấy 1 thiết bị, đang quét...',
      zero: 'Không tìm thấy thiết bị nào, đang quét...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Tự động';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Đã kết nối với WiFi';

  @override
  String get homePermissionExplanation =>
      'Thông tin vị trí được sử dụng để tìm thông tin chi tiết về Wi-Fi của bạn. Truy cập mạng cục bộ cho phép bạn điều khiển các thiết bị và công tắc thông minh của mình.';

  @override
  String get homeDebugLog => 'Nhật ký gỡ lỗi';

  @override
  String get homeClear => 'Xóa';

  @override
  String get homeDebugEmpty =>
      'Nhấn vào làm mới để bắt đầu khám phá và xem nhật ký...';

  @override
  String get homeProbeHint => 'IP:Cổng (ví dụ: 192.168.1.100:49153)';

  @override
  String get homeProbe => 'thăm dò';

  @override
  String get homeScanning => 'Đang quét...';

  @override
  String get homeScanSubnet => 'Quét toàn bộ mạng con (Sửa lỗi iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Nền tảng: $platform $version';
  }

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get settingsSectionNetwork => 'Mạng';

  @override
  String get settingsSectionDeviceSetup => 'Cài đặt thiết bị';

  @override
  String get settingsSectionDiscovery => 'khám phá';

  @override
  String get settingsSectionAbout => 'Giới thiệu';

  @override
  String get settingsSectionDebug => 'Gỡ lỗi';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Đã được cấp phép! Tên WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Vị trí đã được cấp nhưng cũng cần có sự cho phép của Mạng cục bộ. Kiểm tra cài đặt.';

  @override
  String get settingsLocationRequired => 'Cần có sự cho phép của vị trí';

  @override
  String get settingsLocationRequiredBody =>
      'Để hiển thị tên mạng WiFi của bạn, iOS cần có quyền Vị trí.';

  @override
  String get settingsRequiredPermissions => 'Quyền cần thiết:';

  @override
  String get settingsPermissionList =>
      '1. Dịch vụ định vị (\"Trong khi sử dụng ứng dụng\")\n2. Mạng cục bộ';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Lưu ý: Tính năng phát hiện thiết bị hoạt động mà không cần sự cho phép của vị trí. Quyền này chỉ được sử dụng để hiển thị tên mạng WiFi của bạn.';

  @override
  String get settingsEnableLocation => 'Bật vị trí trong cài đặt';

  @override
  String get settingsLocationDeniedBody =>
      'Quyền truy cập vị trí đã bị từ chối. Bạn có thể kích hoạt nó từ cài đặt hệ thống.';

  @override
  String get settingsStepsToEnable => 'Các bước để kích hoạt:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Mở Cài đặt\n2. Di chuyển đến \"Bit Switch\"\n3. Nhấn vào \"Vị trí\"\n4. Chọn \"Trong khi sử dụng ứng dụng\"\n5. Quay lại ứng dụng này và nhấn vào nút làm mới';

  @override
  String get settingsLocationOnlyWifiName =>
      'Lưu ý: Chỉ cần có quyền vị trí để hiển thị tên WiFi. Khám phá thiết bị hoạt động mà không cần nó.';

  @override
  String get settingsAdditionalPermission => 'Cần có giấy phép bổ sung';

  @override
  String get settingsLocalNetworkBody =>
      'Cần có quyền Mạng cục bộ để khám phá và kiểm soát các thiết bị Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Bạn có quyền Vị trí nhưng tên WiFi vẫn chưa hiển thị.';

  @override
  String get settingsPleaseEnable => 'Vui lòng kích hoạt:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Vào Cài đặt iPhone\n2. Kéo xuống \"Bit Switch\"\n3. Kích hoạt \"Mạng cục bộ\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Cần có sự cho phép của Mạng cục bộ để phát hiện thiết bị và truy cập tên WiFi trên iOS.';

  @override
  String get settingsPairNewDevice => 'Ghép nối thiết bị mới';

  @override
  String get settingsPairNewDeviceSubtitle => 'Thiết lập thiết bị Wemo mới';

  @override
  String get settingsDiscoveryTimeout => 'Hết thời gian khám phá';

  @override
  String get settingsRequestTimeout => 'Yêu cầu hết thời gian';

  @override
  String get settingsAutoRefresh => 'Tự động làm mới';

  @override
  String get settingsAutoRefreshOn =>
      'Bật - Trạng thái thiết bị tự động làm mới';

  @override
  String get settingsAutoRefreshOff => 'Tắt - Sử dụng nút làm mới thủ công';

  @override
  String get settingsAutoRefreshInterval => 'Khoảng thời gian tự động làm mới';

  @override
  String get settingsAbout => 'Giới thiệu về Bit Switch';

  @override
  String get settingsVersion => 'Phiên bản';

  @override
  String get settingsNetworkDiagnostics => 'Chẩn đoán mạng';

  @override
  String get settingsShowDebug => 'Hiển thị chế độ gỡ lỗi';

  @override
  String get settingsShowDebugSubtitle =>
      'Hiển thị các điều khiển gỡ lỗi và chẩn đoán mạng trên màn hình chính';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Hiển thị biểu tượng gỡ lỗi trên màn hình chính để khắc phục sự cố';

  @override
  String get settingsCurrentNetwork => 'Mạng hiện tại';

  @override
  String get settingsNetworkAccessStatus => 'Trạng thái truy cập mạng';

  @override
  String get settingsNetworkAccessGranted => 'Truy cập mạng cục bộ có sẵn';

  @override
  String get settingsNetworkAccessMissing =>
      'Quyền bổ sung có thể được yêu cầu';

  @override
  String get settingsChecking => 'Đang kiểm tra...';

  @override
  String get settingsEnableLocalNetwork =>
      'Kích hoạt mạng cục bộ trong cài đặt';

  @override
  String get settingsNotConnectedWifi => 'Chưa kết nối với WiFi';

  @override
  String get settingsPermissionRequiredView => 'Cần có quyền để xem';

  @override
  String get settingsAllPermissionsGranted => 'Tất cả các quyền được cấp';

  @override
  String get settingsLocalNetworkNeeded => 'Cần có sự cho phép của Mạng cục bộ';

  @override
  String get settingsLocationNeeded => 'Cần có sự cho phép vị trí';

  @override
  String get settingsRefreshPermissions => 'Làm mới quyền';

  @override
  String get settingsAboutWifiPermission => 'Giới thiệu về quyền của tên WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Tên WiFi của bạn giúp xác nhận rằng điện thoại và thiết bị Wemo của bạn nằm trên cùng một mạng.';

  @override
  String get settingsWifiPermissionIos =>
      'Trên iOS, việc hiển thị tên mạng WiFi của bạn cần có quyền truy cập vị trí.';

  @override
  String get settingsImportant => 'Quan trọng:';

  @override
  String get settingsPrivacyNote =>
      '• Vị trí của bạn không bao giờ bị theo dõi\n• Không có dữ liệu vị trí nào được thu thập hoặc lưu trữ';

  @override
  String get settingsWifiPermissionImportant =>
      '• Tính năng khám phá thiết bị hoạt động MÀ KHÔNG CÓ quyền này\n• Điều này chỉ cần thiết để hiển thị tên WiFi\n• Không có dữ liệu vị trí nào được thu thập hoặc lưu trữ';

  @override
  String get settingsGrantPermission => 'Cấp quyền';

  @override
  String get settingsHowLongScan => 'Quét thiết bị trong bao lâu:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Thời gian chờ khám phá được đặt thành $seconds giây';
  }

  @override
  String get settingsHowLongResponses => 'Thời gian chờ phản hồi của thiết bị:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Tăng giá trị này nếu bạn thấy lỗi \"Đã đóng kết nối\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Thời gian chờ yêu cầu được đặt thành $seconds giây';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Đặt khoảng thời gian để làm mới trạng thái tự động:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Khoảng thời gian làm mới được đặt thành $seconds giây';
  }

  @override
  String get settingsAboutTagline =>
      'Bộ điều khiển cục bộ riêng tư, sạch sẽ cho các thiết bị Wemo của bạn.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch sử dụng tính năng khám phá mạng cục bộ để tìm và điều khiển các thiết bị mà không cần phụ thuộc vào đám mây.';

  @override
  String get settingsVersionValue => 'Phiên bản 1.0.1';

  @override
  String get settingsProtocol => 'Giao thức: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Địa chỉ Multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Cổng thiết bị: 49152-49159';

  @override
  String get settingsControlProtocol => 'Giao thức điều khiển: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Mẹo: Đảm bảo thiết bị của bạn nằm trên cùng một mạng với các thiết bị Wemo và tính năng phát đa hướng UDP không bị chặn.';

  @override
  String get settingsDevicePaired =>
      'Đã ghép nối thiết bị! Đang làm mới danh sách thiết bị...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds giây cho mỗi yêu cầu';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Làm mới mọi $seconds';
  }

  @override
  String get pairingTitle => 'Ghép nối thiết bị mới';

  @override
  String get pairingSetupTitle => 'Thiết lập thiết bị Wemo của bạn';

  @override
  String get pairingBeforeBegin =>
      'Trước khi bắt đầu, hãy đảm bảo thiết bị Wemo của bạn ở chế độ thiết lập:';

  @override
  String get pairingPlugInTitle => 'Cắm thiết bị Wemo của bạn';

  @override
  String get pairingPlugInBody =>
      'Kết nối nó với nguồn điện và chờ cho nó khởi động.';

  @override
  String get pairingBlinkingLedTitle => 'Tìm đèn LED nhấp nháy';

  @override
  String get pairingBlinkingLedBody =>
      'Đèn LED nhấp nháy cho biết thiết bị đang ở chế độ cài đặt.';

  @override
  String get pairingCheckWifiTitle => 'Kiểm tra mạng WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Thiết bị sẽ phát sóng mạng có tên \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Nếu đèn LED sáng liên tục, hãy giữ nút đặt lại trong 5 giây để vào chế độ cài đặt.';

  @override
  String get pairingStart => 'Bắt đầu ghép nối';

  @override
  String get pairingConnectWifiTitle => 'Kết nối với thiết bị WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Mở cài đặt WiFi trên điện thoại của bạn và kết nối với mạng bắt đầu bằng \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Mạng hiện tại';

  @override
  String get pairingConnectedToDevice => 'Đã kết nối với thiết bị Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Mở cài đặt WiFi';

  @override
  String get pairingConnectedButton => 'Tôi đã kết nối';

  @override
  String get pairingLookingForDevice =>
      'Đang tìm kiếm thiết bị Wemo của bạn...';

  @override
  String get pairingManualIpPrompt => 'Hoặc nhập thủ công IP vào thiết bị:';

  @override
  String get pairingDeviceIp => 'Địa chỉ thiết bị IP';

  @override
  String get pairingConnectToIp => 'Kết nối với IP';

  @override
  String get pairingSelectHomeWifi => 'Chọn mạng WiFi tại nhà của bạn:';

  @override
  String get pairingRefreshNetworks => 'Làm mới mạng';

  @override
  String get pairingIosScanLimitation =>
      'iOS nghiêm cấm các ứng dụng của bên thứ ba quét các mạng Wi-Fi gần đó. Bạn có thể cần phải nhập mạng SSID theo cách thủ công.';

  @override
  String get pairingNoNetworks => 'Không tìm thấy mạng nào';

  @override
  String get pairingScanAgain => 'Quét lại';

  @override
  String get pairingWifiPassword => 'Mật khẩu WiFi';

  @override
  String get pairingConnect => 'Kết nối';

  @override
  String get pairingEnterNetworkManually => 'Nhập mạng theo cách thủ công';

  @override
  String get pairingEnterNetworkName => 'Nhập tên mạng:';

  @override
  String get pairingNetworkName => 'Tên mạng (SSID)';

  @override
  String get pairingUseNetwork => 'Sử dụng mạng này';

  @override
  String get pairingConfiguringDevice => 'Đang định cấu hình thiết bị...';

  @override
  String get pairingConfiguringWait =>
      'Vui lòng đợi trong khi thiết bị kết nối với mạng của bạn.';

  @override
  String get pairingReconnectTitle => 'Kết nối lại với mạng của bạn';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Thiết bị Wemo của bạn hiện đang kết nối với \"$ssid\". Vui lòng kết nối lại điện thoại của bạn với cùng một mạng.';
  }

  @override
  String get pairingBackOnHome => 'Trở lại mạng gia đình!';

  @override
  String get pairingReconnectedButton => 'Tôi đã kết nối lại';

  @override
  String get pairingFinalizingSetup => 'Đang hoàn tất thiết lập...';

  @override
  String get pairingSetupComplete => 'Thiết lập hoàn tất!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Đã kết nối với $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Thiết bị của bạn hiện đã được thiết lập và sẽ xuất hiện trên màn hình chính.';

  @override
  String get pairingSomethingWrong => 'Đã xảy ra lỗi';

  @override
  String get pairingStartOver => 'Bắt đầu lại';

  @override
  String get pairingErrorOpenWifi =>
      'Không thể mở cài đặt WiFi. Hãy mở chúng bằng tay.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Điện thoại của bạn vẫn được kết nối với \"$ssid\". Vui lòng mở cài đặt WiFi, kết nối với mạng thiết bị WeMo, sau đó thử lại.';
  }

  @override
  String get pairingLoadingLooking => 'Đang tìm kiếm thiết bị...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Không thể tìm thấy thiết bị WeMo tại $ip. Đảm bảo điện thoại của bạn được kết nối với mạng WeMo WiFi, sau đó thử lại. Bạn cũng có thể nhập thiết bị IP theo cách thủ công.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Lỗi phát hiện thiết bị: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Đang kết nối với $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Không tìm thấy thiết bị nào tại $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Lỗi kết nối với $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Đang quét mạng...';

  @override
  String pairingErrorScanning(String error) {
    return 'Không thể quét mạng: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Vui lòng chọn mạng và nhập mật khẩu.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Đang gửi thông tin đăng nhập mạng...';

  @override
  String get pairingLoadingWaitingConnection => 'Đang chờ thiết bị kết nối...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Không thể định cấu hình mạng: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Mật khẩu quá ngắn. Vui lòng kiểm tra và thử lại.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Không thể kết nối. Vui lòng kiểm tra mật khẩu.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Đã hết thời gian kết nối. Vui lòng thử lại.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Lỗi khi hoàn tất thiết lập: $error';
  }

  @override
  String get detailRefreshState => 'Trạng thái làm mới';

  @override
  String get detailDeviceInfo => 'Thông tin thiết bị';

  @override
  String get detailAdvanced => 'Nâng cao';

  @override
  String get detailWifiSetup => 'Cài đặt WiFi';

  @override
  String get detailReset => 'Đặt lại';

  @override
  String get detailUnreachable =>
      'Thiết bị không thể truy cập được. Kiểm tra kết nối mạng.';

  @override
  String detailFailedToggle(String error) {
    return 'Không thể chuyển đổi: $error';
  }

  @override
  String get detailDeviceInformation => 'Thông tin thiết bị';

  @override
  String get detailPermissionScan => 'Cần có quyền để quét mạng WiFi.';

  @override
  String get detailScanFailedManual =>
      'Không thể quét mạng. Nhập tên mạng theo cách thủ công.';

  @override
  String get detailEnterNetworkNameError => 'Vui lòng nhập hoặc chọn tên mạng';

  @override
  String get detailEnterPasswordError => 'Vui lòng nhập mật khẩu mạng';

  @override
  String get detailWifiSuccess => 'WiFi được cấu hình thành công!';

  @override
  String get detailScanNetworks => 'Quét mạng';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Định cấu hình mạng WiFi cho \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Mạng có sẵn';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS nghiêm cấm các ứng dụng của bên thứ ba quét các mạng Wi-Fi gần đó. Vui lòng nhập tên mạng của bạn theo cách thủ công bên dưới.';

  @override
  String get detailTapRefreshScan => 'Nhấn vào làm mới để quét mạng';

  @override
  String get detailEnterNetworkBelow => 'Nhập tên mạng của bạn bên dưới';

  @override
  String get detailNetworkCredentials => 'Thông tin xác thực mạng';

  @override
  String get detailConnecting => 'Đang kết nối với mạng...';

  @override
  String get detailConnected => 'Đã kết nối thành công!';

  @override
  String get detailPasswordShort => 'Mật khẩu quá ngắn';

  @override
  String get detailAuthenticationFailed =>
      'Xác thực không thành công - kiểm tra mật khẩu';

  @override
  String get detailConnectionFailed => 'Kết nối không thành công';

  @override
  String get detailSelectReset => 'Vui lòng chọn nội dung cần đặt lại';

  @override
  String get detailResetSchedulesWarning =>
      '• Tất cả lịch trình và quy tắc tự động hóa sẽ bị xóa';

  @override
  String get detailResetWifiWarning => '• Cài đặt WiFi sẽ bị xóa';

  @override
  String get detailSetupAgainWarning => '• Bạn sẽ cần thiết lập lại thiết bị';

  @override
  String get detailUnreachableWarning =>
      '• Thiết bị có thể tạm thời không thể truy cập được';

  @override
  String get detailConfirmReset => 'Xác nhận đặt lại';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Bạn có chắc chắn muốn đặt lại \"$device\" không?';
  }

  @override
  String get detailThisWill => 'Điều này sẽ:';

  @override
  String get detailCannotUndo => 'Không thể hoàn tác hành động này.';

  @override
  String get detailYesReset => 'Có, Đặt lại';

  @override
  String get detailResetSuccess => 'Đặt lại thiết bị thành công';

  @override
  String get detailResetRemote => 'Thiết bị sẽ thiết lập lại từ xa';

  @override
  String get detailResetFailed => 'Đặt lại không thành công';

  @override
  String get detailFactoryReset => 'Khôi phục cài đặt gốc';

  @override
  String get detailFactoryResetWarning =>
      'Thao tác này sẽ xóa TẤT CẢ cài đặt và khôi phục thiết bị về mặc định ban đầu. Bạn sẽ cần phải thiết lập lại thiết bị.\n\nKhông thể hoàn tác hành động này.';

  @override
  String get detailFactoryResetInitiated => 'Đã bắt đầu khôi phục cài đặt gốc';

  @override
  String get detailResetDevice => 'Đặt lại thiết bị';

  @override
  String detailResetOptionsFor(String device) {
    return 'Đặt lại tùy chọn cho \"$device\"';
  }

  @override
  String get detailResetUserData => 'Đặt lại dữ liệu người dùng';

  @override
  String get detailResetUserDataSubtitle => 'Xóa lịch trình và quy tắc';

  @override
  String get detailResetWifi => 'Đặt lại cài đặt WiFi';

  @override
  String get detailResetWifiSubtitle =>
      'Thiết bị sẽ cần phải được thiết lập lại';

  @override
  String get widgetBrightness => 'Độ sáng';

  @override
  String get widgetEnergyStatistics => 'Thống kê năng lượng';

  @override
  String get widgetCurrentPower => 'Nguồn điện hiện tại';

  @override
  String get widgetToday => 'hôm nay';

  @override
  String get widgetTotal => 'Tổng cộng';

  @override
  String get widgetOnTimeToday => 'Đúng giờ hôm nay';

  @override
  String get widgetTotalOnTime => 'Tổng số đúng giờ';

  @override
  String get widgetStandby => 'Chế độ chờ';

  @override
  String get widgetUnknown => 'Không xác định';

  @override
  String get widgetOpenNetwork => 'Mạng mở';

  @override
  String get widgetWepInsecure => 'WEP (không an toàn)';
}
