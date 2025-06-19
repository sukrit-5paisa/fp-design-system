import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';

enum FPButtonVariant { filled, tonal, elevated, outlined, text }

class FPButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool enabled;
  final bool loading;
  final IconData? icon;
  final FPButtonVariant variant;

  const FPButton({
    super.key,
    required this.label,
    this.onPressed,
    this.enabled = true,
    this.loading = false,
    this.icon,
    this.variant = FPButtonVariant.filled,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final isEnabled = enabled && !loading;

    Widget content = loading
        ? SizedBox(
            width: FPSpacing.md,
            height: FPSpacing.md,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                _getLoadingColor(colorScheme),
              ),
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 18, color: _getTextColor(colorScheme)),
                const SizedBox(width: FPSpacing.sm),
              ],
              Text(
                label,
                style: textTheme.labelLarge?.copyWith(
                  color: _getTextColor(colorScheme),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );

    switch (variant) {
      case FPButtonVariant.filled:
        return FilledButton(
          onPressed: isEnabled ? onPressed : null,
          style: FilledButton.styleFrom(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            textStyle: textTheme.labelLarge,
          ),
          child: content,
        );
      case FPButtonVariant.tonal:
        return FilledButton(
          onPressed: isEnabled ? onPressed : null,
          style: FilledButton.styleFrom(
            backgroundColor: colorScheme.secondaryContainer,
            foregroundColor: colorScheme.onSecondaryContainer,
            textStyle: textTheme.labelLarge,
          ),
          child: content,
        );
      case FPButtonVariant.elevated:
        return ElevatedButton(
          onPressed: isEnabled ? onPressed : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.surface,
            foregroundColor: colorScheme.primary,
            textStyle: textTheme.labelLarge,
            elevation: 2,
          ),
          child: content,
        );
      case FPButtonVariant.outlined:
        return OutlinedButton(
          onPressed: isEnabled ? onPressed : null,
          style: OutlinedButton.styleFrom(
            foregroundColor: colorScheme.primary,
            side: BorderSide(color: colorScheme.primary),
            textStyle: textTheme.labelLarge,
          ),
          child: content,
        );
      case FPButtonVariant.text:
        return TextButton(
          onPressed: isEnabled ? onPressed : null,
          style: TextButton.styleFrom(
            foregroundColor: colorScheme.primary,
            textStyle: textTheme.labelLarge,
          ),
          child: content,
        );
    }
  }

  Color _getTextColor(ColorScheme colorScheme) {
    switch (variant) {
      case FPButtonVariant.filled:
        return colorScheme.onPrimary;
      case FPButtonVariant.tonal:
        return colorScheme.onSecondaryContainer;
      case FPButtonVariant.elevated:
        return colorScheme.primary;
      case FPButtonVariant.outlined:
      case FPButtonVariant.text:
        return colorScheme.primary;
    }
  }

  Color _getLoadingColor(ColorScheme colorScheme) => _getTextColor(colorScheme);
}

/// FP-themed Elevated Button - inherits from Material 3 ElevatedButton
class FPElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final bool isDestructive;

  const FPElevatedButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isDestructive ? colorScheme.error : colorScheme.primary,
        foregroundColor: isDestructive ? colorScheme.onError : colorScheme.onPrimary,
        elevation: 1,
        shadowColor: colorScheme.shadow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: FPSpacing.md,
              height: FPSpacing.md,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 18),
                  const SizedBox(width: FPSpacing.sm),
                ],
                Text(label),
              ],
            ),
    );
  }
}

/// FP-themed Filled Button - inherits from Material 3 FilledButton
class FPFilledButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final bool isDestructive;

  const FPFilledButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: isDestructive ? colorScheme.error : colorScheme.primary,
        foregroundColor: isDestructive ? colorScheme.onError : colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: FPSpacing.md,
              height: FPSpacing.md,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 18),
                  const SizedBox(width: FPSpacing.sm),
                ],
                Text(label),
              ],
            ),
    );
  }
}

/// FP-themed Outlined Button - inherits from Material 3 OutlinedButton
class FPOutlinedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final bool isDestructive;

  const FPOutlinedButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: isDestructive ? colorScheme.error : colorScheme.primary,
        side: BorderSide(
          color: isDestructive ? colorScheme.error : colorScheme.outline,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: FPSpacing.md,
              height: FPSpacing.md,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 18),
                  const SizedBox(width: FPSpacing.sm),
                ],
                Text(label),
              ],
            ),
    );
  }
}

/// FP-themed Text Button - inherits from Material 3 TextButton
class FPTextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final bool isDestructive;

  const FPTextButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return TextButton(
      onPressed: isLoading ? null : onPressed,
      style: TextButton.styleFrom(
        foregroundColor: isDestructive ? colorScheme.error : colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: FPSpacing.md,
              height: FPSpacing.md,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 18),
                  const SizedBox(width: FPSpacing.sm),
                ],
                Text(label),
              ],
            ),
    );
  }
} 