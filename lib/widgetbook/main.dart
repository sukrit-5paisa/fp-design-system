import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import '../core/theme/theme.dart';
import 'typography_showcase.dart';
import 'colors_showcase.dart';
import 'theme_showcase.dart';
import 'color_palette_showcase.dart';

void main() {
  runApp(const FPDesignWidgetbook());
}

class FPDesignWidgetbook extends StatelessWidget {
  const FPDesignWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appBuilder: (context, child) => child,
      directories: [
        WidgetbookFolder(
          name: 'Foundation',
          children: [
            WidgetbookFolder(
              name: 'Theme',
              children: [
                WidgetbookComponent(
                  name: 'Theme Preview',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Theme Showcase',
                      builder: (context) => const ThemeShowcase(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Typography',
              children: [
                WidgetbookComponent(
                  name: 'Typography Showcase',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'All Typography',
                      builder: (context) => TypographyShowcase(knobContext: context),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Colors',
              children: [
                WidgetbookComponent(
                  name: 'Colors Showcase',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'All Colors',
                      builder: (context) => const ColorsShowcase(),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Color Palette',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Complete Palette',
                      builder: (context) => const ColorPaletteShowcase(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'Light', data: AppTheme.light),
            WidgetbookTheme(name: 'Dark', data: AppTheme.dark),
          ],
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPadPro11Inches,
            Devices.android.samsungGalaxyS20,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
        TextScaleAddon(
          scales: [1.0, 1.5, 2.0],
        ),
      ],
    );
  }
} 