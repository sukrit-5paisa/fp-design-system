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
  );
} 