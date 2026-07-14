// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'อุปกรณ์ไม่รองรับการดำเนินการนี้';

  @override
  String get errInvalidArgs => 'อาร์กิวเมนต์ที่ไม่ถูกต้องถูกส่งไปยังอุปกรณ์';

  @override
  String get errActionFailed => 'อุปกรณ์ไม่สามารถดำเนินการตามที่ร้องขอได้';

  @override
  String get errInvalidValue => 'ระบุค่าที่ไม่ถูกต้อง';

  @override
  String get errValueOutOfRange => 'ค่าอยู่นอกช่วงที่ยอมรับได้';

  @override
  String get errFeatureNotAvailable => 'คุณลักษณะนี้ไม่พร้อมใช้งานบนอุปกรณ์นี้';

  @override
  String get errOutOfMemory =>
      'อุปกรณ์มีหน่วยความจำไม่เพียงพอ ลองอีกครั้งในภายหลัง';

  @override
  String get errManualActionRequired => 'จำเป็นต้องดำเนินการด้วยตนเองบนอุปกรณ์';

  @override
  String get errActionNotAuthorized => 'การดำเนินการนี้ไม่ได้รับอนุญาต';

  @override
  String get errUnexpected => 'เกิดข้อผิดพลาดที่ไม่คาดคิด โปรดลองอีกครั้ง';

  @override
  String get errDeviceUnreachableOffline =>
      'ไม่สามารถเข้าถึงอุปกรณ์ได้ มันอาจจะออฟไลน์หรืออยู่ในเครือข่ายอื่น';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'คำขอหมดเวลาหลังจากพยายาม $attempts อุปกรณ์อาจออฟไลน์อยู่';
  }

  @override
  String get errRequestTimedOut => 'คำขอหมดเวลา อุปกรณ์อาจออฟไลน์อยู่';

  @override
  String get errNoRouteToHost =>
      'ไม่สามารถเข้าถึงอุปกรณ์ได้ โปรดตรวจสอบการเชื่อมต่อ WiFi ของคุณ';

  @override
  String get errHostUnreachable =>
      'อุปกรณ์ไม่สามารถเข้าถึงได้ โปรดตรวจสอบให้แน่ใจว่าเปิดเครื่องอยู่และเชื่อมต่อกับ WiFi แล้ว';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'ไม่สามารถสื่อสารกับอุปกรณ์ได้หลังจากพยายาม $attempts';
  }

  @override
  String get errNetworkErrorComm =>
      'ข้อผิดพลาดของเครือข่าย: ไม่สามารถสื่อสารกับอุปกรณ์ได้';

  @override
  String get errActionNotAuthorizedDevice =>
      'การดำเนินการนี้ไม่ได้รับอนุญาตบนอุปกรณ์';

  @override
  String get errDeviceServiceNotFound =>
      'ไม่พบบริการอุปกรณ์ อุปกรณ์อาจจำเป็นต้องอัปเดตเฟิร์มแวร์';

  @override
  String get errDeviceEncounteredError =>
      'อุปกรณ์พบข้อผิดพลาดในการประมวลผลคำขอ';

  @override
  String get errDeviceInternalError => 'อุปกรณ์ส่งคืนข้อผิดพลาดภายใน';

  @override
  String get errDeviceTempUnavailable =>
      'อุปกรณ์ไม่พร้อมใช้งานชั่วคราว โปรดลองอีกครั้ง';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'อุปกรณ์ส่งคืนข้อผิดพลาด (HTTP $code)';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ล้มเหลวในการ $action บนอุปกรณ์';
  }

  @override
  String get errDeviceReturnedError => 'อุปกรณ์ส่งคืนข้อผิดพลาด';

  @override
  String errOperationTimedOutName(String operation) {
    return 'การดำเนินการ $operation หมดเวลา โปรดลองอีกครั้ง';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'การดำเนินการหมดเวลาหลังจาก $seconds วินาที';
  }

  @override
  String get errOperationTimedOut => 'การดำเนินการหมดเวลา โปรดลองอีกครั้ง';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'โปรดเปิดใช้งานการอนุญาตเครือข่ายท้องถิ่นในการตั้งค่าเพื่อค้นหาอุปกรณ์';

  @override
  String get errCannotAccessLocalNetwork =>
      'ไม่สามารถเข้าถึงเครือข่ายท้องถิ่น โปรดเปิดใช้งานการอนุญาตเครือข่ายท้องถิ่นในการตั้งค่า';

  @override
  String get errCheckWifiConnection =>
      'ไม่สามารถค้นพบอุปกรณ์ได้ โปรดตรวจสอบการเชื่อมต่อ WiFi ของคุณ';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'การค้นพบถูกขัดจังหวะ พบอุปกรณ์ $count';
  }

  @override
  String get errNoDevicesFound =>
      'ไม่พบอุปกรณ์ โปรดตรวจสอบให้แน่ใจว่าอุปกรณ์เปิดอยู่และเชื่อมต่อกับเครือข่ายของคุณ';

  @override
  String get actionGetDeviceState => 'รับสถานะอุปกรณ์';

  @override
  String get actionSetDeviceState => 'ตั้งค่าสถานะอุปกรณ์';

  @override
  String get actionGetEnergyData => 'รับข้อมูลพลังงาน';

  @override
  String get actionScanNetworks => 'สแกนหาเครือข่าย';

  @override
  String get actionConnectWifi => 'เชื่อมต่อกับ WiFi';

  @override
  String get actionCheckConnection => 'ตรวจสอบสถานะการเชื่อมต่อ';

  @override
  String get actionResetDevice => 'รีเซ็ตอุปกรณ์';

  @override
  String get actionPerform => 'ดำเนินการ';

  @override
  String get suggestTryRefreshing =>
      'ลองรีเฟรชรายการอุปกรณ์หรือตรวจสอบว่าอุปกรณ์ตอบสนองหรือไม่';

  @override
  String get suggestEnsurePoweredOn =>
      'ตรวจสอบให้แน่ใจว่าอุปกรณ์เปิดอยู่และเชื่อมต่อกับเครือข่าย WiFi ของคุณ';

  @override
  String get suggestMakeSureSameWifi =>
      'ตรวจสอบให้แน่ใจว่าโทรศัพท์ของคุณเชื่อมต่อกับเครือข่าย WiFi เดียวกันกับอุปกรณ์ของคุณ';

  @override
  String get suggestCheckPhysical =>
      'ตรวจสอบอุปกรณ์ทางกายภาพว่ามีปุ่มหรือสวิตช์ใดๆ ที่ต้องดำเนินการหรือไม่';

  @override
  String get suggestWaitAndTry => 'รอสักครู่แล้วลองอีกครั้ง';

  @override
  String get suggestDeviceBusy =>
      'อุปกรณ์อาจไม่ว่าง โปรดลองอีกครั้งในอีกไม่กี่วินาที';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'ยกเลิก';

  @override
  String get commonClose => 'ปิด';

  @override
  String get commonDone => 'เสร็จแล้ว';

  @override
  String get commonLater => 'ต่อมา';

  @override
  String get commonRefresh => 'รีเฟรช';

  @override
  String get commonTryAgain => 'ลองอีกครั้ง';

  @override
  String get commonOpenSettings => 'เปิดการตั้งค่า';

  @override
  String get commonGrant => 'แกรนท์';

  @override
  String get commonFix => 'แก้ไข';

  @override
  String get commonOn => 'เปิด';

  @override
  String get commonOff => 'ปิด';

  @override
  String get commonOffline => 'ออฟไลน์';

  @override
  String get commonStatus => 'สถานะ';

  @override
  String get commonName => 'ชื่อ';

  @override
  String get commonType => 'ประเภท';

  @override
  String get commonModel => 'รุ่น';

  @override
  String get commonManufacturer => 'ผู้ผลิต';

  @override
  String get commonSerial => 'อนุกรม';

  @override
  String get commonFirmware => 'เฟิร์มแวร์';

  @override
  String get commonHost => 'โฮสต์';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'รหัสผ่าน';

  @override
  String get commonUnknownWifi => 'ไม่ทราบ Wi-Fi';

  @override
  String get commonNotConnected => 'ไม่ได้เชื่อมต่อ';

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
      other: '$seconds วินาที',
      one: '1 วินาที',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'สวิตช์อัจฉริยะ';

  @override
  String get deviceTypeLightSwitch => 'สวิตช์ไฟ';

  @override
  String get deviceTypeDimmer => 'เครื่องหรี่';

  @override
  String get deviceTypeInsightPlug => 'ปลั๊กข้อมูลเชิงลึก';

  @override
  String get deviceTypeMotionSensor => 'เซ็นเซอร์ตรวจจับความเคลื่อนไหว';

  @override
  String get deviceTypeMaker => 'ผู้สร้าง';

  @override
  String get deviceTypeBridge => 'สะพาน';

  @override
  String get deviceTypeCoffeeMaker => 'เครื่องชงกาแฟ';

  @override
  String get deviceTypeCrockpot => 'หม้อต้ม';

  @override
  String get deviceTypeHumidifier => 'เครื่องเพิ่มความชื้น';

  @override
  String get deviceTypeOutdoorPlug => 'ปลั๊กกลางแจ้ง';

  @override
  String get deviceTypeUnknown => 'อุปกรณ์ที่ไม่รู้จัก';

  @override
  String get pairingStepGetStarted => 'เริ่มต้นเลย';

  @override
  String get pairingStepConnectToDevice => 'เชื่อมต่อกับอุปกรณ์';

  @override
  String get pairingStepFindDevice => 'ค้นหาอุปกรณ์';

  @override
  String get pairingStepSelectNetwork => 'เลือกเครือข่าย';

  @override
  String get pairingStepConfiguring => 'กำลังกำหนดค่า';

  @override
  String get pairingStepReconnect => 'เชื่อมต่อใหม่';

  @override
  String get pairingStepFinalizing => 'กำลังสรุป';

  @override
  String get pairingStepSuccess => 'ความสำเร็จ';

  @override
  String get pairingStepError => 'เกิดข้อผิดพลาด';

  @override
  String get homeToggleDebug => 'สลับโหมดแก้ไขข้อบกพร่อง';

  @override
  String get homeRefreshDevices => 'รีเฟรชอุปกรณ์';

  @override
  String get homeSettings => 'การตั้งค่า';

  @override
  String get homeDismiss => 'ยกเลิก';

  @override
  String get homeDiscovering => 'กำลังค้นพบอุปกรณ์...';

  @override
  String get homeNoDevices => 'ไม่พบอุปกรณ์';

  @override
  String get homeScanDevices => 'สแกนหาอุปกรณ์';

  @override
  String get homeLookingForMore => 'กำลังค้นหาอุปกรณ์เพิ่มเติม...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'พบอุปกรณ์ $count',
      one: 'พบ 1 อุปกรณ์',
      zero: 'ไม่พบอุปกรณ์',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'พบอุปกรณ์ $count กำลังสแกน...',
      one: 'พบอุปกรณ์ 1 เครื่อง กำลังสแกน...',
      zero: 'ไม่พบอุปกรณ์ กำลังสแกน...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'อัตโนมัติ';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'เชื่อมต่อกับ WiFi';

  @override
  String get homePermissionExplanation =>
      'ข้อมูลตำแหน่งจะใช้เพื่อค้นหารายละเอียด Wi-Fi ของคุณ การเข้าถึงเครือข่ายท้องถิ่นช่วยให้คุณควบคุมสวิตช์และอุปกรณ์อัจฉริยะของคุณได้';

  @override
  String get homeDebugLog => 'บันทึกการแก้ไขข้อบกพร่อง';

  @override
  String get homeClear => 'ชัดเจน';

  @override
  String get homeDebugEmpty => 'แตะรีเฟรชเพื่อเริ่มการค้นหาและดูบันทึก...';

  @override
  String get homeProbeHint => 'IP:พอร์ต (เช่น 192.168.1.100:49153)';

  @override
  String get homeProbe => 'โพรบ';

  @override
  String get homeScanning => 'กำลังสแกน...';

  @override
  String get homeScanSubnet => 'สแกนเครือข่ายย่อยทั้งหมด (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'แพลตฟอร์ม: $platform $version';
  }

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get settingsSectionNetwork => 'เครือข่าย';

  @override
  String get settingsSectionDeviceSetup => 'การตั้งค่าอุปกรณ์';

  @override
  String get settingsSectionDiscovery => 'การค้นพบ';

  @override
  String get settingsSectionAbout => 'เกี่ยวกับ';

  @override
  String get settingsSectionDebug => 'ดีบัก';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'ได้รับอนุญาตแล้ว! ชื่อ WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'ได้รับตำแหน่งแล้ว แต่จำเป็นต้องได้รับอนุญาตจากเครือข่ายท้องถิ่นด้วย ตรวจสอบการตั้งค่า';

  @override
  String get settingsLocationRequired => 'ต้องได้รับอนุญาตจากตำแหน่ง';

  @override
  String get settingsLocationRequiredBody =>
      'หากต้องการแสดงชื่อเครือข่าย WiFi ของคุณ iOS จำเป็นต้องได้รับอนุญาตจากตำแหน่ง';

  @override
  String get settingsRequiredPermissions => 'สิทธิ์ที่จำเป็น:';

  @override
  String get settingsPermissionList =>
      '1. บริการระบุตำแหน่ง (\"ขณะใช้งานแอป\")\n2. เครือข่ายท้องถิ่น';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'หมายเหตุ: การค้นพบอุปกรณ์ทำงานได้โดยไม่ต้องได้รับอนุญาตจากตำแหน่ง การอนุญาตนี้ใช้เพื่อแสดงชื่อเครือข่าย WiFi ของคุณเท่านั้น';

  @override
  String get settingsEnableLocation => 'เปิดใช้งานตำแหน่งในการตั้งค่า';

  @override
  String get settingsLocationDeniedBody =>
      'การอนุญาตตำแหน่งถูกปฏิเสธ คุณสามารถเปิดใช้งานได้จากการตั้งค่าระบบ';

  @override
  String get settingsStepsToEnable => 'ขั้นตอนในการเปิดใช้งาน:';

  @override
  String get settingsEnableLocationSteps =>
      '1. เปิดการตั้งค่า\n2. เลื่อนไปที่ \"Bit Switch\"\n3. แตะ \"ตำแหน่ง\"\n4. เลือก \"ขณะใช้งานแอป\"\n5. กลับไปที่แอปนี้แล้วแตะปุ่มรีเฟรช';

  @override
  String get settingsLocationOnlyWifiName =>
      'หมายเหตุ: จำเป็นต้องอนุญาตตำแหน่งเพื่อแสดงชื่อ WiFi เท่านั้น การค้นพบอุปกรณ์ทำงานได้โดยไม่ต้องใช้มัน';

  @override
  String get settingsAdditionalPermission => 'จำเป็นต้องได้รับอนุญาตเพิ่มเติม';

  @override
  String get settingsLocalNetworkBody =>
      'ต้องได้รับอนุญาตจากเครือข่ายท้องถิ่นเพื่อค้นหาและควบคุมอุปกรณ์ Wemo';

  @override
  String get settingsWifiNameNotVisible =>
      'คุณมีสิทธิ์เข้าถึงตำแหน่ง แต่ชื่อ WiFi ยังไม่ปรากฏให้เห็น';

  @override
  String get settingsPleaseEnable => 'กรุณาเปิดใช้งาน:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. ไปที่การตั้งค่า iPhone\n2. เลื่อนลงไปที่ \"Bit Switch\"\n3. เปิดใช้งาน \"เครือข่ายท้องถิ่น\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'ต้องได้รับอนุญาตจากเครือข่ายท้องถิ่นสำหรับทั้งการค้นหาอุปกรณ์และการเข้าถึงชื่อ WiFi บน iOS';

  @override
  String get settingsPairNewDevice => 'จับคู่อุปกรณ์ใหม่';

  @override
  String get settingsPairNewDeviceSubtitle => 'ตั้งค่าอุปกรณ์ Wemo ใหม่';

  @override
  String get settingsDiscoveryTimeout => 'หมดเวลาการค้นพบ';

  @override
  String get settingsRequestTimeout => 'ขอหมดเวลา';

  @override
  String get settingsAutoRefresh => 'รีเฟรชอัตโนมัติ';

  @override
  String get settingsAutoRefreshOn =>
      'เปิด - สถานะของอุปกรณ์จะรีเฟรชโดยอัตโนมัติ';

  @override
  String get settingsAutoRefreshOff => 'ปิด - ใช้ปุ่มรีเฟรชด้วยตนเอง';

  @override
  String get settingsAutoRefreshInterval => 'ช่วงเวลารีเฟรชอัตโนมัติ';

  @override
  String get settingsAbout => 'เกี่ยวกับ Bit Switch';

  @override
  String get settingsVersion => 'เวอร์ชัน';

  @override
  String get settingsNetworkDiagnostics => 'การวินิจฉัยเครือข่าย';

  @override
  String get settingsShowDebug => 'แสดงโหมดแก้ไขข้อบกพร่อง';

  @override
  String get settingsShowDebugSubtitle =>
      'แสดงการควบคุมการแก้ไขข้อบกพร่องและการวินิจฉัยเครือข่ายบนหน้าจอหลัก';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'แสดงไอคอนแก้ไขข้อบกพร่องบนหน้าจอหลักเพื่อแก้ไขปัญหา';

  @override
  String get settingsCurrentNetwork => 'เครือข่ายปัจจุบัน';

  @override
  String get settingsNetworkAccessStatus => 'สถานะการเข้าถึงเครือข่าย';

  @override
  String get settingsNetworkAccessGranted => 'มีการเข้าถึงเครือข่ายท้องถิ่น';

  @override
  String get settingsNetworkAccessMissing =>
      'อาจจำเป็นต้องได้รับอนุญาตเพิ่มเติม';

  @override
  String get settingsChecking => 'กำลังตรวจสอบ...';

  @override
  String get settingsEnableLocalNetwork =>
      'เปิดใช้งานเครือข่ายท้องถิ่นในการตั้งค่า';

  @override
  String get settingsNotConnectedWifi => 'ไม่ได้เชื่อมต่อกับ WiFi';

  @override
  String get settingsPermissionRequiredView => 'ต้องได้รับอนุญาตเพื่อดู';

  @override
  String get settingsAllPermissionsGranted => 'ได้รับอนุญาตทั้งหมดแล้ว';

  @override
  String get settingsLocalNetworkNeeded =>
      'จำเป็นต้องได้รับอนุญาตจากเครือข่ายท้องถิ่น';

  @override
  String get settingsLocationNeeded => 'จำเป็นต้องได้รับอนุญาตจากสถานที่';

  @override
  String get settingsRefreshPermissions => 'รีเฟรชสิทธิ์';

  @override
  String get settingsAboutWifiPermission => 'เกี่ยวกับการอนุญาตชื่อ WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'ชื่อ WiFi ของคุณช่วยยืนยันว่าโทรศัพท์และอุปกรณ์ Wemo ของคุณอยู่ในเครือข่ายเดียวกัน';

  @override
  String get settingsWifiPermissionIos =>
      'บน iOS การแสดงชื่อเครือข่าย WiFi ของคุณต้องได้รับอนุญาตจากตำแหน่ง';

  @override
  String get settingsImportant => 'สำคัญ:';

  @override
  String get settingsPrivacyNote =>
      '• ตำแหน่งของคุณจะไม่ถูกติดตาม\n• ไม่มีการรวบรวมหรือจัดเก็บข้อมูลตำแหน่ง';

  @override
  String get settingsWifiPermissionImportant =>
      '• การค้นพบอุปกรณ์ทำงานโดยไม่ได้รับอนุญาตนี้\n• จำเป็นสำหรับการแสดงชื่อ WiFi เท่านั้น\n• ไม่มีการรวบรวมหรือจัดเก็บข้อมูลตำแหน่ง';

  @override
  String get settingsGrantPermission => 'ให้สิทธิ์';

  @override
  String get settingsHowLongScan => 'ระยะเวลาในการสแกนหาอุปกรณ์:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'หมดเวลาการค้นพบตั้งค่าเป็น $seconds วินาที';
  }

  @override
  String get settingsHowLongResponses => 'ต้องรอการตอบสนองของอุปกรณ์นานเท่าใด:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'เพิ่มค่านี้หากคุณเห็นข้อผิดพลาด \"การเชื่อมต่อปิด\"';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'หมดเวลาคำขอตั้งค่าเป็น $seconds วินาที';
  }

  @override
  String get settingsSetRefreshInterval =>
      'กำหนดช่วงเวลาสำหรับการรีเฟรชสถานะอัตโนมัติ:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'ช่วงเวลารีเฟรชตั้งไว้ที่ $seconds วินาที';
  }

  @override
  String get settingsAboutTagline =>
      'ตัวควบคุมภายในเครื่องที่สะอาดและเป็นส่วนตัวสำหรับอุปกรณ์ Wemo ของคุณ';

  @override
  String get settingsAboutDescription =>
      'Bit Switch ใช้การค้นพบเครือข่ายท้องถิ่นเพื่อค้นหาและควบคุมอุปกรณ์โดยไม่ต้องพึ่งพาระบบคลาวด์';

  @override
  String get settingsVersionValue => 'เวอร์ชัน 1.0.1';

  @override
  String get settingsProtocol => 'โปรโตคอล: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'ที่อยู่แบบหลายผู้รับ: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'พอร์ตอุปกรณ์: 49152-49159';

  @override
  String get settingsControlProtocol => 'โปรโตคอลการควบคุม: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'เคล็ดลับ: ตรวจสอบให้แน่ใจว่าอุปกรณ์ของคุณอยู่ในเครือข่ายเดียวกันกับอุปกรณ์ Wemo ของคุณและมัลติคาสต์ UDP ไม่ได้ถูกบล็อก';

  @override
  String get settingsDevicePaired =>
      'จับคู่อุปกรณ์แล้ว! กำลังรีเฟรชรายการอุปกรณ์...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds วินาทีต่อคำขอ';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'รีเฟรชทุก ๆ $seconds';
  }

  @override
  String get pairingTitle => 'จับคู่อุปกรณ์ใหม่';

  @override
  String get pairingSetupTitle => 'ตั้งค่าอุปกรณ์ Wemo ของคุณ';

  @override
  String get pairingBeforeBegin =>
      'ก่อนที่คุณจะเริ่มต้น ตรวจสอบให้แน่ใจว่าอุปกรณ์ Wemo ของคุณอยู่ในโหมดการตั้งค่า:';

  @override
  String get pairingPlugInTitle => 'เสียบอุปกรณ์ Wemo ของคุณ';

  @override
  String get pairingPlugInBody => 'เชื่อมต่อกับแหล่งจ่ายไฟแล้วรอให้เริ่มทำงาน';

  @override
  String get pairingBlinkingLedTitle => 'มองหาไฟ LED กะพริบ';

  @override
  String get pairingBlinkingLedBody =>
      'ไฟ LED กะพริบแสดงว่าอุปกรณ์อยู่ในโหมดการตั้งค่า';

  @override
  String get pairingCheckWifiTitle => 'ตรวจสอบเครือข่าย WiFi';

  @override
  String get pairingCheckWifiBody =>
      'อุปกรณ์จะออกอากาศเครือข่ายชื่อ \"WeMo.XXXXX\"';

  @override
  String get pairingSolidLedHint =>
      'หากไฟ LED ติดค้าง ให้กดปุ่มรีเซ็ตค้างไว้ 5 วินาทีเพื่อเข้าสู่โหมดการตั้งค่า';

  @override
  String get pairingStart => 'เริ่มการจับคู่';

  @override
  String get pairingConnectWifiTitle => 'เชื่อมต่อกับอุปกรณ์ WiFi';

  @override
  String get pairingConnectWifiBody =>
      'เปิดการตั้งค่า WiFi ในโทรศัพท์ของคุณ และเชื่อมต่อกับเครือข่ายที่ขึ้นต้นด้วย \"WeMo\"';

  @override
  String get pairingCurrentNetwork => 'เครือข่ายปัจจุบัน';

  @override
  String get pairingConnectedToDevice => 'เชื่อมต่อกับอุปกรณ์ Wemo แล้ว!';

  @override
  String get pairingOpenWifiSettings => 'เปิดการตั้งค่า WiFi';

  @override
  String get pairingConnectedButton => 'ฉันเชื่อมต่อแล้ว';

  @override
  String get pairingLookingForDevice => 'กำลังมองหาอุปกรณ์ Wemo ของคุณ...';

  @override
  String get pairingManualIpPrompt => 'หรือเข้าอุปกรณ์ IP ด้วยตนเอง:';

  @override
  String get pairingDeviceIp => 'ที่อยู่อุปกรณ์ IP';

  @override
  String get pairingConnectToIp => 'เชื่อมต่อกับ IP';

  @override
  String get pairingSelectHomeWifi => 'เลือกเครือข่าย WiFi ที่บ้านของคุณ:';

  @override
  String get pairingRefreshNetworks => 'รีเฟรชเครือข่าย';

  @override
  String get pairingIosScanLimitation =>
      'iOS ห้ามมิให้แอปของบุคคลที่สามสแกนหาเครือข่าย Wi-Fi ที่อยู่ใกล้เคียงโดยเด็ดขาด คุณอาจต้องเข้าสู่เครือข่าย SSID ด้วยตนเอง';

  @override
  String get pairingNoNetworks => 'ไม่พบเครือข่าย';

  @override
  String get pairingScanAgain => 'สแกนอีกครั้ง';

  @override
  String get pairingWifiPassword => 'รหัสผ่าน WiFi';

  @override
  String get pairingConnect => 'เชื่อมต่อ';

  @override
  String get pairingEnterNetworkManually => 'เข้าสู่เครือข่ายด้วยตนเอง';

  @override
  String get pairingEnterNetworkName => 'ป้อนชื่อเครือข่าย:';

  @override
  String get pairingNetworkName => 'ชื่อเครือข่าย (SSID)';

  @override
  String get pairingUseNetwork => 'ใช้เครือข่ายนี้';

  @override
  String get pairingConfiguringDevice => 'กำลังกำหนดค่าอุปกรณ์...';

  @override
  String get pairingConfiguringWait =>
      'โปรดรอสักครู่ในขณะที่อุปกรณ์เชื่อมต่อกับเครือข่ายของคุณ';

  @override
  String get pairingReconnectTitle => 'เชื่อมต่อกับเครือข่ายของคุณอีกครั้ง';

  @override
  String pairingReconnectBody(String ssid) {
    return 'ขณะนี้อุปกรณ์ Wemo ของคุณเชื่อมต่อกับ \"$ssid\" แล้ว โปรดเชื่อมต่อโทรศัพท์ของคุณกับเครือข่ายเดียวกันอีกครั้ง';
  }

  @override
  String get pairingBackOnHome => 'กลับมาสู่เครือข่ายในบ้านแล้ว!';

  @override
  String get pairingReconnectedButton => 'ฉันเชื่อมต่อใหม่แล้ว';

  @override
  String get pairingFinalizingSetup => 'กำลังสิ้นสุดการตั้งค่า...';

  @override
  String get pairingSetupComplete => 'ตั้งค่าเสร็จสมบูรณ์!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'เชื่อมต่อกับ $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'อุปกรณ์ของคุณได้รับการตั้งค่าแล้วและจะปรากฏบนหน้าจอหลัก';

  @override
  String get pairingSomethingWrong => 'มีบางอย่างผิดพลาด';

  @override
  String get pairingStartOver => 'เริ่มต้นใหม่';

  @override
  String get pairingErrorOpenWifi =>
      'ไม่สามารถเปิดการตั้งค่า WiFi กรุณาเปิดด้วยตนเอง';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'โทรศัพท์ของคุณยังคงเชื่อมต่อกับ \"$ssid\" โปรดเปิดการตั้งค่า WiFi เชื่อมต่อกับเครือข่ายอุปกรณ์ WeMo แล้วลองอีกครั้ง';
  }

  @override
  String get pairingLoadingLooking => 'กำลังมองหาอุปกรณ์...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'ไม่พบอุปกรณ์ WeMo ที่ $ip ตรวจสอบให้แน่ใจว่าโทรศัพท์ของคุณเชื่อมต่อกับเครือข่าย WeMo WiFi แล้วลองอีกครั้ง คุณยังสามารถเข้าสู่อุปกรณ์ IP ได้ด้วยตนเอง';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'เกิดข้อผิดพลาดในการค้นหาอุปกรณ์: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'กำลังเชื่อมต่อกับ $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'ไม่พบอุปกรณ์ที่ $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'เกิดข้อผิดพลาดในการเชื่อมต่อกับ $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'กำลังสแกนหาเครือข่าย...';

  @override
  String pairingErrorScanning(String error) {
    return 'ไม่สามารถสแกนเครือข่าย: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'โปรดเลือกเครือข่ายและป้อนรหัสผ่าน';

  @override
  String get pairingLoadingSendingCredentials =>
      'กำลังส่งข้อมูลรับรองเครือข่าย...';

  @override
  String get pairingLoadingWaitingConnection => 'กำลังรออุปกรณ์เชื่อมต่อ...';

  @override
  String pairingErrorConfigure(String error) {
    return 'ไม่สามารถกำหนดค่าเครือข่าย: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'รหัสผ่านสั้นเกินไป โปรดตรวจสอบและลองอีกครั้ง';

  @override
  String get pairingErrorPasswordIncorrect =>
      'ไม่สามารถเชื่อมต่อได้ กรุณาตรวจสอบรหัสผ่าน';

  @override
  String get pairingErrorConnectionTimeout =>
      'การเชื่อมต่อหมดเวลา โปรดลองอีกครั้ง';

  @override
  String pairingErrorFinalizing(String error) {
    return 'เกิดข้อผิดพลาดในการสิ้นสุดการตั้งค่า: $error';
  }

  @override
  String get detailRefreshState => 'รีเฟรชสถานะ';

  @override
  String get detailDeviceInfo => 'ข้อมูลอุปกรณ์';

  @override
  String get detailAdvanced => 'ขั้นสูง';

  @override
  String get detailWifiSetup => 'การตั้งค่า WiFi';

  @override
  String get detailReset => 'รีเซ็ต';

  @override
  String get detailUnreachable =>
      'ไม่สามารถเข้าถึงอุปกรณ์ได้ ตรวจสอบการเชื่อมต่อเครือข่าย';

  @override
  String detailFailedToggle(String error) {
    return 'ไม่สามารถสลับได้: $error';
  }

  @override
  String get detailDeviceInformation => 'ข้อมูลอุปกรณ์';

  @override
  String get detailPermissionScan => 'ต้องได้รับอนุญาตในการสแกนเครือข่าย WiFi';

  @override
  String get detailScanFailedManual =>
      'ไม่สามารถสแกนเครือข่ายได้ ป้อนชื่อเครือข่ายด้วยตนเอง';

  @override
  String get detailEnterNetworkNameError => 'กรุณาป้อนหรือเลือกชื่อเครือข่าย';

  @override
  String get detailEnterPasswordError => 'กรุณากรอกรหัสผ่านเครือข่าย';

  @override
  String get detailWifiSuccess => 'กำหนดค่า WiFi สำเร็จแล้ว!';

  @override
  String get detailScanNetworks => 'สแกนหาเครือข่าย';

  @override
  String detailConfigureWifiFor(String device) {
    return 'กำหนดค่าเครือข่าย WiFi สำหรับ \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'เครือข่ายที่มีอยู่';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • ช่อง $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS ห้ามมิให้แอปของบุคคลที่สามสแกนหาเครือข่าย Wi-Fi ที่อยู่ใกล้เคียงโดยเด็ดขาด โปรดป้อนชื่อเครือข่ายของคุณด้วยตนเองด้านล่าง';

  @override
  String get detailTapRefreshScan => 'แตะรีเฟรชเพื่อสแกนหาเครือข่าย';

  @override
  String get detailEnterNetworkBelow => 'ป้อนชื่อเครือข่ายของคุณด้านล่าง';

  @override
  String get detailNetworkCredentials => 'ข้อมูลรับรองเครือข่าย';

  @override
  String get detailConnecting => 'กำลังเชื่อมต่อกับเครือข่าย...';

  @override
  String get detailConnected => 'เชื่อมต่อเรียบร้อยแล้ว!';

  @override
  String get detailPasswordShort => 'รหัสผ่านสั้นเกินไป';

  @override
  String get detailAuthenticationFailed =>
      'การตรวจสอบสิทธิ์ล้มเหลว - ตรวจสอบรหัสผ่าน';

  @override
  String get detailConnectionFailed => 'การเชื่อมต่อล้มเหลว';

  @override
  String get detailSelectReset => 'โปรดเลือกสิ่งที่จะรีเซ็ต';

  @override
  String get detailResetSchedulesWarning =>
      '• กำหนดการและกฎการทำงานอัตโนมัติทั้งหมดจะถูกลบ';

  @override
  String get detailResetWifiWarning => '• การตั้งค่า WiFi จะถูกลบ';

  @override
  String get detailSetupAgainWarning => '• คุณจะต้องตั้งค่าอุปกรณ์อีกครั้ง';

  @override
  String get detailUnreachableWarning =>
      '• อุปกรณ์อาจไม่สามารถเข้าถึงได้ชั่วคราว';

  @override
  String get detailConfirmReset => 'ยืนยันการรีเซ็ต';

  @override
  String detailConfirmResetDevice(String device) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการรีเซ็ต \"$device\"?';
  }

  @override
  String get detailThisWill => 'สิ่งนี้จะ:';

  @override
  String get detailCannotUndo => 'การดำเนินการนี้ไม่สามารถยกเลิกได้';

  @override
  String get detailYesReset => 'ใช่ รีเซ็ต';

  @override
  String get detailResetSuccess => 'รีเซ็ตอุปกรณ์สำเร็จ';

  @override
  String get detailResetRemote => 'อุปกรณ์จะรีเซ็ตจากระยะไกล';

  @override
  String get detailResetFailed => 'การรีเซ็ตล้มเหลว';

  @override
  String get detailFactoryReset => 'รีเซ็ตเป็นค่าจากโรงงาน';

  @override
  String get detailFactoryResetWarning =>
      'การดำเนินการนี้จะลบการตั้งค่าทั้งหมดและคืนค่าอุปกรณ์เป็นค่าเริ่มต้นจากโรงงาน คุณจะต้องตั้งค่าอุปกรณ์อีกครั้ง\n\nการดำเนินการนี้ไม่สามารถยกเลิกได้';

  @override
  String get detailFactoryResetInitiated =>
      'เริ่มต้นการรีเซ็ตเป็นค่าเริ่มต้นจากโรงงาน';

  @override
  String get detailResetDevice => 'รีเซ็ตอุปกรณ์';

  @override
  String detailResetOptionsFor(String device) {
    return 'รีเซ็ตตัวเลือกสำหรับ \"$device\"';
  }

  @override
  String get detailResetUserData => 'รีเซ็ตข้อมูลผู้ใช้';

  @override
  String get detailResetUserDataSubtitle => 'ล้างกำหนดการและกฎเกณฑ์';

  @override
  String get detailResetWifi => 'รีเซ็ตการตั้งค่า WiFi';

  @override
  String get detailResetWifiSubtitle => 'จะต้องตั้งค่าอุปกรณ์อีกครั้ง';

  @override
  String get widgetBrightness => 'ความสว่าง';

  @override
  String get widgetEnergyStatistics => 'สถิติพลังงาน';

  @override
  String get widgetCurrentPower => 'กำลังไฟฟ้าปัจจุบัน';

  @override
  String get widgetToday => 'วันนี้';

  @override
  String get widgetTotal => 'รวม';

  @override
  String get widgetOnTimeToday => 'ตรงเวลาวันนี้';

  @override
  String get widgetTotalOnTime => 'ตรงเวลาทั้งหมด';

  @override
  String get widgetStandby => 'สแตนด์บาย';

  @override
  String get widgetUnknown => 'ไม่ทราบ';

  @override
  String get widgetOpenNetwork => 'เปิดเครือข่าย';

  @override
  String get widgetWepInsecure => 'WEP (ไม่ปลอดภัย)';
}
