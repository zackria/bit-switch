import 'package:flutter/material.dart';
import '../../models/pairing_state.dart';
import '../../l10n/l10n.dart';

/// Visual progress indicator for the pairing wizard
class PairingStepIndicator extends StatelessWidget {
  final PairingStep currentStep;

  const PairingStepIndicator({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentStepNum = currentStep.stepNumber;
    final totalSteps = PairingStepExtension.totalSteps;

    // For success/error, show all steps completed
    final displayStep =
        (currentStep == PairingStep.success || currentStep == PairingStep.error)
        ? totalSteps
        : currentStepNum;

    return Column(
      children: [
        // Step indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(totalSteps, (index) {
            final stepNum = index + 1;
            final isCompleted = stepNum < displayStep;
            final isCurrent = stepNum == displayStep;
            final isSuccess =
                currentStep == PairingStep.success && stepNum == totalSteps;
            final isError =
                currentStep == PairingStep.error && stepNum == totalSteps;

            return Row(
              children: [
                _StepDot(
                  stepNumber: stepNum,
                  isCompleted: isCompleted,
                  isCurrent: isCurrent,
                  isSuccess: isSuccess,
                  isError: isError,
                ),
                if (stepNum < totalSteps)
                  Container(
                    width: 24,
                    height: 2,
                    color: isCompleted
                        ? theme.colorScheme.primary
                        : theme.colorScheme.outlineVariant,
                  ),
              ],
            );
          }),
        ),
        const SizedBox(height: 8),
        // Step title
        Text(
          localizedPairingStep(context.l10n, currentStep),
          style: theme.textTheme.titleSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _StepDot extends StatelessWidget {
  final int stepNumber;
  final bool isCompleted;
  final bool isCurrent;
  final bool isSuccess;
  final bool isError;

  const _StepDot({
    required this.stepNumber,
    required this.isCompleted,
    required this.isCurrent,
    required this.isSuccess,
    required this.isError,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color backgroundColor;
    Color foregroundColor;
    IconData? icon;

    if (isSuccess) {
      backgroundColor = Colors.green;
      foregroundColor = Colors.white;
      icon = Icons.check;
    } else if (isError) {
      backgroundColor = theme.colorScheme.error;
      foregroundColor = Colors.white;
      icon = Icons.close;
    } else if (isCompleted) {
      backgroundColor = theme.colorScheme.primary;
      foregroundColor = Colors.white;
      icon = Icons.check;
    } else if (isCurrent) {
      backgroundColor = theme.colorScheme.primary;
      foregroundColor = Colors.white;
      icon = null;
    } else {
      backgroundColor = theme.colorScheme.surfaceContainerHighest;
      foregroundColor = theme.colorScheme.onSurfaceVariant;
      icon = null;
    }

    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Center(
        child: icon != null
            ? Icon(icon, size: 16, color: foregroundColor)
            : Text(
                '$stepNumber',
                style: TextStyle(
                  color: foregroundColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
