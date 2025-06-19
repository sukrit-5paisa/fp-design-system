import 'package:flutter/material.dart';

/// A class that provides access to the design system's color tokens
class ColorsToken {
  /// Private constructor to prevent instantiation
  const ColorsToken._();

  /// Material colors for light mode
  static const materialLight = MaterialLightColors();

  /// Material colors for dark mode
  static const materialDark = MaterialDarkColors();

  /// Primary colors
  static const primary = PrimaryColors();

  /// Primary colors for dark mode
  static const primaryDark = PrimaryDarkColors();

  /// Secondary colors
  static const secondary = SecondaryColors();

  /// Secondary colors for dark mode
  static const secondaryDark = SecondaryDarkColors();

  /// Tertiary colors
  static const tertiary = TertiaryColors();

  /// System colors (positive, critical, warning, info)
  static const system = SystemColors();

  /// Accent colors (sunset, gold, teal, magenta, fuchsia)
  static const accent = AccentColors();

  /// Miscellaneous colors (shadows, scrims, etc.)
  static const misc = MiscColors();
}

/// Material colors for light mode
class MaterialLightColors {
  const MaterialLightColors();

  /// Primary color
  Color get primary => const Color(0xFF8996A9); // Material.Light.400

  /// Primary dim color
  Color get primaryDim => const Color(0xFF525D6D); // Material.Light.600

  /// On primary color
  Color get onPrimary => const Color(0xFFF2F5FB); // Material.Light.25

  /// On primary variant color
  Color get onPrimaryVariant => const Color(0xFFC8D2E0); // Material.Light.200

  /// On surface color
  Color get onSurface => const Color(0xFF1A212A); // Material.Light.800

  /// On surface variant color
  Color get onSurfaceVariant => const Color(0xFF697688); // Material.Light.525

  /// Background color
  Color get background => const Color(0xFFF2F5FB); // material.surfaceLow

  /// Surface brighter color
  Color get surfaceBrighter => const Color(0xFFFEFFFF); // Material.Light.0

  /// Surface bright color
  Color get surfaceBright => const Color(0xFFF8FAFD); // Material.Light.25

  /// Surface color
  Color get surface => const Color(0xFFF2F5FB); // Material.Light.50

  /// Surface dim color
  Color get surfaceDim => const Color(0xFFECF1F7); // Material.Light.75

  /// Surface dimmer color
  Color get surfaceDimmer => const Color(0xFFE4EAF2); // Material.Light.100

  /// Container low color
  Color get containerLow => const Color(0x0D8996A9); // rgba(137, 150, 169, 5)

  /// Container color
  Color get container => const Color(0x268996A9); // rgba(137, 150, 169, 15)

  /// Container high color
  Color get containerHigh => const Color(0x408996A9); // rgba(137, 150, 169, 25)

  /// Outline color
  Color get outline => const Color(0xCC8996A9); // rgba(137, 150, 169, 80)

  /// Outline variant color
  Color get outlineVariant => const Color(0x598996A9); // rgba(137, 150, 169, 35)

  /// Inverse surface color
  Color get inverseSurface => const Color(0xFF06080C); // Material.Light.900

  /// Inverse on surface color
  Color get inverseOnSurface => const Color(0xFFE4EAF2); // Material.Light.100

  /// Brand fixed color
  Color get brandFixed => const Color(0xFF525D6D); // Color.Primary.Dimmer

  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'background': background,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverseSurface': inverseSurface,
    'inverseOnSurface': inverseOnSurface,
    'brandFixed': brandFixed,
  };
}

/// Material colors for dark mode
class MaterialDarkColors {
  const MaterialDarkColors();

  /// Primary color
  Color get primary => const Color(0xFFA4A1BA); // Material.Dark.300

  /// Primary dim color
  Color get primaryDim => const Color(0xFF6B6880); // Material.Dark.500

  /// On primary color
  Color get onPrimary => const Color(0xFFF7F7F4); // Material.Dark.975

  /// On primary variant color
  Color get onPrimaryVariant => const Color(0xFFC8C6D9); // Material.Dark.800

  /// On surface color
  Color get onSurface => const Color(0xFFF7F7F4); // Material.Dark.0

  /// On surface variant color
  Color get onSurfaceVariant => const Color(0xFFA4A1BA); // Material.Dark.300

  /// Background color
  Color get background => const Color(0xFF100F17); // material.surfaceLow

  /// Surface brighter color
  Color get surfaceBrighter => const Color(0xFF212029); // Material.Dark.900

  /// Surface bright color
  Color get surfaceBright => const Color(0xFF1D1C25); // Material.Dark.925

  /// Surface color
  Color get surface => const Color(0xFF191820); // Material.Dark.950

  /// Surface dim color
  Color get surfaceDim => const Color(0xFF100F17); // Material.Dark.975

  /// Surface dimmer color
  Color get surfaceDimmer => const Color(0xFF0C0B10); // Material.Dark.1000

  /// Container low color
  Color get containerLow => const Color(0x0DA4A1BA); // rgba(164, 161, 186, 5)

  /// Container color
  Color get container => const Color(0x26A4A1BA); // rgba(164, 161, 186, 15)

  /// Container high color
  Color get containerHigh => const Color(0x40A4A1BA); // rgba(164, 161, 186, 25)

  /// Outline color
  Color get outline => const Color(0x99A4A1BA); // rgba(164, 161, 186, 60)

  /// Outline variant color
  Color get outlineVariant => const Color(0x33A4A1BA); // rgba(164, 161, 186, 20)

  /// Inverse surface color
  Color get inverseSurface => const Color(0xFFE4E3E9); // Material.Dark.100

  /// Inverse on surface color
  Color get inverseOnSurface => const Color(0xFF212029); // Material.Dark.900

  /// Brand fixed color
  Color get brandFixed => const Color(0xFF6B6880); // Color.Primary.Dimmer

  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'background': background,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverseSurface': inverseSurface,
    'inverseOnSurface': inverseOnSurface,
    'brandFixed': brandFixed,
  };
}

/// Primary colors
class PrimaryColors {
  const PrimaryColors();

  /// Primary color
  Color get primary => const Color(0xFF0D6CF8); // Primary.400

  /// Primary dim color
  Color get primaryDim => const Color(0xFF0043B9); // Primary.500

  /// On primary color
  Color get onPrimary => const Color(0xFFF2F9FF); // Primary.0

  /// On primary variant color
  Color get onPrimaryVariant => const Color(0xFFBAE4FF); // Primary.100

  /// On surface color
  Color get onSurface => const Color(0xFF000329); // Primary.800

  /// On surface variant color
  Color get onSurfaceVariant => const Color(0xFF0043B9); // Primary.500

  /// Surface brighter color
  Color get surfaceBrighter => const Color(0xFF162848); // Primary.0

  /// Surface bright color
  Color get surfaceBright => const Color(0xFF15223C); // Primary.25

  /// Surface color
  Color get surface => const Color(0xFF141C31); // Primary.50

  /// Surface dim color
  Color get surfaceDim => const Color(0xFF131625); // Primary.75

  /// Surface dimmer color
  Color get surfaceDimmer => const Color(0xFF121320); // Primary.100

  /// Container low color
  Color get containerLow => const Color(0x1A0D6CF8); // rgba(13, 108, 248, 10)

  /// Container color
  Color get container => const Color(0x330D6CF8); // rgba(13, 108, 248, 20)

  /// Container high color
  Color get containerHigh => const Color(0x4D0D6CF8); // rgba(13, 108, 248, 25)

  /// Outline color
  Color get outline => const Color(0xCC0D6CF8); // rgba(13, 108, 248, 75)

  /// Outline variant color
  Color get outlineVariant => const Color(0x4D0D6CF8); // rgba(13, 108, 248, 25)

  /// Inverse color
  Color get inverse => const Color(0xFFBAE4FF); // Primary.900

  /// Returns all color tokens in this group as a map
  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// Primary colors for dark mode
class PrimaryDarkColors {
  const PrimaryDarkColors();

  /// Primary color
  Color get primary => const Color(0xFF4D8DFF); // Darker version of Primary.400

  /// Primary dim color
  Color get primaryDim => const Color(0xFF2B5CB8); // Darker version of Primary.500

  /// On primary color
  Color get onPrimary => const Color(0xFFE6F0FF); // Darker version of Primary.0

  /// On primary variant color
  Color get onPrimaryVariant => const Color(0xFFA6D4FF); // Darker version of Primary.100

  /// On surface color
  Color get onSurface => const Color(0xFFE6E8FF); // Darker version of Primary.800

  /// On surface variant color
  Color get onSurfaceVariant => const Color(0xFF2B5CB8); // Darker version of Primary.500

  /// Surface brighter color
  Color get surfaceBrighter => const Color(0xFF1A2348); // Darker version of Primary.0

  /// Surface bright color
  Color get surfaceBright => const Color(0xFF151C3C); // Darker version of Primary.25

  /// Surface color
  Color get surface => const Color(0xFF121831); // Darker version of Primary.50

  /// Surface dim color
  Color get surfaceDim => const Color(0xFF0F1525); // Darker version of Primary.75

  /// Surface dimmer color
  Color get surfaceDimmer => const Color(0xFF0C1020); // Darker version of Primary.100

  /// Container low color
  Color get containerLow => const Color(0x1A4D8DFF); // Darker version with same opacity

  /// Container color
  Color get container => const Color(0x334D8DFF); // Darker version with same opacity

  /// Container high color
  Color get containerHigh => const Color(0x4D4D8DFF); // Darker version with same opacity

  /// Outline color
  Color get outline => const Color(0xCC4D8DFF); // Darker version with same opacity

  /// Outline variant color
  Color get outlineVariant => const Color(0x4D4D8DFF); // Darker version with same opacity

  /// Inverse color
  Color get inverse => const Color(0xFFA6D4FF); // Darker version of Primary.900

  /// Returns all color tokens in this group as a map
  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// Secondary colors
class SecondaryColors {
  const SecondaryColors();

  /// Primary color
  Color get primary => const Color(0xFF008CC0); // Secondary.400

  /// Primary dim color
  Color get primaryDim => const Color(0xFF006593); // Secondary.500

  /// On primary color
  Color get onPrimary => const Color(0xFFF9FCFE); // Secondary.0

  /// On primary variant color
  Color get onPrimaryVariant => const Color(0xFFBDEDFF); // Secondary.100

  /// On surface color
  Color get onSurface => const Color(0xFF000D1F); // Secondary.800

  /// On surface variant color
  Color get onSurfaceVariant => const Color(0xFF008CC0); // Secondary.500

  /// Surface brighter color
  Color get surfaceBrighter => const Color(0x1A008CC0); // Secondary.0

  /// Surface bright color
  Color get surfaceBright => const Color(0x13008CC0); // Secondary.25

  /// Surface color
  Color get surface => const Color(0x0D008CC0); // Secondary.50

  /// Surface dim color
  Color get surfaceDim => const Color(0x06008CC0); // Secondary.75

  /// Surface dimmer color
  Color get surfaceDimmer => const Color(0x00008CC0); // Secondary.100

  /// Container low color
  Color get containerLow => const Color(0x1A008CC0); // rgba(0, 140, 192, 10)

  /// Container color
  Color get container => const Color(0x33008CC0); // rgba(0, 140, 192, 20)

  /// Container high color
  Color get containerHigh => const Color(0x4D008CC0); // rgba(0, 140, 192, 25)

  /// Outline color
  Color get outline => const Color(0xCC008CC0); // rgba(0, 140, 192, 75)

  /// Outline variant color
  Color get outlineVariant => const Color(0x4D008CC0); // rgba(0, 140, 192, 25)

  /// Inverse color
  Color get inverse => const Color(0xFFBDEDFF); // Secondary.900

  /// Returns all color tokens in this group as a map
  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// Secondary colors for dark mode
class SecondaryDarkColors {
  const SecondaryDarkColors();

  /// Primary color
  Color get primary => const Color(0xFF33A6D9); // Darker version of Secondary.400

  /// Primary dim color
  Color get primaryDim => const Color(0xFF1A6B8C); // Darker version of Secondary.500

  /// On primary color
  Color get onPrimary => const Color(0xFFE6F7FF); // Darker version of Secondary.0

  /// On primary variant color
  Color get onPrimaryVariant => const Color(0xFFA6E4FF); // Darker version of Secondary.100

  /// On surface color
  Color get onSurface => const Color(0xFFE6F0FF); // Darker version of Secondary.800

  /// On surface variant color
  Color get onSurfaceVariant => const Color(0xFF1A6B8C); // Darker version of Secondary.500

  /// Surface brighter color
  Color get surfaceBrighter => const Color(0x1A33A6D9); // Darker version with same opacity

  /// Surface bright color
  Color get surfaceBright => const Color(0x1333A6D9); // Darker version with same opacity

  /// Surface color
  Color get surface => const Color(0x0D33A6D9); // Darker version with same opacity

  /// Surface dim color
  Color get surfaceDim => const Color(0x0633A6D9); // Darker version with same opacity

  /// Surface dimmer color
  Color get surfaceDimmer => const Color(0x0033A6D9); // Darker version with same opacity

  /// Container low color
  Color get containerLow => const Color(0x1A33A6D9); // Darker version with same opacity

  /// Container color
  Color get container => const Color(0x3333A6D9); // Darker version with same opacity

  /// Container high color
  Color get containerHigh => const Color(0x4D33A6D9); // Darker version with same opacity

  /// Outline color
  Color get outline => const Color(0xCC33A6D9); // Darker version with same opacity

  /// Outline variant color
  Color get outlineVariant => const Color(0x4D33A6D9); // Darker version with same opacity

  /// Inverse color
  Color get inverse => const Color(0xFFA6E4FF); // Darker version of Secondary.900

  /// Returns all color tokens in this group as a map
  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// Tertiary colors
class TertiaryColors {
  const TertiaryColors();

  /// Primary color
  Color get primary => const Color(0xFF9371FF); // Tertiary.400

  /// Primary dim color
  Color get primaryDim => const Color(0xFF7046E9); // Tertiary.500

  /// On primary color
  Color get onPrimary => const Color(0xFFFBFBFE); // Tertiary.0

  /// On primary variant color
  Color get onPrimaryVariant => const Color(0xFFE9E4FF); // Tertiary.100

  /// On surface color
  Color get onSurface => const Color(0xFF180048); // Tertiary.800

  /// On surface variant color
  Color get onSurfaceVariant => const Color(0xFF9371FF); // Tertiary.500

  /// Surface brighter color
  Color get surfaceBrighter => const Color(0x1AA487FF); // Tertiary.0

  /// Surface bright color
  Color get surfaceBright => const Color(0x13A487FF); // Tertiary.25

  /// Surface color
  Color get surface => const Color(0x0DA487FF); // Tertiary.50

  /// Surface dim color
  Color get surfaceDim => const Color(0x06A487FF); // Tertiary.75

  /// Surface dimmer color
  Color get surfaceDimmer => const Color(0x00A487FF); // Tertiary.100

  /// Container low color
  Color get containerLow => const Color(0x1AA487FF); // rgba(147, 113, 255, 10)

  /// Container color
  Color get container => const Color(0x33A487FF); // rgba(147, 113, 255, 20)

  /// Container high color
  Color get containerHigh => const Color(0x4DA487FF); // rgba(147, 113, 255, 30)

  /// Outline color
  Color get outline => const Color(0xCCA487FF); // rgba(147, 113, 255, 80)

  /// Outline variant color
  Color get outlineVariant => const Color(0x4DA487FF); // rgba(147, 113, 255, 30)

  /// Inverse color
  Color get inverse => const Color(0xFFE9E4FF); // Tertiary.900

  /// Returns all color tokens in this group as a map
  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// System colors (positive, critical, warning, info)
class SystemColors {
  const SystemColors();

  final positive = const _PositiveColors();
  final critical = const _CriticalColors();
  final warning = const _WarningColors();
  final info = const _InfoColors();
}

/// Positive colors
class _PositiveColors {
  const _PositiveColors();

  final Color primary = const Color(0xFF20C967);
  final Color primaryDim = const Color(0xFF009D29);
  final Color onPrimary = const Color(0xFFF9FDF8);
  final Color onPrimaryVariant = const Color(0xFFDFFDE1);
  final Color onSurface = const Color(0xFF001200);
  final Color onSurfaceVariant = const Color(0xFF009D29);
  final Color surfaceBrighter = const Color(0x1A5CD880);
  final Color surfaceBright = const Color(0x135CD880);
  final Color surface = const Color(0x0D5CD880);
  final Color surfaceDim = const Color(0x065CD880);
  final Color surfaceDimmer = const Color(0x005CD880);
  final Color containerLow = const Color(0x1A5CD880);
  final Color container = const Color(0x335CD880);
  final Color containerHigh = const Color(0x4D5CD880);
  final Color outline = const Color(0xCC5CD880);
  final Color outlineVariant = const Color(0x4D5CD880);
  final Color inverse = const Color(0xFFDFFDE1);

  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// Critical colors
class _CriticalColors {
  const _CriticalColors();

  final Color primary = const Color(0xFFE02E52);
  final Color primaryDim = const Color(0xFFA11E38);
  final Color onPrimary = const Color(0xFFFEFBFB);
  final Color onPrimaryVariant = const Color(0xFFFBDCDD);
  final Color onSurface = const Color(0xFF1A0204);
  final Color onSurfaceVariant = const Color(0xFFE02E52);
  final Color surfaceBrighter = const Color(0x1AFF375F);
  final Color surfaceBright = const Color(0x13FF375F);
  final Color surface = const Color(0x0DFF375F);
  final Color surfaceDim = const Color(0x06FF375F);
  final Color surfaceDimmer = const Color(0x00FF375F);
  final Color containerLow = const Color(0x1AFF375F);
  final Color container = const Color(0x33FF375F);
  final Color containerHigh = const Color(0x4DFF375F);
  final Color outline = const Color(0xCCFF375F);
  final Color outlineVariant = const Color(0x4DFF375F);
  final Color inverse = const Color(0xFFFBDCDD);

  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// Warning colors
class _WarningColors {
  const _WarningColors();

  final Color primary = const Color(0xFFF1B000);
  final Color primaryDim = const Color(0xFFC99300);
  final Color onPrimary = const Color(0xFFFEFBF7);
  final Color onPrimaryVariant = const Color(0xFFFFF4B8);
  final Color onSurface = const Color(0xFF403521);
  final Color onSurfaceVariant = const Color(0xFFF1B000);
  final Color surfaceBrighter = const Color(0x1AFFBD00);
  final Color surfaceBright = const Color(0x13FFBD00);
  final Color surface = const Color(0x0DFFBD00);
  final Color surfaceDim = const Color(0x06FFBD00);
  final Color surfaceDimmer = const Color(0x00FFBD00);
  final Color containerLow = const Color(0x1AFFBD00);
  final Color container = const Color(0x33FFBD00);
  final Color containerHigh = const Color(0x4DFFBD00);
  final Color outline = const Color(0xCCFFBD00);
  final Color outlineVariant = const Color(0x4DFFBD00);
  final Color inverse = const Color(0xFFFFF4B8);

  Map<String, Color> get allColors => {
    'primary': primary,
    'primaryDim': primaryDim,
    'onPrimary': onPrimary,
    'onPrimaryVariant': onPrimaryVariant,
    'onSurface': onSurface,
    'onSurfaceVariant': onSurfaceVariant,
    'surfaceBrighter': surfaceBrighter,
    'surfaceBright': surfaceBright,
    'surface': surface,
    'surfaceDim': surfaceDim,
    'surfaceDimmer': surfaceDimmer,
    'containerLow': containerLow,
    'container': container,
    'containerHigh': containerHigh,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
  };
}

/// Info colors
class _InfoColors {
  const _InfoColors();

  final Color info = const Color(0xFF0D6EFD);
  final Color container = const Color(0x260D6EFD);
  final Color containerLow = const Color(0x1A0D6EFD);
  final Color containerHigh = const Color(0x330D6EFD);
  final Color onSurface = const Color(0xFFF8FAFD);
  final Color fixed = const Color(0xFFF8FAFD);
  final Color fixedDim = const Color(0xFF0D6EFD);
  final Color onFixed = const Color(0xFF1A212A);
  final Color onFixedVariant = const Color(0xFF343E4B);
  final Color outline = const Color(0xFF0D6EFD);
  final Color outlineVariant = const Color(0xFF0D6EFD);
  final Color inverse = const Color(0xFF1A212A);
  final Color onInfo = const Color(0xFFFFFFFF);

  Map<String, Color> get allColors => {
    'info': info,
    'container': container,
    'containerLow': containerLow,
    'containerHigh': containerHigh,
    'onSurface': onSurface,
    'fixed': fixed,
    'fixedDim': fixedDim,
    'onFixed': onFixed,
    'onFixedVariant': onFixedVariant,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
    'onInfo': onInfo,
  };
}

/// Accent colors (sunset, gold, teal, magenta, fuchsia)
class AccentColors {
  const AccentColors();

  /// Sunset color
  Color get sunset => SunsetColors.sunset;
  /// Gold color
  Color get gold => GoldColors.gold;
  /// Teal color
  Color get teal => TealColors.teal;
  /// Magenta color
  Color get magenta => MagentaColors.magenta;
  /// Fuchsia color
  Color get fuchsia => FuchsiaColors.fuchsia;

  /// Sunset colors
  static const sunsetColors = SunsetColors();
  static Color get sunsetContainer => SunsetColors.container;
  static Color get sunsetOnSunset => SunsetColors.onSunset;

  /// Gold colors
  static const goldColors = GoldColors();
  static Color get goldContainer => GoldColors.container;
  static Color get goldOnGold => GoldColors.onGold;

  /// Teal colors
  static const tealColors = TealColors();
  static Color get tealContainer => TealColors.container;
  static Color get tealOnTeal => TealColors.onTeal;

  /// Magenta colors
  static const magentaColors = MagentaColors();
  static Color get magentaContainer => MagentaColors.container;
  static Color get magentaOnMagenta => MagentaColors.onMagenta;

  /// Fuchsia colors
  static const fuchsiaColors = FuchsiaColors();
  static Color get fuchsiaContainer => FuchsiaColors.container;
  static Color get fuchsiaOnFuchsia => FuchsiaColors.onFuchsia;

  Map<String, Color> get allColors => {
    'sunset': sunset,
    'gold': gold,
    'teal': teal,
    'magenta': magenta,
    'fuchsia': fuchsia,
    'sunsetContainer': sunsetContainer,
    'sunsetOnSunset': sunsetOnSunset,
    'goldContainer': goldContainer,
    'goldOnGold': goldOnGold,
    'tealContainer': tealContainer,
    'tealOnTeal': tealOnTeal,
    'magentaContainer': magentaContainer,
    'magentaOnMagenta': magentaOnMagenta,
    'fuchsiaContainer': fuchsiaContainer,
    'fuchsiaOnFuchsia': fuchsiaOnFuchsia,
  };
}

/// Sunset colors
class SunsetColors {
  const SunsetColors();

  /// Sunset color
  static const Color sunset = Color(0xFFFF6B6B);
  static const Color container = Color(0x26FF6B6B);
  static const Color containerLow = Color(0x1AFF6B6B);
  static const Color containerHigh = Color(0x33FF6B6B);
  static const Color onContainer = Color(0xFFFF6B6B);
  static const Color onSurface = Color(0xFFFF6B6B);
  static const Color fixed = Color(0xFFFF6B6B);
  static const Color fixedDim = Color(0xFFFF6B6B);
  static const Color onFixed = Color(0xFF1A212A);
  static const Color onFixedVariant = Color(0xFF343E4B);
  static const Color outline = Color(0xFFFF6B6B);
  static const Color outlineVariant = Color(0xFFFF6B6B);
  static const Color inverse = Color(0xFF1A212A);
  static const Color onSunset = Color(0xFFFFFFFF);

  Map<String, Color> get allColors => {
    'sunset': sunset,
    'container': container,
    'containerLow': containerLow,
    'containerHigh': containerHigh,
    'onContainer': onContainer,
    'onSurface': onSurface,
    'fixed': fixed,
    'fixedDim': fixedDim,
    'onFixed': onFixed,
    'onFixedVariant': onFixedVariant,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
    'onSunset': onSunset,
  };
}

/// Gold colors
class GoldColors {
  const GoldColors();

  /// Gold color
  static const Color gold = Color(0xFFFFD700);
  static const Color container = Color(0x26FFD700);
  static const Color containerLow = Color(0x1AFFD700);
  static const Color containerHigh = Color(0x33FFD700);
  static const Color onContainer = Color(0xFFFFD700);
  static const Color onSurface = Color(0xFFFFD700);
  static const Color fixed = Color(0xFFFFD700);
  static const Color fixedDim = Color(0xFFFFD700);
  static const Color onFixed = Color(0xFF1A212A);
  static const Color onFixedVariant = Color(0xFF343E4B);
  static const Color outline = Color(0xFFFFD700);
  static const Color outlineVariant = Color(0xFFFFD700);
  static const Color inverse = Color(0xFF1A212A);
  static const Color onGold = Color(0xFFFFFFFF);

  Map<String, Color> get allColors => {
    'gold': gold,
    'container': container,
    'containerLow': containerLow,
    'containerHigh': containerHigh,
    'onContainer': onContainer,
    'onSurface': onSurface,
    'fixed': fixed,
    'fixedDim': fixedDim,
    'onFixed': onFixed,
    'onFixedVariant': onFixedVariant,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
    'onGold': onGold,
  };
}

/// Teal colors
class TealColors {
  const TealColors();

  /// Teal color
  static const Color teal = Color(0xFF20B2AA);
  static const Color container = Color(0x2620B2AA);
  static const Color containerLow = Color(0x1A20B2AA);
  static const Color containerHigh = Color(0x3320B2AA);
  static const Color onContainer = Color(0xFF20B2AA);
  static const Color onSurface = Color(0xFF20B2AA);
  static const Color fixed = Color(0xFF20B2AA);
  static const Color fixedDim = Color(0xFF20B2AA);
  static const Color onFixed = Color(0xFF1A212A);
  static const Color onFixedVariant = Color(0xFF343E4B);
  static const Color outline = Color(0xFF20B2AA);
  static const Color outlineVariant = Color(0xFF20B2AA);
  static const Color inverse = Color(0xFF1A212A);
  static const Color onTeal = Color(0xFFFFFFFF);

  Map<String, Color> get allColors => {
    'teal': teal,
    'container': container,
    'containerLow': containerLow,
    'containerHigh': containerHigh,
    'onContainer': onContainer,
    'onSurface': onSurface,
    'fixed': fixed,
    'fixedDim': fixedDim,
    'onFixed': onFixed,
    'onFixedVariant': onFixedVariant,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
    'onTeal': onTeal,
  };
}

/// Magenta colors
class MagentaColors {
  const MagentaColors();

  /// Magenta color
  static const Color magenta = Color(0xFFFF00FF);
  static const Color container = Color(0x26FF00FF);
  static const Color containerLow = Color(0x1AFF00FF);
  static const Color containerHigh = Color(0x33FF00FF);
  static const Color onContainer = Color(0xFFFF00FF);
  static const Color onSurface = Color(0xFFFF00FF);
  static const Color fixed = Color(0xFFFF00FF);
  static const Color fixedDim = Color(0xFFFF00FF);
  static const Color onFixed = Color(0xFF1A212A);
  static const Color onFixedVariant = Color(0xFF343E4B);
  static const Color outline = Color(0xFFFF00FF);
  static const Color outlineVariant = Color(0xFFFF00FF);
  static const Color inverse = Color(0xFF1A212A);
  static const Color onMagenta = Color(0xFFFFFFFF);

  Map<String, Color> get allColors => {
    'magenta': magenta,
    'container': container,
    'containerLow': containerLow,
    'containerHigh': containerHigh,
    'onContainer': onContainer,
    'onSurface': onSurface,
    'fixed': fixed,
    'fixedDim': fixedDim,
    'onFixed': onFixed,
    'onFixedVariant': onFixedVariant,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
    'onMagenta': onMagenta,
  };
}

/// Fuchsia colors
class FuchsiaColors {
  const FuchsiaColors();

  /// Fuchsia color
  static const Color fuchsia = Color(0xFFFF00FF);
  static const Color container = Color(0x26FF00FF);
  static const Color containerLow = Color(0x1AFF00FF);
  static const Color containerHigh = Color(0x33FF00FF);
  static const Color onContainer = Color(0xFFFF00FF);
  static const Color onSurface = Color(0xFFFF00FF);
  static const Color fixed = Color(0xFFFF00FF);
  static const Color fixedDim = Color(0xFFFF00FF);
  static const Color onFixed = Color(0xFF1A212A);
  static const Color onFixedVariant = Color(0xFF343E4B);
  static const Color outline = Color(0xFFFF00FF);
  static const Color outlineVariant = Color(0xFFFF00FF);
  static const Color inverse = Color(0xFF1A212A);
  static const Color onFuchsia = Color(0xFFFFFFFF);

  Map<String, Color> get allColors => {
    'fuchsia': fuchsia,
    'container': container,
    'containerLow': containerLow,
    'containerHigh': containerHigh,
    'onContainer': onContainer,
    'onSurface': onSurface,
    'fixed': fixed,
    'fixedDim': fixedDim,
    'onFixed': onFixed,
    'onFixedVariant': onFixedVariant,
    'outline': outline,
    'outlineVariant': outlineVariant,
    'inverse': inverse,
    'onFuchsia': onFuchsia,
  };
}

/// Miscellaneous colors (shadows, scrims, etc.)
class MiscColors {
  const MiscColors();

  final scrim = const _ScrimColors();

  /// Shadow color
  Color get shadow => const Color(0x1A0C0B08);

  /// Glow color
  Color get glow => const Color(0x1AF7F7F4);

  /// White fixed color
  Color get whiteFixed => const Color(0xFFFEFFFF);

  /// Black fixed color
  Color get blackFixed => const Color(0xFF000000);

  Map<String, Color> get allColors => {
    'shadow': shadow,
    'glow': glow,
    'whiteFixed': whiteFixed,
    'blackFixed': blackFixed,
  };

  Map<String, Color> get scrimColors => {
    'scrim0': scrim.scrim0,
    'scrim10': scrim.scrim10,
    'scrim30': scrim.scrim30,
    'scrim50': scrim.scrim50,
    'scrim70': scrim.scrim70,
    'scrim90': scrim.scrim90,
    'scrim100': scrim.scrim100,
    'modeScrim0': scrim.modeScrim0,
    'modeScrim10': scrim.modeScrim10,
    'modeScrim30': scrim.modeScrim30,
    'modeScrim50': scrim.modeScrim50,
    'modeScrim70': scrim.modeScrim70,
    'modeScrim90': scrim.modeScrim90,
    'modeScrim100': scrim.modeScrim100,
    'oppositeScrim0': scrim.oppositeScrim0,
    'oppositeScrim10': scrim.oppositeScrim10,
    'oppositeScrim30': scrim.oppositeScrim30,
    'oppositeScrim50': scrim.oppositeScrim50,
    'oppositeScrim70': scrim.oppositeScrim70,
    'oppositeScrim90': scrim.oppositeScrim90,
    'oppositeScrim100': scrim.oppositeScrim100,
    'light': scrim.light,
    'dark': scrim.dark,
  };
}

/// Scrim colors with different opacities
class _ScrimColors {
  const _ScrimColors();

  /// Scrim with 0% opacity
  Color get scrim0 => const Color(0x00161020);

  /// Scrim with 10% opacity
  Color get scrim10 => const Color(0x1A161020);

  /// Scrim with 30% opacity
  Color get scrim30 => const Color(0x4D161020);

  /// Scrim with 50% opacity
  Color get scrim50 => const Color(0x80161020);

  /// Scrim with 70% opacity
  Color get scrim70 => const Color(0xB3161020);

  /// Scrim with 90% opacity
  Color get scrim90 => const Color(0xE6161020);

  /// Scrim with 100% opacity
  Color get scrim100 => const Color(0xFF161020);

  /// Mode scrim with 0% opacity
  Color get modeScrim0 => const Color(0x00161020);

  /// Mode scrim with 10% opacity
  Color get modeScrim10 => const Color(0x1A161020);

  /// Mode scrim with 30% opacity
  Color get modeScrim30 => const Color(0x4D161020);

  /// Mode scrim with 50% opacity
  Color get modeScrim50 => const Color(0x80161020);

  /// Mode scrim with 70% opacity
  Color get modeScrim70 => const Color(0xB3161020);

  /// Mode scrim with 90% opacity
  Color get modeScrim90 => const Color(0xE6161020);

  /// Mode scrim with 100% opacity
  Color get modeScrim100 => const Color(0xFF161020);

  /// Opposite scrim with 0% opacity
  Color get oppositeScrim0 => const Color(0x00F7F7F4);

  /// Opposite scrim with 10% opacity
  Color get oppositeScrim10 => const Color(0x1AF7F7F4);

  /// Opposite scrim with 30% opacity
  Color get oppositeScrim30 => const Color(0x4DF7F7F4);

  /// Opposite scrim with 50% opacity
  Color get oppositeScrim50 => const Color(0x80F7F7F4);

  /// Opposite scrim with 70% opacity
  Color get oppositeScrim70 => const Color(0xB3F7F7F4);

  /// Opposite scrim with 90% opacity
  Color get oppositeScrim90 => const Color(0xE6F7F7F4);

  /// Opposite scrim with 100% opacity
  Color get oppositeScrim100 => const Color(0xFFF7F7F4);

  Color get light => const Color(0x52000000);
  Color get dark => const Color(0x52000000);
} 