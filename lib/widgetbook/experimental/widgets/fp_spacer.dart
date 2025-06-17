import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// FP Design System Spacer Widget
/// A customizable spacer component for consistent spacing
@WidgetbookStory(name: 'FPSpacer', useCases: [
  FPSpacerUseCase,
])
class FPSpacer extends StatelessWidget {
  /// The size of the spacer
  final double size;

  /// Whether the spacer is horizontal
  final bool horizontal;

  const FPSpacer({
    super.key,
    this.size = 16.0,
    this.horizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    if (horizontal) {
      return SizedBox(width: size);
    }
    return SizedBox(height: size);
  }
}

/// Use case for FPSpacer in Widgetbook
class FPSpacerUseCase extends WidgetbookUseCase {
  const FPSpacerUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPSpacer();
  }
} 