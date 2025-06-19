 import 'package:flutter/material.dart';

// ============================================================================
// DIVIDER
// ============================================================================

class FPDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;
  final EdgeInsetsGeometry? margin;

  const FPDivider({
    super.key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Widget divider = Divider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color ?? colorScheme.outline,
    );

    if (margin != null) {
      divider = Padding(
        padding: margin!,
        child: divider,
      );
    }

    return divider;
  }
}

// ============================================================================
// VERTICAL DIVIDER
// ============================================================================

class FPVerticalDivider extends StatelessWidget {
  final double? width;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;
  final EdgeInsetsGeometry? margin;

  const FPVerticalDivider({
    super.key,
    this.width,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Widget divider = VerticalDivider(
      width: width,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color ?? colorScheme.outline,
    );

    if (margin != null) {
      divider = Padding(
        padding: margin!,
        child: divider,
      );
    }

    return divider;
  }
}

// ============================================================================
// SECTION DIVIDER
// ============================================================================

class FPSectionDivider extends StatelessWidget {
  final String? title;
  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final TextStyle? titleStyle;

  const FPSectionDivider({
    super.key,
    this.title,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.margin,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    if (title != null) {
      return Padding(
        padding: margin ?? const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: FPDivider(
                height: height,
                thickness: thickness,
                indent: indent,
                endIndent: 16,
                color: color,
              ),
            ),
            Text(
              title!,
              style: titleStyle ?? textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            Expanded(
              child: FPDivider(
                height: height,
                thickness: thickness,
                indent: 16,
                endIndent: endIndent,
                color: color,
              ),
            ),
          ],
        ),
      );
    }

    return FPDivider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
      margin: margin,
    );
  }
}

// ============================================================================
// SPACED DIVIDER
// ============================================================================

class FPSpacedDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;
  final double verticalSpacing;

  const FPSpacedDivider({
    super.key,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
    this.verticalSpacing = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalSpacing),
      child: FPDivider(
        height: height,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
        color: color,
      ),
    );
  }
}

// ============================================================================
// DIVIDER HELPERS
// ============================================================================

class FPDividerHelpers {
  static Widget createDivider({
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
    EdgeInsetsGeometry? margin,
  }) {
    return FPDivider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
      margin: margin,
    );
  }

  static Widget createVerticalDivider({
    double? width,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
    EdgeInsetsGeometry? margin,
  }) {
    return FPVerticalDivider(
      width: width,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
      margin: margin,
    );
  }

  static Widget createSectionDivider({
    String? title,
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
    EdgeInsetsGeometry? margin,
    TextStyle? titleStyle,
  }) {
    return FPSectionDivider(
      title: title,
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
      margin: margin,
      titleStyle: titleStyle,
    );
  }

  static Widget createSpacedDivider({
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
    double verticalSpacing = 16,
  }) {
    return FPSpacedDivider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
      verticalSpacing: verticalSpacing,
    );
  }

  static Widget createListDivider({
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
  }) {
    return FPDivider(
      height: height ?? 1,
      thickness: thickness ?? 0,
      indent: indent ?? 16,
      endIndent: endIndent ?? 16,
      color: color,
    );
  }

  static Widget createCardDivider({
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
  }) {
    return FPDivider(
      height: height ?? 1,
      thickness: thickness ?? 0,
      indent: indent ?? 0,
      endIndent: endIndent ?? 0,
      color: color,
    );
  }
}