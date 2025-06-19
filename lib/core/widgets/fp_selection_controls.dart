import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';

/// FP-themed Checkbox - inherits from Material 3 Checkbox
class FPCheckbox extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final bool tristate;
  final Color? activeColor;
  final Color? checkColor;
  final Color? fillColor;
  final String? label;

  const FPCheckbox({
    super.key,
    this.value,
    this.onChanged,
    this.tristate = false,
    this.activeColor,
    this.checkColor,
    this.fillColor,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final checkbox = Checkbox(
      value: value,
      onChanged: onChanged,
      tristate: tristate,
      activeColor: activeColor ?? colorScheme.primary,
      checkColor: checkColor ?? colorScheme.onPrimary,
      fillColor: fillColor != null
          ? MaterialStateProperty.all(fillColor)
          : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );

    if (label != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          checkbox,
          const SizedBox(width: FPSpacing.sm),
          Text(
            label!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      );
    }

    return checkbox;
  }
}

/// FP-themed Radio Button - inherits from Material 3 Radio
class FPRadio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final Color? activeColor;
  final String? label;

  const FPRadio({
    super.key,
    required this.value,
    this.groupValue,
    this.onChanged,
    this.activeColor,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final radio = Radio<T>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: activeColor ?? colorScheme.primary,
    );

    if (label != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          radio,
          const SizedBox(width: FPSpacing.sm),
          Text(
            label!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      );
    }

    return radio;
  }
}

/// FP-themed Switch - inherits from Material 3 Switch
class FPSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final String? label;

  const FPSwitch({
    super.key,
    required this.value,
    this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final switchWidget = Switch(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor ?? colorScheme.primary,
      activeTrackColor: activeTrackColor ?? colorScheme.primaryContainer,
      inactiveThumbColor: inactiveThumbColor ?? colorScheme.outline,
      inactiveTrackColor: inactiveTrackColor ?? colorScheme.surfaceContainerHighest,
    );

    if (label != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          switchWidget,
          const SizedBox(width: FPSpacing.sm),
          Text(
            label!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      );
    }

    return switchWidget;
  }
} 