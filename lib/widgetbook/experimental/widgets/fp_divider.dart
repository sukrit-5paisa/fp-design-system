import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';

/// FP Design System Divider Widget
/// A customizable divider component that follows the design system
@WidgetbookStory(name: 'FPDivider', useCases: [
  FPDividerUseCase,
])
class FPDivider extends StatelessWidget {
  /// The text to display in the center of the divider (optional)
  final String? text;

  /// Whether the divider is vertical
  final bool vertical;

  /// The divider's color (optional)
  final Color? color;

  /// The divider's thickness
  final double thickness;

  /// The divider's height (for vertical dividers)
  final double? height;

  /// The divider's width (for horizontal dividers)
  final double? width;

  /// The divider's margin
  final EdgeInsetsGeometry? margin;

  /// The text style for the divider text (optional)
  final TextStyle? textStyle;

  const FPDivider({
    super.key,
    this.text,
    this.vertical = false,
    this.color,
    this.thickness = 1.0,
    this.height,
    this.width,
    this.margin,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final dividerColor = color ?? colorScheme.outlineVariant;

    Widget divider;

    if (vertical) {
      divider = _buildVerticalDivider(dividerColor);
    } else {
      divider = _buildHorizontalDivider(theme, colorScheme, dividerColor);
    }

    // Apply margin if specified
    if (margin != null) {
      divider = Padding(
        padding: margin!,
        child: divider,
      );
    }

    return divider;
  }

  Widget _buildVerticalDivider(Color dividerColor) {
    return Container(
      width: thickness,
      height: height ?? 24,
      color: dividerColor,
    );
  }

  Widget _buildHorizontalDivider(ThemeData theme, ColorScheme colorScheme, Color dividerColor) {
    if (text != null) {
      return Row(
        children: [
          Expanded(
            child: Container(
              height: thickness,
              color: dividerColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text!,
              style: textStyle ?? theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: thickness,
              color: dividerColor,
            ),
          ),
        ],
      );
    }

    return Container(
      width: width,
      height: thickness,
      color: dividerColor,
    );
  }
}

/// Use case for FPDivider in Widgetbook
class FPDividerUseCase extends WidgetbookUseCase {
  const FPDividerUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPDivider();
  }
} 