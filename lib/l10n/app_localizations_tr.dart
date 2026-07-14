// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get errDeviceNotSupportAction => 'Cihaz bu eylemi desteklemiyor.';

  @override
  String get errInvalidArgs => 'Cihaza geçersiz argümanlar gönderildi.';

  @override
  String get errActionFailed => 'Cihaz istenen eylemi gerçekleştiremedi.';

  @override
  String get errInvalidValue => 'Geçersiz bir değer sağlandı.';

  @override
  String get errValueOutOfRange => 'Değer kabul edilebilir aralığın dışında.';

  @override
  String get errFeatureNotAvailable => 'Bu özellik bu cihazda mevcut değil.';

  @override
  String get errOutOfMemory =>
      'Cihazın belleği yetersiz. Daha sonra tekrar deneyin.';

  @override
  String get errManualActionRequired =>
      'Cihazda manuel işlem yapılması gerekiyor.';

  @override
  String get errActionNotAuthorized => 'Bu eyleme izin verilmedi.';

  @override
  String get errUnexpected =>
      'Beklenmeyen bir hata oluştu. Lütfen tekrar deneyin.';

  @override
  String get errDeviceUnreachableOffline =>
      'Cihaza ulaşılamıyor. Çevrimdışı veya farklı bir ağda olabilir.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts denemelerinden sonra istek zaman aşımına uğradı. Cihaz çevrimdışı olabilir.';
  }

  @override
  String get errRequestTimedOut =>
      'İstek zaman aşımına uğradı. Cihaz çevrimdışı olabilir.';

  @override
  String get errNoRouteToHost =>
      'Cihaza ulaşılamıyor. Lütfen WiFi bağlantınızı kontrol edin.';

  @override
  String get errHostUnreachable =>
      'Cihaza ulaşılamıyor. Lütfen açık olduğundan ve WiFi\'e bağlı olduğundan emin olun.';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts denemesinden sonra cihazla iletişim kurulamıyor.';
  }

  @override
  String get errNetworkErrorComm => 'Ağ hatası: Cihazla iletişim kurulamıyor.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Bu eyleme cihazda izin verilmedi.';

  @override
  String get errDeviceServiceNotFound =>
      'Cihaz hizmeti bulunamadı. Cihazın firmware güncellemesine ihtiyacı olabilir.';

  @override
  String get errDeviceEncounteredError =>
      'Cihaz isteği işlerken bir hatayla karşılaştı.';

  @override
  String get errDeviceInternalError => 'Cihaz dahili bir hata döndürdü.';

  @override
  String get errDeviceTempUnavailable =>
      'Cihaz geçici olarak kullanılamıyor. Lütfen tekrar deneyin.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Cihaz bir hata döndürdü (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Cihazda $action başarısız oldu.';
  }

  @override
  String get errDeviceReturnedError => 'Cihaz bir hata döndürdü.';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation işlemi zaman aşımına uğradı. Lütfen tekrar deneyin.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'İşlem $seconds saniye sonra zaman aşımına uğradı.';
  }

  @override
  String get errOperationTimedOut =>
      'İşlem zaman aşımına uğradı. Lütfen tekrar deneyin.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Cihazları bulmak için lütfen Ayarlar\'da Yerel Ağ iznini etkinleştirin.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Yerel ağa erişilemiyor. Lütfen Ayarlar\'da Yerel Ağ iznini etkinleştirin.';

  @override
  String get errCheckWifiConnection =>
      'Cihazlar bulunamıyor. Lütfen WiFi bağlantınızı kontrol edin.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Keşif kesintiye uğradı. $count cihazı/cihazları bulundu.';
  }

  @override
  String get errNoDevicesFound =>
      'Hiçbir cihaz bulunamadı. Lütfen cihazların açık ve ağınıza bağlı olduğundan emin olun.';

  @override
  String get actionGetDeviceState => 'cihaz durumunu al';

  @override
  String get actionSetDeviceState => 'cihaz durumunu ayarla';

  @override
  String get actionGetEnergyData => 'enerji verilerini al';

  @override
  String get actionScanNetworks => 'ağları tara';

  @override
  String get actionConnectWifi => 'WiFi\'e bağlanın';

  @override
  String get actionCheckConnection => 'bağlantı durumunu kontrol et';

  @override
  String get actionResetDevice => 'cihazı sıfırla';

  @override
  String get actionPerform => 'eylem gerçekleştir';

  @override
  String get suggestTryRefreshing =>
      'Cihaz listesini yenilemeyi deneyin veya cihazın yanıt verip vermediğini kontrol edin.';

  @override
  String get suggestEnsurePoweredOn =>
      'Cihazın açık olduğundan ve WiFi ağınıza bağlı olduğundan emin olun.';

  @override
  String get suggestMakeSureSameWifi =>
      'Telefonunuzun cihazlarınızla aynı WiFi ağına bağlı olduğundan emin olun.';

  @override
  String get suggestCheckPhysical =>
      'Dikkat edilmesi gereken herhangi bir düğme veya anahtar olup olmadığını fiziksel cihazda kontrol edin.';

  @override
  String get suggestWaitAndTry => 'Bir süre bekleyip tekrar deneyin.';

  @override
  String get suggestDeviceBusy =>
      'Cihaz meşgul olabilir. Birkaç saniye sonra tekrar deneyin.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'İptal';

  @override
  String get commonClose => 'Kapat';

  @override
  String get commonDone => 'Bitti';

  @override
  String get commonLater => 'Daha sonra';

  @override
  String get commonRefresh => 'Yenile';

  @override
  String get commonTryAgain => 'Tekrar Deneyin';

  @override
  String get commonOpenSettings => 'Ayarları Aç';

  @override
  String get commonGrant => 'Hibe';

  @override
  String get commonFix => 'Düzeltme';

  @override
  String get commonOn => 'Açık';

  @override
  String get commonOff => 'Kapalı';

  @override
  String get commonOffline => 'Çevrimdışı';

  @override
  String get commonStatus => 'Durum';

  @override
  String get commonName => 'İsim';

  @override
  String get commonType => 'Tür';

  @override
  String get commonModel => 'Modeli';

  @override
  String get commonManufacturer => 'Üretici';

  @override
  String get commonSerial => 'Seri';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Sunucu';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Şifre';

  @override
  String get commonUnknownWifi => 'Bilinmeyen Wi-Fi';

  @override
  String get commonNotConnected => 'Bağlı değil';

  @override
  String commonSecondsShort(int seconds) {
    return '$seconds\'ler';
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
      other: '$seconds saniye',
      one: '1 saniye',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Akıllı Anahtar';

  @override
  String get deviceTypeLightSwitch => 'Işık Anahtarı';

  @override
  String get deviceTypeDimmer => 'Karartıcı';

  @override
  String get deviceTypeInsightPlug => 'İçgörü Fişi';

  @override
  String get deviceTypeMotionSensor => 'Hareket Sensörü';

  @override
  String get deviceTypeMaker => 'Yapımcı';

  @override
  String get deviceTypeBridge => 'Köprü';

  @override
  String get deviceTypeCoffeeMaker => 'Kahve Makinesi';

  @override
  String get deviceTypeCrockpot => 'güveç';

  @override
  String get deviceTypeHumidifier => 'Nemlendirici';

  @override
  String get deviceTypeOutdoorPlug => 'Dış Mekan Fişi';

  @override
  String get deviceTypeUnknown => 'Bilinmeyen Cihaz';

  @override
  String get pairingStepGetStarted => 'Başlayın';

  @override
  String get pairingStepConnectToDevice => 'Cihaza Bağlan';

  @override
  String get pairingStepFindDevice => 'Cihazı Bul';

  @override
  String get pairingStepSelectNetwork => 'Ağ Seçin';

  @override
  String get pairingStepConfiguring => 'Yapılandırma';

  @override
  String get pairingStepReconnect => 'Yeniden bağlan';

  @override
  String get pairingStepFinalizing => 'Sonlandırılıyor';

  @override
  String get pairingStepSuccess => 'Başarı';

  @override
  String get pairingStepError => 'Hata';

  @override
  String get homeToggleDebug => 'Hata ayıklama modunu değiştir';

  @override
  String get homeRefreshDevices => 'Cihazları yenile';

  @override
  String get homeSettings => 'Ayarlar';

  @override
  String get homeDismiss => 'Reddet';

  @override
  String get homeDiscovering => 'Cihazlar keşfediliyor...';

  @override
  String get homeNoDevices => 'Hiçbir cihaz bulunamadı';

  @override
  String get homeScanDevices => 'Cihazları tara';

  @override
  String get homeLookingForMore => 'Daha fazla cihaz aranıyor...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cihazları bulundu',
      one: '1 cihaz bulundu',
      zero: 'Hiçbir cihaz bulunamadı',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cihazları bulundu, taranıyor...',
      one: '1 cihaz bulundu, taranıyor...',
      zero: 'Hiçbir cihaz bulunamadı, taranıyor...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Otomatik';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'WiFi\'e bağlandı';

  @override
  String get homePermissionExplanation =>
      'Konum bilgileri Wi-Fi ayrıntılarınızı bulmak için kullanılır. Yerel ağ erişimi, akıllı anahtarlarınızı ve cihazlarınızı kontrol etmenizi sağlar.';

  @override
  String get homeDebugLog => 'Hata Ayıklama Günlüğü';

  @override
  String get homeClear => 'Temizle';

  @override
  String get homeDebugEmpty =>
      'Keşfi başlatmak ve günlükleri görmek için yenile\'ye dokunun...';

  @override
  String get homeProbeHint => 'IP: Bağlantı Noktası (ör. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Prob';

  @override
  String get homeScanning => 'Taranıyor...';

  @override
  String get homeScanSubnet => 'Tüm Alt Ağı Tara (iOS Düzeltme)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platform: $platform $version';
  }

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsSectionNetwork => 'Ağ';

  @override
  String get settingsSectionDeviceSetup => 'Cihaz Kurulumu';

  @override
  String get settingsSectionDiscovery => 'Keşif';

  @override
  String get settingsSectionAbout => 'Hakkında';

  @override
  String get settingsSectionDebug => 'Hata ayıklama';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'İzin verildi! WiFi adı: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Konum verildi ancak Yerel Ağ izni de gerekli. Ayarları kontrol edin.';

  @override
  String get settingsLocationRequired => 'Konum İzni Gerekli';

  @override
  String get settingsLocationRequiredBody =>
      'WiFi ağ adınızı görüntülemek için iOS\'un Konum iznine ihtiyacı vardır.';

  @override
  String get settingsRequiredPermissions => 'Gerekli İzinler:';

  @override
  String get settingsPermissionList =>
      '1. Konum Hizmetleri (\"Uygulamayı Kullanırken\")\n2. Yerel Ağ';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Not: Cihaz bulma, konum izni olmadan çalışır. Bu izin yalnızca WiFi ağ adınızı görüntülemek için kullanılır.';

  @override
  String get settingsEnableLocation => 'Ayarlar\'da Konumu Etkinleştir';

  @override
  String get settingsLocationDeniedBody =>
      'Konum izni reddedildi. Sistem ayarlarından etkinleştirebilirsiniz.';

  @override
  String get settingsStepsToEnable => 'Etkinleştirme adımları:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Ayarları açın\n2. \"Bit Switch\"e ilerleyin\n3. \"Konum\"a dokunun\n4. \"Uygulamayı Kullanırken\"i seçin\n5. Bu uygulamaya dönün ve yenile düğmesine dokunun';

  @override
  String get settingsLocationOnlyWifiName =>
      'Not: Konum izni yalnızca WiFi adını görüntülemek için gereklidir. Cihaz keşfi bu özellik olmadan çalışır.';

  @override
  String get settingsAdditionalPermission => 'Ek İzin Gerekiyor';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo cihazlarını keşfetmek ve kontrol etmek için Yerel Ağ izni gereklidir.';

  @override
  String get settingsWifiNameNotVisible =>
      'Konum izniniz var ancak WiFi adı henüz görünmüyor.';

  @override
  String get settingsPleaseEnable => 'Lütfen etkinleştirin:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. iPhone Ayarlarına gidin\n2. \"Bit Switch\" seçeneğine ilerleyin\n3. \"Yerel Ağ\"ı etkinleştirin';

  @override
  String get settingsLocalNetworkIosReason =>
      'iOS\'ta hem cihaz keşfi hem de WiFi adı erişimi için Yerel Ağ izni gereklidir.';

  @override
  String get settingsPairNewDevice => 'Yeni Cihaz Eşleştir';

  @override
  String get settingsPairNewDeviceSubtitle => 'Yeni bir Wemo cihazı kurun';

  @override
  String get settingsDiscoveryTimeout => 'Keşif Zaman Aşımı';

  @override
  String get settingsRequestTimeout => 'Zaman Aşımı İsteği';

  @override
  String get settingsAutoRefresh => 'Otomatik yenileme';

  @override
  String get settingsAutoRefreshOn =>
      'Açık - Cihaz durumları otomatik olarak yenilenir';

  @override
  String get settingsAutoRefreshOff =>
      'Kapalı - El ile yenileme düğmesini kullan';

  @override
  String get settingsAutoRefreshInterval => 'Otomatik Yenileme Aralığı';

  @override
  String get settingsAbout => 'Bit Switch Hakkında';

  @override
  String get settingsVersion => 'Sürüm';

  @override
  String get settingsNetworkDiagnostics => 'Ağ Teşhisi';

  @override
  String get settingsShowDebug => 'Hata Ayıklama Modunu Göster';

  @override
  String get settingsShowDebugSubtitle =>
      'Ana ekranda hata ayıklama kontrollerini ve ağ teşhislerini göster';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Sorun giderme için ana ekranda hata ayıklama simgesini göster';

  @override
  String get settingsCurrentNetwork => 'Mevcut Ağ';

  @override
  String get settingsNetworkAccessStatus => 'Ağ Erişim Durumu';

  @override
  String get settingsNetworkAccessGranted => 'Yerel ağ erişimi mevcut';

  @override
  String get settingsNetworkAccessMissing => 'Ek izinler gerekebilir';

  @override
  String get settingsChecking => 'Kontrol ediliyor...';

  @override
  String get settingsEnableLocalNetwork =>
      'Ayarlar\'da Yerel Ağı Etkinleştirin';

  @override
  String get settingsNotConnectedWifi => 'WiFi\'e bağlı değil';

  @override
  String get settingsPermissionRequiredView => 'Görüntülemek için izin gerekli';

  @override
  String get settingsAllPermissionsGranted => 'Tüm izinler verildi';

  @override
  String get settingsLocalNetworkNeeded => 'Yerel Ağ izni gerekli';

  @override
  String get settingsLocationNeeded => 'Konum izni gerekli';

  @override
  String get settingsRefreshPermissions => 'İzinleri yenile';

  @override
  String get settingsAboutWifiPermission => 'WiFi Ad İzni Hakkında';

  @override
  String get settingsWifiPermissionExplanation =>
      'WiFi adınız, telefonunuzun ve Wemo cihazlarınızın aynı ağda olduğunu doğrulamanıza yardımcı olur.';

  @override
  String get settingsWifiPermissionIos =>
      'İOS\'ta WiFi ağ adınızı görüntülemek konum izni gerektirir.';

  @override
  String get settingsImportant => 'Önemli:';

  @override
  String get settingsPrivacyNote =>
      '• Konumunuz hiçbir zaman takip edilmez\n• Hiçbir konum verisi toplanmaz veya saklanmaz';

  @override
  String get settingsWifiPermissionImportant =>
      '• Cihaz keşfi bu izin OLMADAN çalışır\n• Bu yalnızca WiFi adını göstermek için gereklidir\n• Hiçbir konum verisi toplanmaz veya saklanmaz';

  @override
  String get settingsGrantPermission => 'İzin Ver';

  @override
  String get settingsHowLongScan => 'Cihazların taranması ne kadar sürer:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Keşif zaman aşımı $seconds saniyeye ayarlandı';
  }

  @override
  String get settingsHowLongResponses =>
      'Cihaz yanıtları için ne kadar süre bekleneceği:';

  @override
  String get settingsIncreaseTimeoutHint =>
      '\"Bağlantı kapatıldı\" hatalarını görürseniz bu değeri artırın.';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'İstek zaman aşımı $seconds saniyeye ayarlandı';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Otomatik durum yenileme aralığını ayarlayın:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Yenileme aralığı $seconds saniyeye ayarlandı';
  }

  @override
  String get settingsAboutTagline =>
      'Wemo cihazlarınız için temiz, özel bir yerel denetleyici.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch, bulut bağımlılıkları olmadan cihazları bulmak ve kontrol etmek için yerel ağ keşfini kullanır.';

  @override
  String get settingsVersionValue => 'Sürüm 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Çoklu Yayın Adresi: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Cihaz Bağlantı Noktaları: 49152-49159';

  @override
  String get settingsControlProtocol => 'Kontrol Protokolü: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'İpucu: Cihazınızın Wemo cihazlarınızla aynı ağda olduğundan ve UDP çoklu yayının engellenmediğinden emin olun.';

  @override
  String get settingsDevicePaired =>
      'Cihaz eşlendi! Cihaz listesi yenileniyor...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'İstek başına $seconds saniye';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Her $seconds yenileniyor';
  }

  @override
  String get pairingTitle => 'Yeni Cihaz Eşleştir';

  @override
  String get pairingSetupTitle => 'Wemo Cihazınızı Kurun';

  @override
  String get pairingBeforeBegin =>
      'Başlamadan önce Wemo cihazınızın kurulum modunda olduğundan emin olun:';

  @override
  String get pairingPlugInTitle => 'Wemo cihazınızı takın';

  @override
  String get pairingPlugInBody => 'Gücüne bağlayın ve başlamasını bekleyin.';

  @override
  String get pairingBlinkingLedTitle => 'Yanıp sönen LED\'i arayın';

  @override
  String get pairingBlinkingLedBody =>
      'Yanıp sönen bir LED, cihazın kurulum modunda olduğunu gösterir.';

  @override
  String get pairingCheckWifiTitle => 'WiFi ağını kontrol edin';

  @override
  String get pairingCheckWifiBody =>
      'Cihaz \"WeMo.XXXXX\" isimli bir ağ yayını yapacak.';

  @override
  String get pairingSolidLedHint =>
      'LED sabit yanıyorsa kurulum moduna girmek için sıfırlama düğmesini 5 saniye basılı tutun.';

  @override
  String get pairingStart => 'Eşleştirmeyi Başlat';

  @override
  String get pairingConnectWifiTitle => 'WiFi Cihazına Bağlan';

  @override
  String get pairingConnectWifiBody =>
      'Telefonunuzun WiFi ayarlarını açın ve \"WeMo\" ile başlayan ağa bağlanın.';

  @override
  String get pairingCurrentNetwork => 'Mevcut Ağ';

  @override
  String get pairingConnectedToDevice => 'Wemo cihazına bağlanıldı!';

  @override
  String get pairingOpenWifiSettings => 'WiFi Ayarlarını açın';

  @override
  String get pairingConnectedButton => 'Bağlandım';

  @override
  String get pairingLookingForDevice => 'Wemo cihazınız aranıyor...';

  @override
  String get pairingManualIpPrompt => 'Veya IP cihazını manuel olarak girin:';

  @override
  String get pairingDeviceIp => 'Cihaz IP Adresi';

  @override
  String get pairingConnectToIp => 'IP\'e bağlanın';

  @override
  String get pairingSelectHomeWifi => 'Evinizdeki WiFi ağını seçin:';

  @override
  String get pairingRefreshNetworks => 'Ağları yenile';

  @override
  String get pairingIosScanLimitation =>
      'iOS, üçüncü taraf uygulamaların yakındaki Wi-Fi ağlarını taramasını kesinlikle yasaklar. SSID ağına manuel olarak girmeniz gerekebilir.';

  @override
  String get pairingNoNetworks => 'Ağ bulunamadı';

  @override
  String get pairingScanAgain => 'Tekrar Tara';

  @override
  String get pairingWifiPassword => 'WiFi Şifre';

  @override
  String get pairingConnect => 'Bağlan';

  @override
  String get pairingEnterNetworkManually => 'Ağı manuel olarak girin';

  @override
  String get pairingEnterNetworkName => 'Ağ adını girin:';

  @override
  String get pairingNetworkName => 'Ağ Adı (SSID)';

  @override
  String get pairingUseNetwork => 'Bu Ağı Kullan';

  @override
  String get pairingConfiguringDevice => 'Cihaz yapılandırılıyor...';

  @override
  String get pairingConfiguringWait =>
      'Cihaz ağınıza bağlanırken lütfen bekleyin.';

  @override
  String get pairingReconnectTitle => 'Ağınıza Yeniden Bağlanın';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Wemo cihazınız artık \"$ssid\"e bağlanıyor. Lütfen telefonunuzu aynı ağa yeniden bağlayın.';
  }

  @override
  String get pairingBackOnHome => 'Ev ağına geri dönün!';

  @override
  String get pairingReconnectedButton => 'Yeniden Bağlandım';

  @override
  String get pairingFinalizingSetup => 'Kurulum sonlandırılıyor...';

  @override
  String get pairingSetupComplete => 'Kurulum Tamamlandı!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid\'e bağlandı';
  }

  @override
  String get pairingDeviceReady =>
      'Cihazınız artık kuruldu ve ana ekranda görünecek.';

  @override
  String get pairingSomethingWrong => 'Bir şeyler ters gitti';

  @override
  String get pairingStartOver => 'Yeniden Başla';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi ayarları açılamadı. Lütfen bunları manuel olarak açın.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Telefonunuz hâlâ \"$ssid\" cihazına bağlı. Lütfen WiFi ayarlarını açın, WeMo cihaz ağına bağlanın ve tekrar deneyin.';
  }

  @override
  String get pairingLoadingLooking => 'Cihaz aranıyor...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'WeMo cihazı $ip\'te bulunamadı. Telefonunuzun WeMo WiFi ağına bağlı olduğundan emin olun ve tekrar deneyin. IP cihazına manuel olarak da girebilirsiniz.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Cihaz bulunurken hata oluştu: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip\'e bağlanılıyor...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip\'te cihaz bulunamadı';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip\'e bağlanırken hata oluştu: $error';
  }

  @override
  String get pairingLoadingScanning => 'Ağlar taranıyor...';

  @override
  String pairingErrorScanning(String error) {
    return 'Ağlar taranamadı: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Lütfen bir ağ seçin ve şifreyi girin.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Ağ kimlik bilgileri gönderiliyor...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Cihazın bağlanması bekleniyor...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Ağ yapılandırılamadı: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Şifre çok kısa. Lütfen kontrol edip tekrar deneyin.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Bağlantı başarısız oldu. Lütfen şifreyi kontrol edin.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Bağlantı zaman aşımına uğradı. Lütfen tekrar deneyin.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Kurulum sonlandırılırken hata oluştu: $error';
  }

  @override
  String get detailRefreshState => 'Durumu yenile';

  @override
  String get detailDeviceInfo => 'Cihaz bilgisi';

  @override
  String get detailAdvanced => 'Gelişmiş';

  @override
  String get detailWifiSetup => 'WiFi Kurulumu';

  @override
  String get detailReset => 'Sıfırla';

  @override
  String get detailUnreachable =>
      'Cihaza ulaşılamıyor. Ağ bağlantısını kontrol edin.';

  @override
  String detailFailedToggle(String error) {
    return 'Geçiş yapılamadı: $error';
  }

  @override
  String get detailDeviceInformation => 'Cihaz Bilgileri';

  @override
  String get detailPermissionScan =>
      'WiFi ağlarını taramak için izin gereklidir.';

  @override
  String get detailScanFailedManual =>
      'Ağlar taranamadı. Ağ adını manuel olarak girin.';

  @override
  String get detailEnterNetworkNameError =>
      'Lütfen bir ağ adı girin veya seçin';

  @override
  String get detailEnterPasswordError => 'Lütfen ağ şifresini girin';

  @override
  String get detailWifiSuccess => 'WiFi başarıyla yapılandırıldı!';

  @override
  String get detailScanNetworks => 'Ağları tara';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" için WiFi ağını yapılandırın';
  }

  @override
  String get detailAvailableNetworks => 'Mevcut Ağlar';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS, üçüncü taraf uygulamaların yakındaki Wi-Fi ağlarını taramasını kesinlikle yasaklar. Lütfen ağ adınızı aşağıya manuel olarak girin.';

  @override
  String get detailTapRefreshScan => 'Ağları taramak için yenile\'ye dokunun';

  @override
  String get detailEnterNetworkBelow => 'Ağ adınızı aşağıya girin';

  @override
  String get detailNetworkCredentials => 'Ağ Kimlik Bilgileri';

  @override
  String get detailConnecting => 'Ağa bağlanılıyor...';

  @override
  String get detailConnected => 'Başarıyla bağlanıldı!';

  @override
  String get detailPasswordShort => 'Şifre çok kısa';

  @override
  String get detailAuthenticationFailed =>
      'Kimlik doğrulama başarısız oldu - şifreyi kontrol edin';

  @override
  String get detailConnectionFailed => 'Bağlantı başarısız oldu';

  @override
  String get detailSelectReset => 'Lütfen neyin sıfırlanacağını seçin';

  @override
  String get detailResetSchedulesWarning =>
      '• Tüm programlar ve otomasyon kuralları silinecek';

  @override
  String get detailResetWifiWarning => '• WiFi ayarları silinecek';

  @override
  String get detailSetupAgainWarning => '• Cihazı tekrar kurmanız gerekecek';

  @override
  String get detailUnreachableWarning =>
      '• Cihaz geçici olarak erişilemez hale gelebilir';

  @override
  String get detailConfirmReset => 'Sıfırlamayı Onayla';

  @override
  String detailConfirmResetDevice(String device) {
    return '\"$device\"i sıfırlamak istediğinizden emin misiniz?';
  }

  @override
  String get detailThisWill => 'Bu:';

  @override
  String get detailCannotUndo => 'Bu eylem geri alınamaz.';

  @override
  String get detailYesReset => 'Evet, Sıfırla';

  @override
  String get detailResetSuccess => 'Cihaz başarıyla sıfırlandı';

  @override
  String get detailResetRemote => 'Cihaz uzaktan sıfırlanacak';

  @override
  String get detailResetFailed => 'Sıfırlama başarısız oldu';

  @override
  String get detailFactoryReset => 'Fabrika Ayarlarına Sıfırlama';

  @override
  String get detailFactoryResetWarning =>
      'Bu, TÜM ayarları siler ve cihazı fabrika varsayılanlarına geri yükler. Cihazı tekrar kurmanız gerekecek.\n\nBu eylem geri alınamaz.';

  @override
  String get detailFactoryResetInitiated => 'Fabrika sıfırlaması başlatıldı';

  @override
  String get detailResetDevice => 'Cihazı Sıfırla';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" için seçenekleri sıfırla';
  }

  @override
  String get detailResetUserData => 'Kullanıcı Verilerini Sıfırla';

  @override
  String get detailResetUserDataSubtitle => 'Programları ve kuralları temizler';

  @override
  String get detailResetWifi => 'WiFi Ayarlarını Sıfırla';

  @override
  String get detailResetWifiSubtitle => 'Cihazın tekrar kurulması gerekecek';

  @override
  String get widgetBrightness => 'Parlaklık';

  @override
  String get widgetEnergyStatistics => 'Enerji İstatistikleri';

  @override
  String get widgetCurrentPower => 'Mevcut Güç';

  @override
  String get widgetToday => 'Bugün';

  @override
  String get widgetTotal => 'Toplam';

  @override
  String get widgetOnTimeToday => 'Bugün Tam Zamanında';

  @override
  String get widgetTotalOnTime => 'Toplam Açık Kalma Süresi';

  @override
  String get widgetStandby => 'Beklemede';

  @override
  String get widgetUnknown => 'Bilinmiyor';

  @override
  String get widgetOpenNetwork => 'Ağı aç';

  @override
  String get widgetWepInsecure => 'WEP (güvenli değil)';
}
