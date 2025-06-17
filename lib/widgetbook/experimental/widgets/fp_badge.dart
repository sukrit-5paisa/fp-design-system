import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';

/// Badge variants for the FP design system
enum BadgeVariant {
  primary,
  secondary,
  success,
  warning,
  error,
  info,
}

/// FP Design System Badge Widget
/// A customizable badge component that follows the design system
@WidgetbookStory(name: 'FPBadge', useCases: [
  FPBadgeUseCase,
])
class FPBadge extends StatelessWidget {
  /// The text to display in the badge
  final String text;

  /// The badge variant
  final BadgeVariant variant;

  /// The icon to display in the badge (optional)
  final IconData? icon;

  /// Whether the badge is small
  final bool small;

  /// The badge's background color (optional)
  final Color? backgroundColor;

  /// The badge's text color (optional)
  final Color? textColor;

  /// The badge's border radius
  final BorderRadius? borderRadius;

  /// The badge's padding
  final EdgeInsetsGeometry? padding;

  /// The badge's margin
  final EdgeInsetsGeometry? margin;

  const FPBadge({
    super.key,
    required this.text,
    this.variant = BadgeVariant.primary,
    this.icon,
    this.small = false,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Get colors based on variant
    final colors = _getColors(colorScheme);

    // Build the badge content
    Widget badgeContent = _buildBadgeContent(theme, colors);

    // Apply margin if specified
    if (margin != null) {
      badgeContent = Padding(
        padding: margin!,
        child: badgeContent,
      );
    }

    return badgeContent;
  }

  _BadgeColors _getColors(ColorScheme colorScheme) {
    switch (variant) {
      case BadgeVariant.primary:
        return _BadgeColors(
          background: backgroundColor ?? colorScheme.primaryContainer,
          text: textColor ?? colorScheme.onPrimaryContainer,
        );
      case BadgeVariant.secondary:
        return _BadgeColors(
          background: backgroundColor ?? colorScheme.secondaryContainer,
          text: textColor ?? colorScheme.onSecondaryContainer,
        );
      case BadgeVariant.success:
        return _BadgeColors(
          background: backgroundColor ?? const Color(0xFFE8F5E8),
          text: textColor ?? const Color(0xFF1B5E20),
        );
      case BadgeVariant.warning:
        return _BadgeColors(
          background: backgroundColor ?? const Color(0xFFFFF3E0),
          text: textColor ?? const Color(0xFFE65100),
        );
      case BadgeVariant.error:
        return _BadgeColors(
          background: backgroundColor ?? colorScheme.errorContainer,
          text: textColor ?? colorScheme.onErrorContainer,
        );
      case BadgeVariant.info:
        return _BadgeColors(
          background: backgroundColor ?? const Color(0xFFE3F2FD),
          text: textColor ?? const Color(0xFF0D47A1),
        );
    }
  }

  Widget _buildBadgeContent(ThemeData theme, _BadgeColors colors) {
    final List<Widget> children = [];

    if (icon != null) {
      children.add(Icon(
        icon,
        size: small ? 12 : 14,
        color: colors.text,
      ));
      children.add(SizedBox(width: small ? 2 : 4));
    }

    children.add(Text(
      text,
      style: _getTextStyle(theme, colors.text),
    ));

    return Container(
      padding: padding ?? _getPadding(),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: borderRadius ?? BorderRadius.circular(small ? 8 : 12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }

  EdgeInsetsGeometry _getPadding() {
    if (small) {
      return const EdgeInsets.symmetric(horizontal: 6, vertical: 2);
    }
    return const EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  }

  TextStyle _getTextStyle(ThemeData theme, Color textColor) {
    final baseStyle = small 
        ? theme.textTheme.labelSmall 
        : theme.textTheme.labelMedium;
    
    return baseStyle?.copyWith(
      color: textColor,
      fontWeight: FontWeight.w500,
    ) ?? TextStyle(
      color: textColor,
      fontWeight: FontWeight.w500,
      fontSize: small ? 10 : 12,
    );
  }
}

/// Helper class to hold badge colors
class _BadgeColors {
  final Color background;
  final Color text;

  const _BadgeColors({
    required this.background,
    required this.text,
  });
}

/// Use case for FPBadge in Widgetbook
class FPBadgeUseCase extends WidgetbookUseCase {
  const FPBadgeUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPBadge(
      text: 'Badge',
      variant: BadgeVariant.primary,
    );
  }
} 