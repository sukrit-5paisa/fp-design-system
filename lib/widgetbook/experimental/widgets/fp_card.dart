import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';
import 'fp_button.dart';

/// FP Design System Card Widget
/// A customizable card component that follows the design system
@WidgetbookStory(name: 'FPCard', useCases: [
  FPCardUseCase,
])
class FPCard extends StatelessWidget {
  /// The title of the card (optional)
  final String? title;

  /// The subtitle of the card (optional)
  final String? subtitle;

  /// The content of the card
  final Widget child;

  /// The actions to display in the card header (optional)
  final List<Widget>? actions;

  /// Whether the card is elevated
  final bool elevated;

  /// The card's width (optional)
  final double? width;

  /// The card's height (optional)
  final double? height;

  /// The card's padding
  final EdgeInsetsGeometry? padding;

  /// The card's margin
  final EdgeInsetsGeometry? margin;

  /// The card's border radius
  final BorderRadius? borderRadius;

  /// The card's border (optional)
  final Border? border;

  /// The card's background color (optional)
  final Color? backgroundColor;

  /// The callback when the card is tapped (optional)
  final VoidCallback? onTap;

  const FPCard({
    super.key,
    this.title,
    this.subtitle,
    required this.child,
    this.actions,
    this.elevated = false,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.borderRadius,
    this.border,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Build the card content
    Widget cardContent = _buildCardContent(theme, colorScheme);

    // Apply size constraints if specified
    if (width != null || height != null) {
      cardContent = SizedBox(
        width: width,
        height: height,
        child: cardContent,
      );
    }

    // Apply margin if specified
    if (margin != null) {
      cardContent = Padding(
        padding: margin!,
        child: cardContent,
      );
    }

    return cardContent;
  }

  Widget _buildCardContent(ThemeData theme, ColorScheme colorScheme) {
    final List<Widget> cardChildren = [];

    // Add header if title or actions are provided
    if (title != null || subtitle != null || actions != null) {
      cardChildren.add(_buildCardHeader(theme, colorScheme));
    }

    // Add the main content
    cardChildren.add(
      Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: child,
      ),
    );

    // Create the card widget
    Widget card = Card(
      elevation: elevated ? 2 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        side: border?.left ?? BorderSide(
          color: colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      color: backgroundColor ?? colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: cardChildren,
      ),
    );

    // Add tap functionality if onTap is provided
    if (onTap != null) {
      card = InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        child: card,
      );
    }

    return card;
  }

  Widget _buildCardHeader(ThemeData theme, ColorScheme colorScheme) {
    final List<Widget> headerChildren = [];

    // Add title and subtitle
    if (title != null || subtitle != null) {
      final List<Widget> titleChildren = [];

      if (title != null) {
        titleChildren.add(
          Text(
            title!,
            style: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        );
      }

      if (subtitle != null) {
        titleChildren.add(
          Text(
            subtitle!,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        );
      }

      headerChildren.add(
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: titleChildren,
          ),
        ),
      );
    }

    // Add actions
    if (actions != null && actions!.isNotEmpty) {
      headerChildren.add(
        Row(
          mainAxisSize: MainAxisSize.min,
          children: actions!,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: headerChildren,
      ),
    );
  }
}

/// Use case for FPCard in Widgetbook
class FPCardUseCase extends WidgetbookUseCase {
  const FPCardUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPCard(
      title: 'Card Title',
      subtitle: 'Card subtitle',
      child: Text('Card content goes here'),
      actions: [
        FPButton(text: 'Action', variant: ButtonVariant.text),
      ],
    );
  }
} 