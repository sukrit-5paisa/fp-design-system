import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import '../core/theme/theme.dart';
import 'typography_showcase.dart';
import 'colors_showcase.dart';
import 'theme_showcase.dart';
import 'color_palette_showcase.dart';
// import 'experimental/atomic_widgets.dart';
// import 'experimental/widgets/index.dart';

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
        // WidgetbookFolder(
        //   name: 'Experimental',
        //   children: [
        //     WidgetbookFolder(
        //       name: 'Atomic Widgets',
        //       children: [
        //         WidgetbookComponent(
        //           name: 'FPButton',
        //           useCases: [
        //             WidgetbookUseCase(
        //               name: 'Primary Button',
        //               builder: (context) => primaryButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Secondary Button',
        //               builder: (context) => secondaryButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Tertiary Button',
        //               builder: (context) => tertiaryButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Outlined Button',
        //               builder: (context) => outlinedButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Text Button',
        //               builder: (context) => textButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Button with Icon',
        //               builder: (context) => buttonWithIconUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Disabled Button',
        //               builder: (context) => disabledButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Loading Button',
        //               builder: (context) => loadingButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Small Button',
        //               builder: (context) => smallButtonUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Large Button',
        //               builder: (context) => largeButtonUseCase(context),
        //             ),
        //           ],
        //         ),
        //         WidgetbookComponent(
        //           name: 'FPCard',
        //           useCases: [
        //             WidgetbookUseCase(
        //               name: 'Basic Card',
        //               builder: (context) => basicCardUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Card with Title',
        //               builder: (context) => cardWithTitleUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Card with Actions',
        //               builder: (context) => cardWithActionsUseCase(context),
        //             ),
        //           ],
        //         ),
        //         WidgetbookComponent(
        //           name: 'FPInput',
        //           useCases: [
        //             WidgetbookUseCase(
        //               name: 'Basic Input',
        //               builder: (context) => basicInputUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Input with Helper Text',
        //               builder: (context) => inputWithHelperTextUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Input with Error',
        //               builder: (context) => inputWithErrorUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Input with Icon',
        //               builder: (context) => inputWithIconUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Password Input',
        //               builder: (context) => passwordInputUseCase(context),
        //             ),
        //           ],
        //         ),
        //         WidgetbookComponent(
        //           name: 'FPBadge',
        //           useCases: [
        //             WidgetbookUseCase(
        //               name: 'Basic Badge',
        //               builder: (context) => basicBadgeUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Badge with Icon',
        //               builder: (context) => badgeWithIconUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Success Badge',
        //               builder: (context) => successBadgeUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Warning Badge',
        //               builder: (context) => warningBadgeUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Error Badge',
        //               builder: (context) => errorBadgeUseCase(context),
        //             ),
        //             WidgetbookUseCase(
        //               name: 'Info Badge',
        //               builder: (context) => infoBadgeUseCase(context),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
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