import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';

// ============================================================================
// TOOLTIP
// ============================================================================

class FPTooltip extends StatelessWidget {
  final String message;
  final Widget child;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final TextStyle? textStyle;
  final Duration? waitDuration;
  final Duration? showDuration;
  final bool preferBelow;
  final bool excludeFromSemantics;
  final Decoration? richMessage;
  final List<InlineSpan>? richMessageText;
  final TooltipTriggerMode triggerMode;
  final bool enableFeedback;
  final bool? showTooltip;

  const FPTooltip({
    super.key,
    required this.message,
    required this.child,
    this.height,
    this.padding,
    this.margin,
    this.decoration,
    this.textStyle,
    this.waitDuration,
    this.showDuration,
    this.preferBelow = true,
    this.excludeFromSemantics = false,
    this.richMessage,
    this.richMessageText,
    this.triggerMode = TooltipTriggerMode.longPress,
    this.enableFeedback = true,
    this.showTooltip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Tooltip(
      height: height,
      padding: padding ?? const EdgeInsets.all(FPSpacing.sm),
      margin: margin,
      decoration: decoration,
      message: message,
      waitDuration: waitDuration,
      showDuration: showDuration,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      child: child,
    );
  }
}

// ============================================================================
// RICH TOOLTIP
// ============================================================================

class FPRichTooltip extends StatelessWidget {
  final Widget child;
  final String? title;
  final String? description;
  final Widget? leading;
  final List<Widget>? actions;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final Duration? waitDuration;
  final Duration? showDuration;
  final bool preferBelow;
  final bool excludeFromSemantics;
  final TooltipTriggerMode triggerMode;
  final bool enableFeedback;
  final bool? showTooltip;

  const FPRichTooltip({
    super.key,
    required this.child,
    this.title,
    this.description,
    this.leading,
    this.actions,
    this.height,
    this.padding,
    this.margin,
    this.decoration,
    this.titleStyle,
    this.descriptionStyle,
    this.waitDuration,
    this.showDuration,
    this.preferBelow = true,
    this.excludeFromSemantics = false,
    this.triggerMode = TooltipTriggerMode.longPress,
    this.enableFeedback = true,
    this.showTooltip,
  }) : assert(title != null || description != null || leading != null || actions != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final richMessage = BoxDecoration(
      color: colorScheme.inverseSurface,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    );

    final richMessageText = <InlineSpan>[];

    if (title != null) {
      richMessageText.add(TextSpan(
        text: title!,
        style: titleStyle ?? textTheme.titleSmall?.copyWith(
          color: colorScheme.onInverseSurface,
          fontWeight: FontWeight.w600,
        ),
      ));
    }

    if (description != null) {
      if (title != null) {
        richMessageText.add(const TextSpan(text: '\n'));
      }
      richMessageText.add(TextSpan(
        text: description!,
        style: descriptionStyle ?? textTheme.bodySmall?.copyWith(
          color: colorScheme.onInverseSurface,
        ),
      ));
    }

    return Tooltip(
      height: height,
      padding: padding ?? const EdgeInsets.all(FPSpacing.sm),
      margin: margin,
      decoration: decoration ?? richMessage,
      richMessage: TextSpan(
        children: richMessageText,
      ),
      waitDuration: waitDuration,
      showDuration: showDuration,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      child: child,
    );
  }
}

// ============================================================================
// ICON TOOLTIP
// ============================================================================

class FPIconTooltip extends StatelessWidget {
  final IconData icon;
  final String message;
  final double? iconSize;
  final Color? iconColor;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final TextStyle? textStyle;
  final Duration? waitDuration;
  final Duration? showDuration;
  final bool preferBelow;
  final bool excludeFromSemantics;
  final TooltipTriggerMode triggerMode;
  final bool enableFeedback;
  final bool? showTooltip;
  final VoidCallback? onTap;

  const FPIconTooltip({
    super.key,
    required this.icon,
    required this.message,
    this.iconSize,
    this.iconColor,
    this.height,
    this.padding,
    this.margin,
    this.decoration,
    this.textStyle,
    this.waitDuration,
    this.showDuration,
    this.preferBelow = true,
    this.excludeFromSemantics = false,
    this.triggerMode = TooltipTriggerMode.longPress,
    this.enableFeedback = true,
    this.showTooltip,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Widget iconWidget = Icon(
      icon,
      size: iconSize,
      color: iconColor ?? colorScheme.onSurfaceVariant,
    );

    if (onTap != null) {
      iconWidget = InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: iconWidget,
        ),
      );
    }

    return FPTooltip(
      message: message,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration,
      textStyle: textStyle,
      waitDuration: waitDuration,
      showDuration: showDuration,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      showTooltip: showTooltip,
      child: iconWidget,
    );
  }
}

// ============================================================================
// TOOLTIP HELPERS
// ============================================================================

class FPTooltipHelpers {
  static Widget createTooltip({
    required String message,
    required Widget child,
    double? height,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Decoration? decoration,
    TextStyle? textStyle,
    Duration? waitDuration,
    Duration? showDuration,
    bool preferBelow = true,
    bool excludeFromSemantics = false,
    TooltipTriggerMode triggerMode = TooltipTriggerMode.longPress,
    bool enableFeedback = true,
    bool? showTooltip,
  }) {
    return FPTooltip(
      message: message,
      child: child,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration,
      textStyle: textStyle,
      waitDuration: waitDuration,
      showDuration: showDuration,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      showTooltip: showTooltip,
    );
  }

  static Widget createRichTooltip({
    required Widget child,
    String? title,
    String? description,
    Widget? leading,
    List<Widget>? actions,
    double? height,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Decoration? decoration,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    Duration? waitDuration,
    Duration? showDuration,
    bool preferBelow = true,
    bool excludeFromSemantics = false,
    TooltipTriggerMode triggerMode = TooltipTriggerMode.longPress,
    bool enableFeedback = true,
    bool? showTooltip,
  }) {
    return FPRichTooltip(
      child: child,
      title: title,
      description: description,
      leading: leading,
      actions: actions,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      waitDuration: waitDuration,
      showDuration: showDuration,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      showTooltip: showTooltip,
    );
  }

  static Widget createIconTooltip({
    required IconData icon,
    required String message,
    double? iconSize,
    Color? iconColor,
    double? height,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Decoration? decoration,
    TextStyle? textStyle,
    Duration? waitDuration,
    Duration? showDuration,
    bool preferBelow = true,
    bool excludeFromSemantics = false,
    TooltipTriggerMode triggerMode = TooltipTriggerMode.longPress,
    bool enableFeedback = true,
    bool? showTooltip,
    VoidCallback? onTap,
  }) {
    return FPIconTooltip(
      icon: icon,
      message: message,
      iconSize: iconSize,
      iconColor: iconColor,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration,
      textStyle: textStyle,
      waitDuration: waitDuration,
      showDuration: showDuration,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      showTooltip: showTooltip,
      onTap: onTap,
    );
  }

  static Widget createHelpTooltip({
    required Widget child,
    required String helpText,
    String? title,
    IconData helpIcon = Icons.help_outline,
    double? iconSize,
    Color? iconColor,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        const SizedBox(width: 4),
        FPIconTooltip(
          icon: helpIcon,
          message: helpText,
          iconSize: iconSize ?? 16,
          iconColor: iconColor,
        ),
      ],
    );
  }
}