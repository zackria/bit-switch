// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'Peranti tidak menyokong tindakan ini.';

  @override
  String get errInvalidArgs => 'Argumen tidak sah telah dihantar ke peranti.';

  @override
  String get errActionFailed =>
      'Peranti gagal melaksanakan tindakan yang diminta.';

  @override
  String get errInvalidValue => 'Nilai tidak sah telah diberikan.';

  @override
  String get errValueOutOfRange =>
      'Nilai adalah di luar julat yang boleh diterima.';

  @override
  String get errFeatureNotAvailable =>
      'Ciri ini tidak tersedia pada peranti ini.';

  @override
  String get errOutOfMemory => 'Peranti kehabisan memori. Cuba lagi nanti.';

  @override
  String get errManualActionRequired =>
      'Tindakan manual diperlukan pada peranti.';

  @override
  String get errActionNotAuthorized => 'Tindakan ini tidak dibenarkan.';

  @override
  String get errUnexpected =>
      'Ralat yang tidak dijangka berlaku. Sila cuba lagi.';

  @override
  String get errDeviceUnreachableOffline =>
      'Tidak dapat mencapai peranti. Ia mungkin di luar talian atau pada rangkaian lain.';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return 'Permintaan tamat masa selepas percubaan $attempts. Peranti mungkin berada di luar talian.';
  }

  @override
  String get errRequestTimedOut =>
      'Permintaan tamat masa. Peranti mungkin berada di luar talian.';

  @override
  String get errNoRouteToHost =>
      'Tidak dapat mencapai peranti. Sila semak sambungan WiFi anda.';

  @override
  String get errHostUnreachable =>
      'Peranti tidak dapat dicapai. Sila pastikan ia dihidupkan dan disambungkan ke WiFi.';

  @override
  String errCommFailedAttempts(int attempts) {
    return 'Tidak dapat berkomunikasi dengan peranti selepas percubaan $attempts.';
  }

  @override
  String get errNetworkErrorComm =>
      'Ralat rangkaian: Tidak dapat berkomunikasi dengan peranti.';

  @override
  String get errActionNotAuthorizedDevice =>
      'Tindakan ini tidak dibenarkan pada peranti.';

  @override
  String get errDeviceServiceNotFound =>
      'Perkhidmatan peranti tidak ditemui. Peranti mungkin memerlukan kemas kini perisian tegar.';

  @override
  String get errDeviceEncounteredError =>
      'Peranti mengalami ralat memproses permintaan.';

  @override
  String get errDeviceInternalError => 'Peranti mengembalikan ralat dalaman.';

  @override
  String get errDeviceTempUnavailable =>
      'Peranti tidak tersedia buat sementara waktu. Sila cuba lagi.';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'Peranti mengembalikan ralat (HTTP $code).';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'Gagal untuk $action pada peranti.';
  }

  @override
  String get errDeviceReturnedError => 'Peranti mengembalikan ralat.';

  @override
  String errOperationTimedOutName(String operation) {
    return 'Operasi $operation tamat masa. Sila cuba lagi.';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return 'Operasi tamat masa selepas $seconds saat.';
  }

  @override
  String get errOperationTimedOut => 'Operasi tamat masa. Sila cuba lagi.';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message';
  }

  @override
  String get errEnableLocalNetwork =>
      'Sila dayakan kebenaran Rangkaian Tempatan dalam Tetapan untuk mencari peranti.';

  @override
  String get errCannotAccessLocalNetwork =>
      'Tidak boleh mengakses rangkaian tempatan. Sila dayakan kebenaran Rangkaian Tempatan dalam Tetapan.';

  @override
  String get errCheckWifiConnection =>
      'Tidak dapat menemui peranti. Sila semak sambungan WiFi anda.';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'Penemuan terganggu. Peranti $count ditemui.';
  }

  @override
  String get errNoDevicesFound =>
      'Tiada peranti ditemui. Sila pastikan peranti dihidupkan dan disambungkan ke rangkaian anda.';

  @override
  String get actionGetDeviceState => 'dapatkan keadaan peranti';

  @override
  String get actionSetDeviceState => 'tetapkan keadaan peranti';

  @override
  String get actionGetEnergyData => 'dapatkan data tenaga';

  @override
  String get actionScanNetworks => 'imbas untuk rangkaian';

  @override
  String get actionConnectWifi => 'sambung ke WiFi';

  @override
  String get actionCheckConnection => 'semak status sambungan';

  @override
  String get actionResetDevice => 'set semula peranti';

  @override
  String get actionPerform => 'melakukan tindakan';

  @override
  String get suggestTryRefreshing =>
      'Cuba muat semula senarai peranti atau semak sama ada peranti bertindak balas.';

  @override
  String get suggestEnsurePoweredOn =>
      'Pastikan peranti dihidupkan dan disambungkan ke rangkaian WiFi anda.';

  @override
  String get suggestMakeSureSameWifi =>
      'Pastikan telefon anda disambungkan ke rangkaian WiFi yang sama seperti peranti anda.';

  @override
  String get suggestCheckPhysical =>
      'Semak peranti fizikal untuk sebarang butang atau suis yang memerlukan perhatian.';

  @override
  String get suggestWaitAndTry => 'Tunggu sebentar dan cuba lagi.';

  @override
  String get suggestDeviceBusy =>
      'Peranti mungkin sibuk. Cuba lagi dalam beberapa saat.';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'Batal';

  @override
  String get commonClose => 'tutup';

  @override
  String get commonDone => 'Selesai';

  @override
  String get commonLater => 'Nanti';

  @override
  String get commonRefresh => 'Segarkan semula';

  @override
  String get commonTryAgain => 'Cuba Lagi';

  @override
  String get commonOpenSettings => 'Buka Tetapan';

  @override
  String get commonGrant => 'Geran';

  @override
  String get commonFix => 'Betulkan';

  @override
  String get commonOn => 'hidup';

  @override
  String get commonOff => 'Mati';

  @override
  String get commonOffline => 'Luar talian';

  @override
  String get commonStatus => 'Status';

  @override
  String get commonName => 'Nama';

  @override
  String get commonType => 'taip';

  @override
  String get commonModel => 'Model';

  @override
  String get commonManufacturer => 'Pengeluar';

  @override
  String get commonSerial => 'bersiri';

  @override
  String get commonFirmware => 'Perisian tegar';

  @override
  String get commonHost => 'hos';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'Kata laluan';

  @override
  String get commonUnknownWifi => 'Tidak diketahui Wi-Fi';

  @override
  String get commonNotConnected => 'Tidak bersambung';

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
      other: '$seconds saat',
      one: '1 saat',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'Suis Pintar';

  @override
  String get deviceTypeLightSwitch => 'Suis Lampu';

  @override
  String get deviceTypeDimmer => 'Lebih malap';

  @override
  String get deviceTypeInsightPlug => 'Palam Insight';

  @override
  String get deviceTypeMotionSensor => 'Penderia Pergerakan';

  @override
  String get deviceTypeMaker => 'pembuat';

  @override
  String get deviceTypeBridge => 'Jambatan';

  @override
  String get deviceTypeCoffeeMaker => 'Pembuat Kopi';

  @override
  String get deviceTypeCrockpot => 'Crockpot';

  @override
  String get deviceTypeHumidifier => 'Pelembap';

  @override
  String get deviceTypeOutdoorPlug => 'Palam Luaran';

  @override
  String get deviceTypeUnknown => 'Peranti Tidak Diketahui';

  @override
  String get pairingStepGetStarted => 'Mulakan';

  @override
  String get pairingStepConnectToDevice => 'Sambung ke Peranti';

  @override
  String get pairingStepFindDevice => 'Cari Peranti';

  @override
  String get pairingStepSelectNetwork => 'Pilih Rangkaian';

  @override
  String get pairingStepConfiguring => 'Mengkonfigurasi';

  @override
  String get pairingStepReconnect => 'Sambung semula';

  @override
  String get pairingStepFinalizing => 'Memuktamadkan';

  @override
  String get pairingStepSuccess => 'Kejayaan';

  @override
  String get pairingStepError => 'ralat';

  @override
  String get homeToggleDebug => 'Togol mod nyahpepijat';

  @override
  String get homeRefreshDevices => 'Muat semula peranti';

  @override
  String get homeSettings => 'tetapan';

  @override
  String get homeDismiss => 'Tolak';

  @override
  String get homeDiscovering => 'Menemui peranti...';

  @override
  String get homeNoDevices => 'Tiada peranti ditemui';

  @override
  String get homeScanDevices => 'Imbas untuk peranti';

  @override
  String get homeLookingForMore => 'Mencari lebih banyak peranti...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Peranti $count ditemui',
      one: '1 peranti ditemui',
      zero: 'Tiada peranti ditemui',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Peranti $count ditemui, mengimbas...',
      one: '1 peranti ditemui, mengimbas...',
      zero: 'Tiada peranti ditemui, mengimbas...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'Auto';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name';
  }

  @override
  String get homeConnectedWifi => 'Disambungkan ke WiFi';

  @override
  String get homePermissionExplanation =>
      'Maklumat lokasi digunakan untuk mencari butiran Wi-Fi anda. Akses rangkaian setempat membolehkan anda mengawal suis dan peranti pintar anda.';

  @override
  String get homeDebugLog => 'Log Nyahpepijat';

  @override
  String get homeClear => 'Jelas';

  @override
  String get homeDebugEmpty =>
      'Ketik muat semula untuk memulakan penemuan dan melihat log...';

  @override
  String get homeProbeHint => 'IP:Port (cth. 192.168.1.100:49153)';

  @override
  String get homeProbe => 'Siasatan';

  @override
  String get homeScanning => 'Mengimbas...';

  @override
  String get homeScanSubnet => 'Imbas Keseluruhan Subnet (iOS Fix)';

  @override
  String homePlatform(String platform, String version) {
    return 'Platform: $platform $version';
  }

  @override
  String get settingsTitle => 'tetapan';

  @override
  String get settingsSectionNetwork => 'Rangkaian';

  @override
  String get settingsSectionDeviceSetup => 'Persediaan Peranti';

  @override
  String get settingsSectionDiscovery => 'Penemuan';

  @override
  String get settingsSectionAbout => 'Tentang';

  @override
  String get settingsSectionDebug => 'Nyahpepijat';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'Kebenaran diberikan! Nama WiFi: $ssid';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'Lokasi diberikan, tetapi kebenaran Rangkaian Tempatan juga diperlukan. Semak Tetapan.';

  @override
  String get settingsLocationRequired => 'Kebenaran Lokasi Diperlukan';

  @override
  String get settingsLocationRequiredBody =>
      'Untuk memaparkan nama rangkaian WiFi anda, iOS memerlukan kebenaran Lokasi.';

  @override
  String get settingsRequiredPermissions => 'Kebenaran yang Diperlukan:';

  @override
  String get settingsPermissionList =>
      '1. Perkhidmatan Lokasi (\"Semasa Menggunakan Apl\")\n2. Rangkaian Tempatan';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'Nota: Penemuan peranti berfungsi tanpa kebenaran lokasi. Kebenaran ini hanya digunakan untuk memaparkan nama rangkaian WiFi anda.';

  @override
  String get settingsEnableLocation => 'Dayakan Lokasi dalam Tetapan';

  @override
  String get settingsLocationDeniedBody =>
      'Kebenaran lokasi telah ditolak. Anda boleh mendayakannya daripada tetapan sistem.';

  @override
  String get settingsStepsToEnable => 'Langkah untuk membolehkan:';

  @override
  String get settingsEnableLocationSteps =>
      '1. Buka Tetapan\n2. Tatal ke \"Bit Switch\"\n3. Ketik \"Lokasi\"\n4. Pilih \"Semasa Menggunakan Apl\"\n5. Kembali ke apl ini dan ketik butang muat semula';

  @override
  String get settingsLocationOnlyWifiName =>
      'Nota: Kebenaran lokasi hanya diperlukan untuk memaparkan nama WiFi. Penemuan peranti berfungsi tanpanya.';

  @override
  String get settingsAdditionalPermission => 'Kebenaran Tambahan Diperlukan';

  @override
  String get settingsLocalNetworkBody =>
      'Kebenaran Rangkaian Tempatan diperlukan untuk menemui dan mengawal peranti Wemo.';

  @override
  String get settingsWifiNameNotVisible =>
      'Anda mempunyai kebenaran Lokasi, tetapi nama WiFi belum kelihatan lagi.';

  @override
  String get settingsPleaseEnable => 'Sila dayakan:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1. Pergi ke Tetapan iPhone\n2. Tatal ke bawah ke \"Bit Switch\"\n3. Dayakan \"Rangkaian Tempatan\"';

  @override
  String get settingsLocalNetworkIosReason =>
      'Kebenaran Rangkaian Tempatan diperlukan untuk kedua-dua penemuan peranti dan akses nama WiFi pada iOS.';

  @override
  String get settingsPairNewDevice => 'Pasangkan Peranti Baharu';

  @override
  String get settingsPairNewDeviceSubtitle => 'Sediakan peranti Wemo baharu';

  @override
  String get settingsDiscoveryTimeout => 'Tamat Masa Penemuan';

  @override
  String get settingsRequestTimeout => 'Minta tamat masa';

  @override
  String get settingsAutoRefresh => 'Muat semula automatik';

  @override
  String get settingsAutoRefreshOn =>
      'Hidup - Keadaan peranti dimuat semula secara automatik';

  @override
  String get settingsAutoRefreshOff =>
      'Mati - Gunakan butang muat semula manual';

  @override
  String get settingsAutoRefreshInterval => 'Selang muat semula automatik';

  @override
  String get settingsAbout => 'Mengenai Bit Switch';

  @override
  String get settingsVersion => 'Versi';

  @override
  String get settingsNetworkDiagnostics => 'Diagnostik Rangkaian';

  @override
  String get settingsShowDebug => 'Tunjukkan Mod Nyahpepijat';

  @override
  String get settingsShowDebugSubtitle =>
      'Tunjukkan kawalan nyahpepijat dan diagnostik rangkaian pada skrin utama';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'Tunjukkan ikon nyahpepijat pada skrin utama untuk menyelesaikan masalah';

  @override
  String get settingsCurrentNetwork => 'Rangkaian Semasa';

  @override
  String get settingsNetworkAccessStatus => 'Status Akses Rangkaian';

  @override
  String get settingsNetworkAccessGranted =>
      'Akses rangkaian tempatan tersedia';

  @override
  String get settingsNetworkAccessMissing =>
      'Keizinan tambahan mungkin diperlukan';

  @override
  String get settingsChecking => 'Menyemak...';

  @override
  String get settingsEnableLocalNetwork =>
      'Dayakan Rangkaian Tempatan dalam Tetapan';

  @override
  String get settingsNotConnectedWifi => 'Tidak disambungkan kepada WiFi';

  @override
  String get settingsPermissionRequiredView =>
      'Kebenaran diperlukan untuk melihat';

  @override
  String get settingsAllPermissionsGranted => 'Semua kebenaran diberikan';

  @override
  String get settingsLocalNetworkNeeded =>
      'Keizinan Rangkaian Tempatan diperlukan';

  @override
  String get settingsLocationNeeded => 'Kebenaran lokasi diperlukan';

  @override
  String get settingsRefreshPermissions => 'Muat semula kebenaran';

  @override
  String get settingsAboutWifiPermission => 'Mengenai Keizinan Nama WiFi';

  @override
  String get settingsWifiPermissionExplanation =>
      'Nama WiFi anda membantu mengesahkan bahawa telefon anda dan peranti Wemo berada pada rangkaian yang sama.';

  @override
  String get settingsWifiPermissionIos =>
      'Pada iOS, memaparkan nama rangkaian WiFi anda memerlukan kebenaran lokasi.';

  @override
  String get settingsImportant => 'Penting:';

  @override
  String get settingsPrivacyNote =>
      '• Lokasi anda tidak pernah dijejaki\n• Tiada data lokasi dikumpul atau disimpan';

  @override
  String get settingsWifiPermissionImportant =>
      '• Penemuan peranti berfungsi TANPA kebenaran ini\n• Ini hanya diperlukan untuk menunjukkan nama WiFi\n• Tiada data lokasi dikumpul atau disimpan';

  @override
  String get settingsGrantPermission => 'Berikan Kebenaran';

  @override
  String get settingsHowLongScan => 'Berapa lama untuk mengimbas peranti:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'Tamat masa penemuan ditetapkan kepada $seconds saat';
  }

  @override
  String get settingsHowLongResponses =>
      'Berapa lama untuk menunggu respons peranti:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'Tingkatkan nilai ini jika anda melihat ralat \"Sambungan ditutup\".';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return 'Permintaan tamat masa ditetapkan kepada $seconds saat';
  }

  @override
  String get settingsSetRefreshInterval =>
      'Tetapkan selang waktu untuk muat semula keadaan automatik:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return 'Selang muat semula ditetapkan kepada $seconds saat';
  }

  @override
  String get settingsAboutTagline =>
      'Pengawal tempatan yang bersih dan peribadi untuk peranti Wemo anda.';

  @override
  String get settingsAboutDescription =>
      'Bit Switch menggunakan penemuan rangkaian tempatan untuk mencari dan mengawal peranti tanpa kebergantungan awan.';

  @override
  String get settingsVersionValue => 'Versi 1.0.1';

  @override
  String get settingsProtocol => 'Protokol: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'Alamat Multicast: 239.255.255.250:1900';

  @override
  String get settingsDevicePorts => 'Port Peranti: 49152-49159';

  @override
  String get settingsControlProtocol => 'Protokol Kawalan: SOAP over HTTP';

  @override
  String get settingsDiagnosticsTip =>
      'Petua: Pastikan peranti anda berada pada rangkaian yang sama dengan peranti Wemo anda dan multicast UDP tidak disekat.';

  @override
  String get settingsDevicePaired =>
      'Peranti dipasangkan! Memuat semula senarai peranti...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return '$seconds saat setiap permintaan';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'Menyegarkan setiap $seconds';
  }

  @override
  String get pairingTitle => 'Pasangkan Peranti Baharu';

  @override
  String get pairingSetupTitle => 'Sediakan Peranti Wemo Anda';

  @override
  String get pairingBeforeBegin =>
      'Sebelum anda mula, pastikan peranti Wemo anda berada dalam mod persediaan:';

  @override
  String get pairingPlugInTitle => 'Palamkan peranti Wemo anda';

  @override
  String get pairingPlugInBody =>
      'Sambungkannya ke kuasa dan tunggu ia dimulakan.';

  @override
  String get pairingBlinkingLedTitle => 'Cari LED yang berkelip';

  @override
  String get pairingBlinkingLedBody =>
      'LED berkelip menunjukkan peranti berada dalam mod persediaan.';

  @override
  String get pairingCheckWifiTitle => 'Semak rangkaian WiFi';

  @override
  String get pairingCheckWifiBody =>
      'Peranti akan menyiarkan rangkaian bernama \"WeMo.XXXXX\".';

  @override
  String get pairingSolidLedHint =>
      'Jika LED kukuh, tahan butang set semula selama 5 saat untuk memasuki mod persediaan.';

  @override
  String get pairingStart => 'Mula Berpasangan';

  @override
  String get pairingConnectWifiTitle => 'Sambung ke Peranti WiFi';

  @override
  String get pairingConnectWifiBody =>
      'Buka tetapan WiFi telefon anda dan sambungkan ke rangkaian yang bermula dengan \"WeMo.\"';

  @override
  String get pairingCurrentNetwork => 'Rangkaian Semasa';

  @override
  String get pairingConnectedToDevice => 'Disambungkan ke peranti Wemo!';

  @override
  String get pairingOpenWifiSettings => 'Buka Tetapan WiFi';

  @override
  String get pairingConnectedButton => 'Saya telah Bersambung';

  @override
  String get pairingLookingForDevice => 'Mencari peranti Wemo anda...';

  @override
  String get pairingManualIpPrompt => 'Atau masukkan peranti IP secara manual:';

  @override
  String get pairingDeviceIp => 'Alamat IP Peranti';

  @override
  String get pairingConnectToIp => 'Sambung ke IP';

  @override
  String get pairingSelectHomeWifi => 'Pilih rangkaian WiFi rumah anda:';

  @override
  String get pairingRefreshNetworks => 'Muat semula rangkaian';

  @override
  String get pairingIosScanLimitation =>
      'iOS melarang keras apl pihak ketiga daripada mengimbas rangkaian Wi-Fi berdekatan. Anda mungkin perlu memasukkan rangkaian SSID secara manual.';

  @override
  String get pairingNoNetworks => 'Tiada rangkaian ditemui';

  @override
  String get pairingScanAgain => 'Imbas Lagi';

  @override
  String get pairingWifiPassword => 'Kata laluan WiFi';

  @override
  String get pairingConnect => 'Sambung';

  @override
  String get pairingEnterNetworkManually => 'Masukkan rangkaian secara manual';

  @override
  String get pairingEnterNetworkName => 'Masukkan nama rangkaian:';

  @override
  String get pairingNetworkName => 'Nama Rangkaian (SSID)';

  @override
  String get pairingUseNetwork => 'Gunakan Rangkaian Ini';

  @override
  String get pairingConfiguringDevice => 'Mengkonfigurasi peranti...';

  @override
  String get pairingConfiguringWait =>
      'Sila tunggu sementara peranti bersambung ke rangkaian anda.';

  @override
  String get pairingReconnectTitle => 'Sambung semula ke Rangkaian Anda';

  @override
  String pairingReconnectBody(String ssid) {
    return 'Peranti Wemo anda kini bersambung ke \"$ssid\". Sila sambungkan semula telefon anda ke rangkaian yang sama.';
  }

  @override
  String get pairingBackOnHome => 'Kembali ke rangkaian rumah!';

  @override
  String get pairingReconnectedButton => 'Saya telah menyambung semula';

  @override
  String get pairingFinalizingSetup => 'Memuktamadkan persediaan...';

  @override
  String get pairingSetupComplete => 'Persediaan Selesai!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return 'Disambungkan ke $ssid';
  }

  @override
  String get pairingDeviceReady =>
      'Peranti anda kini disediakan dan akan dipaparkan pada skrin utama.';

  @override
  String get pairingSomethingWrong => 'Sesuatu yang tidak kena';

  @override
  String get pairingStartOver => 'Mulakan semula';

  @override
  String get pairingErrorOpenWifi =>
      'Tidak dapat membuka tetapan WiFi. Sila buka secara manual.';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'Telefon anda masih disambungkan ke \"$ssid\". Sila buka tetapan WiFi, sambung ke rangkaian peranti WeMo, kemudian cuba lagi.';
  }

  @override
  String get pairingLoadingLooking => 'Mencari peranti...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return 'Tidak dapat mencari peranti WeMo di $ip. Pastikan telefon anda disambungkan ke rangkaian WeMo WiFi, kemudian cuba lagi. Anda juga boleh memasukkan peranti IP secara manual.';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'Ralat menemui peranti: $error';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return 'Menyambung ke $ip...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return 'Tiada peranti ditemui di $ip';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return 'Ralat menyambung ke $ip: $error';
  }

  @override
  String get pairingLoadingScanning => 'Mengimbas untuk rangkaian...';

  @override
  String pairingErrorScanning(String error) {
    return 'Tidak dapat mengimbas rangkaian: $error';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'Sila pilih rangkaian dan masukkan kata laluan.';

  @override
  String get pairingLoadingSendingCredentials =>
      'Menghantar bukti kelayakan rangkaian...';

  @override
  String get pairingLoadingWaitingConnection =>
      'Menunggu peranti disambungkan...';

  @override
  String pairingErrorConfigure(String error) {
    return 'Gagal mengkonfigurasi rangkaian: $error';
  }

  @override
  String get pairingErrorPasswordShort =>
      'Kata laluan terlalu pendek. Sila semak dan cuba lagi.';

  @override
  String get pairingErrorPasswordIncorrect =>
      'Gagal menyambung. Sila semak kata laluan.';

  @override
  String get pairingErrorConnectionTimeout =>
      'Sambungan tamat masa. Sila cuba lagi.';

  @override
  String pairingErrorFinalizing(String error) {
    return 'Ralat memuktamadkan persediaan: $error';
  }

  @override
  String get detailRefreshState => 'Muat semula keadaan';

  @override
  String get detailDeviceInfo => 'Maklumat peranti';

  @override
  String get detailAdvanced => 'Maju';

  @override
  String get detailWifiSetup => 'Persediaan WiFi';

  @override
  String get detailReset => 'Tetapkan semula';

  @override
  String get detailUnreachable =>
      'Peranti tidak dapat dicapai. Semak sambungan rangkaian.';

  @override
  String detailFailedToggle(String error) {
    return 'Gagal untuk menogol: $error';
  }

  @override
  String get detailDeviceInformation => 'Maklumat Peranti';

  @override
  String get detailPermissionScan =>
      'Kebenaran diperlukan untuk mengimbas rangkaian WiFi.';

  @override
  String get detailScanFailedManual =>
      'Tidak dapat mengimbas rangkaian. Masukkan nama rangkaian secara manual.';

  @override
  String get detailEnterNetworkNameError =>
      'Sila masukkan atau pilih nama rangkaian';

  @override
  String get detailEnterPasswordError => 'Sila masukkan kata laluan rangkaian';

  @override
  String get detailWifiSuccess => 'WiFi berjaya dikonfigurasikan!';

  @override
  String get detailScanNetworks => 'Imbas untuk rangkaian';

  @override
  String detailConfigureWifiFor(String device) {
    return 'Konfigurasikan rangkaian WiFi untuk \"$device\"';
  }

  @override
  String get detailAvailableNetworks => 'Rangkaian Tersedia';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel';
  }

  @override
  String get detailIosManualOnly =>
      'iOS melarang keras apl pihak ketiga daripada mengimbas rangkaian Wi-Fi berdekatan. Sila masukkan nama rangkaian anda secara manual di bawah.';

  @override
  String get detailTapRefreshScan =>
      'Ketik muat semula untuk mengimbas rangkaian';

  @override
  String get detailEnterNetworkBelow => 'Masukkan nama rangkaian anda di bawah';

  @override
  String get detailNetworkCredentials => 'Kelayakan Rangkaian';

  @override
  String get detailConnecting => 'Menyambung ke rangkaian...';

  @override
  String get detailConnected => 'Berjaya disambungkan!';

  @override
  String get detailPasswordShort => 'Kata laluan terlalu pendek';

  @override
  String get detailAuthenticationFailed =>
      'Pengesahan gagal - semak kata laluan';

  @override
  String get detailConnectionFailed => 'Sambungan gagal';

  @override
  String get detailSelectReset =>
      'Sila pilih perkara yang hendak ditetapkan semula';

  @override
  String get detailResetSchedulesWarning =>
      '• Semua jadual dan peraturan automasi akan dipadamkan';

  @override
  String get detailResetWifiWarning => '• Tetapan WiFi akan dipadamkan';

  @override
  String get detailSetupAgainWarning =>
      '• Anda perlu menyediakan peranti sekali lagi';

  @override
  String get detailUnreachableWarning =>
      '• Peranti mungkin menjadi tidak dapat dicapai buat sementara waktu';

  @override
  String get detailConfirmReset => 'Sahkan Set Semula';

  @override
  String detailConfirmResetDevice(String device) {
    return 'Adakah anda pasti mahu menetapkan semula \"$device\"?';
  }

  @override
  String get detailThisWill => 'Ini akan:';

  @override
  String get detailCannotUndo => 'Tindakan ini tidak boleh dibuat asal.';

  @override
  String get detailYesReset => 'Ya, Tetapkan Semula';

  @override
  String get detailResetSuccess => 'Berjaya menetapkan semula peranti';

  @override
  String get detailResetRemote => 'Peranti akan ditetapkan semula dari jauh';

  @override
  String get detailResetFailed => 'Tetapan semula gagal';

  @override
  String get detailFactoryReset => 'Tetapan Semula Kilang';

  @override
  String get detailFactoryResetWarning =>
      'Ini akan memadamkan SEMUA tetapan dan memulihkan peranti kepada lalai kilang. Anda perlu menyediakan peranti sekali lagi.\n\nTindakan ini tidak boleh dibuat asal.';

  @override
  String get detailFactoryResetInitiated => 'Tetapan semula kilang dimulakan';

  @override
  String get detailResetDevice => 'Tetapkan Semula Peranti';

  @override
  String detailResetOptionsFor(String device) {
    return 'Tetapkan semula pilihan untuk \"$device\"';
  }

  @override
  String get detailResetUserData => 'Tetapkan Semula Data Pengguna';

  @override
  String get detailResetUserDataSubtitle => 'Membersihkan jadual dan peraturan';

  @override
  String get detailResetWifi => 'Tetapkan semula Tetapan WiFi';

  @override
  String get detailResetWifiSubtitle => 'Peranti perlu disediakan semula';

  @override
  String get widgetBrightness => 'Kecerahan';

  @override
  String get widgetEnergyStatistics => 'Statistik Tenaga';

  @override
  String get widgetCurrentPower => 'Kuasa Semasa';

  @override
  String get widgetToday => 'Hari ini';

  @override
  String get widgetTotal => 'Jumlah';

  @override
  String get widgetOnTimeToday => 'Menepati Masa Hari Ini';

  @override
  String get widgetTotalOnTime => 'Jumlah Tepat Masa';

  @override
  String get widgetStandby => 'Bersedia';

  @override
  String get widgetUnknown => 'Tidak diketahui';

  @override
  String get widgetOpenNetwork => 'Buka rangkaian';

  @override
  String get widgetWepInsecure => 'WEP (tidak selamat)';
}
