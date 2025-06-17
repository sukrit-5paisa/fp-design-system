import 'package:flutter/material.dart';

/// A class that provides access to the design system's typography tokens
class TypographyTokens {
  /// Private constructor to prevent instantiation
  const TypographyTokens._();

  /// Display text styles
  static const display = _DisplayTokens();

  /// Headline text styles
  static const headline = _HeadlineTokens();

  /// Title text styles
  static const title = _TitleTokens();

  /// Body text styles
  static const body = _BodyTokens();

  /// Label text styles
  static const label = _LabelTokens();

  /// Font families
  static const fontFamily = _FontFamilyTokens();
}

/// Display text tokens
class _DisplayTokens {
  const _DisplayTokens();

  /// Get display style with specified weight
  TextStyle _getStyle({
    required double fontSize,
    required double lineHeight,
    required double letterSpacing,
    required FontWeight weight,
  }) => TextStyle(
    fontFamily: _FontFamilyTokens.fontFamily,
    fontSize: fontSize,
    height: lineHeight / fontSize,
    letterSpacing: letterSpacing,
    fontWeight: weight,
  );

  /// Large display style
  TextStyle get large => _getStyle(
    fontSize: 80,
    lineHeight: 88,
    letterSpacing: 1.5,
    weight: FontWeight.bold, // Default
  );

  /// Large display style with lighter weight
  TextStyle get largeLighter => _getStyle(
    fontSize: 80,
    lineHeight: 88,
    letterSpacing: 1.5,
    weight: FontWeight.w600, // Semibold
  );

  /// Large display style with heavier weight
  TextStyle get largeHeavier => _getStyle(
    fontSize: 80,
    lineHeight: 88,
    letterSpacing: 1.5,
    weight: FontWeight.w900, // Black
  );

  /// Medium display style
  TextStyle get medium => _getStyle(
    fontSize: 48,
    lineHeight: 52,
    letterSpacing: 1.2,
    weight: FontWeight.bold, // Default
  );

  /// Medium display style with lighter weight
  TextStyle get mediumLighter => _getStyle(
    fontSize: 48,
    lineHeight: 52,
    letterSpacing: 1.2,
    weight: FontWeight.w600, // Semibold
  );

  /// Medium display style with heavier weight
  TextStyle get mediumHeavier => _getStyle(
    fontSize: 48,
    lineHeight: 52,
    letterSpacing: 1.2,
    weight: FontWeight.w900, // Black
  );

  /// Small display style
  TextStyle get small => _getStyle(
    fontSize: 32,
    lineHeight: 36,
    letterSpacing: 1.0,
    weight: FontWeight.bold, // Default
  );

  /// Small display style with lighter weight
  TextStyle get smallLighter => _getStyle(
    fontSize: 32,
    lineHeight: 36,
    letterSpacing: 1.0,
    weight: FontWeight.w600, // Semibold
  );

  /// Small display style with heavier weight
  TextStyle get smallHeavier => _getStyle(
    fontSize: 32,
    lineHeight: 36,
    letterSpacing: 1.0,
    weight: FontWeight.w900, // Black
  );

  /// Paragraph spacing for display text
  double get paragraphSpacingLarge => 80;
  double get paragraphSpacingMedium => 48;
  double get paragraphSpacingSmall => 32;
}

/// Headline text tokens
class _HeadlineTokens {
  const _HeadlineTokens();

  /// Get headline style with specified weight
  TextStyle _getStyle({
    required double fontSize,
    required double lineHeight,
    required double letterSpacing,
    required FontWeight weight,
  }) => TextStyle(
    fontFamily: _FontFamilyTokens.fontFamily,
    fontSize: fontSize,
    height: lineHeight / fontSize,
    letterSpacing: letterSpacing,
    fontWeight: weight,
  );

  /// Large headline style
  TextStyle get large => _getStyle(
    fontSize: 28,
    lineHeight: 36,
    letterSpacing: 0.6,
    weight: FontWeight.w600, // Semibold (Default)
  );

  /// Large headline style with lighter weight
  TextStyle get largeLighter => _getStyle(
    fontSize: 28,
    lineHeight: 36,
    letterSpacing: 0.6,
    weight: FontWeight.w500, // Medium
  );

  /// Large headline style with heavier weight
  TextStyle get largeHeavier => _getStyle(
    fontSize: 28,
    lineHeight: 36,
    letterSpacing: 0.6,
    weight: FontWeight.bold, // Bold
  );

  /// Medium headline style
  TextStyle get medium => _getStyle(
    fontSize: 24,
    lineHeight: 32,
    letterSpacing: 0.4,
    weight: FontWeight.w600, // Semibold
  );

  /// Small headline style
  TextStyle get small => _getStyle(
    fontSize: 20,
    lineHeight: 28,
    letterSpacing: 0.2,
    weight: FontWeight.w600, // Semibold
  );

  /// Paragraph spacing for headline text
  double get paragraphSpacingLarge => 28;
  double get paragraphSpacingMedium => 24;
  double get paragraphSpacingSmall => 20;
}

/// Title text tokens
class _TitleTokens {
  const _TitleTokens();

  /// Get title style with specified weight
  TextStyle _getStyle({
    required double fontSize,
    required double lineHeight,
    required double letterSpacing,
    required FontWeight weight,
  }) => TextStyle(
    fontFamily: _FontFamilyTokens.fontFamily,
    fontSize: fontSize,
    height: lineHeight / fontSize,
    letterSpacing: letterSpacing,
    fontWeight: weight,
  );

  /// Large title style
  TextStyle get large => _getStyle(
    fontSize: 20,
    lineHeight: 28,
    letterSpacing: 0.5,
    weight: FontWeight.w600, // Semibold (Default)
  );

  /// Large title style with lighter weight
  TextStyle get largeLighter => _getStyle(
    fontSize: 20,
    lineHeight: 28,
    letterSpacing: 0.5,
    weight: FontWeight.w500, // Medium
  );

  /// Large title style with heavier weight
  TextStyle get largeHeavier => _getStyle(
    fontSize: 20,
    lineHeight: 28,
    letterSpacing: 0.5,
    weight: FontWeight.bold, // Bold
  );

  /// Medium title style
  TextStyle get medium => _getStyle(
    fontSize: 18,
    lineHeight: 24,
    letterSpacing: 0.4,
    weight: FontWeight.w600, // Semibold (Default)
  );

  /// Medium title style with lighter weight
  TextStyle get mediumLighter => _getStyle(
    fontSize: 18,
    lineHeight: 24,
    letterSpacing: 0.4,
    weight: FontWeight.w500, // Medium
  );

  /// Medium title style with heavier weight
  TextStyle get mediumHeavier => _getStyle(
    fontSize: 18,
    lineHeight: 24,
    letterSpacing: 0.4,
    weight: FontWeight.bold, // Bold
  );

  /// Small title style
  TextStyle get small => _getStyle(
    fontSize: 16,
    lineHeight: 20,
    letterSpacing: 0.3,
    weight: FontWeight.w600, // Semibold (Default)
  );

  /// Small title style with lighter weight
  TextStyle get smallLighter => _getStyle(
    fontSize: 16,
    lineHeight: 20,
    letterSpacing: 0.3,
    weight: FontWeight.w500, // Medium
  );

  /// Small title style with heavier weight
  TextStyle get smallHeavier => _getStyle(
    fontSize: 16,
    lineHeight: 20,
    letterSpacing: 0.3,
    weight: FontWeight.bold, // Bold
  );

  /// Paragraph spacing for title text
  double get paragraphSpacingLarge => 20;
  double get paragraphSpacingMedium => 18;
  double get paragraphSpacingSmall => 16;
}

/// Body text tokens
class _BodyTokens {
  const _BodyTokens();

  /// Get body style with specified weight
  TextStyle _getStyle({
    required double fontSize,
    required double lineHeight,
    required double letterSpacing,
    required FontWeight weight,
  }) => TextStyle(
    fontFamily: _FontFamilyTokens.fontFamily,
    fontSize: fontSize,
    height: lineHeight / fontSize,
    letterSpacing: letterSpacing,
    fontWeight: weight,
  );

  /// Large body style
  TextStyle get large => _getStyle(
    fontSize: 18,
    lineHeight: 32,
    letterSpacing: 0.36,
    weight: FontWeight.normal, // Regular (Default)
  );

  /// Large body style with lighter weight
  TextStyle get largeLighter => _getStyle(
    fontSize: 18,
    lineHeight: 32,
    letterSpacing: 0.36,
    weight: FontWeight.w300, // Light
  );

  /// Large body style with heavier weight
  TextStyle get largeHeavier => _getStyle(
    fontSize: 18,
    lineHeight: 32,
    letterSpacing: 0.36,
    weight: FontWeight.w600, // Semibold
  );

  /// Medium body style
  TextStyle get medium => _getStyle(
    fontSize: 16,
    lineHeight: 28,
    letterSpacing: 0.32,
    weight: FontWeight.normal, // Regular (Default)
  );

  /// Medium body style with lighter weight
  TextStyle get mediumLighter => _getStyle(
    fontSize: 16,
    lineHeight: 28,
    letterSpacing: 0.32,
    weight: FontWeight.w300, // Light
  );

  /// Medium body style with heavier weight
  TextStyle get mediumHeavier => _getStyle(
    fontSize: 16,
    lineHeight: 28,
    letterSpacing: 0.32,
    weight: FontWeight.w600, // Semibold
  );

  /// Small body style
  TextStyle get small => _getStyle(
    fontSize: 14,
    lineHeight: 24,
    letterSpacing: 0.28,
    weight: FontWeight.normal, // Regular (Default)
  );

  /// Small body style with lighter weight
  TextStyle get smallLighter => _getStyle(
    fontSize: 14,
    lineHeight: 24,
    letterSpacing: 0.28,
    weight: FontWeight.w300, // Light
  );

  /// Small body style with heavier weight
  TextStyle get smallHeavier => _getStyle(
    fontSize: 14,
    lineHeight: 24,
    letterSpacing: 0.28,
    weight: FontWeight.w600, // Semibold
  );

  /// Large body caps style
  TextStyle get largeCaps => _getStyle(
    fontSize: 18,
    lineHeight: 32,
    letterSpacing: 3.6,
    weight: FontWeight.w500, // Medium
  );

  /// Medium body caps style
  TextStyle get mediumCaps => _getStyle(
    fontSize: 16,
    lineHeight: 28,
    letterSpacing: 3.2,
    weight: FontWeight.w500, // Medium
  );

  /// Small body caps style
  TextStyle get smallCaps => _getStyle(
    fontSize: 14,
    lineHeight: 24,
    letterSpacing: 2.8,
    weight: FontWeight.w500, // Medium
  );

  /// Paragraph spacing for body text
  double get paragraphSpacingLarge => 18;
  double get paragraphSpacingMedium => 16;
  double get paragraphSpacingSmall => 14;
}

/// Label text tokens
class _LabelTokens {
  const _LabelTokens();

  /// Get label style with specified weight
  TextStyle _getStyle({
    required double fontSize,
    required double lineHeight,
    required double letterSpacing,
    required FontWeight weight,
  }) => TextStyle(
    fontFamily: _FontFamilyTokens.fontFamily,
    fontSize: fontSize,
    height: lineHeight / fontSize,
    letterSpacing: letterSpacing,
    fontWeight: weight,
  );

  /// Large label style
  TextStyle get large => _getStyle(
    fontSize: 13,
    lineHeight: 16,
    letterSpacing: 0.48,
    weight: FontWeight.w500, // Medium (Default)
  );

  /// Large label style with lighter weight
  TextStyle get largeLighter => _getStyle(
    fontSize: 13,
    lineHeight: 16,
    letterSpacing: 0.48,
    weight: FontWeight.normal, // Regular
  );

  /// Large label style with heavier weight
  TextStyle get largeHeavier => _getStyle(
    fontSize: 13,
    lineHeight: 16,
    letterSpacing: 0.48,
    weight: FontWeight.w600, // Semibold
  );

  /// Medium label style
  TextStyle get medium => _getStyle(
    fontSize: 12,
    lineHeight: 14,
    letterSpacing: 0.42,
    weight: FontWeight.w500, // Medium (Default)
  );

  /// Medium label style with lighter weight
  TextStyle get mediumLighter => _getStyle(
    fontSize: 12,
    lineHeight: 14,
    letterSpacing: 0.42,
    weight: FontWeight.normal, // Regular
  );

  /// Medium label style with heavier weight
  TextStyle get mediumHeavier => _getStyle(
    fontSize: 12,
    lineHeight: 14,
    letterSpacing: 0.42,
    weight: FontWeight.w600, // Semibold
  );

  /// Small label style
  TextStyle get small => _getStyle(
    fontSize: 11,
    lineHeight: 12,
    letterSpacing: 0.36,
    weight: FontWeight.w500, // Medium (Default)
  );

  /// Small label style with lighter weight
  TextStyle get smallLighter => _getStyle(
    fontSize: 11,
    lineHeight: 12,
    letterSpacing: 0.36,
    weight: FontWeight.normal, // Regular
  );

  /// Small label style with heavier weight
  TextStyle get smallHeavier => _getStyle(
    fontSize: 11,
    lineHeight: 12,
    letterSpacing: 0.36,
    weight: FontWeight.w600, // Semibold
  );

  /// Large label caps style
  TextStyle get largeCaps => _getStyle(
    fontSize: 13,
    lineHeight: 16,
    letterSpacing: 2.4,
    weight: FontWeight.w500, // Medium
  );

  /// Medium label caps style
  TextStyle get mediumCaps => _getStyle(
    fontSize: 12,
    lineHeight: 14,
    letterSpacing: 2.1,
    weight: FontWeight.w500, // Medium
  );

  /// Small label caps style
  TextStyle get smallCaps => _getStyle(
    fontSize: 11,
    lineHeight: 12,
    letterSpacing: 1.8,
    weight: FontWeight.w500, // Medium
  );

  /// Paragraph spacing for label text
  double get paragraphSpacingLarge => 12;
  double get paragraphSpacingMedium => 11;
  double get paragraphSpacingSmall => 10;
}

/// Font family tokens
class _FontFamilyTokens {
  const _FontFamilyTokens();

  /// Primary font family
  static const String fontFamily = 'Geist';
}

/// Helper class for text styles with consistent paragraph spacing
class TypographyStyle {
  final TextStyle style;
  final double paragraphSpacing;

  const TypographyStyle({
    required this.style,
    required this.paragraphSpacing,
  });

  /// Apply paragraph spacing to a widget
  Widget withParagraphSpacing(Widget child) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      child,
      SizedBox(height: paragraphSpacing),
    ],
  );
}

/// Extension to add paragraph spacing to TextStyle
extension TypographyStyleExtension on TextStyle {
  TypographyStyle withParagraphSpacing(double spacing) => TypographyStyle(
    style: this,
    paragraphSpacing: spacing,
  );
} 