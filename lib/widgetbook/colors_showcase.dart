import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/theme/spacing.dart';
import '../core/theme/typography.dart';

class ColorsShowcase extends StatelessWidget {
  const ColorsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(FPSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color System',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: FPSpacing.md),
          Text(
            'A comprehensive showcase of all color tokens and their variants, including dark mode support.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: FPSpacing.xxl),
          _ColorSection(
            title: 'Material Theme Colors (Light)',
            description: 'All Material Light color tokens',
            colors: [
              _ColorGrid(
                name: 'Material Light',
                colors: ColorsToken.materialLight.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.materialLight.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: ColorsToken.materialDark.allColors[e.key] ?? e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
          _ColorSection(
            title: 'Material Theme Colors (Dark)',
            description: 'All Material Dark color tokens',
            colors: [
              _ColorGrid(
                name: 'Material Dark',
                colors: ColorsToken.materialDark.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.materialDark.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
          _ColorSection(
            title: 'Primary Colors',
            description: 'All Primary color tokens',
            colors: [
              _ColorGrid(
                name: 'Primary',
                colors: ColorsToken.primary.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.primary.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: ColorsToken.primaryDark.allColors[e.key] ?? e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Primary Dark',
                colors: ColorsToken.primaryDark.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.primaryDark.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
          _ColorSection(
            title: 'Secondary Colors',
            description: 'All Secondary color tokens',
            colors: [
              _ColorGrid(
                name: 'Secondary',
                colors: ColorsToken.secondary.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.secondary.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: ColorsToken.secondaryDark.allColors[e.key] ?? e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Secondary Dark',
                colors: ColorsToken.secondaryDark.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.secondaryDark.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
          _ColorSection(
            title: 'Tertiary Colors',
            description: 'All Tertiary color tokens',
            colors: [
              _ColorGrid(
                name: 'Tertiary',
                colors: ColorsToken.tertiary.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.tertiary.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
          _ColorSection(
            title: 'System Colors',
            description: 'All System color tokens',
            colors: [
              _ColorGrid(
                name: 'Positive',
                colors: ColorsToken.system.positive.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.system.positive.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Critical',
                colors: ColorsToken.system.critical.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.system.critical.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Warning',
                colors: ColorsToken.system.warning.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.system.warning.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Info',
                colors: ColorsToken.system.info.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.system.info.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
          _ColorSection(
            title: 'Accent Colors',
            description: 'All Accent color tokens',
            colors: [
              _ColorGrid(
                name: 'Sunset',
                colors: AccentColors.sunsetColors.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'AccentColors.sunsetColors.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Gold',
                colors: AccentColors.goldColors.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'AccentColors.goldColors.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Teal',
                colors: AccentColors.tealColors.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'AccentColors.tealColors.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Magenta',
                colors: AccentColors.magentaColors.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'AccentColors.magentaColors.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Fuchsia',
                colors: AccentColors.fuchsiaColors.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'AccentColors.fuchsiaColors.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
          _ColorSection(
            title: 'Miscellaneous Colors',
            description: 'All Misc color tokens',
            colors: [
              _ColorGrid(
                name: 'Misc',
                colors: ColorsToken.misc.allColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.misc.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
              _ColorGrid(
                name: 'Scrim',
                colors: ColorsToken.misc.scrimColors.entries.map((e) => _ColorSquare(
                  name: e.key,
                  token: 'ColorsToken.misc.scrim.${e.key}',
                  theme: 'N/A',
                  color: e.value,
                  darkColor: e.value,
                  usage: '',
                )).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ColorSection extends StatelessWidget {
  const _ColorSection({
    required this.title,
    required this.description,
    required this.colors,
  });

  final String title;
  final String description;
  final List<_ColorGrid> colors;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.headlineMedium?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: FPSpacing.xs),
        Text(
          description,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: FPSpacing.lg),
        ...colors.map((grid) => Padding(
              padding: EdgeInsets.only(bottom: FPSpacing.xl),
              child: grid,
            )),
      ],
    );
  }
}

class _ColorGrid extends StatelessWidget {
  const _ColorGrid({
    required this.name,
    required this.colors,
  });

  final String name;
  final List<_ColorSquare> colors;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: FPSpacing.md),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          mainAxisSpacing: FPSpacing.md,
          crossAxisSpacing: FPSpacing.md,
          childAspectRatio: 1,
          children: colors,
        ),
      ],
    );
  }
}

class _ColorSquare extends StatelessWidget {
  const _ColorSquare({
    required this.name,
    required this.token,
    required this.theme,
    required this.color,
    required this.darkColor,
    required this.usage,
  });

  final String name;
  final String token;
  final String theme;
  final Color color;
  final Color darkColor;
  final String usage;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final currentColor = isDarkMode ? darkColor : color;
    final textColor = _getContrastingTextColor(currentColor);
    final theme = Theme.of(context);

    return Tooltip(
      message: '''
$name
$usage
Token: $token
Theme: ${theme == 'N/A' ? 'Not mapped to theme' : theme}
Hex: #${currentColor.value.toRadixString(16).toUpperCase().substring(2)}
Dark Mode: ${color == darkColor ? 'Same as light mode' : 'Different in dark mode'}''',
      child: Container(
        decoration: BoxDecoration(
          color: currentColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: theme.colorScheme.outlineVariant,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: theme.textTheme.labelMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            if (color != darkColor)
              Icon(
                Icons.dark_mode,
                size: 12,
                color: textColor,
              ),
          ],
        ),
      ),
    );
  }

  Color _getContrastingTextColor(Color backgroundColor) {
    final luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
} 