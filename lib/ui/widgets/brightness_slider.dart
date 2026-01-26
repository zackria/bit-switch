import 'package:flutter/material.dart';

class BrightnessSlider extends StatefulWidget {
  final int brightness;
  final ValueChanged<double>? onChanged;

  const BrightnessSlider({
    super.key,
    required this.brightness,
    this.onChanged,
  });

  @override
  State<BrightnessSlider> createState() => _BrightnessSliderState();
}

class _BrightnessSliderState extends State<BrightnessSlider> {
  late double _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.brightness.toDouble();
  }

  @override
  void didUpdateWidget(BrightnessSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.brightness != widget.brightness) {
      _currentValue = widget.brightness.toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.brightness_6,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Brightness',
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            Text(
              '${_currentValue.round()}%',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(
              Icons.brightness_low,
              size: 20,
              color: Colors.grey[400],
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: theme.colorScheme.primary,
                  inactiveTrackColor: Colors.grey[200],
                  thumbColor: theme.colorScheme.primary,
                  overlayColor: theme.colorScheme.primary.withValues(alpha: 0.2),
                  trackHeight: 8,
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
                ),
                child: Slider(
                  value: _currentValue,
                  min: 0,
                  max: 100,
                  onChanged: widget.onChanged != null
                      ? (value) {
                          setState(() {
                            _currentValue = value;
                          });
                        }
                      : null,
                  onChangeEnd: widget.onChanged,
                ),
              ),
            ),
            Icon(
              Icons.brightness_high,
              size: 20,
              color: Colors.grey[400],
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Preset brightness buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _PresetButton(
              label: '25%',
              onPressed: widget.onChanged != null
                  ? () {
                      setState(() => _currentValue = 25);
                      widget.onChanged?.call(25);
                    }
                  : null,
              isSelected: _currentValue == 25,
            ),
            _PresetButton(
              label: '50%',
              onPressed: widget.onChanged != null
                  ? () {
                      setState(() => _currentValue = 50);
                      widget.onChanged?.call(50);
                    }
                  : null,
              isSelected: _currentValue == 50,
            ),
            _PresetButton(
              label: '75%',
              onPressed: widget.onChanged != null
                  ? () {
                      setState(() => _currentValue = 75);
                      widget.onChanged?.call(75);
                    }
                  : null,
              isSelected: _currentValue == 75,
            ),
            _PresetButton(
              label: '100%',
              onPressed: widget.onChanged != null
                  ? () {
                      setState(() => _currentValue = 100);
                      widget.onChanged?.call(100);
                    }
                  : null,
              isSelected: _currentValue == 100,
            ),
          ],
        ),
      ],
    );
  }
}

class _PresetButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isSelected;

  const _PresetButton({
    required this.label,
    this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected
            ? Theme.of(context).colorScheme.primaryContainer
            : null,
        side: BorderSide(
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Colors.grey[300]!,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Colors.grey[600],
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
