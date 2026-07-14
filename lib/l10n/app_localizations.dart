import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('es', '419'),
    Locale('fi'),
    Locale('fr'),
    Locale('fr', 'CA'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('ko'),
    Locale('ml'),
    Locale('mr'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// No description provided for @errDeviceNotSupportAction.
  ///
  /// In en, this message translates to:
  /// **'The device does not support this action.'**
  String get errDeviceNotSupportAction;

  /// No description provided for @errInvalidArgs.
  ///
  /// In en, this message translates to:
  /// **'Invalid arguments were sent to the device.'**
  String get errInvalidArgs;

  /// No description provided for @errActionFailed.
  ///
  /// In en, this message translates to:
  /// **'The device failed to perform the requested action.'**
  String get errActionFailed;

  /// No description provided for @errInvalidValue.
  ///
  /// In en, this message translates to:
  /// **'An invalid value was provided.'**
  String get errInvalidValue;

  /// No description provided for @errValueOutOfRange.
  ///
  /// In en, this message translates to:
  /// **'The value is out of the acceptable range.'**
  String get errValueOutOfRange;

  /// No description provided for @errFeatureNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'This feature is not available on this device.'**
  String get errFeatureNotAvailable;

  /// No description provided for @errOutOfMemory.
  ///
  /// In en, this message translates to:
  /// **'The device is out of memory. Try again later.'**
  String get errOutOfMemory;

  /// No description provided for @errManualActionRequired.
  ///
  /// In en, this message translates to:
  /// **'Manual action is required on the device.'**
  String get errManualActionRequired;

  /// No description provided for @errActionNotAuthorized.
  ///
  /// In en, this message translates to:
  /// **'This action is not authorized.'**
  String get errActionNotAuthorized;

  /// No description provided for @errUnexpected.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again.'**
  String get errUnexpected;

  /// No description provided for @errDeviceUnreachableOffline.
  ///
  /// In en, this message translates to:
  /// **'Unable to reach the device. It may be offline or on a different network.'**
  String get errDeviceUnreachableOffline;

  /// No description provided for @errRequestTimedOutAttempts.
  ///
  /// In en, this message translates to:
  /// **'Request timed out after {attempts} attempts. The device may be offline.'**
  String errRequestTimedOutAttempts(int attempts);

  /// No description provided for @errRequestTimedOut.
  ///
  /// In en, this message translates to:
  /// **'Request timed out. The device may be offline.'**
  String get errRequestTimedOut;

  /// No description provided for @errNoRouteToHost.
  ///
  /// In en, this message translates to:
  /// **'Cannot reach the device. Please check your WiFi connection.'**
  String get errNoRouteToHost;

  /// No description provided for @errHostUnreachable.
  ///
  /// In en, this message translates to:
  /// **'The device is unreachable. Please ensure it is powered on and connected to WiFi.'**
  String get errHostUnreachable;

  /// No description provided for @errCommFailedAttempts.
  ///
  /// In en, this message translates to:
  /// **'Unable to communicate with device after {attempts} attempts.'**
  String errCommFailedAttempts(int attempts);

  /// No description provided for @errNetworkErrorComm.
  ///
  /// In en, this message translates to:
  /// **'Network error: Unable to communicate with device.'**
  String get errNetworkErrorComm;

  /// No description provided for @errActionNotAuthorizedDevice.
  ///
  /// In en, this message translates to:
  /// **'This action is not authorized on the device.'**
  String get errActionNotAuthorizedDevice;

  /// No description provided for @errDeviceServiceNotFound.
  ///
  /// In en, this message translates to:
  /// **'Device service not found. The device may need a firmware update.'**
  String get errDeviceServiceNotFound;

  /// No description provided for @errDeviceEncounteredError.
  ///
  /// In en, this message translates to:
  /// **'The device encountered an error processing the request.'**
  String get errDeviceEncounteredError;

  /// No description provided for @errDeviceInternalError.
  ///
  /// In en, this message translates to:
  /// **'The device returned an internal error.'**
  String get errDeviceInternalError;

  /// No description provided for @errDeviceTempUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The device is temporarily unavailable. Please try again.'**
  String get errDeviceTempUnavailable;

  /// No description provided for @errDeviceReturnedHttpError.
  ///
  /// In en, this message translates to:
  /// **'Device returned an error (HTTP {code}).'**
  String errDeviceReturnedHttpError(int code);

  /// No description provided for @errFailedToPerformAction.
  ///
  /// In en, this message translates to:
  /// **'Failed to {action} on the device.'**
  String errFailedToPerformAction(String action);

  /// No description provided for @errDeviceReturnedError.
  ///
  /// In en, this message translates to:
  /// **'The device returned an error.'**
  String get errDeviceReturnedError;

  /// No description provided for @errOperationTimedOutName.
  ///
  /// In en, this message translates to:
  /// **'The {operation} operation timed out. Please try again.'**
  String errOperationTimedOutName(String operation);

  /// No description provided for @errOperationTimedOutSeconds.
  ///
  /// In en, this message translates to:
  /// **'Operation timed out after {seconds} seconds.'**
  String errOperationTimedOutSeconds(int seconds);

  /// No description provided for @errOperationTimedOut.
  ///
  /// In en, this message translates to:
  /// **'Operation timed out. Please try again.'**
  String get errOperationTimedOut;

  /// No description provided for @errDeviceExceptionMessage.
  ///
  /// In en, this message translates to:
  /// **'{deviceName}: {message}'**
  String errDeviceExceptionMessage(String deviceName, String message);

  /// No description provided for @errEnableLocalNetwork.
  ///
  /// In en, this message translates to:
  /// **'Please enable Local Network permission in Settings to find devices.'**
  String get errEnableLocalNetwork;

  /// No description provided for @errCannotAccessLocalNetwork.
  ///
  /// In en, this message translates to:
  /// **'Cannot access local network. Please enable Local Network permission in Settings.'**
  String get errCannotAccessLocalNetwork;

  /// No description provided for @errCheckWifiConnection.
  ///
  /// In en, this message translates to:
  /// **'Unable to discover devices. Please check your WiFi connection.'**
  String get errCheckWifiConnection;

  /// No description provided for @errDiscoveryInterrupted.
  ///
  /// In en, this message translates to:
  /// **'Discovery interrupted. {count} device(s) found.'**
  String errDiscoveryInterrupted(int count);

  /// No description provided for @errNoDevicesFound.
  ///
  /// In en, this message translates to:
  /// **'No devices found. Please ensure devices are powered on and connected to your network.'**
  String get errNoDevicesFound;

  /// No description provided for @actionGetDeviceState.
  ///
  /// In en, this message translates to:
  /// **'get device state'**
  String get actionGetDeviceState;

  /// No description provided for @actionSetDeviceState.
  ///
  /// In en, this message translates to:
  /// **'set device state'**
  String get actionSetDeviceState;

  /// No description provided for @actionGetEnergyData.
  ///
  /// In en, this message translates to:
  /// **'get energy data'**
  String get actionGetEnergyData;

  /// No description provided for @actionScanNetworks.
  ///
  /// In en, this message translates to:
  /// **'scan for networks'**
  String get actionScanNetworks;

  /// No description provided for @actionConnectWifi.
  ///
  /// In en, this message translates to:
  /// **'connect to WiFi'**
  String get actionConnectWifi;

  /// No description provided for @actionCheckConnection.
  ///
  /// In en, this message translates to:
  /// **'check connection status'**
  String get actionCheckConnection;

  /// No description provided for @actionResetDevice.
  ///
  /// In en, this message translates to:
  /// **'reset device'**
  String get actionResetDevice;

  /// No description provided for @actionPerform.
  ///
  /// In en, this message translates to:
  /// **'perform action'**
  String get actionPerform;

  /// No description provided for @suggestTryRefreshing.
  ///
  /// In en, this message translates to:
  /// **'Try refreshing the device list or check if the device is responding.'**
  String get suggestTryRefreshing;

  /// No description provided for @suggestEnsurePoweredOn.
  ///
  /// In en, this message translates to:
  /// **'Ensure the device is powered on and connected to your WiFi network.'**
  String get suggestEnsurePoweredOn;

  /// No description provided for @suggestMakeSureSameWifi.
  ///
  /// In en, this message translates to:
  /// **'Make sure your phone is connected to the same WiFi network as your devices.'**
  String get suggestMakeSureSameWifi;

  /// No description provided for @suggestCheckPhysical.
  ///
  /// In en, this message translates to:
  /// **'Check the physical device for any buttons or switches that need attention.'**
  String get suggestCheckPhysical;

  /// No description provided for @suggestWaitAndTry.
  ///
  /// In en, this message translates to:
  /// **'Wait a moment and try again.'**
  String get suggestWaitAndTry;

  /// No description provided for @suggestDeviceBusy.
  ///
  /// In en, this message translates to:
  /// **'The device may be busy. Try again in a few seconds.'**
  String get suggestDeviceBusy;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Bit Switch'**
  String get appTitle;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get commonClose;

  /// No description provided for @commonDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get commonDone;

  /// No description provided for @commonLater.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get commonLater;

  /// No description provided for @commonRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get commonRefresh;

  /// No description provided for @commonTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get commonTryAgain;

  /// No description provided for @commonOpenSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get commonOpenSettings;

  /// No description provided for @commonGrant.
  ///
  /// In en, this message translates to:
  /// **'Grant'**
  String get commonGrant;

  /// No description provided for @commonFix.
  ///
  /// In en, this message translates to:
  /// **'Fix'**
  String get commonFix;

  /// No description provided for @commonOn.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get commonOn;

  /// No description provided for @commonOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get commonOff;

  /// No description provided for @commonOffline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get commonOffline;

  /// No description provided for @commonStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get commonStatus;

  /// No description provided for @commonName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get commonName;

  /// No description provided for @commonType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get commonType;

  /// No description provided for @commonModel.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get commonModel;

  /// No description provided for @commonManufacturer.
  ///
  /// In en, this message translates to:
  /// **'Manufacturer'**
  String get commonManufacturer;

  /// No description provided for @commonSerial.
  ///
  /// In en, this message translates to:
  /// **'Serial'**
  String get commonSerial;

  /// No description provided for @commonFirmware.
  ///
  /// In en, this message translates to:
  /// **'Firmware'**
  String get commonFirmware;

  /// No description provided for @commonHost.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get commonHost;

  /// No description provided for @commonMac.
  ///
  /// In en, this message translates to:
  /// **'MAC'**
  String get commonMac;

  /// No description provided for @commonPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get commonPassword;

  /// No description provided for @commonUnknownWifi.
  ///
  /// In en, this message translates to:
  /// **'Unknown Wi-Fi'**
  String get commonUnknownWifi;

  /// No description provided for @commonNotConnected.
  ///
  /// In en, this message translates to:
  /// **'Not connected'**
  String get commonNotConnected;

  /// No description provided for @commonSecondsShort.
  ///
  /// In en, this message translates to:
  /// **'{seconds}s'**
  String commonSecondsShort(int seconds);

  /// No description provided for @commonMinutesShort.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m'**
  String commonMinutesShort(int minutes);

  /// No description provided for @commonHoursMinutesShort.
  ///
  /// In en, this message translates to:
  /// **'{hours}h {minutes}m'**
  String commonHoursMinutesShort(int hours, int minutes);

  /// No description provided for @commonDaysHoursShort.
  ///
  /// In en, this message translates to:
  /// **'{days}d {hours}h'**
  String commonDaysHoursShort(int days, int hours);

  /// No description provided for @commonSeconds.
  ///
  /// In en, this message translates to:
  /// **'{seconds, plural, =1{1 second} other{{seconds} seconds}}'**
  String commonSeconds(int seconds);

  /// No description provided for @deviceTypeSmartSwitch.
  ///
  /// In en, this message translates to:
  /// **'Smart Switch'**
  String get deviceTypeSmartSwitch;

  /// No description provided for @deviceTypeLightSwitch.
  ///
  /// In en, this message translates to:
  /// **'Light Switch'**
  String get deviceTypeLightSwitch;

  /// No description provided for @deviceTypeDimmer.
  ///
  /// In en, this message translates to:
  /// **'Dimmer'**
  String get deviceTypeDimmer;

  /// No description provided for @deviceTypeInsightPlug.
  ///
  /// In en, this message translates to:
  /// **'Insight Plug'**
  String get deviceTypeInsightPlug;

  /// No description provided for @deviceTypeMotionSensor.
  ///
  /// In en, this message translates to:
  /// **'Motion Sensor'**
  String get deviceTypeMotionSensor;

  /// No description provided for @deviceTypeMaker.
  ///
  /// In en, this message translates to:
  /// **'Maker'**
  String get deviceTypeMaker;

  /// No description provided for @deviceTypeBridge.
  ///
  /// In en, this message translates to:
  /// **'Bridge'**
  String get deviceTypeBridge;

  /// No description provided for @deviceTypeCoffeeMaker.
  ///
  /// In en, this message translates to:
  /// **'Coffee Maker'**
  String get deviceTypeCoffeeMaker;

  /// No description provided for @deviceTypeCrockpot.
  ///
  /// In en, this message translates to:
  /// **'Crockpot'**
  String get deviceTypeCrockpot;

  /// No description provided for @deviceTypeHumidifier.
  ///
  /// In en, this message translates to:
  /// **'Humidifier'**
  String get deviceTypeHumidifier;

  /// No description provided for @deviceTypeOutdoorPlug.
  ///
  /// In en, this message translates to:
  /// **'Outdoor Plug'**
  String get deviceTypeOutdoorPlug;

  /// No description provided for @deviceTypeUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown Device'**
  String get deviceTypeUnknown;

  /// No description provided for @pairingStepGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get pairingStepGetStarted;

  /// No description provided for @pairingStepConnectToDevice.
  ///
  /// In en, this message translates to:
  /// **'Connect to Device'**
  String get pairingStepConnectToDevice;

  /// No description provided for @pairingStepFindDevice.
  ///
  /// In en, this message translates to:
  /// **'Find Device'**
  String get pairingStepFindDevice;

  /// No description provided for @pairingStepSelectNetwork.
  ///
  /// In en, this message translates to:
  /// **'Select Network'**
  String get pairingStepSelectNetwork;

  /// No description provided for @pairingStepConfiguring.
  ///
  /// In en, this message translates to:
  /// **'Configuring'**
  String get pairingStepConfiguring;

  /// No description provided for @pairingStepReconnect.
  ///
  /// In en, this message translates to:
  /// **'Reconnect'**
  String get pairingStepReconnect;

  /// No description provided for @pairingStepFinalizing.
  ///
  /// In en, this message translates to:
  /// **'Finalizing'**
  String get pairingStepFinalizing;

  /// No description provided for @pairingStepSuccess.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get pairingStepSuccess;

  /// No description provided for @pairingStepError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get pairingStepError;

  /// No description provided for @homeToggleDebug.
  ///
  /// In en, this message translates to:
  /// **'Toggle debug mode'**
  String get homeToggleDebug;

  /// No description provided for @homeRefreshDevices.
  ///
  /// In en, this message translates to:
  /// **'Refresh devices'**
  String get homeRefreshDevices;

  /// No description provided for @homeSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get homeSettings;

  /// No description provided for @homeDismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get homeDismiss;

  /// No description provided for @homeDiscovering.
  ///
  /// In en, this message translates to:
  /// **'Discovering devices...'**
  String get homeDiscovering;

  /// No description provided for @homeNoDevices.
  ///
  /// In en, this message translates to:
  /// **'No devices found'**
  String get homeNoDevices;

  /// No description provided for @homeScanDevices.
  ///
  /// In en, this message translates to:
  /// **'Scan for devices'**
  String get homeScanDevices;

  /// No description provided for @homeLookingForMore.
  ///
  /// In en, this message translates to:
  /// **'Looking for more devices...'**
  String get homeLookingForMore;

  /// No description provided for @homeDevicesFound.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No devices found} =1{1 device found} other{{count} devices found}}'**
  String homeDevicesFound(int count);

  /// No description provided for @homeDevicesFoundScanning.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No devices found, scanning...} =1{1 device found, scanning...} other{{count} devices found, scanning...}}'**
  String homeDevicesFoundScanning(int count);

  /// No description provided for @homeAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get homeAuto;

  /// No description provided for @homeWifiName.
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi: {name}'**
  String homeWifiName(String name);

  /// No description provided for @homeConnectedWifi.
  ///
  /// In en, this message translates to:
  /// **'Connected to WiFi'**
  String get homeConnectedWifi;

  /// No description provided for @homePermissionExplanation.
  ///
  /// In en, this message translates to:
  /// **'Location information is used to find your Wi-Fi details. Local network access allows you to control your smart switches and devices.'**
  String get homePermissionExplanation;

  /// No description provided for @homeDebugLog.
  ///
  /// In en, this message translates to:
  /// **'Debug Log'**
  String get homeDebugLog;

  /// No description provided for @homeClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get homeClear;

  /// No description provided for @homeDebugEmpty.
  ///
  /// In en, this message translates to:
  /// **'Tap refresh to start discovery and see logs...'**
  String get homeDebugEmpty;

  /// No description provided for @homeProbeHint.
  ///
  /// In en, this message translates to:
  /// **'IP:Port (e.g. 192.168.1.100:49153)'**
  String get homeProbeHint;

  /// No description provided for @homeProbe.
  ///
  /// In en, this message translates to:
  /// **'Probe'**
  String get homeProbe;

  /// No description provided for @homeScanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning...'**
  String get homeScanning;

  /// No description provided for @homeScanSubnet.
  ///
  /// In en, this message translates to:
  /// **'Scan Entire Subnet (iOS Fix)'**
  String get homeScanSubnet;

  /// No description provided for @homePlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform: {platform} {version}'**
  String homePlatform(String platform, String version);

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsSectionNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get settingsSectionNetwork;

  /// No description provided for @settingsSectionDeviceSetup.
  ///
  /// In en, this message translates to:
  /// **'Device Setup'**
  String get settingsSectionDeviceSetup;

  /// No description provided for @settingsSectionDiscovery.
  ///
  /// In en, this message translates to:
  /// **'Discovery'**
  String get settingsSectionDiscovery;

  /// No description provided for @settingsSectionAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsSectionAbout;

  /// No description provided for @settingsSectionDebug.
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get settingsSectionDebug;

  /// No description provided for @settingsPermissionGrantedWifi.
  ///
  /// In en, this message translates to:
  /// **'Permission granted! WiFi name: {ssid}'**
  String settingsPermissionGrantedWifi(String ssid);

  /// No description provided for @settingsLocalNetworkAlsoNeeded.
  ///
  /// In en, this message translates to:
  /// **'Location granted, but Local Network permission also needed. Check Settings.'**
  String get settingsLocalNetworkAlsoNeeded;

  /// No description provided for @settingsLocationRequired.
  ///
  /// In en, this message translates to:
  /// **'Location Permission Required'**
  String get settingsLocationRequired;

  /// No description provided for @settingsLocationRequiredBody.
  ///
  /// In en, this message translates to:
  /// **'To display your WiFi network name, iOS requires Location permission.'**
  String get settingsLocationRequiredBody;

  /// No description provided for @settingsRequiredPermissions.
  ///
  /// In en, this message translates to:
  /// **'Required Permissions:'**
  String get settingsRequiredPermissions;

  /// No description provided for @settingsPermissionList.
  ///
  /// In en, this message translates to:
  /// **'1. Location Services (\"While Using the App\")\n2. Local Network'**
  String get settingsPermissionList;

  /// No description provided for @settingsDiscoveryWithoutLocation.
  ///
  /// In en, this message translates to:
  /// **'Note: Device discovery works without location permission. This permission is only used to display your WiFi network name.'**
  String get settingsDiscoveryWithoutLocation;

  /// No description provided for @settingsEnableLocation.
  ///
  /// In en, this message translates to:
  /// **'Enable Location in Settings'**
  String get settingsEnableLocation;

  /// No description provided for @settingsLocationDeniedBody.
  ///
  /// In en, this message translates to:
  /// **'Location permission was denied. You can enable it from the system settings.'**
  String get settingsLocationDeniedBody;

  /// No description provided for @settingsStepsToEnable.
  ///
  /// In en, this message translates to:
  /// **'Steps to enable:'**
  String get settingsStepsToEnable;

  /// No description provided for @settingsEnableLocationSteps.
  ///
  /// In en, this message translates to:
  /// **'1. Open Settings\n2. Scroll to \"Bit Switch\"\n3. Tap \"Location\"\n4. Select \"While Using the App\"\n5. Return to this app and tap the refresh button'**
  String get settingsEnableLocationSteps;

  /// No description provided for @settingsLocationOnlyWifiName.
  ///
  /// In en, this message translates to:
  /// **'Note: Location permission is only needed to display the WiFi name. Device discovery works without it.'**
  String get settingsLocationOnlyWifiName;

  /// No description provided for @settingsAdditionalPermission.
  ///
  /// In en, this message translates to:
  /// **'Additional Permission Needed'**
  String get settingsAdditionalPermission;

  /// No description provided for @settingsLocalNetworkBody.
  ///
  /// In en, this message translates to:
  /// **'Local Network permission is required to discover and control Wemo devices.'**
  String get settingsLocalNetworkBody;

  /// No description provided for @settingsWifiNameNotVisible.
  ///
  /// In en, this message translates to:
  /// **'You have Location permission, but the WiFi name isn\'t visible yet.'**
  String get settingsWifiNameNotVisible;

  /// No description provided for @settingsPleaseEnable.
  ///
  /// In en, this message translates to:
  /// **'Please enable:'**
  String get settingsPleaseEnable;

  /// No description provided for @settingsEnableLocalNetworkSteps.
  ///
  /// In en, this message translates to:
  /// **'1. Go to iPhone Settings\n2. Scroll down to \"Bit Switch\"\n3. Enable \"Local Network\"'**
  String get settingsEnableLocalNetworkSteps;

  /// No description provided for @settingsLocalNetworkIosReason.
  ///
  /// In en, this message translates to:
  /// **'Local Network permission is required for both device discovery and WiFi name access on iOS.'**
  String get settingsLocalNetworkIosReason;

  /// No description provided for @settingsPairNewDevice.
  ///
  /// In en, this message translates to:
  /// **'Pair New Device'**
  String get settingsPairNewDevice;

  /// No description provided for @settingsPairNewDeviceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Set up a new Wemo device'**
  String get settingsPairNewDeviceSubtitle;

  /// No description provided for @settingsDiscoveryTimeout.
  ///
  /// In en, this message translates to:
  /// **'Discovery Timeout'**
  String get settingsDiscoveryTimeout;

  /// No description provided for @settingsRequestTimeout.
  ///
  /// In en, this message translates to:
  /// **'Request Timeout'**
  String get settingsRequestTimeout;

  /// No description provided for @settingsAutoRefresh.
  ///
  /// In en, this message translates to:
  /// **'Auto-refresh'**
  String get settingsAutoRefresh;

  /// No description provided for @settingsAutoRefreshOn.
  ///
  /// In en, this message translates to:
  /// **'On - Device states refresh automatically'**
  String get settingsAutoRefreshOn;

  /// No description provided for @settingsAutoRefreshOff.
  ///
  /// In en, this message translates to:
  /// **'Off - Use manual refresh button'**
  String get settingsAutoRefreshOff;

  /// No description provided for @settingsAutoRefreshInterval.
  ///
  /// In en, this message translates to:
  /// **'Auto-refresh Interval'**
  String get settingsAutoRefreshInterval;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About Bit Switch'**
  String get settingsAbout;

  /// No description provided for @settingsVersion.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get settingsVersion;

  /// No description provided for @settingsNetworkDiagnostics.
  ///
  /// In en, this message translates to:
  /// **'Network Diagnostics'**
  String get settingsNetworkDiagnostics;

  /// No description provided for @settingsShowDebug.
  ///
  /// In en, this message translates to:
  /// **'Show Debug Mode'**
  String get settingsShowDebug;

  /// No description provided for @settingsShowDebugSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show debug controls and network diagnostics on the home screen'**
  String get settingsShowDebugSubtitle;

  /// No description provided for @settingsShowDebugHomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show debug icon on the home screen for troubleshooting'**
  String get settingsShowDebugHomeSubtitle;

  /// No description provided for @settingsCurrentNetwork.
  ///
  /// In en, this message translates to:
  /// **'Current Network'**
  String get settingsCurrentNetwork;

  /// No description provided for @settingsNetworkAccessStatus.
  ///
  /// In en, this message translates to:
  /// **'Network Access Status'**
  String get settingsNetworkAccessStatus;

  /// No description provided for @settingsNetworkAccessGranted.
  ///
  /// In en, this message translates to:
  /// **'Local network access is available'**
  String get settingsNetworkAccessGranted;

  /// No description provided for @settingsNetworkAccessMissing.
  ///
  /// In en, this message translates to:
  /// **'Additional permissions may be required'**
  String get settingsNetworkAccessMissing;

  /// No description provided for @settingsChecking.
  ///
  /// In en, this message translates to:
  /// **'Checking...'**
  String get settingsChecking;

  /// No description provided for @settingsEnableLocalNetwork.
  ///
  /// In en, this message translates to:
  /// **'Enable Local Network in Settings'**
  String get settingsEnableLocalNetwork;

  /// No description provided for @settingsNotConnectedWifi.
  ///
  /// In en, this message translates to:
  /// **'Not connected to WiFi'**
  String get settingsNotConnectedWifi;

  /// No description provided for @settingsPermissionRequiredView.
  ///
  /// In en, this message translates to:
  /// **'Permission required to view'**
  String get settingsPermissionRequiredView;

  /// No description provided for @settingsAllPermissionsGranted.
  ///
  /// In en, this message translates to:
  /// **'All permissions granted'**
  String get settingsAllPermissionsGranted;

  /// No description provided for @settingsLocalNetworkNeeded.
  ///
  /// In en, this message translates to:
  /// **'Local Network permission needed'**
  String get settingsLocalNetworkNeeded;

  /// No description provided for @settingsLocationNeeded.
  ///
  /// In en, this message translates to:
  /// **'Location permission needed'**
  String get settingsLocationNeeded;

  /// No description provided for @settingsRefreshPermissions.
  ///
  /// In en, this message translates to:
  /// **'Refresh permissions'**
  String get settingsRefreshPermissions;

  /// No description provided for @settingsAboutWifiPermission.
  ///
  /// In en, this message translates to:
  /// **'About WiFi Name Permission'**
  String get settingsAboutWifiPermission;

  /// No description provided for @settingsWifiPermissionExplanation.
  ///
  /// In en, this message translates to:
  /// **'Your WiFi name helps confirm that your phone and Wemo devices are on the same network.'**
  String get settingsWifiPermissionExplanation;

  /// No description provided for @settingsWifiPermissionIos.
  ///
  /// In en, this message translates to:
  /// **'On iOS, displaying your WiFi network name requires location permission.'**
  String get settingsWifiPermissionIos;

  /// No description provided for @settingsImportant.
  ///
  /// In en, this message translates to:
  /// **'Important:'**
  String get settingsImportant;

  /// No description provided for @settingsPrivacyNote.
  ///
  /// In en, this message translates to:
  /// **'• Your location is never tracked\n• No location data is collected or stored'**
  String get settingsPrivacyNote;

  /// No description provided for @settingsWifiPermissionImportant.
  ///
  /// In en, this message translates to:
  /// **'• Device discovery works WITHOUT this permission\n• This is only needed to show the WiFi name\n• No location data is collected or stored'**
  String get settingsWifiPermissionImportant;

  /// No description provided for @settingsGrantPermission.
  ///
  /// In en, this message translates to:
  /// **'Grant Permission'**
  String get settingsGrantPermission;

  /// No description provided for @settingsHowLongScan.
  ///
  /// In en, this message translates to:
  /// **'How long to scan for devices:'**
  String get settingsHowLongScan;

  /// No description provided for @settingsDiscoveryTimeoutSet.
  ///
  /// In en, this message translates to:
  /// **'Discovery timeout set to {seconds} seconds'**
  String settingsDiscoveryTimeoutSet(int seconds);

  /// No description provided for @settingsHowLongResponses.
  ///
  /// In en, this message translates to:
  /// **'How long to wait for device responses:'**
  String get settingsHowLongResponses;

  /// No description provided for @settingsIncreaseTimeoutHint.
  ///
  /// In en, this message translates to:
  /// **'Increase this value if you see \"Connection closed\" errors.'**
  String get settingsIncreaseTimeoutHint;

  /// No description provided for @settingsRequestTimeoutSet.
  ///
  /// In en, this message translates to:
  /// **'Request timeout set to {seconds} seconds'**
  String settingsRequestTimeoutSet(int seconds);

  /// No description provided for @settingsSetRefreshInterval.
  ///
  /// In en, this message translates to:
  /// **'Set the interval for automatic state refresh:'**
  String get settingsSetRefreshInterval;

  /// No description provided for @settingsRefreshIntervalSet.
  ///
  /// In en, this message translates to:
  /// **'Refresh interval set to {seconds} seconds'**
  String settingsRefreshIntervalSet(int seconds);

  /// No description provided for @settingsAboutTagline.
  ///
  /// In en, this message translates to:
  /// **'A clean, private local controller for your Wemo devices.'**
  String get settingsAboutTagline;

  /// No description provided for @settingsAboutDescription.
  ///
  /// In en, this message translates to:
  /// **'Bit Switch uses local network discovery to find and control devices without cloud dependencies.'**
  String get settingsAboutDescription;

  /// No description provided for @settingsVersionValue.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.1'**
  String get settingsVersionValue;

  /// No description provided for @settingsProtocol.
  ///
  /// In en, this message translates to:
  /// **'Protocol: SSDP/UPnP'**
  String get settingsProtocol;

  /// No description provided for @settingsMulticastAddress.
  ///
  /// In en, this message translates to:
  /// **'Multicast Address: 239.255.255.250:1900'**
  String get settingsMulticastAddress;

  /// No description provided for @settingsDevicePorts.
  ///
  /// In en, this message translates to:
  /// **'Device Ports: 49152-49159'**
  String get settingsDevicePorts;

  /// No description provided for @settingsControlProtocol.
  ///
  /// In en, this message translates to:
  /// **'Control Protocol: SOAP over HTTP'**
  String get settingsControlProtocol;

  /// No description provided for @settingsDiagnosticsTip.
  ///
  /// In en, this message translates to:
  /// **'Tip: Ensure your device is on the same network as your Wemo devices and that UDP multicast is not blocked.'**
  String get settingsDiagnosticsTip;

  /// No description provided for @settingsDevicePaired.
  ///
  /// In en, this message translates to:
  /// **'Device paired! Refreshing device list...'**
  String get settingsDevicePaired;

  /// No description provided for @settingsSecondsPerRequest.
  ///
  /// In en, this message translates to:
  /// **'{seconds} seconds per request'**
  String settingsSecondsPerRequest(int seconds);

  /// No description provided for @settingsRefreshingEvery.
  ///
  /// In en, this message translates to:
  /// **'Refreshing every {seconds}s'**
  String settingsRefreshingEvery(int seconds);

  /// No description provided for @pairingTitle.
  ///
  /// In en, this message translates to:
  /// **'Pair New Device'**
  String get pairingTitle;

  /// No description provided for @pairingSetupTitle.
  ///
  /// In en, this message translates to:
  /// **'Set Up Your Wemo Device'**
  String get pairingSetupTitle;

  /// No description provided for @pairingBeforeBegin.
  ///
  /// In en, this message translates to:
  /// **'Before you begin, make sure your Wemo device is in setup mode:'**
  String get pairingBeforeBegin;

  /// No description provided for @pairingPlugInTitle.
  ///
  /// In en, this message translates to:
  /// **'Plug in your Wemo device'**
  String get pairingPlugInTitle;

  /// No description provided for @pairingPlugInBody.
  ///
  /// In en, this message translates to:
  /// **'Connect it to power and wait for it to start up.'**
  String get pairingPlugInBody;

  /// No description provided for @pairingBlinkingLedTitle.
  ///
  /// In en, this message translates to:
  /// **'Look for the blinking LED'**
  String get pairingBlinkingLedTitle;

  /// No description provided for @pairingBlinkingLedBody.
  ///
  /// In en, this message translates to:
  /// **'A blinking LED indicates the device is in setup mode.'**
  String get pairingBlinkingLedBody;

  /// No description provided for @pairingCheckWifiTitle.
  ///
  /// In en, this message translates to:
  /// **'Check for the WiFi network'**
  String get pairingCheckWifiTitle;

  /// No description provided for @pairingCheckWifiBody.
  ///
  /// In en, this message translates to:
  /// **'The device will broadcast a network named \"WeMo.XXXXX\".'**
  String get pairingCheckWifiBody;

  /// No description provided for @pairingSolidLedHint.
  ///
  /// In en, this message translates to:
  /// **'If the LED is solid, hold the reset button for 5 seconds to enter setup mode.'**
  String get pairingSolidLedHint;

  /// No description provided for @pairingStart.
  ///
  /// In en, this message translates to:
  /// **'Start Pairing'**
  String get pairingStart;

  /// No description provided for @pairingConnectWifiTitle.
  ///
  /// In en, this message translates to:
  /// **'Connect to Device WiFi'**
  String get pairingConnectWifiTitle;

  /// No description provided for @pairingConnectWifiBody.
  ///
  /// In en, this message translates to:
  /// **'Open your phone\'s WiFi settings and connect to the network that starts with \"WeMo.\"'**
  String get pairingConnectWifiBody;

  /// No description provided for @pairingCurrentNetwork.
  ///
  /// In en, this message translates to:
  /// **'Current Network'**
  String get pairingCurrentNetwork;

  /// No description provided for @pairingConnectedToDevice.
  ///
  /// In en, this message translates to:
  /// **'Connected to Wemo device!'**
  String get pairingConnectedToDevice;

  /// No description provided for @pairingOpenWifiSettings.
  ///
  /// In en, this message translates to:
  /// **'Open WiFi Settings'**
  String get pairingOpenWifiSettings;

  /// No description provided for @pairingConnectedButton.
  ///
  /// In en, this message translates to:
  /// **'I\'ve Connected'**
  String get pairingConnectedButton;

  /// No description provided for @pairingLookingForDevice.
  ///
  /// In en, this message translates to:
  /// **'Looking for your Wemo device...'**
  String get pairingLookingForDevice;

  /// No description provided for @pairingManualIpPrompt.
  ///
  /// In en, this message translates to:
  /// **'Or enter the device IP manually:'**
  String get pairingManualIpPrompt;

  /// No description provided for @pairingDeviceIp.
  ///
  /// In en, this message translates to:
  /// **'Device IP Address'**
  String get pairingDeviceIp;

  /// No description provided for @pairingConnectToIp.
  ///
  /// In en, this message translates to:
  /// **'Connect to IP'**
  String get pairingConnectToIp;

  /// No description provided for @pairingSelectHomeWifi.
  ///
  /// In en, this message translates to:
  /// **'Select your home WiFi network:'**
  String get pairingSelectHomeWifi;

  /// No description provided for @pairingRefreshNetworks.
  ///
  /// In en, this message translates to:
  /// **'Refresh networks'**
  String get pairingRefreshNetworks;

  /// No description provided for @pairingIosScanLimitation.
  ///
  /// In en, this message translates to:
  /// **'iOS strictly prohibits third-party apps from scanning for nearby Wi-Fi networks. You may need to enter the network SSID manually.'**
  String get pairingIosScanLimitation;

  /// No description provided for @pairingNoNetworks.
  ///
  /// In en, this message translates to:
  /// **'No networks found'**
  String get pairingNoNetworks;

  /// No description provided for @pairingScanAgain.
  ///
  /// In en, this message translates to:
  /// **'Scan Again'**
  String get pairingScanAgain;

  /// No description provided for @pairingWifiPassword.
  ///
  /// In en, this message translates to:
  /// **'WiFi Password'**
  String get pairingWifiPassword;

  /// No description provided for @pairingConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get pairingConnect;

  /// No description provided for @pairingEnterNetworkManually.
  ///
  /// In en, this message translates to:
  /// **'Enter network manually'**
  String get pairingEnterNetworkManually;

  /// No description provided for @pairingEnterNetworkName.
  ///
  /// In en, this message translates to:
  /// **'Enter network name:'**
  String get pairingEnterNetworkName;

  /// No description provided for @pairingNetworkName.
  ///
  /// In en, this message translates to:
  /// **'Network Name (SSID)'**
  String get pairingNetworkName;

  /// No description provided for @pairingUseNetwork.
  ///
  /// In en, this message translates to:
  /// **'Use This Network'**
  String get pairingUseNetwork;

  /// No description provided for @pairingConfiguringDevice.
  ///
  /// In en, this message translates to:
  /// **'Configuring device...'**
  String get pairingConfiguringDevice;

  /// No description provided for @pairingConfiguringWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait while the device connects to your network.'**
  String get pairingConfiguringWait;

  /// No description provided for @pairingReconnectTitle.
  ///
  /// In en, this message translates to:
  /// **'Reconnect to Your Network'**
  String get pairingReconnectTitle;

  /// No description provided for @pairingReconnectBody.
  ///
  /// In en, this message translates to:
  /// **'Your Wemo device is now connecting to \"{ssid}\". Please reconnect your phone to the same network.'**
  String pairingReconnectBody(String ssid);

  /// No description provided for @pairingBackOnHome.
  ///
  /// In en, this message translates to:
  /// **'Back on home network!'**
  String get pairingBackOnHome;

  /// No description provided for @pairingReconnectedButton.
  ///
  /// In en, this message translates to:
  /// **'I\'ve Reconnected'**
  String get pairingReconnectedButton;

  /// No description provided for @pairingFinalizingSetup.
  ///
  /// In en, this message translates to:
  /// **'Finalizing setup...'**
  String get pairingFinalizingSetup;

  /// No description provided for @pairingSetupComplete.
  ///
  /// In en, this message translates to:
  /// **'Setup Complete!'**
  String get pairingSetupComplete;

  /// No description provided for @pairingConnectedToSsid.
  ///
  /// In en, this message translates to:
  /// **'Connected to {ssid}'**
  String pairingConnectedToSsid(String ssid);

  /// No description provided for @pairingDeviceReady.
  ///
  /// In en, this message translates to:
  /// **'Your device is now set up and will appear on the home screen.'**
  String get pairingDeviceReady;

  /// No description provided for @pairingSomethingWrong.
  ///
  /// In en, this message translates to:
  /// **'Something Went Wrong'**
  String get pairingSomethingWrong;

  /// No description provided for @pairingStartOver.
  ///
  /// In en, this message translates to:
  /// **'Start Over'**
  String get pairingStartOver;

  /// No description provided for @pairingErrorOpenWifi.
  ///
  /// In en, this message translates to:
  /// **'Could not open WiFi settings. Please open them manually.'**
  String get pairingErrorOpenWifi;

  /// No description provided for @pairingErrorStillOnHome.
  ///
  /// In en, this message translates to:
  /// **'Your phone is still connected to \"{ssid}\". Please open WiFi settings, connect to the WeMo device network, then try again.'**
  String pairingErrorStillOnHome(String ssid);

  /// No description provided for @pairingLoadingLooking.
  ///
  /// In en, this message translates to:
  /// **'Looking for device...'**
  String get pairingLoadingLooking;

  /// No description provided for @pairingErrorDeviceAtDefaultIp.
  ///
  /// In en, this message translates to:
  /// **'Could not find the WeMo device at {ip}. Make sure your phone is connected to the WeMo WiFi network, then try again. You can also enter the device IP manually.'**
  String pairingErrorDeviceAtDefaultIp(String ip);

  /// No description provided for @pairingErrorDiscovering.
  ///
  /// In en, this message translates to:
  /// **'Error discovering device: {error}'**
  String pairingErrorDiscovering(String error);

  /// No description provided for @pairingLoadingConnectingIp.
  ///
  /// In en, this message translates to:
  /// **'Connecting to {ip}...'**
  String pairingLoadingConnectingIp(String ip);

  /// No description provided for @pairingErrorNoDeviceAtIp.
  ///
  /// In en, this message translates to:
  /// **'No device found at {ip}'**
  String pairingErrorNoDeviceAtIp(String ip);

  /// No description provided for @pairingErrorConnectingIp.
  ///
  /// In en, this message translates to:
  /// **'Error connecting to {ip}: {error}'**
  String pairingErrorConnectingIp(String ip, String error);

  /// No description provided for @pairingLoadingScanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning for networks...'**
  String get pairingLoadingScanning;

  /// No description provided for @pairingErrorScanning.
  ///
  /// In en, this message translates to:
  /// **'Could not scan networks: {error}'**
  String pairingErrorScanning(String error);

  /// No description provided for @pairingErrorSelectAndPassword.
  ///
  /// In en, this message translates to:
  /// **'Please select a network and enter the password.'**
  String get pairingErrorSelectAndPassword;

  /// No description provided for @pairingLoadingSendingCredentials.
  ///
  /// In en, this message translates to:
  /// **'Sending network credentials...'**
  String get pairingLoadingSendingCredentials;

  /// No description provided for @pairingLoadingWaitingConnection.
  ///
  /// In en, this message translates to:
  /// **'Waiting for device to connect...'**
  String get pairingLoadingWaitingConnection;

  /// No description provided for @pairingErrorConfigure.
  ///
  /// In en, this message translates to:
  /// **'Failed to configure network: {error}'**
  String pairingErrorConfigure(String error);

  /// No description provided for @pairingErrorPasswordShort.
  ///
  /// In en, this message translates to:
  /// **'Password too short. Please check and try again.'**
  String get pairingErrorPasswordShort;

  /// No description provided for @pairingErrorPasswordIncorrect.
  ///
  /// In en, this message translates to:
  /// **'Failed to connect. Please check the password.'**
  String get pairingErrorPasswordIncorrect;

  /// No description provided for @pairingErrorConnectionTimeout.
  ///
  /// In en, this message translates to:
  /// **'Connection timed out. Please try again.'**
  String get pairingErrorConnectionTimeout;

  /// No description provided for @pairingErrorFinalizing.
  ///
  /// In en, this message translates to:
  /// **'Error finalizing setup: {error}'**
  String pairingErrorFinalizing(String error);

  /// No description provided for @detailRefreshState.
  ///
  /// In en, this message translates to:
  /// **'Refresh state'**
  String get detailRefreshState;

  /// No description provided for @detailDeviceInfo.
  ///
  /// In en, this message translates to:
  /// **'Device info'**
  String get detailDeviceInfo;

  /// No description provided for @detailAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get detailAdvanced;

  /// No description provided for @detailWifiSetup.
  ///
  /// In en, this message translates to:
  /// **'WiFi Setup'**
  String get detailWifiSetup;

  /// No description provided for @detailReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get detailReset;

  /// No description provided for @detailUnreachable.
  ///
  /// In en, this message translates to:
  /// **'Device is unreachable. Check network connection.'**
  String get detailUnreachable;

  /// No description provided for @detailFailedToggle.
  ///
  /// In en, this message translates to:
  /// **'Failed to toggle: {error}'**
  String detailFailedToggle(String error);

  /// No description provided for @detailDeviceInformation.
  ///
  /// In en, this message translates to:
  /// **'Device Information'**
  String get detailDeviceInformation;

  /// No description provided for @detailPermissionScan.
  ///
  /// In en, this message translates to:
  /// **'Permission is required to scan WiFi networks.'**
  String get detailPermissionScan;

  /// No description provided for @detailScanFailedManual.
  ///
  /// In en, this message translates to:
  /// **'Could not scan networks. Enter the network name manually.'**
  String get detailScanFailedManual;

  /// No description provided for @detailEnterNetworkNameError.
  ///
  /// In en, this message translates to:
  /// **'Please enter or select a network name'**
  String get detailEnterNetworkNameError;

  /// No description provided for @detailEnterPasswordError.
  ///
  /// In en, this message translates to:
  /// **'Please enter the network password'**
  String get detailEnterPasswordError;

  /// No description provided for @detailWifiSuccess.
  ///
  /// In en, this message translates to:
  /// **'WiFi configured successfully!'**
  String get detailWifiSuccess;

  /// No description provided for @detailScanNetworks.
  ///
  /// In en, this message translates to:
  /// **'Scan for networks'**
  String get detailScanNetworks;

  /// No description provided for @detailConfigureWifiFor.
  ///
  /// In en, this message translates to:
  /// **'Configure the WiFi network for \"{device}\"'**
  String detailConfigureWifiFor(String device);

  /// No description provided for @detailAvailableNetworks.
  ///
  /// In en, this message translates to:
  /// **'Available Networks'**
  String get detailAvailableNetworks;

  /// No description provided for @detailNetworkSecurityChannel.
  ///
  /// In en, this message translates to:
  /// **'{security} • Ch {channel}'**
  String detailNetworkSecurityChannel(String security, int channel);

  /// No description provided for @detailIosManualOnly.
  ///
  /// In en, this message translates to:
  /// **'iOS strictly prohibits third-party apps from scanning for nearby Wi-Fi networks. Please enter your network name manually below.'**
  String get detailIosManualOnly;

  /// No description provided for @detailTapRefreshScan.
  ///
  /// In en, this message translates to:
  /// **'Tap refresh to scan for networks'**
  String get detailTapRefreshScan;

  /// No description provided for @detailEnterNetworkBelow.
  ///
  /// In en, this message translates to:
  /// **'Enter your network name below'**
  String get detailEnterNetworkBelow;

  /// No description provided for @detailNetworkCredentials.
  ///
  /// In en, this message translates to:
  /// **'Network Credentials'**
  String get detailNetworkCredentials;

  /// No description provided for @detailConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting to network...'**
  String get detailConnecting;

  /// No description provided for @detailConnected.
  ///
  /// In en, this message translates to:
  /// **'Connected successfully!'**
  String get detailConnected;

  /// No description provided for @detailPasswordShort.
  ///
  /// In en, this message translates to:
  /// **'Password is too short'**
  String get detailPasswordShort;

  /// No description provided for @detailAuthenticationFailed.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed - check password'**
  String get detailAuthenticationFailed;

  /// No description provided for @detailConnectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get detailConnectionFailed;

  /// No description provided for @detailSelectReset.
  ///
  /// In en, this message translates to:
  /// **'Please select what to reset'**
  String get detailSelectReset;

  /// No description provided for @detailResetSchedulesWarning.
  ///
  /// In en, this message translates to:
  /// **'• All schedules and automation rules will be deleted'**
  String get detailResetSchedulesWarning;

  /// No description provided for @detailResetWifiWarning.
  ///
  /// In en, this message translates to:
  /// **'• WiFi settings will be erased'**
  String get detailResetWifiWarning;

  /// No description provided for @detailSetupAgainWarning.
  ///
  /// In en, this message translates to:
  /// **'• You will need to set up the device again'**
  String get detailSetupAgainWarning;

  /// No description provided for @detailUnreachableWarning.
  ///
  /// In en, this message translates to:
  /// **'• The device may become temporarily unreachable'**
  String get detailUnreachableWarning;

  /// No description provided for @detailConfirmReset.
  ///
  /// In en, this message translates to:
  /// **'Confirm Reset'**
  String get detailConfirmReset;

  /// No description provided for @detailConfirmResetDevice.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset \"{device}\"?'**
  String detailConfirmResetDevice(String device);

  /// No description provided for @detailThisWill.
  ///
  /// In en, this message translates to:
  /// **'This will:'**
  String get detailThisWill;

  /// No description provided for @detailCannotUndo.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone.'**
  String get detailCannotUndo;

  /// No description provided for @detailYesReset.
  ///
  /// In en, this message translates to:
  /// **'Yes, Reset'**
  String get detailYesReset;

  /// No description provided for @detailResetSuccess.
  ///
  /// In en, this message translates to:
  /// **'Device reset successfully'**
  String get detailResetSuccess;

  /// No description provided for @detailResetRemote.
  ///
  /// In en, this message translates to:
  /// **'Device will reset remotely'**
  String get detailResetRemote;

  /// No description provided for @detailResetFailed.
  ///
  /// In en, this message translates to:
  /// **'Reset failed'**
  String get detailResetFailed;

  /// No description provided for @detailFactoryReset.
  ///
  /// In en, this message translates to:
  /// **'Factory Reset'**
  String get detailFactoryReset;

  /// No description provided for @detailFactoryResetWarning.
  ///
  /// In en, this message translates to:
  /// **'This will erase ALL settings and restore the device to factory defaults. You will need to set up the device again.\n\nThis action cannot be undone.'**
  String get detailFactoryResetWarning;

  /// No description provided for @detailFactoryResetInitiated.
  ///
  /// In en, this message translates to:
  /// **'Factory reset initiated'**
  String get detailFactoryResetInitiated;

  /// No description provided for @detailResetDevice.
  ///
  /// In en, this message translates to:
  /// **'Reset Device'**
  String get detailResetDevice;

  /// No description provided for @detailResetOptionsFor.
  ///
  /// In en, this message translates to:
  /// **'Reset options for \"{device}\"'**
  String detailResetOptionsFor(String device);

  /// No description provided for @detailResetUserData.
  ///
  /// In en, this message translates to:
  /// **'Reset User Data'**
  String get detailResetUserData;

  /// No description provided for @detailResetUserDataSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Clears schedules and rules'**
  String get detailResetUserDataSubtitle;

  /// No description provided for @detailResetWifi.
  ///
  /// In en, this message translates to:
  /// **'Reset WiFi Settings'**
  String get detailResetWifi;

  /// No description provided for @detailResetWifiSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Device will need to be set up again'**
  String get detailResetWifiSubtitle;

  /// No description provided for @widgetBrightness.
  ///
  /// In en, this message translates to:
  /// **'Brightness'**
  String get widgetBrightness;

  /// No description provided for @widgetEnergyStatistics.
  ///
  /// In en, this message translates to:
  /// **'Energy Statistics'**
  String get widgetEnergyStatistics;

  /// No description provided for @widgetCurrentPower.
  ///
  /// In en, this message translates to:
  /// **'Current Power'**
  String get widgetCurrentPower;

  /// No description provided for @widgetToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get widgetToday;

  /// No description provided for @widgetTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get widgetTotal;

  /// No description provided for @widgetOnTimeToday.
  ///
  /// In en, this message translates to:
  /// **'On Time Today'**
  String get widgetOnTimeToday;

  /// No description provided for @widgetTotalOnTime.
  ///
  /// In en, this message translates to:
  /// **'Total On Time'**
  String get widgetTotalOnTime;

  /// No description provided for @widgetStandby.
  ///
  /// In en, this message translates to:
  /// **'Standby'**
  String get widgetStandby;

  /// No description provided for @widgetUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get widgetUnknown;

  /// No description provided for @widgetOpenNetwork.
  ///
  /// In en, this message translates to:
  /// **'Open network'**
  String get widgetOpenNetwork;

  /// No description provided for @widgetWepInsecure.
  ///
  /// In en, this message translates to:
  /// **'WEP (insecure)'**
  String get widgetWepInsecure;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fi',
    'fr',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'id',
    'it',
    'ja',
    'kn',
    'ko',
    'ml',
    'mr',
    'ms',
    'nl',
    'no',
    'or',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sl',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'es':
      {
        switch (locale.countryCode) {
          case '419':
            return AppLocalizationsEs419();
        }
        break;
      }
    case 'fr':
      {
        switch (locale.countryCode) {
          case 'CA':
            return AppLocalizationsFrCa();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
