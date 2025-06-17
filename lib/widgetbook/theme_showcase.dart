import 'package:flutter/material.dart';
import '../core/theme/spacing.dart';
import '../core/theme/typography.dart';

class ThemeShowcase extends StatelessWidget {
  const ThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return SingleChildScrollView(
      padding: EdgeInsets.all(FPSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Theme Preview',
            style: TypographyTokens.headline.large,
          ),
          SizedBox(height: FPSpacing.xl),
          _ThemeSection(
            title: 'Text Styles',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Headline Large',
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: FPSpacing.sm),
                Text(
                  'Headline Medium',
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: FPSpacing.sm),
                Text(
                  'Body Large',
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: FPSpacing.sm),
                Text(
                  'Body Medium',
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: FPSpacing.sm),
                Text(
                  'Label Large',
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: FPSpacing.xl),
          _ThemeSection(
            title: 'Colors',
            child: Wrap(
              spacing: FPSpacing.md,
              runSpacing: FPSpacing.md,
              children: [
                _ColorPreview(
                  name: 'Primary',
                  color: theme.colorScheme.primary,
                  onColor: theme.colorScheme.onPrimary,
                ),
                _ColorPreview(
                  name: 'Secondary',
                  color: theme.colorScheme.secondary,
                  onColor: theme.colorScheme.onSecondary,
                ),
                _ColorPreview(
                  name: 'Surface',
                  color: theme.colorScheme.surface,
                  onColor: theme.colorScheme.onSurface,
                ),
                _ColorPreview(
                  name: 'Background',
                  color: theme.colorScheme.background,
                  onColor: theme.colorScheme.onBackground,
                ),
              ],
            ),
          ),
          SizedBox(height: FPSpacing.xl),
          _ThemeSection(
            title: 'Components',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                SizedBox(height: FPSpacing.sm),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined Button'),
                ),
                SizedBox(height: FPSpacing.sm),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                SizedBox(height: FPSpacing.md),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Text Field',
                    hintText: 'Enter text here',
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(),
                    disabledBorder: const OutlineInputBorder(),
                    errorBorder: const OutlineInputBorder(),
                    focusedErrorBorder: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(height: FPSpacing.md),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(FPSpacing.md),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card Title',
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: FPSpacing.sm),
                        Text(
                          'This is a sample card component that shows how content looks in the current theme.',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ThemeSection extends StatelessWidget {
  const _ThemeSection({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TypographyTokens.headline.medium.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(height: FPSpacing.md),
        child,
      ],
    );
  }
}

class _ColorPreview extends StatelessWidget {
  const _ColorPreview({
    required this.name,
    required this.color,
    required this.onColor,
  });

  final String name;
  final Color color;
  final Color onColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(FPSpacing.md),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              color: onColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: FPSpacing.xs),
          Text(
            '#${color.value.toRadixString(16).toUpperCase().substring(2)}',
            style: TextStyle(
              color: onColor.withOpacity(0.8),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
} 