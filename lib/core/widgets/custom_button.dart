import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';
import '../../core/theme/colors.dart';
import '../../core/theme/custom_theme_extension.dart';
import '../../core/theme/typography.dart';

// Button States
enum CustomButtonState { idle, pressed, disabled }
// Button Styles
enum CustomButtonStyle { solid, outline, shadedOutline, ghost }
// Button Colors
enum CustomButtonColor { material, critical, positive, primary, secondary, tertiary }
// Button Sizes
enum CustomButtonSize {
  size44BodyMd,
  size40BodyMd,
  size36BodySm,
  size28LabelMd,
  size24LabelSm,
  size20LabelSm,
}

class CustomButtonLayout {
  final double width;
  final double height;
  final double borderRadius;
  final EdgeInsets padding;
  final double gap;
  final double borderWidth;
  const CustomButtonLayout({
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.padding,
    required this.gap,
    this.borderWidth = 0,
  });
}

const Map<CustomButtonSize, CustomButtonLayout> customButtonLayouts = {
  CustomButtonSize.size44BodyMd: CustomButtonLayout(
    width: 354,
    height: 44,
    borderRadius: 44,
    padding: EdgeInsets.fromLTRB(FPSpacing.md, FPSpacing.xs, FPSpacing.md, FPSpacing.xs),
    gap: FPSpacing.xs,
    borderWidth: 2,
  ),
  CustomButtonSize.size40BodyMd: CustomButtonLayout(
    width: 124,
    height: 40,
    borderRadius: 20,
    padding: EdgeInsets.fromLTRB(FPSpacing.md, 0, FPSpacing.md, 0),
    gap: FPSpacing.xs,
    borderWidth: 2,
  ),
  CustomButtonSize.size36BodySm: CustomButtonLayout(
    width: 119,
    height: 36,
    borderRadius: 20,
    padding: EdgeInsets.fromLTRB(FPSpacing.md, 6, FPSpacing.md, 6),
    gap: FPSpacing.xs,
  ),
  CustomButtonSize.size28LabelMd: CustomButtonLayout(
    width: 85,
    height: 28,
    borderRadius: 20,
    padding: EdgeInsets.fromLTRB(FPSpacing.xs, 6, FPSpacing.xs, 6),
    gap: FPSpacing.xxs,
  ),
  CustomButtonSize.size24LabelSm: CustomButtonLayout(
    width: 78,
    height: 24,
    borderRadius: 20,
    padding: EdgeInsets.fromLTRB(FPSpacing.xs, 6, FPSpacing.xs, 6),
    gap: FPSpacing.xxs,
  ),
  CustomButtonSize.size20LabelSm: CustomButtonLayout(
    width: 78,
    height: 20,
    borderRadius: 20,
    padding: EdgeInsets.fromLTRB(FPSpacing.xs, 6, FPSpacing.xs, 6),
    gap: FPSpacing.xxs,
  ),
};

class CustomButton extends StatefulWidget {
  final CustomButtonState state;
  final CustomButtonStyle style;
  final CustomButtonColor color;
  final String label;
  final CustomButtonSize size;
  final Widget? iconLeading;
  final Widget? iconTrailing;
  final bool showIconLeading;
  final bool showIconTrailing;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    this.state = CustomButtonState.idle,
    this.style = CustomButtonStyle.solid,
    this.color = CustomButtonColor.tertiary,
    required this.label,
    this.size = CustomButtonSize.size44BodyMd,
    this.iconLeading,
    this.iconTrailing,
    this.showIconLeading = false,
    this.showIconTrailing = false,
    this.onPressed,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _pressed = false;

  bool get _isDisabled => widget.state == CustomButtonState.disabled || widget.onPressed == null;

  Color _getBackgroundColor(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final customTheme = theme.extension<CustomThemeExtension>();
    final isPressed = widget.state == CustomButtonState.pressed || _pressed;

    if (_isDisabled) {
      return colorScheme.surfaceVariant; // material/container color
    }

    Color resolveColor() {
      switch (widget.color) {
        case CustomButtonColor.material:
          return colorScheme.primary;
        case CustomButtonColor.primary:
          return customTheme?.buttonPrimary ?? colorScheme.primary;
        case CustomButtonColor.secondary:
          return customTheme?.buttonSecondary ?? colorScheme.secondary;
        case CustomButtonColor.tertiary:
          return customTheme?.buttonTertiary ?? colorScheme.tertiary;
        case CustomButtonColor.critical:
          return customTheme?.buttonCritical ?? colorScheme.error;
        case CustomButtonColor.positive:
          return customTheme?.buttonPositive ?? colorScheme.secondary;
      }
    }

    switch (widget.style) {
      case CustomButtonStyle.ghost:
        return Colors.transparent;
      case CustomButtonStyle.outline:
        if (isPressed) {
          return customTheme?.containerLow ?? colorScheme.surfaceVariant;
        }
        return Colors.transparent;
      case CustomButtonStyle.shadedOutline:
        if (isPressed) {
          return customTheme?.containerLow ?? colorScheme.surfaceVariant;
        }
        return colorScheme.surfaceVariant;
      case CustomButtonStyle.solid:
      default:
        return resolveColor();
    }
  }

  Color _getTextColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final customTheme = Theme.of(context).extension<CustomThemeExtension>();
    final state = widget.state;
    final style = widget.style;
    final color = widget.color;

    // Disabled: always outlineVariant for text color
    if (state == CustomButtonState.disabled) {
      return colorScheme.outlineVariant;
    }

    // Ghost style: always primary color of respective theme
    if (style == CustomButtonStyle.ghost) {
      switch (color) {
        case CustomButtonColor.material:
        case CustomButtonColor.primary:
          return colorScheme.primary;
        case CustomButtonColor.critical:
          return customTheme?.buttonOnCritical ?? colorScheme.error;
        case CustomButtonColor.positive:
          return customTheme?.buttonOnPositive ?? colorScheme.secondary;
        case CustomButtonColor.secondary:
          return customTheme?.buttonOnSecondary ?? colorScheme.secondary;
        case CustomButtonColor.tertiary:
          return customTheme?.buttonOnTertiary ?? colorScheme.tertiary;
      }
    }

    // Solid style
    if (style == CustomButtonStyle.solid) {
      switch (color) {
        case CustomButtonColor.material:
          return colorScheme.onPrimary;
        case CustomButtonColor.primary:
          return customTheme?.buttonOnPrimary ?? colorScheme.onPrimary;
        case CustomButtonColor.secondary:
          return customTheme?.buttonOnSecondary ?? colorScheme.onSecondary;
        case CustomButtonColor.tertiary:
          return customTheme?.buttonOnTertiary ?? colorScheme.onTertiary ?? colorScheme.onPrimary;
        case CustomButtonColor.critical:
          return customTheme?.buttonOnCritical ?? colorScheme.onError;
        case CustomButtonColor.positive:
          return customTheme?.buttonOnPositive ?? colorScheme.onSecondary;
      }
    }

    // Outline style
    if (style == CustomButtonStyle.outline) {
      switch (color) {
        case CustomButtonColor.material:
        case CustomButtonColor.primary:
          return colorScheme.primary;
        case CustomButtonColor.critical:
          return customTheme?.buttonCritical ?? colorScheme.error;
        case CustomButtonColor.positive:
          return customTheme?.buttonPositive ?? colorScheme.secondary;
        case CustomButtonColor.secondary:
          return customTheme?.buttonSecondary ?? colorScheme.secondary;
        case CustomButtonColor.tertiary:
          return customTheme?.buttonTertiary ?? colorScheme.tertiary;
      }
    }

    // ShadedOutline style
    if (style == CustomButtonStyle.shadedOutline) {
      return colorScheme.onSurface;
    }

    // Fallback
    return colorScheme.onPrimary;
  }

  Color _getBorderColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    if (_isDisabled) {
      return colorScheme.outlineVariant;
    }
    switch (widget.style) {
      case CustomButtonStyle.ghost:
        return Colors.transparent;
      case CustomButtonStyle.outline:
        return colorScheme.outlineVariant;
      case CustomButtonStyle.shadedOutline:
        return colorScheme.outlineVariant;
      case CustomButtonStyle.solid:
      default:
        return Colors.transparent;
    }
  }

  BoxDecoration _getBoxDecoration(BuildContext context, CustomButtonLayout layout) {
    final bgColor = _getBackgroundColor(context);
    final borderColor = _getBorderColor(context);
    final boxShadow = widget.style == CustomButtonStyle.shadedOutline
        ? [BoxShadow(color: _getBackgroundColor(context).withOpacity(0.2), blurRadius: 8, offset: Offset(0, 2))]
        : null;
    return BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(layout.borderRadius),
      border: Border.all(color: borderColor, width: layout.borderWidth),
      boxShadow: boxShadow,
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    TextStyle style;
    switch (widget.size) {
      case CustomButtonSize.size44BodyMd:
      case CustomButtonSize.size40BodyMd:
        style = TypographyTokens.body.mediumHeavier.copyWith(
          color: _getTextColor(context),
        );
        break;
      case CustomButtonSize.size36BodySm:
        style = TypographyTokens.body.smallHeavier.copyWith(
          color: _getTextColor(context),
        );
        break;
      case CustomButtonSize.size28LabelMd:
        style = TypographyTokens.label.large.copyWith(
          color: _getTextColor(context),
        );
        break;
      case CustomButtonSize.size24LabelSm:
        style = TypographyTokens.label.medium.copyWith(
          color: _getTextColor(context),
        );
        break;
      case CustomButtonSize.size20LabelSm:
        style = TypographyTokens.label.small.copyWith(
          color: _getTextColor(context),
        );
        break;
    }
    // Debug print
    // ignore: avoid_print
    print('CustomButton: size=${widget.size}, fontSize=[33m[1m[4m[7m[41m${style.fontSize}[0m');
    return style;
  }

  double _getIconSize() {
    switch (widget.size) {
      case CustomButtonSize.size44BodyMd:
      case CustomButtonSize.size40BodyMd:
      case CustomButtonSize.size36BodySm:
        return 16;
      case CustomButtonSize.size28LabelMd:
      case CustomButtonSize.size24LabelSm:
        return 14;
      case CustomButtonSize.size20LabelSm:
        return 12;
    }
  }

  @override
  Widget build(BuildContext context) {
    final layout = customButtonLayouts[widget.size] ?? customButtonLayouts[CustomButtonSize.size44BodyMd]!;
    final textStyle = _getTextStyle(context);
    final iconSize = _getIconSize();
    return GestureDetector(
      onTapDown: (_) {
        if (!_isDisabled) setState(() => _pressed = true);
      },
      onTapUp: (_) {
        if (!_isDisabled) setState(() => _pressed = false);
      },
      onTapCancel: () {
        if (!_isDisabled) setState(() => _pressed = false);
      },
      onTap: _isDisabled ? null : widget.onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
        width: layout.width,
        height: layout.height,
        decoration: _getBoxDecoration(context, layout),
        padding: layout.padding,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              if (widget.showIconLeading && widget.iconLeading != null) ...[
                Baseline(
                  baseline: textStyle.fontSize ?? iconSize,
                  baselineType: TextBaseline.alphabetic,
                  child: IconTheme(
                    data: IconThemeData(size: iconSize),
                    child: widget.iconLeading!,
                  ),
                ),
                SizedBox(width: layout.gap),
              ],
              Baseline(
                baseline: textStyle.fontSize ?? 16,
                baselineType: TextBaseline.alphabetic,
                child: Text(widget.label, style: textStyle),
              ),
              if (widget.showIconTrailing && widget.iconTrailing != null) ...[
                SizedBox(width: layout.gap),
                Baseline(
                  baseline: textStyle.fontSize ?? iconSize,
                  baselineType: TextBaseline.alphabetic,
                  child: IconTheme(
                    data: IconThemeData(size: iconSize),
                    child: widget.iconTrailing!,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
} 