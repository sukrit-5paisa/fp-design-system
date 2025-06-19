import 'package:flutter/material.dart';

enum FPChipVariant { assist, filter, input, suggestion, choice }

class FPChip extends StatelessWidget {
  final String label;
  final FPChipVariant variant;
  final Widget? avatar;
  final Widget? deleteIcon;
  final IconData? leadingIcon;
  final VoidCallback? onPressed;
  final ValueChanged<bool>? onSelected;
  final VoidCallback? onDeleted;
  final bool selected;
  final bool disabled;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? disabledColor;
  final Color? labelColor;
  final Color? selectedLabelColor;
  final Color? disabledLabelColor;
  final Color? deleteIconColor;
  final Color? selectedDeleteIconColor;
  final Color? disabledDeleteIconColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final BorderSide? side;
  final BorderRadius? borderRadius;
  final Clip clipBehavior;
  final VisualDensity? visualDensity;
  final bool? showCheckmark;
  final bool? isEnabled;

  const FPChip({
    super.key,
    required this.label,
    this.variant = FPChipVariant.assist,
    this.avatar,
    this.deleteIcon,
    this.leadingIcon,
    this.onPressed,
    this.onSelected,
    this.onDeleted,
    this.selected = false,
    this.disabled = false,
    this.backgroundColor,
    this.selectedColor,
    this.disabledColor,
    this.labelColor,
    this.selectedLabelColor,
    this.disabledLabelColor,
    this.deleteIconColor,
    this.selectedDeleteIconColor,
    this.disabledDeleteIconColor,
    this.elevation,
    this.padding,
    this.side,
    this.borderRadius,
    this.clipBehavior = Clip.none,
    this.visualDensity,
    this.showCheckmark,
    this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isEnabled = this.isEnabled ?? !disabled;

    // Create avatar with leading icon if provided
    Widget? chipAvatar = avatar;
    if (leadingIcon != null && avatar == null) {
      chipAvatar = Icon(leadingIcon, size: 18);
    }

    switch (variant) {
      case FPChipVariant.assist:
        return ActionChip(
          avatar: chipAvatar,
          label: Text(label),
          onPressed: isEnabled ? onPressed : null,
          backgroundColor: backgroundColor ?? colorScheme.surfaceVariant,
          labelStyle: theme.textTheme.labelMedium?.copyWith(
            color: labelColor ?? colorScheme.onSurfaceVariant,
          ),
          padding: padding,
          side: side,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          clipBehavior: clipBehavior,
          visualDensity: visualDensity,
        );

      case FPChipVariant.filter:
        return FilterChip(
          avatar: chipAvatar,
          label: Text(label),
          selected: selected,
          onSelected: isEnabled ? onSelected : null,
          backgroundColor: backgroundColor ?? colorScheme.surfaceVariant,
          selectedColor: selectedColor ?? colorScheme.secondaryContainer,
          disabledColor: disabledColor ?? colorScheme.surfaceVariant.withOpacity(0.38),
          labelStyle: theme.textTheme.labelMedium?.copyWith(
            color: labelColor ?? colorScheme.onSurfaceVariant,
          ),
          padding: padding,
          side: side,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          clipBehavior: clipBehavior,
          visualDensity: visualDensity,
          showCheckmark: showCheckmark ?? true,
        );

      case FPChipVariant.input:
        return InputChip(
          avatar: chipAvatar,
          label: Text(label),
          onPressed: isEnabled ? onPressed : null,
          onDeleted: isEnabled ? onDeleted : null,
          deleteIcon: deleteIcon,
          selected: selected,
          backgroundColor: backgroundColor ?? colorScheme.surfaceVariant,
          selectedColor: selectedColor ?? colorScheme.secondaryContainer,
          disabledColor: disabledColor ?? colorScheme.surfaceVariant.withOpacity(0.38),
          labelStyle: theme.textTheme.labelMedium?.copyWith(
            color: labelColor ?? colorScheme.onSurfaceVariant,
          ),
          deleteIconColor: deleteIconColor ?? colorScheme.onSurfaceVariant,
          padding: padding,
          side: side,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          clipBehavior: clipBehavior,
          visualDensity: visualDensity,
          showCheckmark: showCheckmark ?? true,
        );

      case FPChipVariant.suggestion:
        return ActionChip(
          avatar: chipAvatar,
          label: Text(label),
          onPressed: isEnabled ? onPressed : null,
          backgroundColor: backgroundColor ?? colorScheme.surfaceVariant,
          labelStyle: theme.textTheme.labelMedium?.copyWith(
            color: labelColor ?? colorScheme.onSurfaceVariant,
          ),
          padding: padding,
          side: side,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          clipBehavior: clipBehavior,
          visualDensity: visualDensity,
        );

      case FPChipVariant.choice:
        return ChoiceChip(
          label: Text(label),
          selected: selected,
          onSelected: isEnabled ? onSelected : null,
          avatar: avatar,
          showCheckmark: showCheckmark ?? true,
          backgroundColor: backgroundColor ?? colorScheme.surfaceContainerHighest,
          selectedColor: selectedColor ?? colorScheme.primaryContainer,
          labelStyle: theme.textTheme.labelMedium?.copyWith(
            color: labelColor ?? colorScheme.onSurfaceVariant,
          ),
          padding: padding,
          side: side,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
          clipBehavior: clipBehavior,
          visualDensity: visualDensity,
        );
    }
  }
}

/// FP-themed Assist Chip - inherits from Material 3 ActionChip
class FPAssistChip extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Widget? avatar;
  final IconData? icon;
  final bool isSelected;

  const FPAssistChip({
    super.key,
    required this.label,
    this.onPressed,
    this.avatar,
    this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ActionChip(
      label: Text(label),
      onPressed: onPressed,
      avatar: avatar,
      backgroundColor: isSelected ? colorScheme.primaryContainer : colorScheme.surfaceContainerHighest,
      labelStyle: theme.textTheme.labelLarge?.copyWith(
        color: isSelected ? colorScheme.onPrimaryContainer : colorScheme.onSurfaceVariant,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

/// FP-themed Filter Chip - inherits from Material 3 FilterChip
class FPFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<bool>? onSelected;
  final Widget? avatar;
  final IconData? icon;
  final bool showCheckmark;

  const FPFilterChip({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onSelected,
    this.avatar,
    this.icon,
    this.showCheckmark = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: onSelected,
      avatar: avatar,
      showCheckmark: showCheckmark,
      backgroundColor: colorScheme.surfaceContainerHighest,
      selectedColor: colorScheme.primaryContainer,
      labelStyle: theme.textTheme.labelLarge?.copyWith(
        color: isSelected ? colorScheme.onPrimaryContainer : colorScheme.onSurfaceVariant,
      ),
      checkmarkColor: colorScheme.onPrimaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

/// FP-themed Input Chip - inherits from Material 3 InputChip
class FPInputChip extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final VoidCallback? onDeleted;
  final Widget? avatar;
  final IconData? icon;
  final bool isSelected;

  const FPInputChip({
    super.key,
    required this.label,
    this.onPressed,
    this.onDeleted,
    this.avatar,
    this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InputChip(
      label: Text(label),
      onPressed: onPressed,
      onDeleted: onDeleted,
      avatar: avatar,
      backgroundColor: isSelected ? colorScheme.primaryContainer : colorScheme.surfaceContainerHighest,
      labelStyle: theme.textTheme.labelLarge?.copyWith(
        color: isSelected ? colorScheme.onPrimaryContainer : colorScheme.onSurfaceVariant,
      ),
      deleteIconColor: colorScheme.onSurfaceVariant,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
} 