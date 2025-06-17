/// A class that holds all the spacing tokens for the design system.
class FPSpacing {
  const FPSpacing._();

  // Base spacing unit (4px)
  static const double _baseUnit = 4.0;

  // Spacing scale
  static const double xxxs = _baseUnit * 0.5; // 2px
  static const double xxs = _baseUnit; // 4px
  static const double xs = _baseUnit * 2; // 8px
  static const double sm = _baseUnit * 3; // 12px
  static const double md = _baseUnit * 4; // 16px
  static const double lg = _baseUnit * 6; // 24px
  static const double xl = _baseUnit * 8; // 32px
  static const double xxl = _baseUnit * 12; // 48px
  static const double xxxl = _baseUnit * 16; // 64px
  static const double xxxxl = _baseUnit * 24; // 96px

  // Layout spacing
  static const double screenPadding = md;
  static const double contentPadding = lg;
  static const double sectionSpacing = xxl;
  static const double componentSpacing = md;
  static const double elementSpacing = sm;

  // Component-specific spacing
  static const double buttonPadding = md;
  static const double inputPadding = sm;
  static const double cardPadding = md;
  static const double listItemSpacing = xs;
  static const double iconSpacing = xxs;
  static const double avatarSpacing = sm;
  static const double badgeSpacing = xxs;
  static const double dividerSpacing = md;
  static const double modalPadding = lg;
  static const double drawerPadding = md;
  static const double bottomSheetPadding = lg;
} 