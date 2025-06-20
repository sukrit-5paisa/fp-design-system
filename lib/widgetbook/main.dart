import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import '../core/theme/theme.dart';
import 'typography_showcase.dart';
import 'colors_showcase.dart';
import 'theme_showcase.dart';
import 'color_palette_showcase.dart';
import 'material_components_showcase.dart';
import 'fp_progress_indicators_showcase.dart';
import 'fp_bottom_sheets_showcase.dart';
import 'fp_dialogs_showcase.dart';
import 'fp_snackbars_showcase.dart';
import 'fp_dividers_showcase.dart';
import 'fp_tooltips_showcase.dart';
import 'fp_chip_showcase.dart';
import 'fp_fab_showcase.dart';
import 'fp_card_showcase.dart';
import 'fp_text_field_showcase.dart';
import 'fp_selection_controls_showcase.dart';
import 'fp_slider_showcase.dart';
import 'fp_search_showcase.dart';
import 'fp_lists_showcase.dart';
import 'fp_banner_showcase.dart';
import 'fp_date_time_picker_showcase.dart';
import 'fp_data_tables_showcase.dart';
import 'fp_navigation_showcase.dart';
import 'fp_expansion_panel_showcase.dart';
import 'fp_menus_showcase.dart';
import 'custom_button_showcase.dart';

void main() {
  runApp(const FPDesignWidgetbook());
}

class FPDesignWidgetbook extends StatelessWidget {
  const FPDesignWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appBuilder: (context, child) {
        return MaterialApp(
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.system,
          home: child,
        );
      },
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
        WidgetbookFolder(
          name: 'Widgets',
          children: [
            WidgetbookComponent(
              name: 'Material Design 3',
              useCases: [
                WidgetbookUseCase(
                  name: 'All Components',
                  builder: materialComponentsShowcase,
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Progress Indicators',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Progress Indicators',
                  builder: (context) => const FPProgressIndicatorsShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Bottom Sheets',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Bottom Sheets',
                  builder: (context) => const FPBottomSheetsShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Dialogs',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Dialogs',
                  builder: (context) => const FPDialogsShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Snackbars',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Snackbars',
                  builder: (context) => const FPSnackbarsShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Dividers',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Dividers',
                  builder: (context) => const FPDividersShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Tooltips',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Tooltips',
                  builder: (context) => const FPTooltipsShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Chips',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Chips',
                  builder: (context) => const FPChipShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Floating Action Buttons',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP FABs',
                  builder: (context) => const FPFabShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Cards',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Cards',
                  builder: (context) => const FPCardShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Text Fields',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Text Fields',
                  builder: (context) => const FPTextFieldShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Selection Controls',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Selection Controls',
                  builder: (context) => const FPSelectionControlsShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Sliders',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Sliders',
                  builder: (context) => const FPSliderShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Search',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Search',
                  builder: (context) => const FPSearchShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Lists',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Lists',
                  builder: (context) => const FPListsShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Banners',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Banner',
                  builder: (context) => const FPBannerShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Date/Time Pickers',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Date/Time Picker',
                  builder: (context) => const FPDateTimePickerShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Data Tables',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Data Tables',
                  builder: (context) => const FPDataTablesShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Navigation',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Navigation',
                  builder: (context) => const FPNavigationShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Expansion Panels',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Expansion Panel',
                  builder: (context) => const FPExpansionPanelShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Menus',
              useCases: [
                WidgetbookUseCase(
                  name: 'FP Menus',
                  builder: (context) => const FPMenusShowcase(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Custom Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'All Variants',
                  builder: customButtonAllVariantsShowcase,
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
        ),
        TextScaleAddon(
          scales: [1.0, 1.5, 2.0],
        ),
      ],
    );
  }
} 