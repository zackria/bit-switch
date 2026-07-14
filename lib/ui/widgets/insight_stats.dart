import 'package:flutter/material.dart';
import '../../models/device_state.dart';
import '../../l10n/l10n.dart';

class InsightStats extends StatelessWidget {
  final InsightState state;

  const InsightStats({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          context.l10n.widgetEnergyStatistics,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _StatCard(
                icon: Icons.bolt,
                iconColor: Colors.amber,
                label: context.l10n.widgetCurrentPower,
                value:
                    '${state.currentPowerWatts?.toStringAsFixed(1) ?? '0'} W',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _StatCard(
                icon: Icons.today,
                iconColor: Colors.blue,
                label: context.l10n.widgetToday,
                value: '${state.todayKwh?.toStringAsFixed(3) ?? '0'} kWh',
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _StatCard(
                icon: Icons.all_inclusive,
                iconColor: Colors.green,
                label: context.l10n.widgetTotal,
                value: '${state.totalKwh?.toStringAsFixed(2) ?? '0'} kWh',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _StatCard(
                icon: Icons.power_settings_new,
                iconColor: _getStatusColor(state.standbyState),
                label: context.l10n.commonStatus,
                value: _standbyState(context),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _StatCard(
                icon: Icons.access_time,
                iconColor: Colors.purple,
                label: context.l10n.widgetOnTimeToday,
                value: _formatDuration(context, state.todayOnTimeSeconds ?? 0),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _StatCard(
                icon: Icons.history,
                iconColor: Colors.teal,
                label: context.l10n.widgetTotalOnTime,
                value: _formatDuration(context, state.totalOnTimeSeconds ?? 0),
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _formatDuration(BuildContext context, int seconds) {
    if (seconds < 60) {
      return context.l10n.commonSecondsShort(seconds);
    } else if (seconds < 3600) {
      return context.l10n.commonMinutesShort(seconds ~/ 60);
    } else if (seconds < 86400) {
      final hours = seconds ~/ 3600;
      final minutes = (seconds % 3600) ~/ 60;
      return context.l10n.commonHoursMinutesShort(hours, minutes);
    } else {
      final days = seconds ~/ 86400;
      final hours = (seconds % 86400) ~/ 3600;
      return context.l10n.commonDaysHoursShort(days, hours);
    }
  }

  String _standbyState(BuildContext context) {
    return switch (state.standbyState) {
      0 => context.l10n.commonOff,
      1 => context.l10n.commonOn,
      8 => context.l10n.widgetStandby,
      _ => context.l10n.widgetUnknown,
    };
  }

  Color _getStatusColor(int? standbyState) {
    switch (standbyState) {
      case 0:
        return Colors.grey;
      case 1:
        return Colors.green;
      case 8:
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String value;

  const _StatCard({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(icon, size: 16, color: iconColor),
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
