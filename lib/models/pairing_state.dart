import 'package:flutter/foundation.dart';
import 'wemo_device.dart';
import '../services/device_control_service.dart';

/// Enum representing the steps in the device pairing wizard
enum PairingStep {
  intro,
  connectToAp,
  discoverDevice,
  selectNetwork,
  configuring,
  reconnectHome,
  finalize,
  success,
  error,
}

/// Extension to provide display info for pairing steps
extension PairingStepExtension on PairingStep {
  String get title {
    switch (this) {
      case PairingStep.intro:
        return 'Get Started';
      case PairingStep.connectToAp:
        return 'Connect to Device';
      case PairingStep.discoverDevice:
        return 'Find Device';
      case PairingStep.selectNetwork:
        return 'Select Network';
      case PairingStep.configuring:
        return 'Configuring';
      case PairingStep.reconnectHome:
        return 'Reconnect';
      case PairingStep.finalize:
        return 'Finalizing';
      case PairingStep.success:
        return 'Success';
      case PairingStep.error:
        return 'Error';
    }
  }

  int get stepNumber {
    switch (this) {
      case PairingStep.intro:
        return 1;
      case PairingStep.connectToAp:
        return 2;
      case PairingStep.discoverDevice:
        return 3;
      case PairingStep.selectNetwork:
        return 4;
      case PairingStep.configuring:
        return 5;
      case PairingStep.reconnectHome:
        return 6;
      case PairingStep.finalize:
      case PairingStep.success:
      case PairingStep.error:
        return 7;
    }
  }

  static const int totalSteps = 7;
}

/// Immutable state for the device pairing wizard
@immutable
class PairingState {
  final PairingStep step;
  final String? currentSsid;
  final String? homeNetworkSsid;
  final WemoDevice? device;
  final List<WifiNetwork> availableNetworks;
  final String? selectedSsid;
  final String? password;
  final bool isLoading;
  final String? loadingMessage;
  final String? errorMessage;
  final bool canRetry;

  const PairingState({
    this.step = PairingStep.intro,
    this.currentSsid,
    this.homeNetworkSsid,
    this.device,
    this.availableNetworks = const [],
    this.selectedSsid,
    this.password,
    this.isLoading = false,
    this.loadingMessage,
    this.errorMessage,
    this.canRetry = true,
  });

  /// Initial state for the pairing wizard
  factory PairingState.initial() => const PairingState();

  PairingState copyWith({
    PairingStep? step,
    String? currentSsid,
    String? homeNetworkSsid,
    WemoDevice? device,
    List<WifiNetwork>? availableNetworks,
    String? selectedSsid,
    String? password,
    bool? isLoading,
    String? loadingMessage,
    String? errorMessage,
    bool? canRetry,
    bool clearCurrentSsid = false,
    bool clearHomeNetworkSsid = false,
    bool clearDevice = false,
    bool clearSelectedSsid = false,
    bool clearPassword = false,
    bool clearLoadingMessage = false,
    bool clearErrorMessage = false,
  }) {
    return PairingState(
      step: step ?? this.step,
      currentSsid: clearCurrentSsid ? null : (currentSsid ?? this.currentSsid),
      homeNetworkSsid:
          clearHomeNetworkSsid
              ? null
              : (homeNetworkSsid ?? this.homeNetworkSsid),
      device: clearDevice ? null : (device ?? this.device),
      availableNetworks: availableNetworks ?? this.availableNetworks,
      selectedSsid:
          clearSelectedSsid ? null : (selectedSsid ?? this.selectedSsid),
      password: clearPassword ? null : (password ?? this.password),
      isLoading: isLoading ?? this.isLoading,
      loadingMessage:
          clearLoadingMessage ? null : (loadingMessage ?? this.loadingMessage),
      errorMessage:
          clearErrorMessage ? null : (errorMessage ?? this.errorMessage),
      canRetry: canRetry ?? this.canRetry,
    );
  }

  /// Check if we're on a Wemo AP network
  bool get isOnWemoAp {
    if (currentSsid == null) return false;
    return RegExp(r'^WeMo\.\w+$').hasMatch(currentSsid!);
  }

  /// Check if we're on the original home network
  bool get isOnHomeNetwork {
    if (currentSsid == null || homeNetworkSsid == null) return false;
    return currentSsid == homeNetworkSsid;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PairingState &&
          runtimeType == other.runtimeType &&
          step == other.step &&
          currentSsid == other.currentSsid &&
          homeNetworkSsid == other.homeNetworkSsid &&
          device == other.device &&
          listEquals(availableNetworks, other.availableNetworks) &&
          selectedSsid == other.selectedSsid &&
          password == other.password &&
          isLoading == other.isLoading &&
          loadingMessage == other.loadingMessage &&
          errorMessage == other.errorMessage &&
          canRetry == other.canRetry;

  @override
  int get hashCode => Object.hash(
    step,
    currentSsid,
    homeNetworkSsid,
    device,
    Object.hashAll(availableNetworks),
    selectedSsid,
    password,
    isLoading,
    loadingMessage,
    errorMessage,
    canRetry,
  );

  @override
  String toString() =>
      'PairingState(step: $step, currentSsid: $currentSsid, device: ${device?.name}, isLoading: $isLoading)';
}
