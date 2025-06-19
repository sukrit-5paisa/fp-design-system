import 'package:flutter/material.dart';

// ============================================================================
// ALERT DIALOG
// ============================================================================

class FPAlertDialog extends StatelessWidget {
  final String? title;
  final String? content;
  final Widget? contentWidget;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final AlignmentGeometry? alignment;
  final bool? scrollable;

  const FPAlertDialog({
    super.key,
    this.title,
    this.content,
    this.contentWidget,
    this.actions,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.insetPadding,
    this.clipBehavior = Clip.none,
    this.shape,
    this.alignment,
    this.scrollable,
  }) : assert(title != null || content != null || contentWidget != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AlertDialog(
      title: title != null ? Text(title!) : null,
      content: contentWidget ?? (content != null ? Text(content!) : null),
      actions: actions,
      backgroundColor: backgroundColor ?? colorScheme.surface,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      insetPadding: insetPadding as EdgeInsets?,
      clipBehavior: clipBehavior,
      shape: shape,
      alignment: alignment,
      scrollable: scrollable ?? false,
    );
  }
}

// ============================================================================
// SIMPLE DIALOG
// ============================================================================

class FPSimpleDialog extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final AlignmentGeometry? alignment;

  const FPSimpleDialog({
    super.key,
    this.title,
    required this.children,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.insetPadding,
    this.clipBehavior = Clip.none,
    this.shape,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SimpleDialog(
      title: title != null ? Text(title!) : null,
      children: children,
      backgroundColor: backgroundColor ?? colorScheme.surface,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      insetPadding: insetPadding as EdgeInsets?,
      clipBehavior: clipBehavior,
      shape: shape,
      alignment: alignment,
    );
  }
}

// ============================================================================
// CONFIRMATION DIALOG
// ============================================================================

class FPConfirmationDialog extends StatelessWidget {
  final String title;
  final String content;
  final String confirmText;
  final String cancelText;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;
  final bool isDestructive;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;

  const FPConfirmationDialog({
    super.key,
    required this.title,
    required this.content,
    this.confirmText = 'Confirm',
    this.cancelText = 'Cancel',
    this.onConfirm,
    this.onCancel,
    this.isDestructive = false,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AlertDialog(
      title: Text(title),
      content: Text(content),
      backgroundColor: backgroundColor ?? colorScheme.surface,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onCancel?.call();
          },
          child: Text(cancelText),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop();
            onConfirm?.call();
          },
          style: isDestructive
              ? FilledButton.styleFrom(
                  backgroundColor: colorScheme.error,
                  foregroundColor: colorScheme.onError,
                )
              : null,
          child: Text(confirmText),
        ),
      ],
    );
  }
}

// ============================================================================
// FULL-SCREEN DIALOG
// ============================================================================

class FPFullScreenDialog extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final bool automaticallyImplyLeading;
  final VoidCallback? onLeadingPressed;

  const FPFullScreenDialog({
    super.key,
    required this.title,
    required this.child,
    this.actions,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.automaticallyImplyLeading = true,
    this.onLeadingPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: backgroundColor ?? colorScheme.surface,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: backgroundColor ?? colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: elevation,
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: automaticallyImplyLeading
            ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                  onLeadingPressed?.call();
                },
              )
            : null,
        actions: actions,
      ),
      body: child,
    );
  }
}

// ============================================================================
// DIALOG HELPERS
// ============================================================================

class FPDialogHelpers {
  static Future<T?> showAlertDialog<T>({
    required BuildContext context,
    required String title,
    required String content,
    List<Widget>? actions,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => FPAlertDialog(
        title: title,
        content: content,
        actions: actions,
      ),
    );
  }

  static Future<T?> showSimpleDialog<T>({
    required BuildContext context,
    String? title,
    required List<Widget> children,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => FPSimpleDialog(
        title: title,
        children: children,
      ),
    );
  }

  static Future<bool?> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String content,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool isDestructive = false,
    bool barrierDismissible = true,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => FPConfirmationDialog(
        title: title,
        content: content,
        confirmText: confirmText,
        cancelText: cancelText,
        isDestructive: isDestructive,
      ),
    );
  }

  static Future<T?> showFullScreenDialog<T>({
    required BuildContext context,
    required String title,
    required Widget child,
    List<Widget>? actions,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => FPFullScreenDialog(
        title: title,
        child: child,
        actions: actions,
      ),
    );
  }
}