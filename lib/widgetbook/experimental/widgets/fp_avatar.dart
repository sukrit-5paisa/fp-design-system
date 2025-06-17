import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';

/// FP Design System Avatar Widget
/// A customizable avatar component that follows the design system
@WidgetbookStory(name: 'FPAvatar', useCases: [
  FPAvatarUseCase,
])
class FPAvatar extends StatelessWidget {
  /// The child widget to display in the avatar
  final Widget? child;

  /// The background image for the avatar
  final ImageProvider? backgroundImage;

  /// The foreground image for the avatar
  final ImageProvider? foregroundImage;

  /// The radius of the avatar
  final double? radius;

  /// The diameter of the avatar
  final double? diameter;

  /// The background color of the avatar
  final Color? backgroundColor;

  /// The foreground color of the avatar
  final Color? foregroundColor;

  /// The avatar's margin
  final EdgeInsetsGeometry? margin;

  const FPAvatar({
    super.key,
    this.child,
    this.backgroundImage,
    this.foregroundImage,
    this.radius,
    this.diameter,
    this.backgroundColor,
    this.foregroundColor,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final avatarRadius = radius ?? (diameter != null ? diameter! / 2 : 20);
    final avatarDiameter = diameter ?? (radius != null ? radius! * 2 : 40);

    Widget avatar = CircleAvatar(
      radius: avatarRadius,
      backgroundColor: backgroundColor ?? colorScheme.primaryContainer,
      foregroundColor: foregroundColor ?? colorScheme.onPrimaryContainer,
      backgroundImage: backgroundImage,
      foregroundImage: foregroundImage,
      child: child,
    );

    // Apply margin if specified
    if (margin != null) {
      avatar = Padding(
        padding: margin!,
        child: avatar,
      );
    }

    return avatar;
  }
}

/// Use case for FPAvatar in Widgetbook
class FPAvatarUseCase extends WidgetbookUseCase {
  const FPAvatarUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPAvatar(
      child: Text('JD'),
    );
  }
} 