// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get errDeviceNotSupportAction =>
      'ଡିଭାଇସ୍ ଏହି କାର୍ଯ୍ୟକୁ ସମର୍ଥନ କରେନାହିଁ |';

  @override
  String get errInvalidArgs => 'ଡିଭାଇସକୁ ଅବ val ଧ ଯୁକ୍ତି ପଠାଗଲା |';

  @override
  String get errActionFailed =>
      'ଅନୁରୋଧ କରାଯାଇଥିବା କାର୍ଯ୍ୟ କରିବାକୁ ଡିଭାଇସ୍ ବିଫଳ ହେଲା |';

  @override
  String get errInvalidValue => 'ଏକ ଅବ alid ଧ ମୂଲ୍ୟ ପ୍ରଦାନ କରାଯାଇଥିଲା |';

  @override
  String get errValueOutOfRange => 'ମୂଲ୍ୟ ଗ୍ରହଣୀୟ ପରିସର ବାହାରେ |';

  @override
  String get errFeatureNotAvailable =>
      'ଏହି ଡିଭାଇସରେ ଏହି ବ feature ଶିଷ୍ଟ୍ୟ ଉପଲବ୍ଧ ନାହିଁ |';

  @override
  String get errOutOfMemory =>
      'ଡିଭାଇସ୍ ମେମୋରୀ ବାହାରେ | ପରେ ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get errManualActionRequired => 'ଡିଭାଇସରେ ମାନୁଆଲ୍ ଆକ୍ସନ୍ ଆବଶ୍ୟକ |';

  @override
  String get errActionNotAuthorized => 'ଏହି କାର୍ଯ୍ୟ ଅନୁମୋଦିତ ନୁହେଁ |';

  @override
  String get errUnexpected =>
      'ଏକ ଅପ୍ରତ୍ୟାଶିତ ତ୍ରୁଟି ଘଟିଗଲା | ଦୟାକରି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get errDeviceUnreachableOffline =>
      'ଡିଭାଇସରେ ପହଞ୍ଚିବାରେ ଅସମର୍ଥ | ଏହା ଅଫଲାଇନ୍ କିମ୍ବା ଏକ ଭିନ୍ନ ନେଟୱାର୍କରେ ହୋଇପାରେ |';

  @override
  String errRequestTimedOutAttempts(int attempts) {
    return '$attempts ଚେଷ୍ଟା ପରେ ଅନୁରୋଧ ସମୟ ସମାପ୍ତ ହୋଇଛି | ଡିଭାଇସ୍ ଅଫଲାଇନ୍ ହୋଇପାରେ |';
  }

  @override
  String get errRequestTimedOut =>
      'ଅନୁରୋଧ ସମୟ ସମାପ୍ତ ହୋଇଛି | ଡିଭାଇସ୍ ଅଫଲାଇନ୍ ହୋଇପାରେ |';

  @override
  String get errNoRouteToHost =>
      'ଉପକରଣରେ ପହଞ୍ଚିପାରିବ ନାହିଁ | ଦୟାକରି ଆପଣଙ୍କର WiFi ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get errHostUnreachable =>
      'ଡିଭାଇସ୍ ଅପହଞ୍ଚ ଅଟେ | ଦୟାକରି ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଏହା ଚାଳିତ ଏବଂ WiFi ସହିତ ସଂଯୁକ୍ତ |';

  @override
  String errCommFailedAttempts(int attempts) {
    return '$attempts ଚେଷ୍ଟା ପରେ ଉପକରଣ ସହିତ ଯୋଗାଯୋଗ କରିବାରେ ଅସମର୍ଥ |';
  }

  @override
  String get errNetworkErrorComm =>
      'ନେଟୱର୍କ ତ୍ରୁଟି: ଉପକରଣ ସହିତ ଯୋଗାଯୋଗ କରିବାରେ ଅସମର୍ଥ |';

  @override
  String get errActionNotAuthorizedDevice =>
      'ଏହି କ୍ରିୟା ଡିଭାଇସରେ ଅନୁମୋଦିତ ନୁହେଁ |';

  @override
  String get errDeviceServiceNotFound =>
      'ଉପକରଣ ସେବା ମିଳିଲା ନାହିଁ | ଡିଭାଇସ୍ ଏକ ଫର୍ମୱେୟାର ଅପଡେଟ୍ ଆବଶ୍ୟକ କରିପାରନ୍ତି |';

  @override
  String get errDeviceEncounteredError =>
      'ଡିଭାଇସ୍ ଅନୁରୋଧ ପ୍ରକ୍ରିୟାକରଣରେ ଏକ ତ୍ରୁଟିର ସମ୍ମୁଖୀନ ହେଲା |';

  @override
  String get errDeviceInternalError =>
      'ଡିଭାଇସ୍ ଏକ ଆଭ୍ୟନ୍ତରୀଣ ତ୍ରୁଟି ଫେରସ୍ତ କଲା |';

  @override
  String get errDeviceTempUnavailable =>
      'ଉପକରଣଟି ସାମୟିକ ଭାବରେ ଉପଲବ୍ଧ ନାହିଁ | ଦୟାକରି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String errDeviceReturnedHttpError(int code) {
    return 'ଉପକରଣ ଏକ ତ୍ରୁଟି ଫେରସ୍ତ କଲା (HTTP $code) |';
  }

  @override
  String errFailedToPerformAction(String action) {
    return 'ଡିଭାଇସରେ $action ରେ ବିଫଳ |';
  }

  @override
  String get errDeviceReturnedError => 'ଡିଭାଇସ୍ ଏକ ତ୍ରୁଟି ଫେରସ୍ତ କଲା |';

  @override
  String errOperationTimedOutName(String operation) {
    return '$operation ଅପରେସନ୍ ସମୟ ସମାପ୍ତ ହୋଇଛି | ଦୟାକରି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';
  }

  @override
  String errOperationTimedOutSeconds(int seconds) {
    return '$seconds ସେକେଣ୍ଡ ପରେ ଅପରେସନ୍ ସମୟ ସମାପ୍ତ ହୋଇଛି |';
  }

  @override
  String get errOperationTimedOut =>
      'ଅପରେସନ୍ ସମୟ ସମାପ୍ତ ହୋଇଛି | ଦୟାକରି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String errDeviceExceptionMessage(String deviceName, String message) {
    return '$deviceName: $message |';
  }

  @override
  String get errEnableLocalNetwork =>
      'ଡିଭାଇସ୍ ଖୋଜିବା ପାଇଁ ଦୟାକରି ସେଟିଂସମୂହରେ ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଅନୁମତି ସକ୍ଷମ କରନ୍ତୁ |';

  @override
  String get errCannotAccessLocalNetwork =>
      'ସ୍ଥାନୀୟ ନେଟୱାର୍କକୁ ପ୍ରବେଶ କରିପାରିବ ନାହିଁ | ଦୟାକରି ସେଟିଂସମୂହରେ ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଅନୁମତି ସକ୍ଷମ କରନ୍ତୁ |';

  @override
  String get errCheckWifiConnection =>
      'ଉପକରଣ ଆବିଷ୍କାର କରିବାରେ ଅସମର୍ଥ | ଦୟାକରି ଆପଣଙ୍କର WiFi ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String errDiscoveryInterrupted(int count) {
    return 'ଆବିଷ୍କାର ବାଧାପ୍ରାପ୍ତ ହେଲା | $count ଉପକରଣ (ଗୁଡିକ) ମିଳିଲା |';
  }

  @override
  String get errNoDevicesFound =>
      'କ devices ଣସି ଉପକରଣ ମିଳିଲା ନାହିଁ | ଦୟାକରି ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଉପକରଣଗୁଡ଼ିକ ଚାଳିତ ଏବଂ ଆପଣଙ୍କ ନେଟୱର୍କ ସହିତ ସଂଯୁକ୍ତ |';

  @override
  String get actionGetDeviceState => 'ଉପକରଣ ସ୍ଥିତି ପ୍ରାପ୍ତ କରନ୍ତୁ |';

  @override
  String get actionSetDeviceState => 'ଉପକରଣ ସ୍ଥିତି ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get actionGetEnergyData => 'ଶକ୍ତି ତଥ୍ୟ ପ୍ରାପ୍ତ କରନ୍ତୁ |';

  @override
  String get actionScanNetworks => 'ନେଟୱାର୍କ ପାଇଁ ସ୍କାନ୍ କରନ୍ତୁ |';

  @override
  String get actionConnectWifi => 'WiFi ସହିତ ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get actionCheckConnection => 'ସଂଯୋଗ ସ୍ଥିତି ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get actionResetDevice => 'ଉପକରଣ ପୁନ res ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get actionPerform => 'କାର୍ଯ୍ୟ କର';

  @override
  String get suggestTryRefreshing =>
      'ଡିଭାଇସ୍ ତାଲିକା ସତେଜ କରିବାକୁ ଚେଷ୍ଟା କରନ୍ତୁ କିମ୍ବା ଡିଭାଇସ୍ ପ୍ରତିକ୍ରିୟା କରୁଛି କି ନାହିଁ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get suggestEnsurePoweredOn =>
      'ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଡିଭାଇସ୍ ଚାଳିତ ଏବଂ ଆପଣଙ୍କର WiFi ନେଟୱାର୍କ ସହିତ ସଂଯୁକ୍ତ |';

  @override
  String get suggestMakeSureSameWifi =>
      'ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଆପଣଙ୍କର ଫୋନ୍ ଆପଣଙ୍କର ଡିଭାଇସ୍ ସହିତ ସମାନ WiFi ନେଟୱାର୍କ ସହିତ ସଂଯୁକ୍ତ |';

  @override
  String get suggestCheckPhysical =>
      'କ any ଣସି ବଟନ୍ କିମ୍ବା ସୁଇଚ୍ ପାଇଁ ଭ physical ତିକ ଉପକରଣ ଯାଞ୍ଚ କରନ୍ତୁ ଯାହା ଧ୍ୟାନ ଆବଶ୍ୟକ କରେ |';

  @override
  String get suggestWaitAndTry =>
      'କିଛି ସମୟ ଅପେକ୍ଷା କର ଏବଂ ପୁନର୍ବାର ଚେଷ୍ଟା କର |';

  @override
  String get suggestDeviceBusy =>
      'ଉପକରଣଟି ବ୍ୟସ୍ତ ଥାଇପାରେ | କିଛି ସେକେଣ୍ଡରେ ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get appTitle => 'Bit Switch';

  @override
  String get commonCancel => 'ବାତିଲ୍ କରନ୍ତୁ |';

  @override
  String get commonClose => 'ବନ୍ଦ';

  @override
  String get commonDone => 'ସମାପ୍ତ';

  @override
  String get commonLater => 'ପରେ';

  @override
  String get commonRefresh => 'ସତେଜ କରନ୍ତୁ |';

  @override
  String get commonTryAgain => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get commonOpenSettings => 'ସେଟିଂସମୂହ ଖୋଲନ୍ତୁ |';

  @override
  String get commonGrant => 'ଅନୁଦାନ';

  @override
  String get commonFix => 'ଠିକ କରନ୍ତୁ |';

  @override
  String get commonOn => 'ଅନ୍';

  @override
  String get commonOff => 'ବନ୍ଦ';

  @override
  String get commonOffline => 'ଅଫଲାଇନ୍ |';

  @override
  String get commonStatus => 'ସ୍ଥିତି';

  @override
  String get commonName => 'ନାମ';

  @override
  String get commonType => 'ଟାଇପ୍ କରନ୍ତୁ |';

  @override
  String get commonModel => 'ମଡେଲ୍ |';

  @override
  String get commonManufacturer => 'ଉତ୍ପାଦକ';

  @override
  String get commonSerial => 'କ୍ରମିକ |';

  @override
  String get commonFirmware => 'ଫର୍ମୱେୟାର |';

  @override
  String get commonHost => 'ହୋଷ୍ଟ';

  @override
  String get commonMac => 'MAC';

  @override
  String get commonPassword => 'ପାସୱାର୍ଡ';

  @override
  String get commonUnknownWifi => 'ଅଜ୍ଞାତ Wi-Fi |';

  @override
  String get commonNotConnected => 'ସଂଯୁକ୍ତ ନୁହେଁ |';

  @override
  String commonSecondsShort(int seconds) {
    return '${seconds}s |';
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
      other: '$seconds ସେକେଣ୍ଡ୍ |',
      one: '1 ସେକେଣ୍ଡ୍',
    );
    return '$_temp0';
  }

  @override
  String get deviceTypeSmartSwitch => 'ସ୍ମାର୍ଟ ସୁଇଚ୍ |';

  @override
  String get deviceTypeLightSwitch => 'ହାଲୁକା ସୁଇଚ୍ |';

  @override
  String get deviceTypeDimmer => 'ଡିମର୍ |';

  @override
  String get deviceTypeInsightPlug => 'ଇନ୍ସାଇଟ୍ ପ୍ଲଗ୍ |';

  @override
  String get deviceTypeMotionSensor => 'ମୋସନ୍ ସେନ୍ସର |';

  @override
  String get deviceTypeMaker => 'ନିର୍ମାତା |';

  @override
  String get deviceTypeBridge => 'ବ୍ରିଜ୍';

  @override
  String get deviceTypeCoffeeMaker => 'କଫି ମେକର୍ |';

  @override
  String get deviceTypeCrockpot => 'କ୍ରକ୍ପଟ୍ |';

  @override
  String get deviceTypeHumidifier => 'ଆର୍ଦ୍ରତା';

  @override
  String get deviceTypeOutdoorPlug => 'ଆଉଟଡୋର ପ୍ଲଗ୍ |';

  @override
  String get deviceTypeUnknown => 'ଅଜ୍ଞାତ ଉପକରଣ |';

  @override
  String get pairingStepGetStarted => 'ଆରମ୍ଭ କର |';

  @override
  String get pairingStepConnectToDevice => 'ଉପକରଣ ସହିତ ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get pairingStepFindDevice => 'ଉପକରଣ ଖୋଜ |';

  @override
  String get pairingStepSelectNetwork => 'ନେଟୱାର୍କ ଚୟନ କରନ୍ତୁ |';

  @override
  String get pairingStepConfiguring => 'ବିନ୍ୟାସ କରୁଅଛି';

  @override
  String get pairingStepReconnect => 'ପୁନ on ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get pairingStepFinalizing => 'ଚୂଡାନ୍ତ';

  @override
  String get pairingStepSuccess => 'ସଫଳତା |';

  @override
  String get pairingStepError => 'ତ୍ରୁଟି |';

  @override
  String get homeToggleDebug => 'ଡିବଗ୍ ମୋଡ୍ ଟୋଗଲ୍ କରନ୍ତୁ |';

  @override
  String get homeRefreshDevices => 'ଉପକରଣଗୁଡ଼ିକୁ ସତେଜ କରନ୍ତୁ |';

  @override
  String get homeSettings => 'ସେଟିଂସମୂହ';

  @override
  String get homeDismiss => 'ବରଖାସ୍ତ';

  @override
  String get homeDiscovering => 'ଉପକରଣ ଆବିଷ୍କାର ...';

  @override
  String get homeNoDevices => 'କ devices ଣସି ଉପକରଣ ମିଳିଲା ନାହିଁ |';

  @override
  String get homeScanDevices => 'ଉପକରଣଗୁଡ଼ିକ ପାଇଁ ସ୍କାନ୍ କରନ୍ତୁ |';

  @override
  String get homeLookingForMore => 'ଅଧିକ ଉପକରଣ ଖୋଜୁଛି ...';

  @override
  String homeDevicesFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଉପକରଣଗୁଡ଼ିକ ମିଳିଲା |',
      one: '1 ଉପକରଣ ମିଳିଲା |',
      zero: 'କ devices ଣସି ଉପକରଣ ମିଳିଲା ନାହିଁ |',
    );
    return '$_temp0';
  }

  @override
  String homeDevicesFoundScanning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଉପକରଣଗୁଡ଼ିକ ମିଳିଲା, ସ୍କାନିଂ ...',
      one: '1 ଉପକରଣ ମିଳିଲା, ସ୍କାନ କରୁଛି ...',
      zero: 'କ devices ଣସି ଉପକରଣ ମିଳିଲା ନାହିଁ, ସ୍କାନ କରୁଛି ...',
    );
    return '$_temp0';
  }

  @override
  String get homeAuto => 'ଅଟୋ |';

  @override
  String homeWifiName(String name) {
    return 'Wi-Fi: $name |';
  }

  @override
  String get homeConnectedWifi => 'WiFi ସହିତ ସଂଯୁକ୍ତ |';

  @override
  String get homePermissionExplanation =>
      'ଆପଣଙ୍କର Wi-Fi ବିବରଣୀ ଖୋଜିବା ପାଇଁ ଅବସ୍ଥାନ ସୂଚନା ବ୍ୟବହୃତ ହୁଏ | ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଆକ୍ସେସ୍ ଆପଣଙ୍କୁ ଆପଣଙ୍କର ସ୍ମାର୍ଟ ସୁଇଚ୍ ଏବଂ ଡିଭାଇସ୍ ନିୟନ୍ତ୍ରଣ କରିବାକୁ ଅନୁମତି ଦିଏ |';

  @override
  String get homeDebugLog => 'ତ୍ରୁଟି ନିବାରଣ ଲଗ';

  @override
  String get homeClear => 'ସଫା';

  @override
  String get homeDebugEmpty =>
      'ଆବିଷ୍କାର ଆରମ୍ଭ କରିବା ଏବଂ ଲଗ୍ ଦେଖିବା ପାଇଁ ସତେଜ ଟ୍ୟାପ୍ କରନ୍ତୁ ...';

  @override
  String get homeProbeHint => 'IP: ପୋର୍ଟ (ଯଥା 192.168.1.100:49153)';

  @override
  String get homeProbe => 'ଅନୁସନ୍ଧାନ |';

  @override
  String get homeScanning => 'ସ୍କାନିଂ ...';

  @override
  String get homeScanSubnet => 'ସମଗ୍ର ସବନେଟ୍ ସ୍କାନ୍ କରନ୍ତୁ (ଆଇଓଏସ୍ ଫିକ୍ସ)';

  @override
  String homePlatform(String platform, String version) {
    return 'ପ୍ଲାଟଫର୍ମ: $platform $version |';
  }

  @override
  String get settingsTitle => 'ସେଟିଂସମୂହ';

  @override
  String get settingsSectionNetwork => 'ନେଟୱାର୍କ |';

  @override
  String get settingsSectionDeviceSetup => 'ଉପକରଣ ସେଟଅପ୍ |';

  @override
  String get settingsSectionDiscovery => 'ଆବିଷ୍କାର |';

  @override
  String get settingsSectionAbout => 'ବିଷୟରେ';

  @override
  String get settingsSectionDebug => 'ତ୍ରୁଟି ନିବାରଣ କରନ୍ତୁ';

  @override
  String settingsPermissionGrantedWifi(String ssid) {
    return 'ଅନୁମତି! WiFi ନାମ: $ssid |';
  }

  @override
  String get settingsLocalNetworkAlsoNeeded =>
      'ସ୍ଥାନ ମଞ୍ଜୁର ହୋଇଛି, କିନ୍ତୁ ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଅନୁମତି ମଧ୍ୟ ଆବଶ୍ୟକ | ସେଟିଂସମୂହ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get settingsLocationRequired => 'ଅବସ୍ଥାନ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get settingsLocationRequiredBody =>
      'ଆପଣଙ୍କର WiFi ନେଟୱର୍କ ନାମ ପ୍ରଦର୍ଶନ କରିବାକୁ, iOS ଅବସ୍ଥାନ ଅନୁମତି ଆବଶ୍ୟକ କରେ |';

  @override
  String get settingsRequiredPermissions => 'ଆବଶ୍ୟକ ଅନୁମତି:';

  @override
  String get settingsPermissionList =>
      '1। ଅବସ୍ଥାନ ସେବା (\"ଆପ୍ ବ୍ୟବହାର କରିବା ସମୟରେ\")\nସ୍ଥାନୀୟ ନେଟୱାର୍କ |';

  @override
  String get settingsDiscoveryWithoutLocation =>
      'ଟିପନ୍ତୁ: ଡିଭାଇସ୍ ଆବିଷ୍କାର ଅବସ୍ଥାନ ଅନୁମତି ବିନା କାମ କରେ | ଏହି ଅନୁମତି କେବଳ ଆପଣଙ୍କର WiFi ନେଟୱର୍କ ନାମ ପ୍ରଦର୍ଶନ କରିବାକୁ ବ୍ୟବହୃତ ହୁଏ |';

  @override
  String get settingsEnableLocation => 'ସେଟିଂସମୂହରେ ଅବସ୍ଥାନ ସକ୍ଷମ କରନ୍ତୁ |';

  @override
  String get settingsLocationDeniedBody =>
      'ସ୍ଥାନ ଅନୁମତି ପ୍ରତ୍ୟାଖ୍ୟାନ କରାଯାଇଥିଲା | ଆପଣ ଏହାକୁ ସିଷ୍ଟମ୍ ସେଟିଂସମୂହରୁ ସକ୍ଷମ କରିପାରିବେ |';

  @override
  String get settingsStepsToEnable => 'ସକ୍ଷମ କରିବାକୁ ପଦକ୍ଷେପ:';

  @override
  String get settingsEnableLocationSteps =>
      'ସେଟିଂସମୂହ ଖୋଲନ୍ତୁ |\n2। \"Bit Switch\" କୁ ସ୍କ୍ରୋଲ୍ କରନ୍ତୁ |\n3। \"ଅବସ୍ଥାନ\" ଟ୍ୟାପ୍ କରନ୍ତୁ |\n4 \"ଆପ୍ ବ୍ୟବହାର କରିବା ସମୟରେ\" ଚୟନ କରନ୍ତୁ |\n5। ଏହି ଆପକୁ ଫେରନ୍ତୁ ଏବଂ ସତେଜ ବଟନ୍ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get settingsLocationOnlyWifiName =>
      'ଟିପନ୍ତୁ: WiFi ନାମ ପ୍ରଦର୍ଶନ କରିବାକୁ ଅବସ୍ଥାନ ଅନୁମତି ଆବଶ୍ୟକ | ଉପକରଣ ଆବିଷ୍କାର ଏହା ବିନା କାମ କରେ |';

  @override
  String get settingsAdditionalPermission => 'ଅତିରିକ୍ତ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get settingsLocalNetworkBody =>
      'Wemo ଉପକରଣଗୁଡ଼ିକୁ ଆବିଷ୍କାର ଏବଂ ନିୟନ୍ତ୍ରଣ କରିବା ପାଇଁ ସ୍ଥାନୀୟ ନେଟୱର୍କ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get settingsWifiNameNotVisible =>
      'ଆପଣଙ୍କର ଅବସ୍ଥାନ ଅନୁମତି ଅଛି, କିନ୍ତୁ WiFi ନାମ ଏପର୍ଯ୍ୟନ୍ତ ଦୃଶ୍ୟମାନ ହେଉନାହିଁ |';

  @override
  String get settingsPleaseEnable => 'ଦୟାକରି ସକ୍ଷମ କରନ୍ତୁ:';

  @override
  String get settingsEnableLocalNetworkSteps =>
      '1। ଆଇଫୋନ୍ ସେଟିଂସମୂହକୁ ଯାଆନ୍ତୁ |\n2। \"Bit Switch\" କୁ ସ୍କ୍ରୋଲ୍ କରନ୍ତୁ |\n3। \"ଲୋକାଲ୍ ନେଟୱାର୍କ\" ସକ୍ଷମ କରନ୍ତୁ |';

  @override
  String get settingsLocalNetworkIosReason =>
      'ଉଭୟ ଡିଭାଇସ୍ ଆବିଷ୍କାର ଏବଂ iOS ରେ WiFi ନାମ ପ୍ରବେଶ ପାଇଁ ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get settingsPairNewDevice => 'ନୂତନ ଉପକରଣ ଯୋଡନ୍ତୁ |';

  @override
  String get settingsPairNewDeviceSubtitle =>
      'ଏକ ନୂତନ Wemo ଉପକରଣ ସେଟ୍ ଅପ୍ କରନ୍ତୁ |';

  @override
  String get settingsDiscoveryTimeout => 'ଆବିଷ୍କାର ସମୟ ସମାପ୍ତ |';

  @override
  String get settingsRequestTimeout => 'ସମୟ ସମାପ୍ତି ପାଇଁ ଅନୁରୋଧ |';

  @override
  String get settingsAutoRefresh => 'ଅଟୋ-ସତେଜ |';

  @override
  String get settingsAutoRefreshOn =>
      'ଅନ୍ - ଡିଭାଇସ୍ ଷ୍ଟେଟସ୍ ସ୍ୱୟଂଚାଳିତ ଭାବରେ ସତେଜ ହୁଏ |';

  @override
  String get settingsAutoRefreshOff =>
      'ବନ୍ଦ - ମାନୁଆଲ ସତେଜ ବଟନ୍ ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get settingsAutoRefreshInterval => 'ଅଟୋ-ସତେଜ ବ୍ୟବଧାନ |';

  @override
  String get settingsAbout => 'Bit Switch ବିଷୟରେ';

  @override
  String get settingsVersion => 'ସଂସ୍କରଣ';

  @override
  String get settingsNetworkDiagnostics => 'ନେଟୱର୍କ ନିଦାନ';

  @override
  String get settingsShowDebug => 'ଡିବଗ୍ ମୋଡ୍ ଦେଖାନ୍ତୁ |';

  @override
  String get settingsShowDebugSubtitle =>
      'ହୋମ ସ୍କ୍ରିନରେ ଡିବଗ୍ କଣ୍ଟ୍ରୋଲ୍ ଏବଂ ନେଟୱାର୍କ ଡାଇଗ୍ନୋଷ୍ଟିକ୍ ଦେଖାନ୍ତୁ |';

  @override
  String get settingsShowDebugHomeSubtitle =>
      'ତ୍ରୁଟି ନିବାରଣ ପାଇଁ ହୋମ ସ୍କ୍ରିନରେ ଡିବଗ୍ ଆଇକନ୍ ଦେଖାନ୍ତୁ |';

  @override
  String get settingsCurrentNetwork => 'ସାମ୍ପ୍ରତିକ ନେଟୱାର୍କ |';

  @override
  String get settingsNetworkAccessStatus => 'ନେଟୱର୍କ ପ୍ରବେଶ ସ୍ଥିତି |';

  @override
  String get settingsNetworkAccessGranted => 'ସ୍ଥାନୀୟ ନେଟୱାର୍କ ପ୍ରବେଶ ଉପଲବ୍ଧ |';

  @override
  String get settingsNetworkAccessMissing => 'ଅତିରିକ୍ତ ଅନୁମତି ଆବଶ୍ୟକ ହୋଇପାରେ |';

  @override
  String get settingsChecking => 'ଯାଞ୍ଚ ...';

  @override
  String get settingsEnableLocalNetwork =>
      'ସେଟିଂସମୂହରେ ସ୍ଥାନୀୟ ନେଟୱାର୍କ ସକ୍ଷମ କରନ୍ତୁ |';

  @override
  String get settingsNotConnectedWifi => 'WiFi ସହିତ ସଂଯୁକ୍ତ ନୁହେଁ |';

  @override
  String get settingsPermissionRequiredView => 'ଦେଖିବା ପାଇଁ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get settingsAllPermissionsGranted => 'ସମସ୍ତ ଅନୁମତି ପ୍ରଦାନ କରାଯାଇଛି |';

  @override
  String get settingsLocalNetworkNeeded => 'ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get settingsLocationNeeded => 'ଅବସ୍ଥାନ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get settingsRefreshPermissions => 'ଅନୁମତି ସତେଜ କରନ୍ତୁ |';

  @override
  String get settingsAboutWifiPermission => 'WiFi ନାମ ଅନୁମତି ବିଷୟରେ |';

  @override
  String get settingsWifiPermissionExplanation =>
      'ଆପଣଙ୍କର WiFi ନାମ ନିଶ୍ଚିତ କରିବାକୁ ସାହାଯ୍ୟ କରେ ଯେ ଆପଣଙ୍କର ଫୋନ୍ ଏବଂ Wemo ଉପକରଣଗୁଡ଼ିକ ସମାନ ନେଟୱାର୍କରେ ଅଛି |';

  @override
  String get settingsWifiPermissionIos =>
      'IOS ରେ, ଆପଣଙ୍କର WiFi ନେଟୱର୍କ ନାମ ପ୍ରଦର୍ଶନ କରିବା ପାଇଁ ଅବସ୍ଥାନ ଅନୁମତି ଆବଶ୍ୟକ କରେ |';

  @override
  String get settingsImportant => 'ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ:';

  @override
  String get settingsPrivacyNote =>
      '• ଆପଣଙ୍କର ଅବସ୍ଥାନ କଦାପି ଟ୍ରାକ କରାଯାଏ ନାହିଁ |\nକ No ଣସି ଅବସ୍ଥାନ ତଥ୍ୟ ସଂଗ୍ରହ କିମ୍ବା ଗଚ୍ଛିତ ନୁହେଁ |';

  @override
  String get settingsWifiPermissionImportant =>
      'ଡିଭାଇସ୍ ଆବିଷ୍କାର ଏହି ଅନୁମତି ବିନା କାମ କରେ |\n• ଏହା କେବଳ WiFi ନାମ ଦେଖାଇବା ପାଇଁ ଆବଶ୍ୟକ |\nକ No ଣସି ଅବସ୍ଥାନ ତଥ୍ୟ ସଂଗ୍ରହ କିମ୍ବା ଗଚ୍ଛିତ ନୁହେଁ |';

  @override
  String get settingsGrantPermission => 'ଅନୁମତି';

  @override
  String get settingsHowLongScan => 'ଉପକରଣଗୁଡ଼ିକ ପାଇଁ କେତେ ସମୟ ସ୍କାନ୍ କରିବେ:';

  @override
  String settingsDiscoveryTimeoutSet(int seconds) {
    return 'ଆବିଷ୍କାର ସମୟ ସମାପ୍ତ $seconds ସେକେଣ୍ଡରେ ସେଟ୍ ହୋଇଛି |';
  }

  @override
  String get settingsHowLongResponses =>
      'ଉପକରଣ ପ୍ରତିକ୍ରିୟା ପାଇଁ କେତେ ସମୟ ଅପେକ୍ଷା କରିବାକୁ:';

  @override
  String get settingsIncreaseTimeoutHint =>
      'ଯଦି ଆପଣ “ସଂଯୋଗ ବନ୍ଦ” ତ୍ରୁଟି ଦେଖନ୍ତି ତେବେ ଏହି ମୂଲ୍ୟ ବୃଦ୍ଧି କରନ୍ତୁ |';

  @override
  String settingsRequestTimeoutSet(int seconds) {
    return '$seconds ସେକେଣ୍ଡରେ ସମୟ ସମାପ୍ତ କରିବାକୁ ଅନୁରୋଧ |';
  }

  @override
  String get settingsSetRefreshInterval =>
      'ସ୍ୱୟଂଚାଳିତ ଅବସ୍ଥା ସତେଜ ପାଇଁ ବ୍ୟବଧାନ ସେଟ୍ କରନ୍ତୁ:';

  @override
  String settingsRefreshIntervalSet(int seconds) {
    return '$seconds ସେକେଣ୍ଡରେ ବ୍ୟବଧାନ ସତେଜ କରନ୍ତୁ |';
  }

  @override
  String get settingsAboutTagline =>
      'ଆପଣଙ୍କର Wemo ଉପକରଣଗୁଡ଼ିକ ପାଇଁ ଏକ ପରିଷ୍କାର, ବ୍ୟକ୍ତିଗତ ସ୍ଥାନୀୟ ନିୟନ୍ତ୍ରକ |';

  @override
  String get settingsAboutDescription =>
      'କ୍ଲାଉଡ୍ ନିର୍ଭରଶୀଳତା ବିନା ଡିଭାଇସ୍ ଖୋଜିବା ଏବଂ ନିୟନ୍ତ୍ରଣ କରିବା ପାଇଁ Bit Switch ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଆବିଷ୍କାରକୁ ବ୍ୟବହାର କରିଥାଏ |';

  @override
  String get settingsVersionValue => 'ସଂସ୍କରଣ 1.0.1';

  @override
  String get settingsProtocol => 'ପ୍ରୋଟୋକଲ୍: SSDP/UPnP';

  @override
  String get settingsMulticastAddress =>
      'ମଲ୍ଟିକାଷ୍ଟ ଠିକଣା: 239.255.255.250:1900 |';

  @override
  String get settingsDevicePorts => 'ଉପକରଣ ପୋର୍ଟଗୁଡିକ: 49152-49159';

  @override
  String get settingsControlProtocol => 'ନିୟନ୍ତ୍ରଣ ପ୍ରୋଟୋକଲ୍: SOAP over HTTP |';

  @override
  String get settingsDiagnosticsTip =>
      'ଟିପ୍ପଣୀ: ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଆପଣଙ୍କର ଡିଭାଇସ୍ ଆପଣଙ୍କର Wemo ଉପକରଣଗୁଡ଼ିକ ସହିତ ସମାନ ନେଟୱାର୍କରେ ଅଛି ଏବଂ UDP ମଲ୍ଟିକାଷ୍ଟ ଅବରୋଧ ହୋଇନାହିଁ |';

  @override
  String get settingsDevicePaired => 'ଉପକରଣ ଯୋଡି ହୋଇଛି! ସତେଜ ଉପକରଣ ତାଲିକା ...';

  @override
  String settingsSecondsPerRequest(int seconds) {
    return 'ଅନୁରୋଧ ପାଇଁ $seconds ସେକେଣ୍ଡ୍ |';
  }

  @override
  String settingsRefreshingEvery(int seconds) {
    return 'ପ୍ରତ୍ୟେକ $seconds ଗୁଡ଼ିକୁ ସତେଜ କରିବା |';
  }

  @override
  String get pairingTitle => 'ନୂତନ ଉପକରଣ ଯୋଡନ୍ତୁ |';

  @override
  String get pairingSetupTitle => 'ଆପଣଙ୍କର Wemo ଉପକରଣ ସେଟ୍ ଅପ୍ କରନ୍ତୁ |';

  @override
  String get pairingBeforeBegin =>
      'ଆପଣ ଆରମ୍ଭ କରିବା ପୂର୍ବରୁ ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଆପଣଙ୍କର Wemo ଉପକରଣ ସେଟଅପ୍ ମୋଡରେ ଅଛି:';

  @override
  String get pairingPlugInTitle => 'ଆପଣଙ୍କର Wemo ଉପକରଣରେ ପ୍ଲଗ୍ କରନ୍ତୁ |';

  @override
  String get pairingPlugInBody =>
      'ଏହାକୁ ଶକ୍ତି ସହିତ ସଂଯୋଗ କରନ୍ତୁ ଏବଂ ଏହା ଆରମ୍ଭ ହେବା ପର୍ଯ୍ୟନ୍ତ ଅପେକ୍ଷା କରନ୍ତୁ |';

  @override
  String get pairingBlinkingLedTitle => 'Ink ଲସି ଉଠୁଥିବା ଏଲଇଡି ଖୋଜ |';

  @override
  String get pairingBlinkingLedBody =>
      'ଏକ ink ଲସି ଉଠୁଥିବା ଏଲଇଡି ସୂଚାଇଥାଏ ଯେ ଡିଭାଇସ୍ ସେଟଅପ୍ ମୋଡ୍ ରେ ଅଛି |';

  @override
  String get pairingCheckWifiTitle => 'WiFi ନେଟୱାର୍କ ପାଇଁ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get pairingCheckWifiBody =>
      'ଏହି ଉପକରଣ \"WeMo.XXXXX\" ନାମକ ଏକ ନେଟୱାର୍କ ପ୍ରସାରଣ କରିବ |';

  @override
  String get pairingSolidLedHint =>
      'ଯଦି ଏଲଇଡି କଠିନ, ସେଟଅପ୍ ମୋଡ୍ ପ୍ରବେଶ କରିବାକୁ 5 ସେକେଣ୍ଡ ପାଇଁ ପୁନ et ସେଟ୍ ବଟନ୍ ଧରି ରଖନ୍ତୁ |';

  @override
  String get pairingStart => 'ଯୋଡି ଆରମ୍ଭ କରନ୍ତୁ |';

  @override
  String get pairingConnectWifiTitle => 'ଉପକରଣ WiFi ସହିତ ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get pairingConnectWifiBody =>
      'ଆପଣଙ୍କ ଫୋନର WiFi ସେଟିଂସମୂହ ଖୋଲନ୍ତୁ ଏବଂ \"WeMo\" ରୁ ଆରମ୍ଭ ହେଉଥିବା ନେଟୱର୍କ ସହିତ ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get pairingCurrentNetwork => 'ସାମ୍ପ୍ରତିକ ନେଟୱାର୍କ |';

  @override
  String get pairingConnectedToDevice => 'Wemo ଉପକରଣ ସହିତ ସଂଯୁକ୍ତ!';

  @override
  String get pairingOpenWifiSettings => 'WiFi ସେଟିଂସମୂହ ଖୋଲନ୍ତୁ |';

  @override
  String get pairingConnectedButton => 'ମୁଁ ସଂଯୋଗ ହୋଇଛି';

  @override
  String get pairingLookingForDevice => 'ତୁମର Wemo ଉପକରଣ ଖୋଜୁଛି ...';

  @override
  String get pairingManualIpPrompt =>
      'କିମ୍ବା IP ଉପକରଣକୁ ହସ୍ତକୃତ ଭାବରେ ପ୍ରବେଶ କରନ୍ତୁ:';

  @override
  String get pairingDeviceIp => 'ଉପକରଣ IP ଠିକଣା |';

  @override
  String get pairingConnectToIp => 'IP ସହିତ ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get pairingSelectHomeWifi => 'ଆପଣଙ୍କର ଘର WiFi ନେଟୱାର୍କ ଚୟନ କରନ୍ତୁ:';

  @override
  String get pairingRefreshNetworks => 'ନେଟୱାର୍କ ସତେଜ କରନ୍ତୁ |';

  @override
  String get pairingIosScanLimitation =>
      'ଆଇଓଏସ୍ ନିକଟସ୍ଥ Wi-Fi ନେଟୱାର୍କ ପାଇଁ ସ୍କାନ କରିବାକୁ ତୃତୀୟ-ପକ୍ଷ ଆପକୁ କଠୋର ଭାବରେ ବାରଣ କରିଛି | ଆପଣ ନେଟୱର୍କ SSID କୁ ହସ୍ତକୃତ ଭାବରେ ପ୍ରବେଶ କରିବାକୁ ଆବଶ୍ୟକ କରିପାରନ୍ତି |';

  @override
  String get pairingNoNetworks => 'କ network ଣସି ନେଟୱାର୍କ ମିଳିଲା ନାହିଁ |';

  @override
  String get pairingScanAgain => 'ପୁନର୍ବାର ସ୍କାନ୍ କରନ୍ତୁ |';

  @override
  String get pairingWifiPassword => 'WiFi ପାସୱାର୍ଡ |';

  @override
  String get pairingConnect => 'ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get pairingEnterNetworkManually =>
      'ନେଟୱର୍କକୁ ହସ୍ତକୃତ ଭାବରେ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get pairingEnterNetworkName => 'ନେଟୱର୍କ ନାମ ପ୍ରବେଶ କରନ୍ତୁ:';

  @override
  String get pairingNetworkName => 'ନେଟୱର୍କ ନାମ (SSID)';

  @override
  String get pairingUseNetwork => 'ଏହି ନେଟୱାର୍କ ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get pairingConfiguringDevice => 'ଉପକରଣ ବିନ୍ୟାସ କରୁଅଛି ...';

  @override
  String get pairingConfiguringWait =>
      'ଡିଭାଇସ୍ ଆପଣଙ୍କ ନେଟୱର୍କ ସହିତ ସଂଯୋଗ ହେବାବେଳେ ଦୟାକରି ଅପେକ୍ଷା କରନ୍ତୁ |';

  @override
  String get pairingReconnectTitle =>
      'ଆପଣଙ୍କର ନେଟୱାର୍କ ସହିତ ପୁନ on ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String pairingReconnectBody(String ssid) {
    return 'ଆପଣଙ୍କର Wemo ଉପକରଣ ବର୍ତ୍ତମାନ \"$ssid\" ସହିତ ସଂଯୋଗ ହେଉଛି | ସମାନ ନେଟୱାର୍କ ସହିତ ଦୟାକରି ଆପଣଙ୍କର ଫୋନକୁ ପୁନ nect ସଂଯୋଗ କରନ୍ତୁ |';
  }

  @override
  String get pairingBackOnHome => 'ହୋମ ନେଟୱାର୍କକୁ ଫେରନ୍ତୁ!';

  @override
  String get pairingReconnectedButton => 'ମୁଁ ପୁନ con ସଂଯୋଗ ହୋଇଛି';

  @override
  String get pairingFinalizingSetup => 'ଅନ୍ତିମ ସେଟଅପ୍ ...';

  @override
  String get pairingSetupComplete => 'ସେଟଅପ୍ ସମ୍ପୂର୍ଣ୍ଣ!';

  @override
  String pairingConnectedToSsid(String ssid) {
    return '$ssid ସହିତ ସଂଯୁକ୍ତ |';
  }

  @override
  String get pairingDeviceReady =>
      'ଆପଣଙ୍କର ଡିଭାଇସ୍ ବର୍ତ୍ତମାନ ସେଟ୍ ଅପ୍ ହୋଇଛି ଏବଂ ହୋମ ସ୍କ୍ରିନରେ ଦେଖାଯିବ |';

  @override
  String get pairingSomethingWrong => 'କିଛି ଭୁଲ୍ ହୋଇଛି |';

  @override
  String get pairingStartOver => 'ଆରମ୍ଭ କରନ୍ତୁ |';

  @override
  String get pairingErrorOpenWifi =>
      'WiFi ସେଟିଂସମୂହ ଖୋଲିପାରିଲା ନାହିଁ | ଦୟାକରି ସେଗୁଡ଼ିକୁ ହସ୍ତକୃତ ଭାବରେ ଖୋଲନ୍ତୁ |';

  @override
  String pairingErrorStillOnHome(String ssid) {
    return 'ଆପଣଙ୍କର ଫୋନ୍ ଏପର୍ଯ୍ୟନ୍ତ \"$ssid\" ସହିତ ସଂଯୁକ୍ତ | ଦୟାକରି WiFi ସେଟିଂସମୂହ ଖୋଲନ୍ତୁ, WeMo ଉପକରଣ ନେଟୱର୍କ ସହିତ ସଂଯୋଗ କରନ୍ତୁ, ତାପରେ ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';
  }

  @override
  String get pairingLoadingLooking => 'ଉପକରଣ ଖୋଜୁଛି ...';

  @override
  String pairingErrorDeviceAtDefaultIp(String ip) {
    return '$ip ରେ WeMo ଉପକରଣ ଖୋଜି ପାଇଲା ନାହିଁ | ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଆପଣଙ୍କର ଫୋନ୍ WeMo WiFi ନେଟୱାର୍କ ସହିତ ସଂଯୁକ୍ତ, ତାପରେ ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ | ଆପଣ ଡିଭାଇସ୍ IP କୁ ହସ୍ତକୃତ ଭାବରେ ପ୍ରବେଶ କରିପାରିବେ |';
  }

  @override
  String pairingErrorDiscovering(String error) {
    return 'ଉପକରଣ ଆବିଷ୍କାର କରିବାରେ ତ୍ରୁଟି: $error |';
  }

  @override
  String pairingLoadingConnectingIp(String ip) {
    return '$ip ସହିତ ସଂଯୋଗ ...';
  }

  @override
  String pairingErrorNoDeviceAtIp(String ip) {
    return '$ip ରେ କ device ଣସି ଉପକରଣ ମିଳିଲା ନାହିଁ |';
  }

  @override
  String pairingErrorConnectingIp(String ip, String error) {
    return '$ip: $error ସହିତ ସଂଯୋଗ କରିବାରେ ତ୍ରୁଟି |';
  }

  @override
  String get pairingLoadingScanning => 'ନେଟୱାର୍କ ପାଇଁ ସ୍କାନିଂ ...';

  @override
  String pairingErrorScanning(String error) {
    return 'ନେଟୱାର୍କ ସ୍କାନ୍ କରିପାରିଲା ନାହିଁ: $error |';
  }

  @override
  String get pairingErrorSelectAndPassword =>
      'ଦୟାକରି ଏକ ନେଟୱାର୍କ ଚୟନ କରନ୍ତୁ ଏବଂ ପାସୱାର୍ଡ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get pairingLoadingSendingCredentials =>
      'ନେଟୱର୍କ ପ୍ରମାଣପତ୍ର ପଠାଉଛି ...';

  @override
  String get pairingLoadingWaitingConnection =>
      'ଉପକରଣ ସଂଯୋଗ କରିବାକୁ ଅପେକ୍ଷା ...';

  @override
  String pairingErrorConfigure(String error) {
    return 'ନେଟୱାର୍କ ବିନ୍ୟାସ କରିବାରେ ବିଫଳ: $error |';
  }

  @override
  String get pairingErrorPasswordShort =>
      'ପାସୱାର୍ଡ ବହୁତ ଛୋଟ | ଦୟାକରି ଯାଞ୍ଚ କରନ୍ତୁ ଏବଂ ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get pairingErrorPasswordIncorrect =>
      'ସଂଯୋଗ କରିବାରେ ବିଫଳ | ଦୟାକରି ପାସୱାର୍ଡ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get pairingErrorConnectionTimeout =>
      'ସଂଯୋଗ ସମୟ ସମାପ୍ତ ହୋଇଛି | ଦୟାକରି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String pairingErrorFinalizing(String error) {
    return 'ସେଟଅପ୍ ଚୂଡ଼ାନ୍ତ କରିବାରେ ତ୍ରୁଟି: $error |';
  }

  @override
  String get detailRefreshState => 'ଅବସ୍ଥା ସତେଜ କରନ୍ତୁ |';

  @override
  String get detailDeviceInfo => 'ଉପକରଣ ସୂଚନା';

  @override
  String get detailAdvanced => 'ଉନ୍ନତ';

  @override
  String get detailWifiSetup => 'WiFi ସେଟଅପ୍ |';

  @override
  String get detailReset => 'ପୁନ et ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get detailUnreachable =>
      'ଡିଭାଇସ୍ ଅପହଞ୍ଚ | ନେଟୱର୍କ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String detailFailedToggle(String error) {
    return 'ଟୋଗଲ୍ କରିବାରେ ବିଫଳ: $error |';
  }

  @override
  String get detailDeviceInformation => 'ଉପକରଣ ସୂଚନା';

  @override
  String get detailPermissionScan =>
      'WiFi ନେଟୱାର୍କ ସ୍କାନ କରିବାକୁ ଅନୁମତି ଆବଶ୍ୟକ |';

  @override
  String get detailScanFailedManual =>
      'ନେଟୱାର୍କ ସ୍କାନ୍ କରିପାରିଲା ନାହିଁ | ନେଟୱର୍କ ନାମକୁ ହସ୍ତକୃତ ଭାବରେ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get detailEnterNetworkNameError =>
      'ଦୟାକରି ଏକ ନେଟୱର୍କ ନାମ ପ୍ରବେଶ କିମ୍ବା ଚୟନ କରନ୍ତୁ |';

  @override
  String get detailEnterPasswordError =>
      'ଦୟାକରି ନେଟୱର୍କ ପାସୱାର୍ଡ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get detailWifiSuccess => 'WiFi ସଫଳତାର ସହିତ ବିନ୍ୟାସିତ ହୋଇଛି!';

  @override
  String get detailScanNetworks => 'ନେଟୱାର୍କ ପାଇଁ ସ୍କାନ୍ କରନ୍ତୁ |';

  @override
  String detailConfigureWifiFor(String device) {
    return '\"$device\" ପାଇଁ WiFi ନେଟୱାର୍କକୁ ବିନ୍ୟାସ କରନ୍ତୁ |';
  }

  @override
  String get detailAvailableNetworks => 'ଉପଲବ୍ଧ ନେଟୱାର୍କଗୁଡ଼ିକ |';

  @override
  String detailNetworkSecurityChannel(String security, int channel) {
    return '$security • Ch $channel |';
  }

  @override
  String get detailIosManualOnly =>
      'ଆଇଓଏସ୍ ନିକଟସ୍ଥ Wi-Fi ନେଟୱାର୍କ ପାଇଁ ସ୍କାନ କରିବାକୁ ତୃତୀୟ-ପକ୍ଷ ଆପକୁ କଠୋର ଭାବରେ ବାରଣ କରିଛି | ଦୟାକରି ନିମ୍ନରେ ଆପଣଙ୍କର ନେଟୱର୍କ ନାମ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get detailTapRefreshScan =>
      'ନେଟୱାର୍କ ପାଇଁ ସ୍କାନ୍ କରିବାକୁ ସତେଜ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get detailEnterNetworkBelow =>
      'ନିମ୍ନରେ ଆପଣଙ୍କର ନେଟୱର୍କ ନାମ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get detailNetworkCredentials => 'ନେଟୱର୍କ ପ୍ରମାଣପତ୍ର';

  @override
  String get detailConnecting => 'ନେଟୱର୍କ ସହିତ ସଂଯୋଗ ...';

  @override
  String get detailConnected => 'ସଫଳତାର ସହିତ ସଂଯୁକ୍ତ!';

  @override
  String get detailPasswordShort => 'ପାସୱାର୍ଡ ବହୁତ ଛୋଟ ଅଟେ |';

  @override
  String get detailAuthenticationFailed =>
      'ପ୍ରାମାଣିକିକରଣ ବିଫଳ ହେଲା - ପାସୱାର୍ଡ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get detailConnectionFailed => 'ସଂଯୋଗ ବିଫଳ ହେଲା |';

  @override
  String get detailSelectReset => 'କ’ଣ ପୁନ res ସେଟ୍ କରିବେ ଦୟାକରି ଚୟନ କରନ୍ତୁ |';

  @override
  String get detailResetSchedulesWarning =>
      'ସମସ୍ତ କାର୍ଯ୍ୟସୂଚୀ ଏବଂ ସ୍ୱୟଂଚାଳିତ ନିୟମ ବିଲୋପ ହେବ |';

  @override
  String get detailResetWifiWarning => '• WiFi ସେଟିଂସମୂହ ବିଲୋପ ହେବ |';

  @override
  String get detailSetupAgainWarning =>
      '• ଆପଣଙ୍କୁ ପୁନର୍ବାର ଡିଭାଇସ୍ ସେଟ୍ ଅପ୍ କରିବାକୁ ପଡିବ |';

  @override
  String get detailUnreachableWarning =>
      'ଡିଭାଇସ୍ ଅସ୍ଥାୟୀ ଭାବରେ ପହଞ୍ଚିପାରିବ ନାହିଁ |';

  @override
  String get detailConfirmReset => 'ପୁନ et ସେଟ୍ ନିଶ୍ଚିତ କରନ୍ତୁ |';

  @override
  String detailConfirmResetDevice(String device) {
    return 'ଆପଣ ନିଶ୍ଚିତ କି ଆପଣ \"$device\" ପୁନ res ସେଟ୍ କରିବାକୁ ଚାହୁଁଛନ୍ତି କି?';
  }

  @override
  String get detailThisWill => 'ଏହା କରିବ:';

  @override
  String get detailCannotUndo => 'ଏହି କାର୍ଯ୍ୟକୁ ପୂର୍ବବତ୍ କରାଯାଇପାରିବ ନାହିଁ |';

  @override
  String get detailYesReset => 'ହଁ, ପୁନ et ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get detailResetSuccess => 'ଉପକରଣ ସଫଳତାର ସହିତ ପୁନ et ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get detailResetRemote => 'ଡିଭାଇସ୍ ଦୂରରୁ ପୁନ res ସେଟ୍ ହେବ |';

  @override
  String get detailResetFailed => 'ପୁନ et ସେଟ୍ ବିଫଳ ହେଲା |';

  @override
  String get detailFactoryReset => 'କାରଖାନା ପୁନ et ସେଟ୍ |';

  @override
  String get detailFactoryResetWarning =>
      'ଏହା ସମସ୍ତ ସେଟିଂସମୂହକୁ ଲିଭାଇ ଦେବ ଏବଂ ଉପକରଣକୁ କାରଖାନା ଡିଫଲ୍ଟକୁ ପୁନ restore ସ୍ଥାପନ କରିବ | ଆପଣଙ୍କୁ ପୁନର୍ବାର ଡିଭାଇସ୍ ସେଟ୍ ଅପ୍ କରିବାକୁ ପଡିବ |\n\nଏହି କାର୍ଯ୍ୟକୁ ପୂର୍ବବତ୍ କରାଯାଇପାରିବ ନାହିଁ |';

  @override
  String get detailFactoryResetInitiated => 'କାରଖାନା ପୁନ et ସେଟ୍ ଆରମ୍ଭ ହେଲା |';

  @override
  String get detailResetDevice => 'ଉପକରଣ ପୁନ Res ସେଟ୍ କରନ୍ତୁ |';

  @override
  String detailResetOptionsFor(String device) {
    return '\"$device\" ପାଇଁ ବିକଳ୍ପଗୁଡିକ ପୁନ Res ସେଟ୍ କରନ୍ତୁ |';
  }

  @override
  String get detailResetUserData => 'ଉପଯୋଗକର୍ତ୍ତା ତଥ୍ୟ ପୁନ Res ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get detailResetUserDataSubtitle => 'କାର୍ଯ୍ୟସୂଚୀ ଏବଂ ନିୟମ ସଫା କରେ |';

  @override
  String get detailResetWifi => 'WiFi ସେଟିଂସମୂହ ପୁନ Res ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get detailResetWifiSubtitle =>
      'ଡିଭାଇସ୍ ପୁନର୍ବାର ସେଟ୍ ଅପ୍ କରିବାକୁ ପଡିବ |';

  @override
  String get widgetBrightness => 'ଉଜ୍ଜ୍ୱଳତା |';

  @override
  String get widgetEnergyStatistics => 'ଶକ୍ତି ପରିସଂଖ୍ୟାନ |';

  @override
  String get widgetCurrentPower => 'ସାମ୍ପ୍ରତିକ ଶକ୍ତି |';

  @override
  String get widgetToday => 'ଆଜି |';

  @override
  String get widgetTotal => 'ସମୁଦାୟ';

  @override
  String get widgetOnTimeToday => 'ଆଜି ଟାଇମ୍ ରେ |';

  @override
  String get widgetTotalOnTime => 'ସମୁଦାୟ ସମୟ';

  @override
  String get widgetStandby => 'ଷ୍ଟାଣ୍ଡବାଇ |';

  @override
  String get widgetUnknown => 'ଅଜ୍ଞାତ';

  @override
  String get widgetOpenNetwork => 'ଖୋଲା ନେଟୱାର୍କ |';

  @override
  String get widgetWepInsecure => 'WEP (ଅସୁରକ୍ଷିତ)';
}
