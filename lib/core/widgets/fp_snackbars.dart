import 'package:flutter/material.dart';

/// FP Snackbar
class FPSnackBar extends StatelessWidget {
  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final Duration? duration;
  final Color? backgroundColor;
  final Color? contentColor;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  final SnackBarBehavior? behavior;
  final bool showProgressIndicator;
  final double? progressIndicatorValue;
  final Color? progressIndicatorBackgroundColor;
  final Color? progressIndicatorValueColor;

  const FPSnackBar({
    super.key,
    required this.message,
    this.actionLabel,
    this.onAction,
    this.duration,
    this.backgroundColor,
    this.contentColor,
    this.elevation,
    this.margin,
    this.padding,
    this.shape,
    this.behavior,
    this.showProgressIndicator = false,
    this.progressIndicatorValue,
    this.progressIndicatorBackgroundColor,
    this.progressIndicatorValueColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SnackBar(
      content: Text(
        message,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: contentColor ?? colorScheme.onSurface,
        ),
      ),
      action: actionLabel != null
          ? SnackBarAction(
              label: actionLabel!,
              onPressed: onAction ?? () {},
              textColor: contentColor ?? colorScheme.primary,
            )
          : null,
      duration: duration ?? const Duration(seconds: 4),
      backgroundColor: backgroundColor ?? colorScheme.surface,
      elevation: elevation,
      margin: margin,
      padding: padding,
      shape: shape,
      behavior: behavior ?? SnackBarBehavior.floating,
    );
  }
}

/// FP Snackbar with Action
class FPSnackBarWithAction extends StatelessWidget {
  final String message;
  final String actionLabel;
  final VoidCallback onAction;
  final Duration? duration;
  final Color? backgroundColor;
  final Color? contentColor;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  final SnackBarBehavior? behavior;

  const FPSnackBarWithAction({
    super.key,
    required this.message,
    required this.actionLabel,
    required this.onAction,
    this.duration,
    this.backgroundColor,
    this.contentColor,
    this.elevation,
    this.margin,
    this.padding,
    this.shape,
    this.behavior,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SnackBar(
      content: Text(
        message,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: contentColor ?? colorScheme.onSurface,
        ),
      ),
      action: SnackBarAction(
        label: actionLabel,
        onPressed: onAction,
        textColor: contentColor ?? colorScheme.primary,
      ),
      duration: duration ?? const Duration(seconds: 4),
      backgroundColor: backgroundColor ?? colorScheme.surface,
      elevation: elevation,
      margin: margin,
      padding: padding,
      shape: shape,
      behavior: behavior ?? SnackBarBehavior.floating,
    );
  }
}

/// Helper class for showing snackbars
class FPSnackBars {
  /// Show a basic snackbar
  static void showSnackBar({
    required BuildContext context,
    required String message,
    String? actionLabel,
    VoidCallback? onAction,
    Duration? duration,
    Color? backgroundColor,
    Color? contentColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        action: actionLabel != null && onAction != null
            ? SnackBarAction(
                label: actionLabel!,
                onPressed: onAction!,
                textColor: contentColor,
              )
            : null,
        duration: duration ?? const Duration(seconds: 4),
        backgroundColor: backgroundColor,
        behavior: behavior ?? SnackBarBehavior.floating,
        elevation: elevation,
        margin: margin,
        padding: padding,
        shape: shape,
      ),
    );
  }

  /// Show a snackbar with action
  static void showSnackBarWithAction({
    required BuildContext context,
    required String message,
    required String actionLabel,
    required VoidCallback onAction,
    Duration? duration,
    Color? backgroundColor,
    Color? contentColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    SnackBarBehavior? behavior,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: actionLabel,
          onPressed: onAction,
          textColor: contentColor,
        ),
        duration: duration ?? const Duration(seconds: 4),
        backgroundColor: backgroundColor,
        behavior: behavior ?? SnackBarBehavior.floating,
        elevation: elevation,
        margin: margin,
        padding: padding,
        shape: shape,
      ),
    );
  }
}