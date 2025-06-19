import 'package:flutter/material.dart';

enum FPSliderType { continuous, discrete, range }

class FPSlider extends StatelessWidget {
  final FPSliderType type;
  final double value;
  final RangeValues? rangeValues;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final ValueChanged<double>? onChanged;
  final ValueChanged<RangeValues>? onRangeChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? thumbColor;
  final Color? overlayColor;
  final Color? valueIndicatorColor;
  final double? overlayRadius;
  final double? thumbRadius;
  final bool enabled;
  final bool autofocus;
  final FocusNode? focusNode;
  final MouseCursor? mouseCursor;
  final String Function(double)? semanticFormatterCallback;

  const FPSlider({
    super.key,
    this.type = FPSliderType.continuous,
    required this.value,
    this.rangeValues,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.label,
    this.onChanged,
    this.onRangeChanged,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
    this.overlayColor,
    this.valueIndicatorColor,
    this.overlayRadius,
    this.thumbRadius,
    this.enabled = true,
    this.autofocus = false,
    this.focusNode,
    this.mouseCursor,
    this.semanticFormatterCallback,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    switch (type) {
      case FPSliderType.continuous:
        return Slider(
          value: value,
          min: min,
          max: max,
          divisions: divisions,
          label: label ?? value.toStringAsFixed(1),
          onChanged: enabled ? onChanged : null,
          activeColor: activeColor ?? colorScheme.primary,
          inactiveColor: inactiveColor ?? colorScheme.surfaceVariant,
          overlayColor: overlayColor != null
              ? MaterialStateProperty.all(overlayColor)
              : null,
        );

      case FPSliderType.discrete:
        return Slider(
          value: value,
          min: min,
          max: max,
          divisions: divisions ?? (max - min).round(),
          label: label ?? value.round().toString(),
          onChanged: enabled ? onChanged : null,
          activeColor: activeColor ?? colorScheme.primary,
          inactiveColor: inactiveColor ?? colorScheme.surfaceVariant,
          overlayColor: overlayColor != null
              ? MaterialStateProperty.all(overlayColor)
              : null,
        );

      case FPSliderType.range:
        if (rangeValues == null) {
          throw ArgumentError('rangeValues must be provided for range slider');
        }
        return RangeSlider(
          values: rangeValues!,
          min: min,
          max: max,
          divisions: divisions,
          labels: label != null 
              ? RangeLabels(label!, label!)
              : RangeLabels(
                  rangeValues!.start.toStringAsFixed(1),
                  rangeValues!.end.toStringAsFixed(1),
                ),
          onChanged: enabled ? onRangeChanged : null,
          activeColor: activeColor ?? colorScheme.primary,
          inactiveColor: inactiveColor ?? colorScheme.surfaceVariant,
          overlayColor: overlayColor != null
              ? MaterialStateProperty.all(overlayColor)
              : null,
        );
    }
  }
}

/// Convenience widget for continuous sliders
class FPContinuousSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final String? label;
  final ValueChanged<double>? onChanged;
  final bool enabled;

  const FPContinuousSlider({
    super.key,
    required this.value,
    this.min = 0.0,
    this.max = 1.0,
    this.label,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return FPSlider(
      type: FPSliderType.continuous,
      value: value,
      min: min,
      max: max,
      label: label,
      onChanged: onChanged,
      enabled: enabled,
    );
  }
}

/// Convenience widget for discrete sliders
class FPDiscreteSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final ValueChanged<double>? onChanged;
  final bool enabled;

  const FPDiscreteSlider({
    super.key,
    required this.value,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.label,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return FPSlider(
      type: FPSliderType.discrete,
      value: value,
      min: min,
      max: max,
      divisions: divisions,
      label: label,
      onChanged: onChanged,
      enabled: enabled,
    );
  }
}

/// Convenience widget for range sliders
class FPRangeSlider extends StatelessWidget {
  final RangeValues values;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final ValueChanged<RangeValues>? onChanged;
  final bool enabled;

  const FPRangeSlider({
    super.key,
    required this.values,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.label,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return FPSlider(
      type: FPSliderType.range,
      value: values.start,
      rangeValues: values,
      min: min,
      max: max,
      divisions: divisions,
      label: label,
      onRangeChanged: onChanged,
      enabled: enabled,
    );
  }
} 