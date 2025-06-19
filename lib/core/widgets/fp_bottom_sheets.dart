import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';

/// FP Modal Bottom Sheet
class FPModalBottomSheet extends StatelessWidget {
  final Widget child;
  final String? title;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? padding;
  final bool isScrollControlled;
  final bool enableDrag;
  final bool isDismissible;
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;

  const FPModalBottomSheet({
    super.key,
    required this.child,
    this.title,
    this.actions,
    this.padding,
    this.isScrollControlled = false,
    this.enableDrag = true,
    this.isDismissible = true,
    this.backgroundColor,
    this.elevation,
    this.shape,
    this.clipBehavior,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: padding ?? const EdgeInsets.all(FPSpacing.lg),
      decoration: BoxDecoration(
        color: backgroundColor ?? colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: FPSpacing.lg),
          ],
          Flexible(child: child),
          if (actions != null) ...[
            const SizedBox(height: FPSpacing.lg),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions!,
            ),
          ],
        ],
      ),
    );
  }
}

/// FP Standard Bottom Sheet
class FPStandardBottomSheet extends StatelessWidget {
  final Widget child;
  final String? title;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? padding;
  final bool isScrollControlled;
  final bool enableDrag;
  final bool isDismissible;
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;

  const FPStandardBottomSheet({
    super.key,
    required this.child,
    this.title,
    this.actions,
    this.padding,
    this.isScrollControlled = false,
    this.enableDrag = true,
    this.isDismissible = true,
    this.backgroundColor,
    this.elevation,
    this.shape,
    this.clipBehavior,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: padding ?? const EdgeInsets.all(FPSpacing.lg),
      decoration: BoxDecoration(
        color: backgroundColor ?? colorScheme.surface,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: FPSpacing.lg),
          ],
          Flexible(child: child),
          if (actions != null) ...[
            const SizedBox(height: FPSpacing.lg),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions!,
            ),
          ],
        ],
      ),
    );
  }
}

/// Helper class for showing bottom sheets
class FPBottomSheets {
  /// Show a modal bottom sheet
  static Future<T?> showFPModalBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    List<Widget>? actions,
    EdgeInsetsGeometry? padding,
    bool isScrollControlled = false,
    bool enableDrag = true,
    bool isDismissible = true,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      backgroundColor: Colors.transparent,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      builder: (context) => FPModalBottomSheet(
        child: child,
        title: title,
        actions: actions,
        padding: padding,
        backgroundColor: backgroundColor,
      ),
    );
  }

  /// Show a standard bottom sheet
  static Future<T?> showFPStandardBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    String? title,
    List<Widget>? actions,
    EdgeInsetsGeometry? padding,
    bool isScrollControlled = false,
    bool enableDrag = true,
    bool isDismissible = true,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      backgroundColor: Colors.transparent,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      builder: (context) => FPStandardBottomSheet(
        child: child,
        title: title,
        actions: actions,
        padding: padding,
        backgroundColor: backgroundColor,
      ),
    );
  }
}