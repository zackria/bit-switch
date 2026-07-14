// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Perangkat tidak mendukung tindakan ini.';

  @override
  String get errInvalidArgs => 'Argumen yang tidak valid dikirim ke perangkat.';

  @override
  String get errActionFailed =>
      'Perangkat gagal melakukan tindakan yang diminta.';

  @override
  String get errInvalidValue => 'Nilai yang diberikan tidak valid.';

  @override
  String get errValueOutOfRange =>
      'Nilainya berada di luar kisaran yang dapat diterima.';

  @override
  String get errFeatureNotAvailable =>
      'Fitur ini tidak tersedia pada perangkat ini.';

  @override
  String get errOutOfMemory => 'Perangkat kehabisan memori. Coba lagi nanti.';

  @override
  String get errManualActionRequired =>
      'Tindakan manual diperlukan pada perangkat.';

  @override
  String get errActionNotAuthorized => 'Tindakan ini tidak diizinkan.';

  @override
  String get errUnexpected =>
      'Terjadi kesalahan yang tidak terduga. Silakan coba lagi.';

  @override
  String get errDeviceUnreachableOffline =>
      'Tidak dapat menjangkau perangkat. Ini mungkin offline atau di jaringan lain.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Permintaan habis waktu setelah upaya $attempts. Perangkat mungkin offline.';
  }

  @override
  String get errRequestTimedOut =>
      'Waktu permintaan habis. Perangkat mungkin offline.';

  @override
  String get errNoRouteToHost =>
      'Tidak dapat menjangkau perangkat. Silakan periksa koneksi WiFi Anda.';

  @override
  String get errHostUnreachable =>
      'Perangkat tidak dapat dijangkau. Harap pastikan sudah dihidupkan dan terhubung ke WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Tidak dapat berkomunikasi dengan perangkat setelah upaya $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Kesalahan jaringan: Tidak dapat berkomunikasi dengan perangkat.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Tindakan ini tidak diizinkan pada perangkat.';

  @override
  String get errDeviceServiceNotFound =>
      'Layanan perangkat tidak ditemukan. Perangkat mungkin memerlukan pembaruan firmware.';

  @override
  String get errDeviceEncounteredError =>
      'Perangkat mengalami kesalahan saat memproses permintaan.';

  @override
  String get errDeviceInternalError =>
      'Perangkat mengembalikan kesalahan internal.';

  @override
  String get errDeviceTempUnavailable =>
      'Perangkat untuk sementara tidak tersedia. Silakan coba lagi.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Perangkat mengembalikan kesalahan (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Gagal melakukan $action pada perangkat.';
  }

  @override
  String get errDeviceReturnedError => 'Perangkat mengembalikan kesalahan.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Waktu operasi $operation habis. Silakan coba lagi.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Waktu pengoperasian habis setelah $seconds detik.';
  }

  @override
  String get errOperationTimedOut =>
      'Waktu operasi telah habis. Silakan coba lagi.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Harap aktifkan izin Jaringan Lokal di Pengaturan untuk menemukan perangkat.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Tidak dapat mengakses jaringan lokal. Harap aktifkan izin Jaringan Lokal di Pengaturan.';

  @override
  String get errCheckWifiConnection =>
      'Tidak dapat menemukan perangkat. Silakan periksa koneksi WiFi Anda.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Penemuan terhenti. Perangkat $count ditemukan.';
  }

  @override
  String get errNoDevicesFound =>
      'Tidak ada perangkat yang ditemukan. Harap pastikan perangkat dihidupkan dan terhubung ke jaringan Anda.';

  @override
  String get actionGetDeviceState => 'dapatkan status perangkat';

  @override
  String get actionSetDeviceState => 'mengatur status perangkat';

  @override
  String get actionGetEnergyData => 'mendapatkan data energi';

  @override
  String get actionScanNetworks => 'memindai jaringan';

  @override
  String get actionConnectWifi => 'sambungkan ke WiFi';

  @override
  String get actionCheckConnection => 'periksa status koneksi';

  @override
  String get actionResetDevice => 'setel ulang perangkat';

  @override
  String get actionPerform => 'melakukan tindakan';

  @override
  String get suggestTryRefreshing =>
      'Coba segarkan daftar perangkat atau periksa apakah perangkat merespons.';

  @override
  String get suggestEnsurePoweredOn =>
      'Pastikan perangkat dihidupkan dan terhubung ke jaringan WiFi Anda.';

  @override
  String get suggestMakeSureSameWifi =>
      'Pastikan ponsel Anda terhubung ke jaringan WiFi yang sama dengan perangkat Anda.';

  @override
  String get suggestCheckPhysical =>
      'Periksa perangkat fisik apakah ada tombol atau sakelar yang memerlukan perhatian.';

  @override
  String get suggestWaitAndTry => 'Tunggu sebentar dan coba lagi.';

  @override
  String get suggestDeviceBusy =>
      'Perangkat mungkin sedang sibuk. Coba lagi dalam beberapa detik.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Batalkan';

  @override
  String get commonClose => 'Tutup';

  @override
  String get commonDone => 'Selesai';

  @override
  String get commonLater => 'Nanti';

  @override
  String get commonRefresh => 'Segarkan';

  @override
  String get commonTryAgain => 'Coba Lagi';

  @override
  String get commonOpenSettings => 'Buka Pengaturan';

  @override
  String get commonGrant => 'Hibah';

  @override
  String get commonFix => 'Perbaiki';

  @override
  String get commonOn => 'Aktif';

  @override
  String get commonOff => 'Mati';

  @override
  String get commonOffline => 'Luring';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Nama';

  @override
  String get commonType => 'Ketik';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Pabrikan';

  @override
  String get commonSerial => 'Serial';

  @override
  String get commonFirmware => 'Firmware';

  @override
  String get commonHost => 'Tuan rumah';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Kata sandi';

  @override
  String get commonUnknownWifi => 'Wi-Fi tidak diketahui';

  @override
  String get commonNotConnected => 'Tidak terhubung';

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
      other: '$seconds detik',
      one: '1 detik',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Saklar Cerdas';

  @override
  String get deviceTypeLightSwitch => 'Saklar Lampu';

  @override
  String get deviceTypeDimmer => 'Peredup';

  @override
  String get deviceTypeInsightPlug => 'Steker Wawasan';

  @override
  String get deviceTypeMotionSensor => 'Sensor Gerak';

  @override
  String get deviceTypeMaker => 'Pembuat';

  @override
  String get deviceTypeBridge => 'Jembatan';

  @override
  String get deviceTypeCoffeeMaker => 'Pembuat Kopi';

  @override
  String get deviceTypeCrockpot => 'panci masak kecil';

  @override
  String get deviceTypeHumidifier => 'pelembab udara';

  @override
  String get deviceTypeOutdoorPlug => 'Steker Luar Ruangan';

  @override
  String get deviceTypeUnknown => 'Perangkat Tidak Dikenal';

  @override
  String get pairingStepGetStarted => 'Memulai';

  @override
  String get pairingStepConnectToDevice => 'Hubungkan ke Perangkat';

  @override
  String get pairingStepFindDevice => 'Temukan Perangkat';

  @override
  String get pairingStepSelectNetwork => 'Pilih Jaringan';

  @override
  String get pairingStepConfiguring => 'Konfigurasi';

  @override
  String get pairingStepReconnect => 'Hubungkan kembali';

  @override
  String get pairingStepFinalizing => 'Menyelesaikan';

  @override
  String get pairingStepSuccess => 'Sukses';

  @override
  String get pairingStepError => 'Kesalahan';

  @override
  String get homeToggleDebug => 'Alihkan mode debug';

  @override
  String get homeRefreshDevices => 'Segarkan perangkat';

  @override
  String get homeSettings => 'Pengaturan';

  @override
  String get homeDismiss => 'Singkirkan';

  @override
  String get homeDiscovering => 'Menemukan perangkat...';

  @override
  String get homeNoDevices => 'Tidak ada perangkat yang ditemukan';

  @override
  String get homeScanDevices => 'Pindai perangkat';

  @override
  String get homeLookingForMore => 'Mencari lebih banyak perangkat...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Perangkat $count ditemukan',
      one: '1 perangkat ditemukan',
      zero: 'Tidak ada perangkat yang ditemukan',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Perangkat $count ditemukan, memindai...',
      one: '1 perangkat ditemukan, memindai...',
      zero: 'Tidak ada perangkat yang ditemukan, memindai...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Otomatis';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Terhubung ke WiFi';

  @override
  String get homePermissionExplanation =>
      'Informasi lokasi digunakan untuk menemukan detail Wi-Fi Anda. Akses jaringan lokal memungkinkan Anda mengontrol sakelar dan perangkat pintar Anda.';

  @override
  String get homeDebugLog => 'Log Debug';

  @override
  String get homeClear => 'Jelas';

  @override
  String get homeDebugEmpty =>
      'Ketuk segarkan untuk memulai penemuan dan melihat log...';

  @override
  String get homeProbeHint => 'IP:Port (mis. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Selidiki';

  @override
  String get homeScanning => 'Memindai...';

  @override
  String get homeScanSubnet => 'Pindai Seluruh Subnet (Perbaikan iOS)';

  @override
  String homePlatform(String platform, String version) {
    return 'Peron: $platform $version';
  }

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get settingsSectionNetwork => 'Jaringan';

  @override
  String get settingsSectionDeviceSetup => 'Pengaturan Perangkat';

  @override
  String get settingsSectionDiscovery => 'Penemuan';

  @override
  String get settingsSectionAbout => 'Tentang';

  @override
  String get settingsSectionDebug => 'Men-debug';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Izin diberikan! Nama WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Lokasi diberikan, namun izin Jaringan Lokal juga diperlukan. Periksa Pengaturan.';

  @override
  String get settingsLocationRequired => 'Izin Lokasi Diperlukan';

  @override
  String get settingsLocationRequiredBody =>
      'Untuk menampilkan nama jaringan WiFi Anda, iOS memerlukan izin Lokasi.';

  @override
  String get settingsRequiredPermissions => 'Izin yang Diperlukan:';

  @override
  String get settingsPermissionList =>
      '1. Layanan Lokasi (\"Saat Menggunakan Aplikasi\")\n2. Jaringan Lokal';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Catatan: Penemuan perangkat berfungsi tanpa izin lokasi. Izin ini hanya digunakan untuk menampilkan nama jaringan WiFi Anda.';

  @override
  String get settingsEnableLocation => 'Aktifkan Lokasi di Pengaturan';

  @override
  String get settingsLocationDeniedBody =>
      'Izin lokasi ditolak. Anda dapat mengaktifkannya dari pengaturan sistem.';

  @override
  String get settingsStepsToEnable => 'Langkah-langkah untuk mengaktifkan:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Buka Pengaturan\n2. Gulir ke \"Bit Switch\"\n3. Ketuk \"Lokasi\"\n4. Pilih \"Saat Menggunakan Aplikasi\"\n5. Kembali ke aplikasi ini dan ketuk tombol segarkan';

  @override
  String get settingsLocationOnlyWifiName =>
      'Catatan: Izin lokasi hanya diperlukan untuk menampilkan nama WiFi. Penemuan perangkat berfungsi tanpanya.';

  @override
  String get settingsAdditionalPermission => 'Diperlukan Izin Tambahan';

  @override
  String get settingsLocalNetworkBody =>
      'Izin Jaringan Lokal diperlukan untuk menemukan dan mengontrol perangkat Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Anda memiliki izin Lokasi, namun nama WiFi belum terlihat.';

  @override
  String get settingsPleaseEnable => 'Harap aktifkan:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Buka Pengaturan iPhone\n2. Gulir ke bawah ke \"Bit Switch\"\n3. Aktifkan \"Jaringan Lokal\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Izin Jaringan Lokal diperlukan untuk penemuan perangkat dan akses nama WiFi di iOS.';

  @override
  String get settingsPairNewDevice => 'Pasangkan Perangkat Baru';

  @override
  String get settingsPairNewDeviceSubtitle => 'Siapkan perangkat Wemo baru';

  @override
  String get settingsDiscoveryTimeout => 'Batas Waktu Penemuan';

  @override
  String get settingsRequestTimeout => 'Batas Waktu Permintaan';

  @override
  String get settingsAutoRefresh => 'Segarkan otomatis';

  @override
  String get settingsAutoRefreshOn =>
      'Aktif - Status perangkat disegarkan secara otomatis';

  @override
  String get settingsAutoRefreshOff => 'Mati - Gunakan tombol segarkan manual';

  @override
  String get settingsAutoRefreshInterval => 'Interval penyegaran otomatis';

  @override
  String get settingsAbout => 'Tentang Bit Switch';

  @override
  String get settingsVersion => 'Versi';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostik Jaringan';

  @override
  String get settingsShowDebug => 'Tampilkan Mode Debug';

  @override
  String get settingsShowDebugSubtitle =>
      'Tampilkan kontrol debug dan diagnostik jaringan di layar beranda';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Tampilkan ikon debug di layar beranda untuk pemecahan masalah';

  @override
  String get settingsCurrentNetwork => 'Jaringan Saat Ini';

  @override
  String get settingsNetworkAccessStatus => 'Status Akses Jaringan';

  @override
  String get settingsNetworkAccessGranted => 'Akses jaringan lokal tersedia';

  @override
  String get settingsNetworkAccessMissing => 'Izin tambahan mungkin diperlukan';

  @override
  String get settingsChecking => 'Memeriksa...';

  @override
  String get settingsEnableLocalNetwork =>
      'Aktifkan Jaringan Lokal di Pengaturan';

  @override
  String get settingsNotConnectedWifi => 'Tidak terhubung ke WiFi';

  @override
  String get settingsPermissionRequiredView => 'Izin diperlukan untuk melihat';

  @override
  String get settingsAllPermissionsGranted => 'Semua izin diberikan';

  @override
  String get settingsLocalNetworkNeeded => 'Izin Jaringan Lokal diperlukan';

  @override
  String get settingsLocationNeeded => 'Izin lokasi diperlukan';

  @override
  String get settingsRefreshPermissions => 'Segarkan izin';

  @override
  String get settingsAboutWifiPermission => 'Tentang Izin Nama WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Nama WiFi Anda membantu mengonfirmasi bahwa ponsel dan perangkat Wemo Anda berada di jaringan yang sama.';

  @override
  String get settingsWifiPermissionIos =>
      'Di iOS, menampilkan nama jaringan WiFi Anda memerlukan izin lokasi.';

  @override
  String get settingsImportant => 'Penting:';

  @override
  String get settingsPrivacyNote =>
      '• Lokasi Anda tidak pernah dilacak\n• Tidak ada data lokasi yang dikumpulkan atau disimpan';

  @override
  String get settingsWifiPermissionImportant =>
      '• Penemuan perangkat berfungsi TANPA izin ini\n• Ini hanya diperlukan untuk menampilkan nama WiFi\n• Tidak ada data lokasi yang dikumpulkan atau disimpan';

  @override
  String get settingsGrantPermission => 'Berikan Izin';

  @override
  String get settingsHowLongScan => 'Berapa lama untuk memindai perangkat:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Batas waktu penemuan disetel ke $seconds detik';
  }

  @override
  String get settingsHowLongResponses =>
      'Berapa lama menunggu respons perangkat:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Tingkatkan nilai ini jika Anda melihat kesalahan \"Sambungan ditutup\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Batas waktu permintaan disetel ke $seconds detik';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Atur interval untuk penyegaran status otomatis:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Interval penyegaran disetel ke $seconds detik';
  }

  @override
  String get settingsAboutTagline =>
      'Pengontrol lokal pribadi yang bersih untuk perangkat Wemo Anda.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch menggunakan penemuan jaringan lokal untuk menemukan dan mengontrol perangkat tanpa ketergantungan cloud.';

  @override
  String get settingsVersionValue => 'Versi 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Alamat Multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Port Perangkat: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protokol Kontrol: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Tip: Pastikan perangkat Anda berada di jaringan yang sama dengan perangkat Wemo Anda dan multicast UDP tidak diblokir.';

  @override
  String get settingsDevicePaired =>
      'Perangkat dipasangkan! Menyegarkan daftar perangkat...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds detik per permintaan';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Menyegarkan setiap $seconds';
  }

  @override
  String get pairingTitle => 'Pasangkan Perangkat Baru';

  @override
  String get pairingSetupTitle => 'Siapkan Perangkat Wemo Anda';

  @override
  String get pairingBeforeBegin =>
      'Sebelum memulai, pastikan perangkat Wemo Anda dalam mode pengaturan:';

  @override
  String get pairingPlugInTitle => 'Hubungkan perangkat Wemo Anda';

  @override
  String get pairingPlugInBody =>
      'Hubungkan ke listrik dan tunggu hingga menyala.';

  @override
  String get pairingBlinkingLedTitle => 'Cari LED yang berkedip';

  @override
  String get pairingBlinkingLedBody =>
      'LED yang berkedip menunjukkan perangkat dalam mode pengaturan.';

  @override
  String get pairingCheckWifiTitle => 'Periksa jaringan WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Perangkat akan menyiarkan jaringan bernama \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Jika LED menyala terang, tahan tombol reset selama 5 detik untuk masuk ke mode pengaturan.';

  @override
  String get pairingStart => 'Mulai Memasangkan';

  @override
  String get pairingConnectWifiTitle => 'Hubungkan ke Perangkat WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Buka pengaturan WiFi ponsel Anda dan sambungkan ke jaringan yang dimulai dengan \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Jaringan Saat Ini';

  @override
  String get pairingConnectedToDevice => 'Terhubung ke perangkat Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Buka Pengaturan WiFi';

  @override
  String get pairingConnectedButton => 'Saya sudah Terhubung';

  @override
  String get pairingLookingForDevice => 'Mencari perangkat Wemo Anda...';

  @override
  String get pairingManualIpPrompt =>
      'Atau masukkan perangkat IP secara manual:';

  @override
  String get pairingDeviceIp => 'Alamat Perangkat IP';

  @override
  String get pairingConnectToIp => 'Hubungkan ke IP';

  @override
  String get pairingSelectHomeWifi => 'Pilih jaringan WiFi rumah Anda:';

  @override
  String get pairingRefreshNetworks => 'Segarkan jaringan';

  @override
  String get pairingIosScanLimitation =>
      'iOS dengan tegas melarang aplikasi pihak ketiga memindai jaringan Wi-Fi terdekat. Anda mungkin perlu memasukkan jaringan SSID secara manual.';

  @override
  String get pairingNoNetworks => 'Tidak ada jaringan yang ditemukan';

  @override
  String get pairingScanAgain => 'Pindai Lagi';

  @override
  String get pairingWifiPassword => 'Kata Sandi WiFi';

  @override
  String get pairingConnect => 'Hubungkan';

  @override
  String get pairingEnterNetworkManually => 'Masuk ke jaringan secara manual';

  @override
  String get pairingEnterNetworkName => 'Masukkan nama jaringan:';

  @override
  String get pairingNetworkName => 'Nama Jaringan (SSID)';

  @override
  String get pairingUseNetwork => 'Gunakan Jaringan Ini';

  @override
  String get pairingConfiguringDevice => 'Mengonfigurasi perangkat...';

  @override
  String get pairingConfiguringWait =>
      'Harap tunggu sementara perangkat terhubung ke jaringan Anda.';

  @override
  String get pairingReconnectTitle => 'Hubungkan kembali ke Jaringan Anda';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Perangkat Wemo Anda sekarang terhubung ke \"$ssid\". Harap sambungkan kembali ponsel Anda ke jaringan yang sama.';
  }

  @override
  String get pairingBackOnHome => 'Kembali ke jaringan asal!';

  @override
  String get pairingReconnectedButton => 'Saya telah terhubung kembali';

  @override
  String get pairingFinalizingSetup => 'Menyelesaikan penyiapan...';

  @override
  String get pairingSetupComplete => 'Penyiapan Selesai!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Terhubung ke $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Perangkat Anda sekarang sudah diatur dan akan muncul di layar beranda.';

  @override
  String get pairingSomethingWrong => 'Ada yang Salah';

  @override
  String get pairingStartOver => 'Mulai dari awal';

  @override
  String get pairingErrorOpenWifi =>
      'Tidak dapat membuka pengaturan WiFi. Silakan buka secara manual.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Ponsel Anda masih terhubung ke \"$ssid\". Silakan buka pengaturan WiFi, sambungkan ke jaringan perangkat WeMo, lalu coba lagi.';
  }

  @override
  String get pairingLoadingLooking => 'Mencari perangkat...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Tidak dapat menemukan perangkat WeMo di $ip. Pastikan ponsel Anda terhubung ke jaringan WeMo WiFi, lalu coba lagi. Anda juga dapat memasukkan perangkat IP secara manual.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Kesalahan menemukan perangkat: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Menghubungkan ke $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Tidak ada perangkat yang ditemukan di $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Kesalahan saat menyambung ke $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Memindai jaringan...';

  @override
  String pairingErrorScanning(String error) {
    return 'Tidak dapat memindai jaringan: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Silakan pilih jaringan dan masukkan kata sandi.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Mengirim kredensial jaringan...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Menunggu perangkat terhubung...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Gagal mengkonfigurasi jaringan: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Kata sandi terlalu pendek. Silakan periksa dan coba lagi.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Gagal terhubung. Silakan periksa kata sandinya.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Waktu koneksi habis. Silakan coba lagi.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Kesalahan saat menyelesaikan penyiapan: $error';
  }

  @override
  String get detailRefreshState => 'Segarkan status';

  @override
  String get detailDeviceInfo => 'Informasi perangkat';

  @override
  String get detailAdvanced => 'Lanjutan';

  @override
  String get detailWifiSetup => 'Pengaturan WiFi';

  @override
  String get detailReset => 'Setel ulang';

  @override
  String get detailUnreachable =>
      'Perangkat tidak dapat dijangkau. Periksa koneksi jaringan.';

  @override
  String detailFailedToggle(String error) {
    return 'Gagal beralih: $error';
  }

  @override
  String get detailDeviceInformation => 'Informasi Perangkat';

  @override
  String get detailPermissionScan =>
      'Izin diperlukan untuk memindai jaringan WiFi.';

  @override
  String get detailScanFailedManual =>
      'Tidak dapat memindai jaringan. Masukkan nama jaringan secara manual.';

  @override
  String get detailEnterNetworkNameError =>
      'Silakan masukkan atau pilih nama jaringan';

  @override
  String get detailEnterPasswordError => 'Silakan masukkan kata sandi jaringan';

  @override
  String get detailWifiSuccess => 'WiFi berhasil dikonfigurasi!';

  @override
  String get detailScanNetworks => 'Pindai jaringan';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurasikan jaringan WiFi untuk \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Jaringan yang Tersedia';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Bab $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS dengan tegas melarang aplikasi pihak ketiga memindai jaringan Wi-Fi terdekat. Silakan masukkan nama jaringan Anda secara manual di bawah.';

  @override
  String get detailTapRefreshScan => 'Ketuk segarkan untuk memindai jaringan';

  @override
  String get detailEnterNetworkBelow => 'Masukkan nama jaringan Anda di bawah';

  @override
  String get detailNetworkCredentials => 'Kredensial Jaringan';

  @override
  String get detailConnecting => 'Menghubungkan ke jaringan...';

  @override
  String get detailConnected => 'Berhasil terhubung!';

  @override
  String get detailPasswordShort => 'Kata sandi terlalu pendek';

  @override
  String get detailAuthenticationFailed =>
      'Otentikasi gagal - periksa kata sandi';

  @override
  String get detailConnectionFailed => 'Koneksi gagal';

  @override
  String get detailSelectReset => 'Silakan pilih apa yang akan diatur ulang';

  @override
  String get detailResetSchedulesWarning =>
      '• Semua jadwal dan aturan otomatisasi akan dihapus';

  @override
  String get detailResetWifiWarning => '• Pengaturan WiFi akan dihapus';

  @override
  String get detailSetupAgainWarning =>
      '• Anda perlu menyiapkan perangkat lagi';

  @override
  String get detailUnreachableWarning =>
      '• Perangkat mungkin tidak dapat dijangkau untuk sementara';

  @override
  String get detailConfirmReset => 'Konfirmasi Reset';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Apakah Anda yakin ingin menyetel ulang \"$device\"?';
  }

  @override
  String get detailThisWill => 'Ini akan:';

  @override
  String get detailCannotUndo => 'Tindakan ini tidak dapat dibatalkan.';

  @override
  String get detailYesReset => 'Ya, Atur Ulang';

  @override
  String get detailResetSuccess => 'Perangkat berhasil disetel ulang';

  @override
  String get detailResetRemote =>
      'Perangkat akan disetel ulang dari jarak jauh';

  @override
  String get detailResetFailed => 'Penyetelan ulang gagal';

  @override
  String get detailFactoryReset => 'Reset Pabrik';

  @override
  String get detailFactoryResetWarning =>
      'Ini akan menghapus SEMUA pengaturan dan mengembalikan perangkat ke default pabrik. Anda perlu menyiapkan perangkat lagi.\n\nTindakan ini tidak dapat dibatalkan.';

  @override
  String get detailFactoryResetInitiated => 'Reset pabrik dimulai';

  @override
  String get detailResetDevice => 'Setel Ulang Perangkat';

  @override
  String detailResetOptionsFor(String device) {
    return 'Setel ulang opsi untuk \"$device\"';
  }

  @override
  String get detailResetUserData => 'Setel Ulang Data Pengguna';

  @override
  String get detailResetUserDataSubtitle => 'Menghapus jadwal dan aturan';

  @override
  String get detailResetWifi => 'Atur Ulang Pengaturan WiFi';

  @override
  String get detailResetWifiSubtitle => 'Perangkat perlu disiapkan lagi';

  @override
  String get widgetBrightness => 'Kecerahan';

  @override
  String get widgetEnergyStatistics => 'Statistik Energi';

  @override
  String get widgetCurrentPower => 'Kekuatan Saat Ini';

  @override
  String get widgetToday => 'Hari ini';

  @override
  String get widgetTotal => 'Jumlah';

  @override
  String get widgetOnTimeToday => 'Tepat Waktu Hari Ini';

  @override
  String get widgetTotalOnTime => 'Total Tepat Waktu';

  @override
  String get widgetStandby => 'Siaga';

  @override
  String get widgetUnknown => 'Tidak diketahui';

  @override
  String get widgetOpenNetwork => 'Jaringan terbuka';

  @override
  String get widgetWepInsecure => 'WEP (tidak aman)';
}
