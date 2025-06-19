import 'package:flutter/material.dart';
import 'colors.dart';
import 'typography.dart';
import 'custom_theme_extension.dart';
import 'spacing.dart';

/// Theme data for the application
class AppTheme {
  /// Private constructor to prevent instantiation
  const AppTheme._();

  /// Light theme data
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: ColorsToken.materialLight.primary,
          onPrimary: ColorsToken.materialLight.onPrimary,
          primaryContainer: ColorsToken.materialLight.container,
          onPrimaryContainer: ColorsToken.materialLight.onPrimaryVariant,
          secondary: ColorsToken.secondary.primary,
          onSecondary: ColorsToken.secondary.onPrimary,
          secondaryContainer: ColorsToken.secondary.container,
          onSecondaryContainer: ColorsToken.secondary.onPrimary,
          tertiary: ColorsToken.tertiary.primary,
          onTertiary: ColorsToken.tertiary.onPrimary,
          tertiaryContainer: ColorsToken.tertiary.container,
          onTertiaryContainer: ColorsToken.tertiary.onPrimary,
          error: ColorsToken.system.critical.primary,
          onError: ColorsToken.system.critical.onPrimary,
          errorContainer: ColorsToken.system.critical.container,
          onErrorContainer: ColorsToken.system.critical.onPrimaryVariant,
          background: ColorsToken.materialLight.background,
          onBackground: ColorsToken.materialLight.onSurface,
          surface: ColorsToken.materialLight.surface,
          onSurface: ColorsToken.materialLight.onSurface,
          surfaceVariant: ColorsToken.materialLight.surfaceDim,
          onSurfaceVariant: ColorsToken.materialLight.onSurfaceVariant,
          outline: ColorsToken.materialLight.outline,
          outlineVariant: ColorsToken.materialLight.outlineVariant,
          inverseSurface: ColorsToken.materialLight.inverseSurface,
          onInverseSurface: ColorsToken.materialLight.inverseOnSurface,
          inversePrimary: ColorsToken.materialLight.brandFixed,
          shadow: ColorsToken.misc.shadow,
          surfaceTint: ColorsToken.materialLight.primary,
        ),
        scaffoldBackgroundColor: ColorsToken.materialLight.background,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsToken.materialLight.surface,
          foregroundColor: ColorsToken.materialLight.onSurface,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        cardTheme: CardTheme(
          color: ColorsToken.materialLight.surface,
          elevation: 0,
          margin: EdgeInsets.all(FPSpacing.md),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: ColorsToken.materialLight.outlineVariant,
              width: 1,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsToken.primary.primary,
            foregroundColor: ColorsToken.primary.onPrimary,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: FPSpacing.lg, vertical: FPSpacing.sm),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorsToken.primary.primary,
            padding: EdgeInsets.symmetric(horizontal: FPSpacing.md, vertical: FPSpacing.xs),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: ColorsToken.primary.primary,
            side: BorderSide(color: ColorsToken.primary.outline),
            padding: EdgeInsets.symmetric(horizontal: FPSpacing.lg, vertical: FPSpacing.sm),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorsToken.materialLight.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.materialLight.outlineVariant,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.materialLight.outlineVariant,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.materialLight.primary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.system.critical.primary,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.system.critical.primary,
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: FPSpacing.md, vertical: FPSpacing.sm),
        ),
        dialogTheme: DialogTheme(
          backgroundColor: ColorsToken.materialLight.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentTextStyle: TypographyTokens.body.medium,
          titleTextStyle: TypographyTokens.title.large,
          actionsPadding: EdgeInsets.all(FPSpacing.md),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          modalBackgroundColor: ColorsToken.materialLight.surface,
          clipBehavior: Clip.antiAlias,
          showDragHandle: true,
          constraints: BoxConstraints(
            minHeight: FPSpacing.xxxl,
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          contentTextStyle: TextStyle(color: ColorsToken.materialLight.onSurface),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          insetPadding: EdgeInsets.all(FPSpacing.md),
          actionTextColor: ColorsToken.primary.primary,
        ),
        dividerTheme: DividerThemeData(
          color: ColorsToken.materialLight.outlineVariant,
          thickness: 1,
          space: FPSpacing.xxs,
        ),
        textTheme: TextTheme(
          displayLarge: TypographyTokens.display.large,
          displayMedium: TypographyTokens.display.medium,
          displaySmall: TypographyTokens.display.small,
          headlineLarge: TypographyTokens.headline.large,
          headlineMedium: TypographyTokens.headline.medium,
          headlineSmall: TypographyTokens.headline.small,
          titleLarge: TypographyTokens.title.large,
          titleMedium: TypographyTokens.title.medium,
          titleSmall: TypographyTokens.title.small,
          bodyLarge: TypographyTokens.body.large,
          bodyMedium: TypographyTokens.body.medium,
          bodySmall: TypographyTokens.body.small,
          labelLarge: TypographyTokens.label.large,
          labelMedium: TypographyTokens.label.medium,
          labelSmall: TypographyTokens.label.small,
        ),
        extensions: <ThemeExtension<dynamic>>[
          CustomThemeExtension.light,
        ],
        iconTheme: IconThemeData(color: ColorsToken.primary.primary),
        primaryIconTheme: IconThemeData(color: ColorsToken.primary.onPrimary),
        listTileTheme: ListTileThemeData(
          iconColor: ColorsToken.primary.primary,
          textColor: ColorsToken.materialLight.onSurface,
          tileColor: ColorsToken.materialLight.surface,
          selectedColor: ColorsToken.primary.primary,
          selectedTileColor: ColorsToken.primary.container,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: ColorsToken.materialLight.surfaceBright,
          disabledColor: ColorsToken.materialLight.surfaceDimmer,
          selectedColor: ColorsToken.primary.container,
          secondarySelectedColor: ColorsToken.secondary.container,
          padding: EdgeInsets.symmetric(horizontal: FPSpacing.xs, vertical: FPSpacing.xxxs),
          labelStyle: TypographyTokens.label.medium,
          secondaryLabelStyle: TypographyTokens.label.medium,
          brightness: Brightness.light,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorsToken.primary.container,
          foregroundColor: ColorsToken.primary.onPrimary,
          elevation: 2,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: ColorsToken.primary.primary,
          unselectedLabelColor: ColorsToken.materialLight.onSurfaceVariant,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: ColorsToken.primary.primary, width: 2),
          ),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          scrimColor: ColorsToken.misc.scrim.scrim30,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(FPSpacing.lg),
              bottomRight: Radius.circular(FPSpacing.lg),
            ),
          ),
          width: 304 + FPSpacing.md,
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: ColorsToken.materialLight.surface,
          textStyle: TypographyTokens.body.medium,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: ColorsToken.primary.primary,
          linearTrackColor: ColorsToken.materialLight.surfaceDimmer,
          circularTrackColor: ColorsToken.materialLight.surfaceDimmer,
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: ColorsToken.primary.primary,
          inactiveTrackColor: ColorsToken.materialLight.surfaceDimmer,
          thumbColor: ColorsToken.primary.primary,
          overlayColor: ColorsToken.primary.primary.withOpacity(0.12),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(ColorsToken.primary.primary),
          trackColor: MaterialStateProperty.all(ColorsToken.primary.container),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(ColorsToken.primary.primary),
          checkColor: MaterialStateProperty.all(ColorsToken.primary.onPrimary),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(ColorsToken.primary.primary),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          indicatorColor: ColorsToken.primary.container,
          labelTextStyle: MaterialStateProperty.all(TypographyTokens.label.medium),
        ),
        navigationRailTheme: NavigationRailThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          selectedIconTheme: IconThemeData(color: ColorsToken.primary.primary),
          unselectedIconTheme: IconThemeData(color: ColorsToken.materialLight.onSurfaceVariant),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          selectedItemColor: ColorsToken.primary.primary,
          unselectedItemColor: ColorsToken.materialLight.onSurfaceVariant,
        ),
        menuTheme: MenuThemeData(
          style: MenuStyle(
            backgroundColor: MaterialStateProperty.all(ColorsToken.materialLight.surface),
          ),
        ),
        badgeTheme: BadgeThemeData(
          backgroundColor: ColorsToken.primary.primary,
          textColor: ColorsToken.primary.onPrimary,
        ),
        bannerTheme: MaterialBannerThemeData(
          backgroundColor: ColorsToken.primary.container,
          contentTextStyle: TypographyTokens.body.medium,
          padding: EdgeInsets.symmetric(horizontal: FPSpacing.lg, vertical: FPSpacing.sm),
        ),
        expansionTileTheme: ExpansionTileThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          collapsedBackgroundColor: ColorsToken.materialLight.surfaceDimmer,
          textColor: ColorsToken.materialLight.onSurface,
          iconColor: ColorsToken.primary.primary,
          childrenPadding: EdgeInsets.symmetric(horizontal: FPSpacing.md, vertical: FPSpacing.sm),
        ),
        segmentedButtonTheme: SegmentedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsToken.primary.container),
            foregroundColor: MaterialStateProperty.all(ColorsToken.primary.onPrimary),
          ),
        ),
        toggleButtonsTheme: ToggleButtonsThemeData(
          color: ColorsToken.primary.primary,
          selectedColor: ColorsToken.primary.onPrimary,
          fillColor: ColorsToken.primary.container,
        ),
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: ColorsToken.materialLight.surfaceBright,
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: TypographyTokens.label.medium,
        ),
        datePickerTheme: DatePickerThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          headerBackgroundColor: ColorsToken.primary.primary,
          headerForegroundColor: ColorsToken.primary.onPrimary,
        ),
        timePickerTheme: TimePickerThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          hourMinuteColor: ColorsToken.primary.container,
          hourMinuteTextColor: ColorsToken.primary.onPrimary,
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TypographyTokens.body.medium,
        ),
        buttonBarTheme: ButtonBarThemeData(
          alignment: MainAxisAlignment.end,
          buttonTextTheme: ButtonTextTheme.primary,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: ColorsToken.primary.primary,
          textTheme: ButtonTextTheme.primary,
        ),
      );

  /// Dark theme data
  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: ColorsToken.materialDark.primary,
          onPrimary: ColorsToken.materialDark.onPrimary,
          primaryContainer: ColorsToken.materialDark.container,
          onPrimaryContainer: ColorsToken.materialDark.onPrimaryVariant,
          secondary: ColorsToken.secondaryDark.primary,
          onSecondary: ColorsToken.secondaryDark.onPrimary,
          secondaryContainer: ColorsToken.secondaryDark.container,
          onSecondaryContainer: ColorsToken.secondaryDark.onPrimary,
          tertiary: ColorsToken.tertiary.primary,
          onTertiary: ColorsToken.tertiary.onPrimary,
          tertiaryContainer: ColorsToken.tertiary.container,
          onTertiaryContainer: ColorsToken.tertiary.onPrimary,
          surface: ColorsToken.materialDark.surface,
          onSurface: ColorsToken.materialDark.onSurface,
          surfaceVariant: ColorsToken.materialDark.surfaceBright,
          onSurfaceVariant: ColorsToken.materialDark.onSurfaceVariant,
          background: ColorsToken.materialDark.background,
          onBackground: ColorsToken.materialDark.onSurface,
          error: ColorsToken.system.critical.primary,
          onError: ColorsToken.system.critical.onPrimary,
          errorContainer: ColorsToken.system.critical.container,
          onErrorContainer: ColorsToken.system.critical.onPrimaryVariant,
          outline: ColorsToken.materialDark.outline,
          outlineVariant: ColorsToken.materialDark.outlineVariant,
          inverseSurface: ColorsToken.materialDark.inverseSurface,
          onInverseSurface: ColorsToken.materialDark.inverseOnSurface,
          inversePrimary: ColorsToken.materialDark.brandFixed,
          shadow: ColorsToken.misc.shadow,
          surfaceTint: ColorsToken.materialDark.primary,
        ),
        scaffoldBackgroundColor: ColorsToken.materialDark.background,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsToken.materialDark.surface,
          foregroundColor: ColorsToken.materialDark.onSurface,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        cardTheme: CardTheme(
          color: ColorsToken.materialDark.surfaceBrighter,
          elevation: 0,
          margin: EdgeInsets.all(FPSpacing.md),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: ColorsToken.materialDark.outlineVariant,
              width: 1,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsToken.primaryDark.primary,
            foregroundColor: ColorsToken.primaryDark.onPrimary,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: FPSpacing.lg, vertical: FPSpacing.sm),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorsToken.primaryDark.primary,
            padding: EdgeInsets.symmetric(horizontal: FPSpacing.md, vertical: FPSpacing.xs),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: ColorsToken.primaryDark.primary,
            side: BorderSide(color: ColorsToken.primaryDark.outline),
            padding: EdgeInsets.symmetric(horizontal: FPSpacing.lg, vertical: FPSpacing.sm),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorsToken.materialDark.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.materialDark.outlineVariant,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.materialDark.outlineVariant,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.primaryDark.primary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.system.critical.primary,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorsToken.system.critical.primary,
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: FPSpacing.md, vertical: FPSpacing.sm),
        ),
        dialogTheme: DialogTheme(
          backgroundColor: ColorsToken.materialDark.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentTextStyle: TypographyTokens.body.medium,
          titleTextStyle: TypographyTokens.title.large,
          actionsPadding: EdgeInsets.all(FPSpacing.md),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          modalBackgroundColor: ColorsToken.materialDark.surface,
          clipBehavior: Clip.antiAlias,
          showDragHandle: true,
          constraints: BoxConstraints(
            minHeight: FPSpacing.xxxl,
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          contentTextStyle: TextStyle(color: ColorsToken.materialDark.onSurface),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          insetPadding: EdgeInsets.all(FPSpacing.md),
          actionTextColor: ColorsToken.primaryDark.primary,
        ),
        dividerTheme: DividerThemeData(
          color: ColorsToken.materialDark.outlineVariant,
          thickness: 1,
          space: FPSpacing.xxs,
        ),
        textTheme: TextTheme(
          displayLarge: TypographyTokens.display.large,
          displayMedium: TypographyTokens.display.medium,
          displaySmall: TypographyTokens.display.small,
          headlineLarge: TypographyTokens.headline.large,
          headlineMedium: TypographyTokens.headline.medium,
          headlineSmall: TypographyTokens.headline.small,
          titleLarge: TypographyTokens.title.large,
          titleMedium: TypographyTokens.title.medium,
          titleSmall: TypographyTokens.title.small,
          bodyLarge: TypographyTokens.body.large,
          bodyMedium: TypographyTokens.body.medium,
          bodySmall: TypographyTokens.body.small,
          labelLarge: TypographyTokens.label.large,
          labelMedium: TypographyTokens.label.medium,
          labelSmall: TypographyTokens.label.small,
        ),
        extensions: <ThemeExtension<dynamic>>[
          CustomThemeExtension.dark,
        ],
        iconTheme: IconThemeData(color: ColorsToken.primaryDark.primary),
        primaryIconTheme: IconThemeData(color: ColorsToken.primaryDark.onPrimary),
        listTileTheme: ListTileThemeData(
          iconColor: ColorsToken.primaryDark.primary,
          textColor: ColorsToken.materialDark.onSurface,
          tileColor: ColorsToken.materialDark.surface,
          selectedColor: ColorsToken.primaryDark.primary,
          selectedTileColor: ColorsToken.primaryDark.container,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: ColorsToken.materialDark.surfaceBright,
          disabledColor: ColorsToken.materialDark.surfaceDimmer,
          selectedColor: ColorsToken.primaryDark.container,
          secondarySelectedColor: ColorsToken.secondaryDark.container,
          padding: EdgeInsets.symmetric(horizontal: FPSpacing.xs, vertical: FPSpacing.xxxs),
          labelStyle: TypographyTokens.label.medium,
          secondaryLabelStyle: TypographyTokens.label.medium,
          brightness: Brightness.dark,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorsToken.primaryDark.container,
          foregroundColor: ColorsToken.primaryDark.onPrimary,
          elevation: 2,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: ColorsToken.primaryDark.primary,
          unselectedLabelColor: ColorsToken.materialDark.onSurfaceVariant,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: ColorsToken.primaryDark.primary, width: 2),
          ),
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          scrimColor: ColorsToken.misc.scrim.scrim30,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(FPSpacing.lg),
              bottomRight: Radius.circular(FPSpacing.lg),
            ),
          ),
          width: 304 + FPSpacing.md,
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: ColorsToken.materialDark.surface,
          textStyle: TypographyTokens.body.medium,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: ColorsToken.primaryDark.primary,
          linearTrackColor: ColorsToken.materialDark.surfaceDimmer,
          circularTrackColor: ColorsToken.materialDark.surfaceDimmer,
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: ColorsToken.primaryDark.primary,
          inactiveTrackColor: ColorsToken.materialDark.surfaceDimmer,
          thumbColor: ColorsToken.primaryDark.primary,
          overlayColor: ColorsToken.primaryDark.primary.withOpacity(0.12),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(ColorsToken.primaryDark.primary),
          trackColor: MaterialStateProperty.all(ColorsToken.primaryDark.container),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(ColorsToken.primaryDark.primary),
          checkColor: MaterialStateProperty.all(ColorsToken.primaryDark.onPrimary),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(ColorsToken.primaryDark.primary),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          indicatorColor: ColorsToken.primaryDark.container,
          labelTextStyle: MaterialStateProperty.all(TypographyTokens.label.medium),
        ),
        navigationRailTheme: NavigationRailThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          selectedIconTheme: IconThemeData(color: ColorsToken.primaryDark.primary),
          unselectedIconTheme: IconThemeData(color: ColorsToken.materialDark.onSurfaceVariant),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          selectedItemColor: ColorsToken.primaryDark.primary,
          unselectedItemColor: ColorsToken.materialDark.onSurfaceVariant,
        ),
        menuTheme: MenuThemeData(
          style: MenuStyle(
            backgroundColor: MaterialStateProperty.all(ColorsToken.materialDark.surface),
          ),
        ),
        badgeTheme: BadgeThemeData(
          backgroundColor: ColorsToken.primaryDark.primary,
          textColor: ColorsToken.primaryDark.onPrimary,
        ),
        bannerTheme: MaterialBannerThemeData(
          backgroundColor: ColorsToken.primaryDark.container,
          contentTextStyle: TypographyTokens.body.medium,
          padding: EdgeInsets.symmetric(horizontal: FPSpacing.lg, vertical: FPSpacing.sm),
        ),
        expansionTileTheme: ExpansionTileThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          collapsedBackgroundColor: ColorsToken.materialDark.surfaceDimmer,
          textColor: ColorsToken.materialDark.onSurface,
          iconColor: ColorsToken.primaryDark.primary,
          childrenPadding: EdgeInsets.symmetric(horizontal: FPSpacing.md, vertical: FPSpacing.sm),
        ),
        segmentedButtonTheme: SegmentedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorsToken.primaryDark.container),
            foregroundColor: MaterialStateProperty.all(ColorsToken.primaryDark.onPrimary),
          ),
        ),
        toggleButtonsTheme: ToggleButtonsThemeData(
          color: ColorsToken.primaryDark.primary,
          selectedColor: ColorsToken.primaryDark.onPrimary,
          fillColor: ColorsToken.primaryDark.container,
        ),
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: ColorsToken.materialDark.surfaceBright,
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: TypographyTokens.label.medium,
        ),
        datePickerTheme: DatePickerThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          headerBackgroundColor: ColorsToken.primaryDark.primary,
          headerForegroundColor: ColorsToken.primaryDark.onPrimary,
        ),
        timePickerTheme: TimePickerThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          hourMinuteColor: ColorsToken.primaryDark.container,
          hourMinuteTextColor: ColorsToken.primaryDark.onPrimary,
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TypographyTokens.body.medium,
        ),
        buttonBarTheme: ButtonBarThemeData(
          alignment: MainAxisAlignment.end,
          buttonTextTheme: ButtonTextTheme.primary,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: ColorsToken.primaryDark.primary,
          textTheme: ButtonTextTheme.primary,
        ),
      );
} 