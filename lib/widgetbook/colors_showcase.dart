import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/theme/spacing.dart';
import '../core/theme/typography.dart';

class ColorsShowcase extends StatelessWidget {
  const ColorsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
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
            title: 'Material Theme Colors',
            description: 'Core colors mapped to Flutter\'s ColorScheme',
            colors: [
              _ColorGrid(
                name: 'Primary Colors',
                colors: [
                  _ColorSquare(
                    name: 'Primary',
                    token: 'ColorsToken.primary.primary',
                    theme: 'Theme.of(context).colorScheme.primary',
                    color: ColorsToken.primary.primary,
                    darkColor: ColorsToken.primaryDark.primary,
                    usage: 'Main brand color, primary actions',
                  ),
                  _ColorSquare(
                    name: 'Primary Dim',
                    token: 'ColorsToken.primary.primaryDim',
                    theme: 'N/A',
                    color: ColorsToken.primary.primaryDim,
                    darkColor: ColorsToken.primaryDark.primaryDim,
                    usage: 'Dimmed version of primary color',
                  ),
                  _ColorSquare(
                    name: 'On Primary',
                    token: 'ColorsToken.primary.onPrimary',
                    theme: 'Theme.of(context).colorScheme.onPrimary',
                    color: ColorsToken.primary.onPrimary,
                    darkColor: ColorsToken.primaryDark.onPrimary,
                    usage: 'Text/icons on primary color',
                  ),
                  _ColorSquare(
                    name: 'On Primary Variant',
                    token: 'ColorsToken.primary.onPrimaryVariant',
                    theme: 'Theme.of(context).colorScheme.onPrimaryContainer',
                    color: ColorsToken.primary.onPrimaryVariant,
                    darkColor: ColorsToken.primaryDark.onPrimaryVariant,
                    usage: 'Text/icons on primary container',
                  ),
                  _ColorSquare(
                    name: 'Surface Brighter',
                    token: 'ColorsToken.primary.surfaceBrighter',
                    theme: 'N/A',
                    color: ColorsToken.primary.surfaceBrighter,
                    darkColor: ColorsToken.primaryDark.surfaceBrighter,
                    usage: 'Brightest surface variant',
                  ),
                  _ColorSquare(
                    name: 'Surface Bright',
                    token: 'ColorsToken.primary.surfaceBright',
                    theme: 'N/A',
                    color: ColorsToken.primary.surfaceBright,
                    darkColor: ColorsToken.primaryDark.surfaceBright,
                    usage: 'Bright surface variant',
                  ),
                  _ColorSquare(
                    name: 'Surface',
                    token: 'ColorsToken.primary.surface',
                    theme: 'N/A',
                    color: ColorsToken.primary.surface,
                    darkColor: ColorsToken.primaryDark.surface,
                    usage: 'Base surface color',
                  ),
                  _ColorSquare(
                    name: 'Surface Dim',
                    token: 'ColorsToken.primary.surfaceDim',
                    theme: 'N/A',
                    color: ColorsToken.primary.surfaceDim,
                    darkColor: ColorsToken.primaryDark.surfaceDim,
                    usage: 'Dim surface variant',
                  ),
                  _ColorSquare(
                    name: 'Surface Dimmer',
                    token: 'ColorsToken.primary.surfaceDimmer',
                    theme: 'N/A',
                    color: ColorsToken.primary.surfaceDimmer,
                    darkColor: ColorsToken.primaryDark.surfaceDimmer,
                    usage: 'Dimmest surface variant',
                  ),
                  _ColorSquare(
                    name: 'Container Low',
                    token: 'ColorsToken.primary.containerLow',
                    theme: 'N/A',
                    color: ColorsToken.primary.containerLow,
                    darkColor: ColorsToken.primaryDark.containerLow,
                    usage: 'Low opacity container',
                  ),
                  _ColorSquare(
                    name: 'Container',
                    token: 'ColorsToken.primary.container',
                    theme: 'Theme.of(context).colorScheme.primaryContainer',
                    color: ColorsToken.primary.container,
                    darkColor: ColorsToken.primaryDark.container,
                    usage: 'Base container color',
                  ),
                  _ColorSquare(
                    name: 'Container High',
                    token: 'ColorsToken.primary.containerHigh',
                    theme: 'N/A',
                    color: ColorsToken.primary.containerHigh,
                    darkColor: ColorsToken.primaryDark.containerHigh,
                    usage: 'High opacity container',
                  ),
                  _ColorSquare(
                    name: 'Outline',
                    token: 'ColorsToken.primary.outline',
                    theme: 'Theme.of(context).colorScheme.outline',
                    color: ColorsToken.primary.outline,
                    darkColor: ColorsToken.primaryDark.outline,
                    usage: 'Primary outline color',
                  ),
                  _ColorSquare(
                    name: 'Outline Variant',
                    token: 'ColorsToken.primary.outlineVariant',
                    theme: 'Theme.of(context).colorScheme.outlineVariant',
                    color: ColorsToken.primary.outlineVariant,
                    darkColor: ColorsToken.primaryDark.outlineVariant,
                    usage: 'Alternative outline color',
                  ),
                ],
              ),
              _ColorGrid(
                name: 'Secondary Colors',
                colors: [
                  _ColorSquare(
                    name: 'Secondary',
                    token: 'ColorsToken.secondary.primary',
                    theme: 'Theme.of(context).colorScheme.secondary',
                    color: ColorsToken.secondary.primary,
                    darkColor: ColorsToken.secondaryDark.primary,
                    usage: 'Secondary brand color',
                  ),
                  _ColorSquare(
                    name: 'Secondary Dim',
                    token: 'ColorsToken.secondary.primaryDim',
                    theme: 'N/A',
                    color: ColorsToken.secondary.primaryDim,
                    darkColor: ColorsToken.secondaryDark.primaryDim,
                    usage: 'Dimmed version of secondary color',
                  ),
                  _ColorSquare(
                    name: 'On Secondary',
                    token: 'ColorsToken.secondary.onPrimary',
                    theme: 'Theme.of(context).colorScheme.onSecondary',
                    color: ColorsToken.secondary.onPrimary,
                    darkColor: ColorsToken.secondaryDark.onPrimary,
                    usage: 'Text/icons on secondary color',
                  ),
                  _ColorSquare(
                    name: 'Secondary Container',
                    token: 'ColorsToken.secondary.container',
                    theme: 'Theme.of(context).colorScheme.secondaryContainer',
                    color: ColorsToken.secondary.container,
                    darkColor: ColorsToken.secondaryDark.container,
                    usage: 'Container background for secondary elements',
                  ),
                  _ColorSquare(
                    name: 'On Secondary Container',
                    token: 'ColorsToken.secondary.onPrimaryVariant',
                    theme: 'Theme.of(context).colorScheme.onSecondaryContainer',
                    color: ColorsToken.secondary.onPrimaryVariant,
                    darkColor: ColorsToken.secondaryDark.onPrimaryVariant,
                    usage: 'Text/icons on secondary container',
                  ),
                ],
              ),
              _ColorGrid(
                name: 'Tertiary Colors',
                colors: [
                  _ColorSquare(
                    name: 'Tertiary',
                    token: 'ColorsToken.tertiary.primary',
                    theme: 'Theme.of(context).colorScheme.tertiary',
                    color: ColorsToken.tertiary.primary,
                    darkColor: ColorsToken.tertiary.primary,
                    usage: 'Tertiary brand color',
                  ),
                  _ColorSquare(
                    name: 'Tertiary Dim',
                    token: 'ColorsToken.tertiary.primaryDim',
                    theme: 'N/A',
                    color: ColorsToken.tertiary.primaryDim,
                    darkColor: ColorsToken.tertiary.primaryDim,
                    usage: 'Dimmed version of tertiary color',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: FPSpacing.xxl),
          _ColorSection(
            title: 'System Colors',
            description: 'Colors for system states and feedback',
            colors: [
              _ColorGrid(
                name: 'Positive Colors',
                colors: [
                  _ColorSquare(
                    name: 'Positive',
                    token: 'ColorsToken.system.positive.primary',
                    theme: 'N/A',
                    color: ColorsToken.system.positive.primary,
                    darkColor: ColorsToken.system.positive.primary,
                    usage: 'Success states, positive feedback',
                  ),
                  _ColorSquare(
                    name: 'Positive Dim',
                    token: 'ColorsToken.system.positive.primaryDim',
                    theme: 'N/A',
                    color: ColorsToken.system.positive.primaryDim,
                    darkColor: ColorsToken.system.positive.primaryDim,
                    usage: 'Dimmed version of positive color',
                  ),
                ],
              ),
              _ColorGrid(
                name: 'Critical Colors',
                colors: [
                  _ColorSquare(
                    name: 'Critical',
                    token: 'ColorsToken.system.critical.primary',
                    theme: 'Theme.of(context).colorScheme.error',
                    color: ColorsToken.system.critical.primary,
                    darkColor: ColorsToken.system.critical.primary,
                    usage: 'Error states, destructive actions',
                  ),
                  _ColorSquare(
                    name: 'Critical Dim',
                    token: 'ColorsToken.system.critical.primaryDim',
                    theme: 'N/A',
                    color: ColorsToken.system.critical.primaryDim,
                    darkColor: ColorsToken.system.critical.primaryDim,
                    usage: 'Dimmed version of critical color',
                  ),
                ],
              ),
              _ColorGrid(
                name: 'Warning Colors',
                colors: [
                  _ColorSquare(
                    name: 'Warning',
                    token: 'ColorsToken.system.warning.primary',
                    theme: 'N/A',
                    color: ColorsToken.system.warning.primary,
                    darkColor: ColorsToken.system.warning.primary,
                    usage: 'Warning states, cautionary feedback',
                  ),
                ],
              ),
              _ColorGrid(
                name: 'Info Colors',
                colors: [
                  _ColorSquare(
                    name: 'Info',
                    token: 'ColorsToken.system.info.info',
                    theme: 'N/A',
                    color: ColorsToken.system.info.info,
                    darkColor: ColorsToken.system.info.info,
                    usage: 'Information states, neutral feedback',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: FPSpacing.xxl),
          _ColorSection(
            title: 'Accent Colors',
            description: 'Additional colors for specific use cases',
            colors: [
              _ColorGrid(
                name: 'Accent Palette',
                colors: [
                  _ColorSquare(
                    name: 'Sunset',
                    token: 'ColorsToken.accent.sunset',
                    theme: 'N/A',
                    color: ColorsToken.accent.sunset,
                    darkColor: ColorsToken.accent.sunset,
                    usage: 'Accent color for sunset theme',
                  ),
                  _ColorSquare(
                    name: 'Gold',
                    token: 'ColorsToken.accent.gold',
                    theme: 'N/A',
                    color: ColorsToken.accent.gold,
                    darkColor: ColorsToken.accent.gold,
                    usage: 'Accent color for gold theme',
                  ),
                  _ColorSquare(
                    name: 'Teal',
                    token: 'ColorsToken.accent.teal',
                    theme: 'N/A',
                    color: ColorsToken.accent.teal,
                    darkColor: ColorsToken.accent.teal,
                    usage: 'Accent color for teal theme',
                  ),
                  _ColorSquare(
                    name: 'Magenta',
                    token: 'ColorsToken.accent.magenta',
                    theme: 'N/A',
                    color: ColorsToken.accent.magenta,
                    darkColor: ColorsToken.accent.magenta,
                    usage: 'Accent color for magenta theme',
                  ),
                  _ColorSquare(
                    name: 'Fuchsia',
                    token: 'ColorsToken.accent.fuchsia',
                    theme: 'N/A',
                    color: ColorsToken.accent.fuchsia,
                    darkColor: ColorsToken.accent.fuchsia,
                    usage: 'Accent color for fuchsia theme',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: FPSpacing.xxl),
          _ColorSection(
            title: 'Miscellaneous Colors',
            description: 'Utility colors for specific purposes',
            colors: [
              _ColorGrid(
                name: 'Utility Colors',
                colors: [
                  _ColorSquare(
                    name: 'Shadow',
                    token: 'ColorsToken.misc.shadow',
                    theme: 'N/A',
                    color: ColorsToken.misc.shadow,
                    darkColor: ColorsToken.misc.shadow,
                    usage: 'Shadow color for elevation',
                  ),
                  _ColorSquare(
                    name: 'Glow',
                    token: 'ColorsToken.misc.glow',
                    theme: 'N/A',
                    color: ColorsToken.misc.glow,
                    darkColor: ColorsToken.misc.glow,
                    usage: 'Glow effect color',
                  ),
                  _ColorSquare(
                    name: 'White Fixed',
                    token: 'ColorsToken.misc.whiteFixed',
                    theme: 'N/A',
                    color: ColorsToken.misc.whiteFixed,
                    darkColor: ColorsToken.misc.whiteFixed,
                    usage: 'Fixed white color (not theme-aware)',
                  ),
                  _ColorSquare(
                    name: 'Black Fixed',
                    token: 'ColorsToken.misc.blackFixed',
                    theme: 'N/A',
                    color: ColorsToken.misc.blackFixed,
                    darkColor: ColorsToken.misc.blackFixed,
                    usage: 'Fixed black color (not theme-aware)',
                  ),
                ],
              ),
              _ColorGrid(
                name: 'Scrim Colors',
                colors: [
                  _ColorSquare(
                    name: 'Scrim 50%',
                    token: 'ColorsToken.misc.scrim.scrim50',
                    theme: 'N/A',
                    color: ColorsToken.misc.scrim.scrim50,
                    darkColor: ColorsToken.misc.scrim.scrim50,
                    usage: '50% opacity scrim overlay',
                  ),
                  _ColorSquare(
                    name: 'Mode Scrim 50%',
                    token: 'ColorsToken.misc.scrim.modeScrim50',
                    theme: 'N/A',
                    color: ColorsToken.misc.scrim.modeScrim50,
                    darkColor: ColorsToken.misc.scrim.modeScrim50,
                    usage: '50% opacity mode-specific scrim',
                  ),
                  _ColorSquare(
                    name: 'Opposite Scrim 50%',
                    token: 'ColorsToken.misc.scrim.oppositeScrim50',
                    theme: 'N/A',
                    color: ColorsToken.misc.scrim.oppositeScrim50,
                    darkColor: ColorsToken.misc.scrim.oppositeScrim50,
                    usage: '50% opacity opposite mode scrim',
                  ),
                ],
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