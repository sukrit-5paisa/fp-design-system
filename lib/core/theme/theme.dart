import 'package:flutter/material.dart';
import 'colors.dart';
import 'typography.dart';

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
          // Primary colors
          primary: ColorsToken.primary.primary,
          onPrimary: ColorsToken.primary.onPrimary,
          primaryContainer: ColorsToken.primary.container,
          onPrimaryContainer: ColorsToken.primary.onPrimaryVariant,
          
          // Secondary colors
          secondary: ColorsToken.secondary.primary,
          onSecondary: ColorsToken.secondary.onPrimary,
          secondaryContainer: ColorsToken.secondary.container,
          onSecondaryContainer: ColorsToken.secondary.onPrimaryVariant,
          
          // Tertiary colors
          tertiary: ColorsToken.tertiary.primary,
          onTertiary: ColorsToken.tertiary.onPrimary,
          tertiaryContainer: ColorsToken.tertiary.container,
          onTertiaryContainer: ColorsToken.tertiary.onPrimaryVariant,
          
          // Surface colors
          surface: ColorsToken.materialLight.surface,
          onSurface: ColorsToken.materialLight.onSurface,
          surfaceVariant: ColorsToken.materialLight.surfaceBright,
          onSurfaceVariant: ColorsToken.materialLight.onSurfaceVariant,
          
          // Background colors
          background: ColorsToken.materialLight.background,
          onBackground: ColorsToken.materialLight.onSurface,
          
          // Error colors
          error: ColorsToken.system.critical.primary,
          onError: ColorsToken.system.critical.onPrimary,
          errorContainer: ColorsToken.system.critical.container,
          onErrorContainer: ColorsToken.system.critical.onPrimaryVariant,
          
          // Outline colors
          outline: ColorsToken.materialLight.outline,
          outlineVariant: ColorsToken.materialLight.outlineVariant,
          
          // Inverse colors
          inverseSurface: ColorsToken.materialLight.inverseSurface,
          onInverseSurface: ColorsToken.materialLight.inverseOnSurface,
        ),
        
        // Scaffold background color
        scaffoldBackgroundColor: ColorsToken.materialLight.background,
        
        // AppBar theme
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsToken.materialLight.surface,
          foregroundColor: ColorsToken.materialLight.onSurface,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        
        // Card theme
        cardTheme: CardTheme(
          color: ColorsToken.materialLight.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: ColorsToken.materialLight.outlineVariant,
              width: 1,
            ),
          ),
        ),
        
        // Elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsToken.primary.primary,
            foregroundColor: ColorsToken.primary.onPrimary,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        
        // Text button theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorsToken.primary.primary,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        
        // Outlined button theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: ColorsToken.primary.primary,
            side: BorderSide(
              color: ColorsToken.primary.outline,
              width: 1,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        
        // Input decoration theme
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
              color: ColorsToken.primary.primary,
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
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        
        // Dialog theme
        dialogTheme: DialogTheme(
          backgroundColor: ColorsToken.materialLight.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        
        // Bottom sheet theme
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
        ),
        
        // Snackbar theme
        snackBarTheme: SnackBarThemeData(
          backgroundColor: ColorsToken.materialLight.surface,
          contentTextStyle: TextStyle(color: ColorsToken.materialLight.onSurface),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        
        // Divider theme
        dividerTheme: DividerThemeData(
          color: ColorsToken.materialLight.outlineVariant,
          thickness: 1,
          space: 1,
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
      );

  /// Dark theme data
  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          // Primary colors
          primary: ColorsToken.primaryDark.primary,
          onPrimary: ColorsToken.primaryDark.onPrimary,
          primaryContainer: ColorsToken.primaryDark.container,
          onPrimaryContainer: ColorsToken.primaryDark.onPrimaryVariant,
          
          // Secondary colors
          secondary: ColorsToken.secondaryDark.primary,
          onSecondary: ColorsToken.secondaryDark.onPrimary,
          secondaryContainer: ColorsToken.secondaryDark.container,
          onSecondaryContainer: ColorsToken.secondaryDark.onPrimaryVariant,
          
          // Tertiary colors
          tertiary: ColorsToken.tertiary.primary,
          onTertiary: ColorsToken.tertiary.onPrimary,
          tertiaryContainer: ColorsToken.tertiary.container,
          onTertiaryContainer: ColorsToken.tertiary.onPrimaryVariant,
          
          // Surface colors
          surface: ColorsToken.materialDark.surface,
          onSurface: ColorsToken.materialDark.onSurface,
          surfaceVariant: ColorsToken.materialDark.surfaceBright,
          onSurfaceVariant: ColorsToken.materialDark.onSurfaceVariant,
          
          // Background colors
          background: ColorsToken.materialDark.background,
          onBackground: ColorsToken.materialDark.onSurface,
          
          // Error colors
          error: ColorsToken.system.critical.primary,
          onError: ColorsToken.system.critical.onPrimary,
          errorContainer: ColorsToken.system.critical.container,
          onErrorContainer: ColorsToken.system.critical.onPrimaryVariant,
          
          // Outline colors
          outline: ColorsToken.materialDark.outline,
          outlineVariant: ColorsToken.materialDark.outlineVariant,
          
          // Inverse colors
          inverseSurface: ColorsToken.materialDark.inverseSurface,
          onInverseSurface: ColorsToken.materialDark.inverseOnSurface,
        ),
        
        // Scaffold background color
        scaffoldBackgroundColor: ColorsToken.materialDark.background,
        
        // AppBar theme
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsToken.materialDark.surface,
          foregroundColor: ColorsToken.materialDark.onSurface,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        
        // Card theme
        cardTheme: CardTheme(
          color: ColorsToken.materialDark.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: ColorsToken.materialDark.outlineVariant,
              width: 1,
            ),
          ),
        ),
        
        // Elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsToken.primaryDark.primary,
            foregroundColor: ColorsToken.primaryDark.onPrimary,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        
        // Text button theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorsToken.primaryDark.primary,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        
        // Outlined button theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: ColorsToken.primaryDark.primary,
            side: BorderSide(
              color: ColorsToken.primaryDark.outline,
              width: 1,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        
        // Input decoration theme
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
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        
        // Dialog theme
        dialogTheme: DialogTheme(
          backgroundColor: ColorsToken.materialDark.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        
        // Bottom sheet theme
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
        ),
        
        // Snackbar theme
        snackBarTheme: SnackBarThemeData(
          backgroundColor: ColorsToken.materialDark.surface,
          contentTextStyle: TextStyle(color: ColorsToken.materialDark.onSurface),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        
        // Divider theme
        dividerTheme: DividerThemeData(
          color: ColorsToken.materialDark.outlineVariant,
          thickness: 1,
          space: 1,
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
      );
} 