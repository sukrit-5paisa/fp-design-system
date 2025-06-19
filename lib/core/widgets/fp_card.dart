import 'package:flutter/material.dart';

enum FPCardVariant { elevated, filled, outlined }

class FPCard extends StatelessWidget {
  final Widget child;
  final FPCardVariant variant;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final double? elevation;
  final Color? color;
  final BorderSide? side;

  const FPCard({
    super.key,
    required this.child,
    this.variant = FPCardVariant.elevated,
    this.padding,
    this.margin,
    this.onTap,
    this.borderRadius,
    this.elevation,
    this.color,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Widget cardContent = padding != null
        ? Padding(padding: padding!, child: child)
        : child;

    if (onTap != null) {
      cardContent = InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        child: cardContent,
      );
    }

    switch (variant) {
      case FPCardVariant.elevated:
        return Card(
          elevation: elevation ?? 1,
          margin: margin,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          child: cardContent,
        );

      case FPCardVariant.filled:
        return Card(
          elevation: 0,
          margin: margin,
          color: color ?? colorScheme.surfaceVariant,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          child: cardContent,
        );

      case FPCardVariant.outlined:
        return Card(
          elevation: 0,
          margin: margin,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
            side: side ?? BorderSide(
              color: colorScheme.outline,
              width: 1,
            ),
          ),
          child: cardContent,
        );
    }
  }
}

/// Convenience widget for creating cards with common content patterns
class FPCardContent extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final List<Widget>? actions;
  final bool showDivider;

  const FPCardContent({
    super.key,
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.actions,
    this.showDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null || leading != null || trailing != null)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                if (leading != null) ...[
                  leading!,
                  const SizedBox(width: 16),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title != null)
                        Text(
                          title!,
                          style: textTheme.titleMedium,
                        ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          subtitle!,
                          style: textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        if (showDivider && (title != null || leading != null || trailing != null))
          const Divider(height: 1),
        if (actions != null)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions!
                  .map((action) => Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: action,
                      ))
                  .toList(),
            ),
          ),
      ],
    );
  }
}

/// FP-themed Elevated Card - inherits from Material 3 Card
class FPElevatedCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Color? color;
  final double? elevation;

  const FPElevatedCard({
    super.key,
    required this.child,
    this.margin,
    this.padding,
    this.onTap,
    this.color,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: margin ?? const EdgeInsets.all(8),
      color: color ?? colorScheme.surface,
      elevation: elevation ?? 1,
      shadowColor: colorScheme.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}

/// FP-themed Filled Card - inherits from Material 3 Card with filled style
class FPFilledCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Color? color;

  const FPFilledCard({
    super.key,
    required this.child,
    this.margin,
    this.padding,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: margin ?? const EdgeInsets.all(8),
      color: color ?? colorScheme.surfaceContainerHighest,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}

/// FP-themed Outlined Card - inherits from Material 3 Card with outline
class FPOutlinedCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;

  const FPOutlinedCard({
    super.key,
    required this.child,
    this.margin,
    this.padding,
    this.onTap,
    this.color,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: margin ?? const EdgeInsets.all(8),
      color: color ?? colorScheme.surface,
      elevation: 0,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: borderColor ?? colorScheme.outline,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
} 