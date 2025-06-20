import 'package:flutter/material.dart';
import '../core/theme/colors.dart' show ColorsToken, AccentColors;
import '../core/theme/spacing.dart';
import '../core/theme/typography.dart';

class ColorPaletteShowcase extends StatefulWidget {
  const ColorPaletteShowcase({super.key});

  @override
  State<ColorPaletteShowcase> createState() => _ColorPaletteShowcaseState();
}

class _ColorPaletteShowcaseState extends State<ColorPaletteShowcase> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        backgroundColor: _isDarkMode 
            ? ColorsToken.materialDark.background 
            : ColorsToken.materialLight.background,
        appBar: AppBar(
          title: Text(
            'Color Palette',
            style: TextStyle(
              color: _isDarkMode 
                  ? ColorsToken.materialDark.onSurface 
                  : ColorsToken.materialLight.onSurface,
            ),
          ),
          backgroundColor: _isDarkMode 
              ? ColorsToken.materialDark.surface 
              : ColorsToken.materialLight.surface,
          actions: [
            Switch(
              value: _isDarkMode,
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),
            const SizedBox(width: 16),
            Text(
              _isDarkMode ? 'Dark' : 'Light',
              style: TextStyle(
                color: _isDarkMode 
                    ? ColorsToken.materialDark.onSurface 
                    : ColorsToken.materialLight.onSurface,
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(FPSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: FPSpacing.xxl),
              _buildMaterialColors(),
              const SizedBox(height: FPSpacing.xxl),
              _buildPrimaryColors(),
              const SizedBox(height: FPSpacing.xxl),
              _buildSecondaryColors(),
              const SizedBox(height: FPSpacing.xxl),
              _buildTertiaryColors(),
              const SizedBox(height: FPSpacing.xxl),
              _buildSystemColors(),
              const SizedBox(height: FPSpacing.xxl),
              _buildAccentColors(),
              const SizedBox(height: FPSpacing.xxl),
              _buildMiscColors(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Complete Color Palette',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _isDarkMode 
                ? ColorsToken.materialDark.onSurface 
                : ColorsToken.materialLight.onSurface,
          ),
        ),
        const SizedBox(height: FPSpacing.sm),
        Text(
          'Comprehensive showcase of all color tokens with light and dark theme support',
          style: TextStyle(
            fontSize: 16,
            color: _isDarkMode 
                ? ColorsToken.materialDark.onSurfaceVariant 
                : ColorsToken.materialLight.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildMaterialColors() {
    return _ColorSection(
      title: 'Material Colors',
      description: 'Core material design colors for light and dark themes',
      isDarkMode: _isDarkMode,
      colorGroups: [
        _ColorGroup(
          name: 'Light Theme',
          colors: [
            _ColorItem('Primary', ColorsToken.materialLight.primary, 'ColorsToken.materialLight.primary'),
            _ColorItem('Primary Dim', ColorsToken.materialLight.primaryDim, 'ColorsToken.materialLight.primaryDim'),
            _ColorItem('On Primary', ColorsToken.materialLight.onPrimary, 'ColorsToken.materialLight.onPrimary'),
            _ColorItem('Background', ColorsToken.materialLight.background, 'ColorsToken.materialLight.background'),
            _ColorItem('Surface', ColorsToken.materialLight.surface, 'ColorsToken.materialLight.surface'),
            _ColorItem('On Surface', ColorsToken.materialLight.onSurface, 'ColorsToken.materialLight.onSurface'),
            _ColorItem('Outline', ColorsToken.materialLight.outline, 'ColorsToken.materialLight.outline'),
            _ColorItem('Container', ColorsToken.materialLight.container, 'ColorsToken.materialLight.container'),
          ],
        ),
        _ColorGroup(
          name: 'Dark Theme',
          colors: [
            _ColorItem('Primary', ColorsToken.materialDark.primary, 'ColorsToken.materialDark.primary'),
            _ColorItem('Primary Dim', ColorsToken.materialDark.primaryDim, 'ColorsToken.materialDark.primaryDim'),
            _ColorItem('On Primary', ColorsToken.materialDark.onPrimary, 'ColorsToken.materialDark.onPrimary'),
            _ColorItem('Background', ColorsToken.materialDark.background, 'ColorsToken.materialDark.background'),
            _ColorItem('Surface', ColorsToken.materialDark.surface, 'ColorsToken.materialDark.surface'),
            _ColorItem('On Surface', ColorsToken.materialDark.onSurface, 'ColorsToken.materialDark.onSurface'),
            _ColorItem('Outline', ColorsToken.materialDark.outline, 'ColorsToken.materialDark.outline'),
            _ColorItem('Container', ColorsToken.materialDark.container, 'ColorsToken.materialDark.container'),
          ],
        ),
      ],
    );
  }

  Widget _buildPrimaryColors() {
    return _ColorSection(
      title: 'Primary Colors',
      description: 'Main brand colors with light and dark variants',
      isDarkMode: _isDarkMode,
      colorGroups: [
        _ColorGroup(
          name: 'Light Theme',
          colors: [
            _ColorItem('Primary', ColorsToken.primary.primary, 'ColorsToken.primary.primary'),
            _ColorItem('Primary Dim', ColorsToken.primary.primaryDim, 'ColorsToken.primary.primaryDim'),
            _ColorItem('On Primary', ColorsToken.primary.onPrimary, 'ColorsToken.primary.onPrimary'),
            _ColorItem('On Primary Variant', ColorsToken.primary.onPrimaryVariant, 'ColorsToken.primary.onPrimaryVariant'),
            _ColorItem('Surface', ColorsToken.primary.surface, 'ColorsToken.primary.surface'),
            _ColorItem('On Surface', ColorsToken.primary.onSurface, 'ColorsToken.primary.onSurface'),
            _ColorItem('Container', ColorsToken.primary.container, 'ColorsToken.primary.container'),
            _ColorItem('Outline', ColorsToken.primary.outline, 'ColorsToken.primary.outline'),
          ],
        ),
        _ColorGroup(
          name: 'Dark Theme',
          colors: [
            _ColorItem('Primary', ColorsToken.primaryDark.primary, 'ColorsToken.primaryDark.primary'),
            _ColorItem('Primary Dim', ColorsToken.primaryDark.primaryDim, 'ColorsToken.primaryDark.primaryDim'),
            _ColorItem('On Primary', ColorsToken.primaryDark.onPrimary, 'ColorsToken.primaryDark.onPrimary'),
            _ColorItem('On Primary Variant', ColorsToken.primaryDark.onPrimaryVariant, 'ColorsToken.primaryDark.onPrimaryVariant'),
            _ColorItem('Surface', ColorsToken.primaryDark.surface, 'ColorsToken.primaryDark.surface'),
            _ColorItem('On Surface', ColorsToken.primaryDark.onSurface, 'ColorsToken.primaryDark.onSurface'),
            _ColorItem('Container', ColorsToken.primaryDark.container, 'ColorsToken.primaryDark.container'),
            _ColorItem('Outline', ColorsToken.primaryDark.outline, 'ColorsToken.primaryDark.outline'),
          ],
        ),
      ],
    );
  }

  Widget _buildSecondaryColors() {
    return _ColorSection(
      title: 'Secondary Colors',
      description: 'Secondary brand colors with light and dark variants',
      isDarkMode: _isDarkMode,
      colorGroups: [
        _ColorGroup(
          name: 'Light Theme',
          colors: [
            _ColorItem('Secondary', ColorsToken.secondary.primary, 'ColorsToken.secondary.primary'),
            _ColorItem('Secondary Dim', ColorsToken.secondary.primaryDim, 'ColorsToken.secondary.primaryDim'),
            _ColorItem('On Secondary', ColorsToken.secondary.onPrimary, 'ColorsToken.secondary.onPrimary'),
            _ColorItem('On Secondary Variant', ColorsToken.secondary.onPrimaryVariant, 'ColorsToken.secondary.onPrimaryVariant'),
            _ColorItem('Surface', ColorsToken.secondary.surface, 'ColorsToken.secondary.surface'),
            _ColorItem('On Surface', ColorsToken.secondary.onSurface, 'ColorsToken.secondary.onSurface'),
            _ColorItem('Container', ColorsToken.secondary.container, 'ColorsToken.secondary.container'),
            _ColorItem('Outline', ColorsToken.secondary.outline, 'ColorsToken.secondary.outline'),
          ],
        ),
        _ColorGroup(
          name: 'Dark Theme',
          colors: [
            _ColorItem('Secondary', ColorsToken.secondaryDark.primary, 'ColorsToken.secondaryDark.primary'),
            _ColorItem('Secondary Dim', ColorsToken.secondaryDark.primaryDim, 'ColorsToken.secondaryDark.primaryDim'),
            _ColorItem('On Secondary', ColorsToken.secondaryDark.onPrimary, 'ColorsToken.secondaryDark.onPrimary'),
            _ColorItem('On Secondary Variant', ColorsToken.secondaryDark.onPrimaryVariant, 'ColorsToken.secondaryDark.onPrimaryVariant'),
            _ColorItem('Surface', ColorsToken.secondaryDark.surface, 'ColorsToken.secondaryDark.surface'),
            _ColorItem('On Surface', ColorsToken.secondaryDark.onSurface, 'ColorsToken.secondaryDark.onSurface'),
            _ColorItem('Container', ColorsToken.secondaryDark.container, 'ColorsToken.secondaryDark.container'),
            _ColorItem('Outline', ColorsToken.secondaryDark.outline, 'ColorsToken.secondaryDark.outline'),
          ],
        ),
      ],
    );
  }

  Widget _buildTertiaryColors() {
    return _ColorSection(
      title: 'Tertiary Colors',
      description: 'Tertiary brand colors',
      isDarkMode: _isDarkMode,
      colorGroups: [
        _ColorGroup(
          name: 'Tertiary',
          colors: [
            _ColorItem('Tertiary', ColorsToken.tertiary.primary, 'ColorsToken.tertiary.primary'),
            _ColorItem('Tertiary Dim', ColorsToken.tertiary.primaryDim, 'ColorsToken.tertiary.primaryDim'),
            _ColorItem('On Tertiary', ColorsToken.tertiary.onPrimary, 'ColorsToken.tertiary.onPrimary'),
            _ColorItem('On Tertiary Variant', ColorsToken.tertiary.onPrimaryVariant, 'ColorsToken.tertiary.onPrimaryVariant'),
            _ColorItem('Surface', ColorsToken.tertiary.surface, 'ColorsToken.tertiary.surface'),
            _ColorItem('On Surface', ColorsToken.tertiary.onSurface, 'ColorsToken.tertiary.onSurface'),
            _ColorItem('Container', ColorsToken.tertiary.container, 'ColorsToken.tertiary.container'),
            _ColorItem('Outline', ColorsToken.tertiary.outline, 'ColorsToken.tertiary.outline'),
          ],
        ),
      ],
    );
  }

  Widget _buildSystemColors() {
    return _ColorSection(
      title: 'System Colors',
      description: 'System colors for different states and feedback',
      isDarkMode: _isDarkMode,
      colorGroups: [
        _ColorGroup(
          name: 'Positive',
          colors: [
            _ColorItem('Primary', ColorsToken.system.positive.primary, 'ColorsToken.system.positive.primary'),
            _ColorItem('Primary Dim', ColorsToken.system.positive.primaryDim, 'ColorsToken.system.positive.primaryDim'),
            _ColorItem('On Primary', ColorsToken.system.positive.onPrimary, 'ColorsToken.system.positive.onPrimary'),
            _ColorItem('Container', ColorsToken.system.positive.container, 'ColorsToken.system.positive.container'),
            _ColorItem('Outline', ColorsToken.system.positive.outline, 'ColorsToken.system.positive.outline'),
          ],
        ),
        _ColorGroup(
          name: 'Critical',
          colors: [
            _ColorItem('Primary', ColorsToken.system.critical.primary, 'ColorsToken.system.critical.primary'),
            _ColorItem('Primary Dim', ColorsToken.system.critical.primaryDim, 'ColorsToken.system.critical.primaryDim'),
            _ColorItem('On Primary', ColorsToken.system.critical.onPrimary, 'ColorsToken.system.critical.onPrimary'),
            _ColorItem('Container', ColorsToken.system.critical.container, 'ColorsToken.system.critical.container'),
            _ColorItem('Outline', ColorsToken.system.critical.outline, 'ColorsToken.system.critical.outline'),
          ],
        ),
        _ColorGroup(
          name: 'Warning',
          colors: [
            _ColorItem('Primary', ColorsToken.system.warning.primary, 'ColorsToken.system.warning.primary'),
            _ColorItem('Primary Dim', ColorsToken.system.warning.primaryDim, 'ColorsToken.system.warning.primaryDim'),
            _ColorItem('On Primary', ColorsToken.system.warning.onPrimary, 'ColorsToken.system.warning.onPrimary'),
            _ColorItem('Container', ColorsToken.system.warning.container, 'ColorsToken.system.warning.container'),
            _ColorItem('Outline', ColorsToken.system.warning.outline, 'ColorsToken.system.warning.outline'),
          ],
        ),
        _ColorGroup(
          name: 'Info',
          colors: [
            _ColorItem('Info', ColorsToken.system.info.info, 'ColorsToken.system.info.info'),
            _ColorItem('Container', ColorsToken.system.info.container, 'ColorsToken.system.info.container'),
            _ColorItem('On Surface', ColorsToken.system.info.onSurface, 'ColorsToken.system.info.onSurface'),
            _ColorItem('Outline', ColorsToken.system.info.outline, 'ColorsToken.system.info.outline'),
          ],
        ),
      ],
    );
  }

  Widget _buildAccentColors() {
    return _ColorSection(
      title: 'Accent Colors',
      description: 'Additional accent colors for special use cases',
      isDarkMode: _isDarkMode,
      colorGroups: [
        _ColorGroup(
          name: 'Sunset',
          colors: [
            _ColorItem('Sunset', ColorsToken.accent.sunset, 'ColorsToken.accent.sunset'),
            _ColorItem('Container', AccentColors.sunsetContainer, 'AccentColors.sunsetContainer'),
            _ColorItem('On Sunset', AccentColors.sunsetOnSunset, 'AccentColors.sunsetOnSunset'),
          ],
        ),
        _ColorGroup(
          name: 'Gold',
          colors: [
            _ColorItem('Gold', ColorsToken.accent.gold, 'ColorsToken.accent.gold'),
            _ColorItem('Container', AccentColors.goldContainer, 'AccentColors.goldContainer'),
            _ColorItem('On Gold', AccentColors.goldOnGold, 'AccentColors.goldOnGold'),
          ],
        ),
        _ColorGroup(
          name: 'Teal',
          colors: [
            _ColorItem('Teal', ColorsToken.accent.teal, 'ColorsToken.accent.teal'),
            _ColorItem('Container', AccentColors.tealContainer, 'AccentColors.tealContainer'),
            _ColorItem('On Teal', AccentColors.tealOnTeal, 'AccentColors.tealOnTeal'),
          ],
        ),
        _ColorGroup(
          name: 'Magenta',
          colors: [
            _ColorItem('Magenta', ColorsToken.accent.magenta, 'ColorsToken.accent.magenta'),
            _ColorItem('Container', AccentColors.magentaContainer, 'AccentColors.magentaContainer'),
            _ColorItem('On Magenta', AccentColors.magentaOnMagenta, 'AccentColors.magentaOnMagenta'),
          ],
        ),
        _ColorGroup(
          name: 'Fuchsia',
          colors: [
            _ColorItem('Fuchsia', ColorsToken.accent.fuchsia, 'ColorsToken.accent.fuchsia'),
            _ColorItem('Container', AccentColors.fuchsiaContainer, 'AccentColors.fuchsiaContainer'),
            _ColorItem('On Fuchsia', AccentColors.fuchsiaOnFuchsia, 'AccentColors.fuchsiaOnFuchsia'),
          ],
        ),
      ],
    );
  }

  Widget _buildMiscColors() {
    return _ColorSection(
      title: 'Miscellaneous Colors',
      description: 'Utility colors for shadows, scrims, and other effects',
      isDarkMode: _isDarkMode,
      colorGroups: [
        _ColorGroup(
          name: 'Shadows & Effects',
          colors: [
            _ColorItem('Shadow', ColorsToken.misc.shadow, 'ColorsToken.misc.shadow'),
            _ColorItem('Glow', ColorsToken.misc.glow, 'ColorsToken.misc.glow'),
            _ColorItem('White Fixed', ColorsToken.misc.whiteFixed, 'ColorsToken.misc.whiteFixed'),
            _ColorItem('Black Fixed', ColorsToken.misc.blackFixed, 'ColorsToken.misc.blackFixed'),
          ],
        ),
        _ColorGroup(
          name: 'Scrims',
          colors: [
            _ColorItem('Scrim 10%', ColorsToken.misc.scrim.scrim10, 'ColorsToken.misc.scrim.scrim10'),
            _ColorItem('Scrim 30%', ColorsToken.misc.scrim.scrim30, 'ColorsToken.misc.scrim.scrim30'),
            _ColorItem('Scrim 50%', ColorsToken.misc.scrim.scrim50, 'ColorsToken.misc.scrim.scrim50'),
            _ColorItem('Scrim 70%', ColorsToken.misc.scrim.scrim70, 'ColorsToken.misc.scrim.scrim70'),
            _ColorItem('Scrim 90%', ColorsToken.misc.scrim.scrim90, 'ColorsToken.misc.scrim.scrim90'),
          ],
        ),
      ],
    );
  }
}

class _ColorSection extends StatelessWidget {
  final String title;
  final String description;
  final bool isDarkMode;
  final List<_ColorGroup> colorGroups;

  const _ColorSection({
    required this.title,
    required this.description,
    required this.isDarkMode,
    required this.colorGroups,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: isDarkMode 
                ? ColorsToken.materialDark.onSurface 
                : ColorsToken.materialLight.onSurface,
          ),
        ),
        const SizedBox(height: FPSpacing.sm),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            color: isDarkMode 
                ? ColorsToken.materialDark.onSurfaceVariant 
                : ColorsToken.materialLight.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: FPSpacing.lg),
        ...colorGroups.map((group) => _ColorGroupWidget(
          group: group,
          isDarkMode: isDarkMode,
        )),
      ],
    );
  }
}

class _ColorGroup {
  final String name;
  final List<_ColorItem> colors;

  const _ColorGroup({
    required this.name,
    required this.colors,
  });
}

class _ColorItem {
  final String name;
  final Color color;
  final String token;

  const _ColorItem(this.name, this.color, this.token);
}

class _ColorGroupWidget extends StatelessWidget {
  final _ColorGroup group;
  final bool isDarkMode;

  const _ColorGroupWidget({
    required this.group,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          group.name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: isDarkMode 
                ? ColorsToken.materialDark.onSurface 
                : ColorsToken.materialLight.onSurface,
          ),
        ),
        const SizedBox(height: FPSpacing.md),
        Wrap(
          spacing: FPSpacing.md,
          runSpacing: FPSpacing.md,
          children: group.colors.map((colorItem) => _ColorCard(
            colorItem: colorItem,
            isDarkMode: isDarkMode,
          )).toList(),
        ),
        const SizedBox(height: FPSpacing.xl),
      ],
    );
  }
}

class _ColorCard extends StatelessWidget {
  final _ColorItem colorItem;
  final bool isDarkMode;

  const _ColorCard({
    required this.colorItem,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: isDarkMode 
            ? ColorsToken.materialDark.surface 
            : ColorsToken.materialLight.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDarkMode 
              ? ColorsToken.materialDark.outlineVariant 
              : ColorsToken.materialLight.outlineVariant,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: colorItem.color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                colorItem.name,
                style: TextStyle(
                  color: _getContrastColor(colorItem.color),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  colorItem.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isDarkMode 
                        ? ColorsToken.materialDark.onSurface 
                        : ColorsToken.materialLight.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  colorItem.token,
                  style: TextStyle(
                    fontSize: 12,
                    color: isDarkMode 
                        ? ColorsToken.materialDark.onSurfaceVariant 
                        : ColorsToken.materialLight.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '#${colorItem.color.value.toRadixString(16).toUpperCase().substring(2)}',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'monospace',
                    color: isDarkMode 
                        ? ColorsToken.materialDark.onSurfaceVariant 
                        : ColorsToken.materialLight.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getContrastColor(Color backgroundColor) {
    final luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
} 