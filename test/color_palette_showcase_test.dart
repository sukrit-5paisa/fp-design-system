import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fp_design/widgetbook/color_palette_showcase.dart';

void main() {
  group('ColorPaletteShowcase', () {
    testWidgets('should render without errors', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ColorPaletteShowcase(),
        ),
      );

      // Verify that the widget renders without errors
      expect(find.text('Color Palette'), findsOneWidget);
      expect(find.text('Complete Color Palette'), findsOneWidget);
    });

    testWidgets('should switch between light and dark themes', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ColorPaletteShowcase(),
        ),
      );

      // Initially should be in light mode
      expect(find.text('Light'), findsOneWidget);

      // Find and tap the theme switch
      final switchFinder = find.byType(Switch);
      expect(switchFinder, findsOneWidget);
      
      await tester.tap(switchFinder);
      await tester.pump();

      // Should now be in dark mode
      expect(find.text('Dark'), findsOneWidget);
    });

    testWidgets('should display all color sections', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ColorPaletteShowcase(),
        ),
      );

      // Verify that all major color sections are displayed
      expect(find.text('Material Colors'), findsOneWidget);
      expect(find.text('Primary Colors'), findsOneWidget);
      expect(find.text('Secondary Colors'), findsOneWidget);
      expect(find.text('Tertiary Colors'), findsOneWidget);
      expect(find.text('System Colors'), findsOneWidget);
      expect(find.text('Accent Colors'), findsOneWidget);
      expect(find.text('Miscellaneous Colors'), findsOneWidget);
    });

    testWidgets('should display color cards with proper information', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ColorPaletteShowcase(),
        ),
      );

      // Wait for the widget to fully render
      await tester.pumpAndSettle();

      // Verify that color cards are displayed
      expect(find.byType(Container), findsWidgets);
      
      // Verify that color tokens are displayed
      expect(find.textContaining('ColorsToken.'), findsWidgets);
    });
  });
} 