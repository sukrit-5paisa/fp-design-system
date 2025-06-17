import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';
import '../../../core/theme/colors.dart';

/// Button variants for the FP design system
enum ButtonVariant {
  primary,
  secondary,
  tertiary,
  outlined,
  text,
}

/// Button sizes for the FP design system
enum ButtonSize {
  small,
  medium,
  large,
}

/// FP Design System Button Widget
/// A customizable button component that follows the design system
@WidgetbookStory(name: 'FPButton', useCases: [
  FPButtonUseCase,
])
class FPButton extends StatefulWidget {
  /// The text to display on the button
  final String text;

  /// The button variant
  final ButtonVariant variant;

  /// The button size
  final ButtonSize size;

  /// Whether the button is enabled
  final bool enabled;

  /// Whether the button is in loading state
  final bool isLoading;

  /// The icon to display (optional)
  final IconData? icon;

  /// The callback function when the button is pressed
  final VoidCallback? onPressed;

  /// The button's width (optional)
  final double? width;

  /// The button's height (optional)
  final double? height;

  const FPButton({
    super.key,
    required this.text,
    this.variant = ButtonVariant.primary,
    this.size = ButtonSize.medium,
    this.enabled = true,
    this.isLoading = false,
    this.icon,
    this.onPressed,
    this.width,
    this.height,
  });

  @override
  State<FPButton> createState() => _FPButtonState();
}

class _FPButtonState extends State<FPButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Determine button style based on variant
    ButtonStyle buttonStyle = _getButtonStyle(colorScheme);

    // Determine button content
    Widget buttonContent = _getButtonContent();

    // Create the button widget
    Widget button = _createButtonWidget(buttonStyle, buttonContent);

    // Apply size constraints if specified
    if (widget.width != null || widget.height != null) {
      button = SizedBox(
        width: widget.width,
        height: widget.height,
        child: button,
      );
    }

    return button;
  }

  ButtonStyle _getButtonStyle(ColorScheme colorScheme) {
    switch (widget.variant) {
      case ButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          disabledBackgroundColor: colorScheme.onSurface.withOpacity(0.12),
          disabledForegroundColor: colorScheme.onSurface.withOpacity(0.38),
          elevation: 0,
          padding: _getPadding(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );

      case ButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: colorScheme.secondary,
          foregroundColor: colorScheme.onSecondary,
          disabledBackgroundColor: colorScheme.onSurface.withOpacity(0.12),
          disabledForegroundColor: colorScheme.onSurface.withOpacity(0.38),
          elevation: 0,
          padding: _getPadding(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );

      case ButtonVariant.tertiary:
        return ElevatedButton.styleFrom(
          backgroundColor: colorScheme.tertiary,
          foregroundColor: colorScheme.onTertiary,
          disabledBackgroundColor: colorScheme.onSurface.withOpacity(0.12),
          disabledForegroundColor: colorScheme.onSurface.withOpacity(0.38),
          elevation: 0,
          padding: _getPadding(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );

      case ButtonVariant.outlined:
        return OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          disabledForegroundColor: colorScheme.onSurface.withOpacity(0.38),
          side: BorderSide(
            color: widget.enabled ? colorScheme.primary : colorScheme.onSurface.withOpacity(0.12),
            width: 1,
          ),
          padding: _getPadding(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );

      case ButtonVariant.text:
        return TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          disabledForegroundColor: colorScheme.onSurface.withOpacity(0.38),
          padding: _getPadding(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );
    }
  }

  EdgeInsetsGeometry _getPadding() {
    switch (widget.size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32, vertical: 16);
    }
  }

  Widget _getButtonContent() {
    if (widget.isLoading) {
      return SizedBox(
        width: 16,
        height: 16,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            widget.variant == ButtonVariant.outlined || widget.variant == ButtonVariant.text
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      );
    }

    final List<Widget> children = [];

    if (widget.icon != null) {
      children.add(Icon(widget.icon, size: _getIconSize()));
      children.add(SizedBox(width: _getIconSpacing()));
    }

    children.add(Text(
      widget.text,
      style: _getTextStyle(),
    ));

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }

  double _getIconSize() {
    switch (widget.size) {
      case ButtonSize.small:
        return 16;
      case ButtonSize.medium:
        return 18;
      case ButtonSize.large:
        return 20;
    }
  }

  double _getIconSpacing() {
    switch (widget.size) {
      case ButtonSize.small:
        return 4;
      case ButtonSize.medium:
        return 6;
      case ButtonSize.large:
        return 8;
    }
  }

  TextStyle _getTextStyle() {
    final theme = Theme.of(context);
    switch (widget.size) {
      case ButtonSize.small:
        return theme.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w500,
        ) ?? const TextStyle(fontWeight: FontWeight.w500);
      case ButtonSize.medium:
        return theme.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w500,
        ) ?? const TextStyle(fontWeight: FontWeight.w500);
      case ButtonSize.large:
        return theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
        ) ?? const TextStyle(fontWeight: FontWeight.w500);
    }
  }

  Widget _createButtonWidget(ButtonStyle buttonStyle, Widget buttonContent) {
    switch (widget.variant) {
      case ButtonVariant.primary:
      case ButtonVariant.secondary:
      case ButtonVariant.tertiary:
        return ElevatedButton(
          onPressed: widget.enabled && !widget.isLoading ? widget.onPressed : null,
          style: buttonStyle,
          child: buttonContent,
        );

      case ButtonVariant.outlined:
        return OutlinedButton(
          onPressed: widget.enabled && !widget.isLoading ? widget.onPressed : null,
          style: buttonStyle,
          child: buttonContent,
        );

      case ButtonVariant.text:
        return TextButton(
          onPressed: widget.enabled && !widget.isLoading ? widget.onPressed : null,
          style: buttonStyle,
          child: buttonContent,
        );
    }
  }
}

/// Use case for FPButton in Widgetbook
class FPButtonUseCase extends WidgetbookUseCase {
  const FPButtonUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPButton(
      text: 'Button',
      variant: ButtonVariant.primary,
    );
  }
} 