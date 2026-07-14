import 'package:flutter/widgets.dart';

import '../models/pairing_state.dart';
import '../models/wemo_device.dart';
import 'app_localizations.dart';

extension AppLocalizationsContext on BuildContext {
  AppLocalizations get l10n =>
      AppLocalizations.of(this) ?? lookupAppLocalizations(const Locale('en'));
}

Locale _currentLocale = const Locale('en');

void updateCurrentLocale(Locale locale) {
  _currentLocale = locale;
}

AppLocalizations get currentAppLocalizations =>
    lookupAppLocalizations(_currentLocale);

String localizedDeviceType(AppLocalizations l10n, WemoDeviceType type) {
  return switch (type) {
    WemoDeviceType.wemoSwitch => l10n.deviceTypeSmartSwitch,
    WemoDeviceType.lightSwitch => l10n.deviceTypeLightSwitch,
    WemoDeviceType.dimmer || WemoDeviceType.dimmerV2 => l10n.deviceTypeDimmer,
    WemoDeviceType.insight => l10n.deviceTypeInsightPlug,
    WemoDeviceType.motion => l10n.deviceTypeMotionSensor,
    WemoDeviceType.maker => l10n.deviceTypeMaker,
    WemoDeviceType.bridge => l10n.deviceTypeBridge,
    WemoDeviceType.coffeemaker => l10n.deviceTypeCoffeeMaker,
    WemoDeviceType.crockpot => l10n.deviceTypeCrockpot,
    WemoDeviceType.humidifier => l10n.deviceTypeHumidifier,
    WemoDeviceType.outdoorPlug => l10n.deviceTypeOutdoorPlug,
    WemoDeviceType.unknown => l10n.deviceTypeUnknown,
  };
}

String localizedPairingStep(AppLocalizations l10n, PairingStep step) {
  return switch (step) {
    PairingStep.intro => l10n.pairingStepGetStarted,
    PairingStep.connectToAp => l10n.pairingStepConnectToDevice,
    PairingStep.discoverDevice => l10n.pairingStepFindDevice,
    PairingStep.selectNetwork => l10n.pairingStepSelectNetwork,
    PairingStep.configuring => l10n.pairingStepConfiguring,
    PairingStep.reconnectHome => l10n.pairingStepReconnect,
    PairingStep.finalize => l10n.pairingStepFinalizing,
    PairingStep.success => l10n.pairingStepSuccess,
    PairingStep.error => l10n.pairingStepError,
  };
}
