import 'package:flutter/material.dart';

// ============================================================================
// FLOATING ACTION BUTTON
// ============================================================================

class FPFloatingActionButton extends StatelessWidget {
  final Widget? child;
  final IconData? icon;
  final String? label;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;
  final double? elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? highlightElevation;
  final double? disabledElevation;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool autofocus;
  final bool isExtended;
  final bool enableFeedback;
  final MaterialTapTargetSize? materialTapTargetSize;
  final double? iconSize;
  final double? extendedIconLabelSpacing;
  final EdgeInsetsGeometry? extendedPadding;
  final String? tooltip;

  const FPFloatingActionButton({
    super.key,
    this.child,
    this.icon,
    this.label,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.shape,
    this.clipBehavior = Clip.none,
    this.autofocus = false,
    this.isExtended = false,
    this.enableFeedback = true,
    this.materialTapTargetSize,
    this.iconSize,
    this.extendedIconLabelSpacing,
    this.extendedPadding,
    this.tooltip,
  }) : assert(child != null || icon != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (isExtended && label != null) {
      return FloatingActionButton.extended(
        onPressed: onPressed,
        backgroundColor: backgroundColor ?? colorScheme.primaryContainer,
        foregroundColor: foregroundColor ?? colorScheme.onPrimaryContainer,
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashColor: splashColor,
        elevation: elevation,
        focusElevation: focusElevation,
        hoverElevation: hoverElevation,
        highlightElevation: highlightElevation,
        disabledElevation: disabledElevation,
        shape: shape,
        clipBehavior: clipBehavior,
        autofocus: autofocus,
        enableFeedback: enableFeedback,
        materialTapTargetSize: materialTapTargetSize,
        icon: icon != null ? Icon(icon, size: iconSize) : null,
        label: Text(label!),
        extendedIconLabelSpacing: extendedIconLabelSpacing,
        extendedPadding: extendedPadding,
        tooltip: tooltip,
      );
    }

    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? colorScheme.primaryContainer,
      foregroundColor: foregroundColor ?? colorScheme.onPrimaryContainer,
      focusColor: focusColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      highlightElevation: highlightElevation,
      disabledElevation: disabledElevation,
      shape: shape,
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      enableFeedback: enableFeedback,
      materialTapTargetSize: materialTapTargetSize,
      tooltip: tooltip,
      child: child ?? (icon != null ? Icon(icon, size: iconSize) : null),
    );
  }
}

// ============================================================================
// SMALL FAB
// ============================================================================

class FPSmallFAB extends StatelessWidget {
  final Widget? child;
  final IconData? icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;
  final double? elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? highlightElevation;
  final double? disabledElevation;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool autofocus;
  final bool enableFeedback;
  final MaterialTapTargetSize? materialTapTargetSize;
  final double? iconSize;
  final String? tooltip;

  const FPSmallFAB({
    super.key,
    this.child,
    this.icon,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.shape,
    this.clipBehavior = Clip.none,
    this.autofocus = false,
    this.enableFeedback = true,
    this.materialTapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.iconSize,
    this.tooltip,
  }) : assert(child != null || icon != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FloatingActionButton.small(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? colorScheme.primaryContainer,
      foregroundColor: foregroundColor ?? colorScheme.onPrimaryContainer,
      focusColor: focusColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      highlightElevation: highlightElevation,
      disabledElevation: disabledElevation,
      shape: shape,
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      enableFeedback: enableFeedback,
      materialTapTargetSize: materialTapTargetSize,
      tooltip: tooltip,
      child: child ?? (icon != null ? Icon(icon, size: iconSize) : null),
    );
  }
}

// ============================================================================
// LARGE FAB
// ============================================================================

class FPLargeFAB extends StatelessWidget {
  final Widget? child;
  final IconData? icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;
  final double? elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? highlightElevation;
  final double? disabledElevation;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool autofocus;
  final bool enableFeedback;
  final MaterialTapTargetSize? materialTapTargetSize;
  final double? iconSize;
  final String? tooltip;

  const FPLargeFAB({
    super.key,
    this.child,
    this.icon,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.shape,
    this.clipBehavior = Clip.none,
    this.autofocus = false,
    this.enableFeedback = true,
    this.materialTapTargetSize = MaterialTapTargetSize.padded,
    this.iconSize,
    this.tooltip,
  }) : assert(child != null || icon != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FloatingActionButton.large(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? colorScheme.primaryContainer,
      foregroundColor: foregroundColor ?? colorScheme.onPrimaryContainer,
      focusColor: focusColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      highlightElevation: highlightElevation,
      disabledElevation: disabledElevation,
      shape: shape,
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      enableFeedback: enableFeedback,
      materialTapTargetSize: materialTapTargetSize,
      tooltip: tooltip,
      child: child ?? (icon != null ? Icon(icon, size: iconSize) : null),
    );
  }
}

// ============================================================================
// EXTENDED FAB
// ============================================================================

class FPExtendedFAB extends StatelessWidget {
  final IconData? icon;
  final String label;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;
  final double? elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? highlightElevation;
  final double? disabledElevation;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool autofocus;
  final bool enableFeedback;
  final MaterialTapTargetSize? materialTapTargetSize;
  final double? iconSize;
  final double? extendedIconLabelSpacing;
  final EdgeInsetsGeometry? extendedPadding;
  final String? tooltip;

  const FPExtendedFAB({
    super.key,
    this.icon,
    required this.label,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.shape,
    this.clipBehavior = Clip.none,
    this.autofocus = false,
    this.enableFeedback = true,
    this.materialTapTargetSize,
    this.iconSize,
    this.extendedIconLabelSpacing,
    this.extendedPadding,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FloatingActionButton.extended(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? colorScheme.primaryContainer,
      foregroundColor: foregroundColor ?? colorScheme.onPrimaryContainer,
      focusColor: focusColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      highlightElevation: highlightElevation,
      disabledElevation: disabledElevation,
      shape: shape,
      clipBehavior: clipBehavior,
      autofocus: autofocus,
      enableFeedback: enableFeedback,
      materialTapTargetSize: materialTapTargetSize,
      icon: icon != null ? Icon(icon, size: iconSize) : null,
      label: Text(label),
      extendedIconLabelSpacing: extendedIconLabelSpacing,
      extendedPadding: extendedPadding,
      tooltip: tooltip,
    );
  }
}

// ============================================================================
// FAB HELPERS
// ============================================================================

class FPFABHelpers {
  static Widget createFAB({
    Widget? child,
    IconData? icon,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    ShapeBorder? shape,
    String? tooltip,
  }) {
    return FPFloatingActionButton(
      child: child,
      icon: icon,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shape: shape,
      tooltip: tooltip,
    );
  }

  static Widget createSmallFAB({
    Widget? child,
    IconData? icon,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    ShapeBorder? shape,
    String? tooltip,
  }) {
    return FPSmallFAB(
      child: child,
      icon: icon,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shape: shape,
      tooltip: tooltip,
    );
  }

  static Widget createLargeFAB({
    Widget? child,
    IconData? icon,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    ShapeBorder? shape,
    String? tooltip,
  }) {
    return FPLargeFAB(
      child: child,
      icon: icon,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shape: shape,
      tooltip: tooltip,
    );
  }

  static Widget createExtendedFAB({
    IconData? icon,
    required String label,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    ShapeBorder? shape,
    String? tooltip,
  }) {
    return FPExtendedFAB(
      icon: icon,
      label: label,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shape: shape,
      tooltip: tooltip,
    );
  }

  static Widget createAddFAB({
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    String? tooltip,
  }) {
    return FPFloatingActionButton(
      icon: Icons.add,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      tooltip: tooltip ?? 'Add',
    );
  }

  static Widget createEditFAB({
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    String? tooltip,
  }) {
    return FPFloatingActionButton(
      icon: Icons.edit,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      tooltip: tooltip ?? 'Edit',
    );
  }

  static Widget createShareFAB({
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    String? tooltip,
  }) {
    return FPFloatingActionButton(
      icon: Icons.share,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      tooltip: tooltip ?? 'Share',
    );
  }
}