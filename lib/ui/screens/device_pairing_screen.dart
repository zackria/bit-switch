import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/pairing_state.dart';
import '../../providers/pairing_provider.dart';
import '../widgets/pairing_step_indicator.dart';
import '../widgets/network_list_tile.dart';
import '../../l10n/l10n.dart';

/// Screen for the device pairing wizard
class DevicePairingScreen extends StatefulWidget {
  const DevicePairingScreen({super.key});

  @override
  State<DevicePairingScreen> createState() => _DevicePairingScreenState();
}

class _DevicePairingScreenState extends State<DevicePairingScreen> {
  final _passwordController = TextEditingController();
  final _manualIpController = TextEditingController();
  final _manualSsidController = TextEditingController();
  bool _obscurePassword = true;
  bool _showManualSsid = false;

  @override
  void initState() {
    super.initState();
    // Start pairing when screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PairingProvider>().startPairing();
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _manualIpController.dispose();
    _manualSsidController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          context.read<PairingProvider>().reset();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.pairingTitle),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.read<PairingProvider>().reset();
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Consumer<PairingProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                // Progress indicator
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: PairingStepIndicator(currentStep: provider.state.step),
                ),
                const Divider(),
                // Step content
                Expanded(child: _buildStepContent(context, provider)),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildStepContent(BuildContext context, PairingProvider provider) {
    final state = provider.state;

    switch (state.step) {
      case PairingStep.intro:
        return _buildIntroStep(context, provider);
      case PairingStep.connectToAp:
        return _buildConnectToApStep(context, provider);
      case PairingStep.discoverDevice:
        return _buildDiscoverDeviceStep(context, provider);
      case PairingStep.selectNetwork:
        return _buildSelectNetworkStep(context, provider);
      case PairingStep.configuring:
        return _buildConfiguringStep(context, provider);
      case PairingStep.reconnectHome:
        return _buildReconnectHomeStep(context, provider);
      case PairingStep.finalize:
        return _buildFinalizeStep(context, provider);
      case PairingStep.success:
        return _buildSuccessStep(context, provider);
      case PairingStep.error:
        return _buildErrorStep(context, provider);
    }
  }

  Widget _buildIntroStep(BuildContext context, PairingProvider provider) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.wifi_tethering,
                size: 64,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 32),

          // Title
          Text(
            context.l10n.pairingSetupTitle,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Instructions
          Text(
            context.l10n.pairingBeforeBegin,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),

          _buildInstructionItem(
            context,
            '1',
            context.l10n.pairingPlugInTitle,
            context.l10n.pairingPlugInBody,
          ),
          _buildInstructionItem(
            context,
            '2',
            context.l10n.pairingBlinkingLedTitle,
            context.l10n.pairingBlinkingLedBody,
          ),
          _buildInstructionItem(
            context,
            '3',
            context.l10n.pairingCheckWifiTitle,
            context.l10n.pairingCheckWifiBody,
          ),

          const SizedBox(height: 16),
          Card(
            color: theme.colorScheme.secondaryContainer,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      context.l10n.pairingSolidLedHint,
                      style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 32),

          // Start button
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () => provider.startConnectToDevice(),
              icon: const Icon(Icons.arrow_forward),
              label: Text(context.l10n.pairingStart),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstructionItem(
    BuildContext context,
    String number,
    String title,
    String description,
  ) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConnectToApStep(BuildContext context, PairingProvider provider) {
    final theme = Theme.of(context);
    final state = provider.state;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.wifi,
                size: 64,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 32),

          Text(
            context.l10n.pairingConnectWifiTitle,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          Text(
            context.l10n.pairingConnectWifiBody,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),

          // Current network status
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    state.isOnWemoAp ? Icons.check_circle : Icons.wifi_find,
                    color: state.isOnWemoAp
                        ? Colors.green
                        : theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.pairingCurrentNetwork,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        Text(
                          state.currentSsid ?? context.l10n.commonNotConnected,
                          style: theme.textTheme.titleMedium,
                        ),
                        if (state.isOnWemoAp)
                          Text(
                            context.l10n.pairingConnectedToDevice,
                            style: TextStyle(color: Colors.green[700]),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Open WiFi settings button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () => provider.openWifiSettings(),
              icon: const Icon(Icons.settings),
              label: Text(context.l10n.pairingOpenWifiSettings),
            ),
          ),

          const SizedBox(height: 16),

          // Continue button
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () => provider.confirmConnectedToDeviceAp(),
              icon: const Icon(Icons.arrow_forward),
              label: Text(context.l10n.pairingConnectedButton),
            ),
          ),

          if (state.errorMessage != null) ...[
            const SizedBox(height: 16),
            Text(
              state.errorMessage!,
              style: TextStyle(color: theme.colorScheme.error),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDiscoverDeviceStep(
    BuildContext context,
    PairingProvider provider,
  ) {
    final theme = Theme.of(context);
    final state = provider.state;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (state.isLoading) ...[
            Center(
              child: Padding(
                padding: EdgeInsets.all(48),
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 24),
                    Text(context.l10n.pairingLookingForDevice),
                  ],
                ),
              ),
            ),
          ] else ...[
            // Error or manual IP entry
            if (state.errorMessage != null) ...[
              Card(
                color: theme.colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: theme.colorScheme.onErrorContainer,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          state.errorMessage!,
                          style: TextStyle(
                            color: theme.colorScheme.onErrorContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],

            // Retry button
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => provider.retryDiscovery(),
                icon: const Icon(Icons.refresh),
                label: Text(context.l10n.commonTryAgain),
              ),
            ),

            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),

            // Manual IP entry
            Text(
              context.l10n.pairingManualIpPrompt,
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 8),

            TextField(
              controller: _manualIpController,
              decoration: InputDecoration(
                labelText: context.l10n.pairingDeviceIp,
                hintText: '10.22.22.1',
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: _manualIpController.text.isNotEmpty
                    ? () => provider.tryManualIp(_manualIpController.text)
                    : null,
                icon: const Icon(Icons.connect_without_contact),
                label: Text(context.l10n.pairingConnectToIp),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSelectNetworkStep(
    BuildContext context,
    PairingProvider provider,
  ) {
    final theme = Theme.of(context);
    final state = provider.state;

    return Column(
      children: [
        // Device info card
        if (state.device != null)
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.devices, color: theme.colorScheme.primary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.device!.name,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          localizedDeviceType(context.l10n, state.device!.type),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        // Network selection
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.pairingSelectHomeWifi,
                style: theme.textTheme.titleSmall,
              ),
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: state.isLoading
                    ? null
                    : () => provider.refreshNetworks(),
                tooltip: context.l10n.pairingRefreshNetworks,
              ),
            ],
          ),
        ),

        // iOS limitation banner
        if (Theme.of(context).platform == TargetPlatform.iOS)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Card(
              color: Colors.blue.shade50,
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.blue.shade700,
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        context.l10n.pairingIosScanLimitation,
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        if (state.isLoading && state.availableNetworks.isEmpty)
          const Expanded(child: Center(child: CircularProgressIndicator()))
        else if (state.availableNetworks.isEmpty)
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.wifi_off,
                    size: 48,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 16),
                  Text(context.l10n.pairingNoNetworks),
                  if (state.errorMessage != null) ...[
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        state.errorMessage!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: theme.colorScheme.error,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () => provider.refreshNetworks(),
                    child: Text(context.l10n.pairingScanAgain),
                  ),
                ],
              ),
            ),
          )
        else
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount:
                  state.availableNetworks.length + 1, // +1 for manual entry
              itemBuilder: (context, index) {
                if (index == state.availableNetworks.length) {
                  // Manual SSID entry option
                  return _buildManualSsidEntry(context, provider);
                }

                final network = state.availableNetworks[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: NetworkListTile(
                    network: network,
                    isSelected: state.selectedSsid == network.ssid,
                    onTap: () => provider.selectNetwork(network.ssid),
                  ),
                );
              },
            ),
          ),

        // Password and continue section
        if (state.selectedSsid != null) ...[
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: context.l10n.pairingWifiPassword,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  onChanged: (value) => provider.setPassword(value),
                ),
                const SizedBox(height: 16),

                if (state.errorMessage != null) ...[
                  Text(
                    state.errorMessage!,
                    style: TextStyle(color: theme.colorScheme.error),
                  ),
                  const SizedBox(height: 8),
                ],

                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: (state.password?.isNotEmpty ?? false)
                        ? () => provider.configureNetwork()
                        : null,
                    icon: const Icon(Icons.arrow_forward),
                    label: Text(context.l10n.pairingConnect),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildManualSsidEntry(BuildContext context, PairingProvider provider) {
    final theme = Theme.of(context);

    if (!_showManualSsid) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextButton.icon(
          onPressed: () => setState(() => _showManualSsid = true),
          icon: const Icon(Icons.add),
          label: Text(context.l10n.pairingEnterNetworkManually),
        ),
      );
    }

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.pairingEnterNetworkName,
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _manualSsidController,
              decoration: InputDecoration(
                labelText: context.l10n.pairingNetworkName,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => setState(() => _showManualSsid = false),
                  child: Text(context.l10n.commonCancel),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: _manualSsidController.text.isNotEmpty
                      ? () {
                          provider.selectNetwork(_manualSsidController.text);
                          setState(() => _showManualSsid = false);
                        }
                      : null,
                  child: Text(context.l10n.pairingUseNetwork),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConfiguringStep(BuildContext context, PairingProvider provider) {
    final state = provider.state;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 24),
            Text(
              state.loadingMessage ?? context.l10n.pairingConfiguringDevice,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.pairingConfiguringWait,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReconnectHomeStep(
    BuildContext context,
    PairingProvider provider,
  ) {
    final theme = Theme.of(context);
    final state = provider.state;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.home,
                size: 64,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 32),

          Text(
            context.l10n.pairingReconnectTitle,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          Text(
            context.l10n.pairingReconnectBody(state.selectedSsid ?? ''),
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),

          // Current network status
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    state.isOnHomeNetwork
                        ? Icons.check_circle
                        : Icons.wifi_find,
                    color: state.isOnHomeNetwork
                        ? Colors.green
                        : theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.pairingCurrentNetwork,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        Text(
                          state.currentSsid ?? context.l10n.commonNotConnected,
                          style: theme.textTheme.titleMedium,
                        ),
                        if (state.isOnHomeNetwork)
                          Text(
                            context.l10n.pairingBackOnHome,
                            style: TextStyle(color: Colors.green[700]),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Open WiFi settings button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () => provider.openWifiSettings(),
              icon: const Icon(Icons.settings),
              label: Text(context.l10n.pairingOpenWifiSettings),
            ),
          ),

          const SizedBox(height: 16),

          // Continue button
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () => provider.confirmReconnectedToHome(),
              icon: const Icon(Icons.arrow_forward),
              label: Text(context.l10n.pairingReconnectedButton),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFinalizeStep(BuildContext context, PairingProvider provider) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 24),
            Text(context.l10n.pairingFinalizingSetup),
          ],
        ),
      ),
    );
  }

  Widget _buildSuccessStep(BuildContext context, PairingProvider provider) {
    final theme = Theme.of(context);
    final state = provider.state;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          // Success icon
          Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check, size: 64, color: Colors.white),
          ),
          const SizedBox(height: 32),

          Text(
            context.l10n.pairingSetupComplete,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          if (state.device != null) ...[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.devices, color: theme.colorScheme.primary),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.device!.name,
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            context.l10n.pairingConnectedToSsid(
                              state.selectedSsid ?? '',
                            ),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.check_circle, color: Colors.green),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],

          Text(
            context.l10n.pairingDeviceReady,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),

          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () {
                provider.reset();
                Navigator.of(context).pop(state.device);
              },
              icon: const Icon(Icons.home),
              label: Text(context.l10n.commonDone),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorStep(BuildContext context, PairingProvider provider) {
    final theme = Theme.of(context);
    final state = provider.state;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          // Error icon
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: theme.colorScheme.error,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 32),

          Text(
            context.l10n.pairingSomethingWrong,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          if (state.errorMessage != null)
            Card(
              color: theme.colorScheme.errorContainer,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  state.errorMessage!,
                  style: TextStyle(color: theme.colorScheme.onErrorContainer),
                ),
              ),
            ),

          const SizedBox(height: 32),

          if (state.canRetry)
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => provider.reset(),
                icon: const Icon(Icons.refresh),
                label: Text(context.l10n.pairingStartOver),
              ),
            ),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                provider.reset();
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
              label: Text(context.l10n.commonCancel),
            ),
          ),
        ],
      ),
    );
  }
}
