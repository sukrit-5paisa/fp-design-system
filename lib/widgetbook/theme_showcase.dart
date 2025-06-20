import 'package:flutter/material.dart';
import '../core/theme/spacing.dart';
import '../core/theme/typography.dart';
import '../core/theme/custom_theme_extension.dart';
import 'package:widgetbook/widgetbook.dart';
import '../core/widgets/custom_button.dart';

class ThemeShowcase extends StatelessWidget {
  const ThemeShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final customTheme = theme.extension<CustomThemeExtension>();
    
    // Knobs for CustomButton
    final customButtonLabel = context.knobs.string(label: 'Custom Button Label', initialValue: 'Label');
    final customButtonStyle = context.knobs.listOrNull<CustomButtonStyle>(
      label: 'Custom Button Style',
      options: CustomButtonStyle.values,
      labelBuilder: (value) => value!.toString().split('.').last,
      initialOption: CustomButtonStyle.solid,
    ) ?? CustomButtonStyle.solid;
    final customButtonColor = context.knobs.listOrNull<CustomButtonColor>(
      label: 'Custom Button Color',
      options: CustomButtonColor.values,
      labelBuilder: (value) => value!.toString().split('.').last,
      initialOption: CustomButtonColor.tertiary,
    ) ?? CustomButtonColor.tertiary;
    final showIconLeading = context.knobs.boolean(label: 'Show Icon Leading', initialValue: true);
    final showIconTrailing = context.knobs.boolean(label: 'Show Icon Trailing', initialValue: true);
    final icon = const Icon(Icons.star, size: 20);

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
                if (customTheme != null) ...[
                  _ColorPreview(
                    name: 'Positive (Custom Extension)',
                    color: customTheme.positive,
                    onColor: Colors.white,
                  ),
                  _ColorPreview(
                    name: 'Critical (Custom Extension)',
                    color: customTheme.critical,
                    onColor: Colors.white,
                  ),
                ] else ...[
                  Container(
                    width: 200,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'CustomThemeExtension not found',
                      style: TextStyle(color: Colors.red.shade900),
                    ),
                  ),
                ],
              ],
            ),
          ),
          SizedBox(height: FPSpacing.xl),
          _ThemeSection(
            title: 'Components',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CustomButton with knobs
                CustomButton(
                  label: customButtonLabel,
                  style: customButtonStyle,
                  color: customButtonColor,
                  showIconLeading: showIconLeading,
                  showIconTrailing: showIconTrailing,
                  iconLeading: showIconLeading ? icon : null,
                  iconTrailing: showIconTrailing ? icon : null,
                  onPressed: () {},
                ),
                SizedBox(height: FPSpacing.sm),
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
                SizedBox(height: FPSpacing.md),
                Chip(
                  label: Text('Chip'),
                ),
                SizedBox(height: FPSpacing.md),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                SizedBox(height: FPSpacing.md),
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
                SizedBox(height: FPSpacing.md),
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                SizedBox(height: FPSpacing.md),
                Radio(
                  value: 'Option 1',
                  groupValue: 'Option 1',
                  onChanged: (value) {},
                ),
                SizedBox(height: FPSpacing.md),
                Slider(
                  value: 50,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                ),
                SizedBox(height: FPSpacing.md),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                SizedBox(height: FPSpacing.md),
                Banner(
                  message: 'New',
                  location: BannerLocation.topEnd,
                  child: Text('Banner'),
                ),
                SizedBox(height: FPSpacing.md),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('This is a snack bar'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      ),
                    );
                  },
                  child: Text('Show SnackBar'),
                ),
                SizedBox(height: FPSpacing.md),
                Tooltip(
                  message: 'This is a tooltip',
                  child: Text('Hover over me'),
                ),
                SizedBox(height: FPSpacing.md),
                ListTile(
                  title: Text('List Tile'),
                  subtitle: Text('This is a list tile'),
                ),
                SizedBox(height: FPSpacing.md),
                ExpansionTile(
                  title: Text('Expansion Tile'),
                  children: [
                    Text('This is a expansion tile'),
                  ],
                ),
                SizedBox(height: FPSpacing.md),
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(text: 'Tab 1'),
                          Tab(text: 'Tab 2'),
                        ],
                      ),
                      // Optionally, add TabBarView here if you want to show tab content
                    ],
                  ),
                ),
                SizedBox(height: FPSpacing.md),
                BottomNavigationBar(
                  currentIndex: 0,
                  onTap: (index) {},
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    ),
                  ],
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