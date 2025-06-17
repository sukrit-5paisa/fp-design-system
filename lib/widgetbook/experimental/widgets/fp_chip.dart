import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';

/// FP Design System Chip Widget
/// A customizable chip component that follows the design system
@WidgetbookStory(name: 'FPChip', useCases: [
  FPChipUseCase,
])
class FPChip extends StatelessWidget {
  /// The label text for the chip
  final String label;

  /// The avatar widget for the chip (optional)
  final Widget? avatar;

  /// The icon for the chip (optional)
  final IconData? icon;

  /// Whether the chip is selected
  final bool selected;

  /// Whether the chip is enabled
  final bool enabled;

  /// Whether the chip is deletable
  final bool deletable;

  /// The callback when the chip is deleted
  final VoidCallback? onDeleted;

  /// The callback when the chip is tapped
  final VoidCallback? onTap;

  /// The chip's background color (optional)
  final Color? backgroundColor;

  /// The chip's selected background color (optional)
  final Color? selectedBackgroundColor;

  /// The chip's text color (optional)
  final Color? textColor;

  /// The chip's selected text color (optional)
  final Color? selectedTextColor;

  /// The chip's border radius
  final BorderRadius? borderRadius;

  /// The chip's padding
  final EdgeInsetsGeometry? padding;

  /// The chip's margin
  final EdgeInsetsGeometry? margin;

  const FPChip({
    super.key,
    required this.label,
    this.avatar,
    this.icon,
    this.selected = false,
    this.enabled = true,
    this.deletable = false,
    this.onDeleted,
    this.onTap,
    this.backgroundColor,
    this.selectedBackgroundColor,
    this.textColor,
    this.selectedTextColor,
    this.borderRadius,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Get colors based on state
    final colors = _getColors(colorScheme);

    // Build the chip content
    Widget chipContent = _buildChipContent(theme, colors);

    // Apply margin if specified
    if (margin != null) {
      chipContent = Padding(
        padding: margin!,
        child: chipContent,
      );
    }

    return chipContent;
  }

  _ChipColors _getColors(ColorScheme colorScheme) {
    if (selected) {
      return _ChipColors(
        background: selectedBackgroundColor ?? colorScheme.primaryContainer,
        text: selectedTextColor ?? colorScheme.onPrimaryContainer,
      );
    }

    return _ChipColors(
      background: backgroundColor ?? colorScheme.surfaceVariant,
      text: textColor ?? colorScheme.onSurfaceVariant,
    );
  }

  Widget _buildChipContent(ThemeData theme, _ChipColors colors) {
    final List<Widget> children = [];

    // Add avatar if provided
    if (avatar != null) {
      children.add(avatar!);
      children.add(const SizedBox(width: 8));
    }

    // Add icon if provided
    if (icon != null) {
      children.add(Icon(
        icon,
        size: 16,
        color: colors.text,
      ));
      children.add(const SizedBox(width: 4));
    }

    // Add label
    children.add(Text(
      label,
      style: _getTextStyle(theme, colors.text),
    ));

    // Add delete icon if deletable
    if (deletable) {
      children.add(const SizedBox(width: 4));
      children.add(
        GestureDetector(
          onTap: enabled ? onDeleted : null,
          child: Icon(
            Icons.cancel,
            size: 16,
            color: enabled ? colors.text : colors.text.withOpacity(0.38),
          ),
        ),
      );
    }

    Widget chip = Container(
      padding: padding ?? _getPadding(),
      decoration: BoxDecoration(
        color: enabled ? colors.background : colors.background.withOpacity(0.38),
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        border: selected
            ? Border.all(
                color: theme.colorScheme.primary,
                width: 1,
              )
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );

    // Add tap functionality if onTap is provided
    if (onTap != null && enabled) {
      chip = GestureDetector(
        onTap: onTap,
        child: chip,
      );
    }

    return chip;
  }

  EdgeInsetsGeometry _getPadding() {
    return const EdgeInsets.symmetric(horizontal: 12, vertical: 6);
  }

  TextStyle _getTextStyle(ThemeData theme, Color textColor) {
    return theme.textTheme.labelMedium?.copyWith(
      color: textColor,
      fontWeight: FontWeight.w500,
    ) ?? TextStyle(
      color: textColor,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
  }
}

/// Helper class to hold chip colors
class _ChipColors {
  final Color background;
  final Color text;

  const _ChipColors({
    required this.background,
    required this.text,
  });
}

/// Use case for FPChip in Widgetbook
class FPChipUseCase extends WidgetbookUseCase {
  const FPChipUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPChip(
      label: 'Chip',
    );
  }
} 