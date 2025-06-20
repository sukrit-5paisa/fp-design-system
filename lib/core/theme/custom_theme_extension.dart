import 'package:flutter/material.dart';
import 'colors.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  // System colors
  final Color positive;
  final Color critical;
  final Color warning;
  final Color info;

  // Accent colors
  final Color sunset;
  final Color gold;
  final Color teal;
  final Color magenta;
  final Color fuchsia;

  // Miscellaneous
  final Color shadow;
  final Color glow;
  final Color whiteFixed;
  final Color blackFixed;

  // Example: add more as needed (container, dim, bright, etc.)
  final Color containerLow;
  final Color container;
  final Color containerHigh;
  final Color surfaceBrighter;
  final Color surfaceBright;
  final Color surfaceDim;
  final Color surfaceDimmer;

  // Button colors
  final Color buttonPrimary;
  final Color buttonOnPrimary;
  final Color buttonSecondary;
  final Color buttonOnSecondary;
  final Color buttonTertiary;
  final Color buttonOnTertiary;
  final Color buttonCritical;
  final Color buttonOnCritical;
  final Color buttonPositive;
  final Color buttonOnPositive;

  const CustomThemeExtension({
    required this.positive,
    required this.critical,
    required this.warning,
    required this.info,
    required this.sunset,
    required this.gold,
    required this.teal,
    required this.magenta,
    required this.fuchsia,
    required this.shadow,
    required this.glow,
    required this.whiteFixed,
    required this.blackFixed,
    required this.containerLow,
    required this.container,
    required this.containerHigh,
    required this.surfaceBrighter,
    required this.surfaceBright,
    required this.surfaceDim,
    required this.surfaceDimmer,
    required this.buttonPrimary,
    required this.buttonOnPrimary,
    required this.buttonSecondary,
    required this.buttonOnSecondary,
    required this.buttonTertiary,
    required this.buttonOnTertiary,
    required this.buttonCritical,
    required this.buttonOnCritical,
    required this.buttonPositive,
    required this.buttonOnPositive,
  });

  @override
  CustomThemeExtension copyWith({
    Color? positive,
    Color? critical,
    Color? warning,
    Color? info,
    Color? sunset,
    Color? gold,
    Color? teal,
    Color? magenta,
    Color? fuchsia,
    Color? shadow,
    Color? glow,
    Color? whiteFixed,
    Color? blackFixed,
    Color? containerLow,
    Color? container,
    Color? containerHigh,
    Color? surfaceBrighter,
    Color? surfaceBright,
    Color? surfaceDim,
    Color? surfaceDimmer,
    Color? buttonPrimary,
    Color? buttonOnPrimary,
    Color? buttonSecondary,
    Color? buttonOnSecondary,
    Color? buttonTertiary,
    Color? buttonOnTertiary,
    Color? buttonCritical,
    Color? buttonOnCritical,
    Color? buttonPositive,
    Color? buttonOnPositive,
  }) {
    return CustomThemeExtension(
      positive: positive ?? this.positive,
      critical: critical ?? this.critical,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      sunset: sunset ?? this.sunset,
      gold: gold ?? this.gold,
      teal: teal ?? this.teal,
      magenta: magenta ?? this.magenta,
      fuchsia: fuchsia ?? this.fuchsia,
      shadow: shadow ?? this.shadow,
      glow: glow ?? this.glow,
      whiteFixed: whiteFixed ?? this.whiteFixed,
      blackFixed: blackFixed ?? this.blackFixed,
      containerLow: containerLow ?? this.containerLow,
      container: container ?? this.container,
      containerHigh: containerHigh ?? this.containerHigh,
      surfaceBrighter: surfaceBrighter ?? this.surfaceBrighter,
      surfaceBright: surfaceBright ?? this.surfaceBright,
      surfaceDim: surfaceDim ?? this.surfaceDim,
      surfaceDimmer: surfaceDimmer ?? this.surfaceDimmer,
      buttonPrimary: buttonPrimary ?? this.buttonPrimary,
      buttonOnPrimary: buttonOnPrimary ?? this.buttonOnPrimary,
      buttonSecondary: buttonSecondary ?? this.buttonSecondary,
      buttonOnSecondary: buttonOnSecondary ?? this.buttonOnSecondary,
      buttonTertiary: buttonTertiary ?? this.buttonTertiary,
      buttonOnTertiary: buttonOnTertiary ?? this.buttonOnTertiary,
      buttonCritical: buttonCritical ?? this.buttonCritical,
      buttonOnCritical: buttonOnCritical ?? this.buttonOnCritical,
      buttonPositive: buttonPositive ?? this.buttonPositive,
      buttonOnPositive: buttonOnPositive ?? this.buttonOnPositive,
    );
  }

  @override
  CustomThemeExtension lerp(ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      positive: Color.lerp(positive, other.positive, t)!,
      critical: Color.lerp(critical, other.critical, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      sunset: Color.lerp(sunset, other.sunset, t)!,
      gold: Color.lerp(gold, other.gold, t)!,
      teal: Color.lerp(teal, other.teal, t)!,
      magenta: Color.lerp(magenta, other.magenta, t)!,
      fuchsia: Color.lerp(fuchsia, other.fuchsia, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      glow: Color.lerp(glow, other.glow, t)!,
      whiteFixed: Color.lerp(whiteFixed, other.whiteFixed, t)!,
      blackFixed: Color.lerp(blackFixed, other.blackFixed, t)!,
      containerLow: Color.lerp(containerLow, other.containerLow, t)!,
      container: Color.lerp(container, other.container, t)!,
      containerHigh: Color.lerp(containerHigh, other.containerHigh, t)!,
      surfaceBrighter: Color.lerp(surfaceBrighter, other.surfaceBrighter, t)!,
      surfaceBright: Color.lerp(surfaceBright, other.surfaceBright, t)!,
      surfaceDim: Color.lerp(surfaceDim, other.surfaceDim, t)!,
      surfaceDimmer: Color.lerp(surfaceDimmer, other.surfaceDimmer, t)!,
      buttonPrimary: Color.lerp(buttonPrimary, other.buttonPrimary, t)!,
      buttonOnPrimary: Color.lerp(buttonOnPrimary, other.buttonOnPrimary, t)!,
      buttonSecondary: Color.lerp(buttonSecondary, other.buttonSecondary, t)!,
      buttonOnSecondary: Color.lerp(buttonOnSecondary, other.buttonOnSecondary, t)!,
      buttonTertiary: Color.lerp(buttonTertiary, other.buttonTertiary, t)!,
      buttonOnTertiary: Color.lerp(buttonOnTertiary, other.buttonOnTertiary, t)!,
      buttonCritical: Color.lerp(buttonCritical, other.buttonCritical, t)!,
      buttonOnCritical: Color.lerp(buttonOnCritical, other.buttonOnCritical, t)!,
      buttonPositive: Color.lerp(buttonPositive, other.buttonPositive, t)!,
      buttonOnPositive: Color.lerp(buttonOnPositive, other.buttonOnPositive, t)!,
    );
  }

  static final light = CustomThemeExtension(
    positive: ColorsToken.system.positive.primary,
    critical: ColorsToken.system.critical.primary,
    warning: ColorsToken.system.warning.primary,
    info: ColorsToken.system.info.info,
    sunset: ColorsToken.accent.sunset,
    gold: ColorsToken.accent.gold,
    teal: ColorsToken.accent.teal,
    magenta: ColorsToken.accent.magenta,
    fuchsia: ColorsToken.accent.fuchsia,
    shadow: ColorsToken.misc.shadow,
    glow: ColorsToken.misc.glow,
    whiteFixed: ColorsToken.misc.whiteFixed,
    blackFixed: ColorsToken.misc.blackFixed,
    containerLow: ColorsToken.materialLight.containerLow,
    container: ColorsToken.materialLight.container,
    containerHigh: ColorsToken.materialLight.containerHigh,
    surfaceBrighter: ColorsToken.materialLight.surfaceBrighter,
    surfaceBright: ColorsToken.materialLight.surfaceBright,
    surfaceDim: ColorsToken.materialLight.surfaceDim,
    surfaceDimmer: ColorsToken.materialLight.surfaceDimmer,
    buttonPrimary: ColorsToken.primary.primary,
    buttonOnPrimary: ColorsToken.primary.onPrimary,
    buttonSecondary: ColorsToken.secondary.primary,
    buttonOnSecondary: ColorsToken.secondary.onPrimary,
    buttonTertiary: ColorsToken.tertiary.primary,
    buttonOnTertiary: ColorsToken.tertiary.onPrimary,
    buttonCritical: ColorsToken.system.critical.primary,
    buttonOnCritical: ColorsToken.system.critical.onPrimary,
    buttonPositive: ColorsToken.system.positive.primary,
    buttonOnPositive: ColorsToken.system.positive.onPrimary,
  );

  static final dark = CustomThemeExtension(
    positive: ColorsToken.system.positive.primary,
    critical: ColorsToken.system.critical.primary,
    warning: ColorsToken.system.warning.primary,
    info: ColorsToken.system.info.info,
    sunset: ColorsToken.accent.sunset,
    gold: ColorsToken.accent.gold,
    teal: ColorsToken.accent.teal,
    magenta: ColorsToken.accent.magenta,
    fuchsia: ColorsToken.accent.fuchsia,
    shadow: ColorsToken.misc.shadow,
    glow: ColorsToken.misc.glow,
    whiteFixed: ColorsToken.misc.whiteFixed,
    blackFixed: ColorsToken.misc.blackFixed,
    containerLow: ColorsToken.materialDark.containerLow,
    container: ColorsToken.materialDark.container,
    containerHigh: ColorsToken.materialDark.containerHigh,
    surfaceBrighter: ColorsToken.materialDark.surfaceBrighter,
    surfaceBright: ColorsToken.materialDark.surfaceBright,
    surfaceDim: ColorsToken.materialDark.surfaceDim,
    surfaceDimmer: ColorsToken.materialDark.surfaceDimmer,
    buttonPrimary: ColorsToken.primaryDark.primary,
    buttonOnPrimary: ColorsToken.primaryDark.onPrimary,
    buttonSecondary: ColorsToken.secondaryDark.primary,
    buttonOnSecondary: ColorsToken.secondaryDark.onPrimary,
    buttonTertiary: ColorsToken.tertiary.primary,
    buttonOnTertiary: ColorsToken.tertiary.onPrimary,
    buttonCritical: ColorsToken.system.critical.primary,
    buttonOnCritical: ColorsToken.system.critical.onPrimary,
    buttonPositive: ColorsToken.system.positive.primary,
    buttonOnPositive: ColorsToken.system.positive.onPrimary,
  );
} 