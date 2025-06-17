import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import '../core/theme/typography.dart';
import '../core/theme/spacing.dart';

class TypographyShowcase extends StatelessWidget {
  final BuildContext knobContext;
  const TypographyShowcase({required this.knobContext, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(FPSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Typography System',
            style: TypographyTokens.headline.large,
          ),
          SizedBox(height: FPSpacing.xl),
          _TypographySection(
            title: 'Display',
            description: 'Large, attention-grabbing text for hero sections and main headlines',
            styles: [
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Display Large',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Bold)',
                    style: TypographyTokens.display.large,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Large Text',
                      initialValue: 'Display Large Text',
                    ),
                    usage: 'Hero sections, main headlines',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Lighter (Semibold)',
                    style: TypographyTokens.display.largeLighter,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Large Lighter Text',
                      initialValue: 'Display Large Text',
                    ),
                    usage: 'Alternative headline style',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Heavier (Black)',
                    style: TypographyTokens.display.largeHeavier,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Large Heavier Text',
                      initialValue: 'Display Large Text',
                    ),
                    usage: 'Emphasized headlines',
                  ),
                ],
                paragraphSpacing: TypographyTokens.display.paragraphSpacingLarge,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Display Medium',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Bold)',
                    style: TypographyTokens.display.medium,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Medium Text',
                      initialValue: 'Display Medium Text',
                    ),
                    usage: 'Section headlines, feature titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Lighter (Semibold)',
                    style: TypographyTokens.display.mediumLighter,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Medium Lighter Text',
                      initialValue: 'Display Medium Text',
                    ),
                    usage: 'Alternative section headlines',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Heavier (Black)',
                    style: TypographyTokens.display.mediumHeavier,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Medium Heavier Text',
                      initialValue: 'Display Medium Text',
                    ),
                    usage: 'Emphasized section titles',
                  ),
                ],
                paragraphSpacing: TypographyTokens.display.paragraphSpacingMedium,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Display Small',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Bold)',
                    style: TypographyTokens.display.small,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Small Text',
                      initialValue: 'Display Small Text',
                    ),
                    usage: 'Subsection headlines, card titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Lighter (Semibold)',
                    style: TypographyTokens.display.smallLighter,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Small Lighter Text',
                      initialValue: 'Display Small Text',
                    ),
                    usage: 'Alternative subsection titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Heavier (Black)',
                    style: TypographyTokens.display.smallHeavier,
                    sampleText: knobContext.knobs.string(
                      label: 'Display Small Heavier Text',
                      initialValue: 'Display Small Text',
                    ),
                    usage: 'Emphasized subsection titles',
                  ),
                ],
                paragraphSpacing: TypographyTokens.display.paragraphSpacingSmall,
              ),
            ],
          ),
          SizedBox(height: FPSpacing.xxl),
          _TypographySection(
            title: 'Headline',
            description: 'Hierarchical text styles for section and content organization',
            styles: [
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Headline Large',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Semibold)',
                    style: TypographyTokens.headline.large,
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Large Text',
                      initialValue: 'Headline Large Text',
                    ),
                    usage: 'Page titles, major sections',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.headline.large.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Large Lighter Text',
                      initialValue: 'Headline Large Text',
                    ),
                    usage: 'Alternative page titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.headline.large.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Large Heavier Text',
                      initialValue: 'Headline Large Text',
                    ),
                    usage: 'Emphasized page titles',
                  ),
                ],
                paragraphSpacing: TypographyTokens.headline.paragraphSpacingLarge,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Headline Medium',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Semibold)',
                    style: TypographyTokens.headline.medium,
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Medium Text',
                      initialValue: 'Headline Medium Text',
                    ),
                    usage: 'Section headers, important content',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.headline.medium.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Medium Lighter Text',
                      initialValue: 'Headline Medium Text',
                    ),
                    usage: 'Alternative section headers',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.headline.medium.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Medium Heavier Text',
                      initialValue: 'Headline Medium Text',
                    ),
                    usage: 'Emphasized section headers',
                  ),
                ],
                paragraphSpacing: TypographyTokens.headline.paragraphSpacingMedium,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Headline Small',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Semibold)',
                    style: TypographyTokens.headline.small,
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Small Text',
                      initialValue: 'Headline Small Text',
                    ),
                    usage: 'Subsection headers, card titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Small Lighter',
                    style: TypographyTokens.headline.small.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Small Lighter Text',
                      initialValue: 'Headline Small Text',
                    ),
                    usage: 'Alternative subsection headers',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Small Heavier',
                    style: TypographyTokens.headline.small.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Headline Small Heavier Text',
                      initialValue: 'Headline Small Text',
                    ),
                    usage: 'Emphasized subsection headers',
                  ),
                ],
                paragraphSpacing: TypographyTokens.headline.paragraphSpacingSmall,
              ),
            ],
          ),
          SizedBox(height: FPSpacing.xxl),
          _TypographySection(
            title: 'Title',
            description: 'Text styles for content titles and important labels',
            styles: [
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Title Large',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Semibold)',
                    style: TypographyTokens.title.large,
                    sampleText: knobContext.knobs.string(
                      label: 'Title Large Text',
                      initialValue: 'Title Large Text',
                    ),
                    usage: 'Content titles, important labels',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.title.large.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Title Large Lighter Text',
                      initialValue: 'Title Large Text',
                    ),
                    usage: 'Alternative content titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.title.large.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Title Large Heavier Text',
                      initialValue: 'Title Large Text',
                    ),
                    usage: 'Emphasized content titles',
                  ),
                ],
                paragraphSpacing: TypographyTokens.title.paragraphSpacingLarge,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Title Medium',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Semibold)',
                    style: TypographyTokens.title.medium,
                    sampleText: knobContext.knobs.string(
                      label: 'Title Medium Text',
                      initialValue: 'Title Medium Text',
                    ),
                    usage: 'Subsection titles, card headers',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.title.medium.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Title Medium Lighter Text',
                      initialValue: 'Title Medium Text',
                    ),
                    usage: 'Alternative subsection titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.title.medium.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Title Medium Heavier Text',
                      initialValue: 'Title Medium Text',
                    ),
                    usage: 'Emphasized subsection titles',
                  ),
                ],
                paragraphSpacing: TypographyTokens.title.paragraphSpacingMedium,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Title Small',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Semibold)',
                    style: TypographyTokens.title.small,
                    sampleText: knobContext.knobs.string(
                      label: 'Title Small Text',
                      initialValue: 'Title Small Text',
                    ),
                    usage: 'Minor titles, list headers',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.title.small.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Title Small Lighter Text',
                      initialValue: 'Title Small Text',
                    ),
                    usage: 'Alternative minor titles',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.title.small.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Title Small Heavier Text',
                      initialValue: 'Title Small Text',
                    ),
                    usage: 'Emphasized minor titles',
                  ),
                ],
                paragraphSpacing: TypographyTokens.title.paragraphSpacingSmall,
              ),
            ],
          ),
          SizedBox(height: FPSpacing.xxl),
          _TypographySection(
            title: 'Body',
            description: 'Text styles for main content and general reading',
            styles: [
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Body Large',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Regular)',
                    style: TypographyTokens.body.large,
                    sampleText: knobContext.knobs.string(
                      label: 'Body Large Text',
                      initialValue: 'Body Large Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Main content, important paragraphs',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.body.large.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Body Large Lighter Text',
                      initialValue: 'Body Large Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Secondary content, less emphasis',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.body.large.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Body Large Heavier Text',
                      initialValue: 'Body Large Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Emphasized content, important text',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Caps (Medium)',
                    style: TypographyTokens.body.largeCaps,
                    sampleText: knobContext.knobs.string(
                      label: 'Body Large Caps Text',
                      initialValue: 'BODY LARGE CAPS TEXT',
                    ),
                    usage: 'Emphasized content, section headers',
                  ),
                ],
                paragraphSpacing: TypographyTokens.body.paragraphSpacingLarge,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Body Medium',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Regular)',
                    style: TypographyTokens.body.medium,
                    sampleText: knobContext.knobs.string(
                      label: 'Body Medium Text',
                      initialValue: 'Body Medium Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'General content, regular paragraphs',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.body.medium.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Body Medium Lighter Text',
                      initialValue: 'Body Medium Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Secondary content, less emphasis',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.body.medium.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Body Medium Heavier Text',
                      initialValue: 'Body Medium Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Emphasized content, regular paragraphs',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Caps (Medium)',
                    style: TypographyTokens.body.mediumCaps,
                    sampleText: knobContext.knobs.string(
                      label: 'Body Medium Caps Text',
                      initialValue: 'BODY MEDIUM CAPS TEXT',
                    ),
                    usage: 'Navigation items, emphasized labels',
                  ),
                ],
                paragraphSpacing: TypographyTokens.body.paragraphSpacingMedium,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Body Small',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Regular)',
                    style: TypographyTokens.body.small,
                    sampleText: knobContext.knobs.string(
                      label: 'Body Small Text',
                      initialValue: 'Body Small Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Secondary content, captions',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.body.small.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Body Small Lighter Text',
                      initialValue: 'Body Small Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Secondary content, less emphasis',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.body.small.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Body Small Heavier Text',
                      initialValue: 'Body Small Text - The quick brown fox jumps over the lazy dog',
                    ),
                    usage: 'Emphasized content, captions',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Caps (Medium)',
                    style: TypographyTokens.body.smallCaps,
                    sampleText: knobContext.knobs.string(
                      label: 'Body Small Caps Text',
                      initialValue: 'BODY SMALL CAPS TEXT',
                    ),
                    usage: 'Small emphasized text, tags',
                  ),
                ],
                paragraphSpacing: TypographyTokens.body.paragraphSpacingSmall,
              ),
            ],
          ),
          SizedBox(height: FPSpacing.xxl),
          _TypographySection(
            title: 'Label',
            description: 'Text styles for UI elements and small text',
            styles: [
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Label Large',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Medium)',
                    style: TypographyTokens.label.large,
                    sampleText: knobContext.knobs.string(
                      label: 'Label Large Text',
                      initialValue: 'Label Large Text',
                    ),
                    usage: 'Form labels, important UI text',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.label.large.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Label Large Lighter Text',
                      initialValue: 'Label Large Text',
                    ),
                    usage: 'Secondary labels, less emphasis',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.label.large.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Label Large Heavier Text',
                      initialValue: 'Label Large Text',
                    ),
                    usage: 'Emphasized labels, important UI text',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Caps (Medium)',
                    style: TypographyTokens.label.largeCaps,
                    sampleText: knobContext.knobs.string(
                      label: 'Label Large Caps Text',
                      initialValue: 'LABEL LARGE CAPS TEXT',
                    ),
                    usage: 'Emphasized labels, navigation',
                  ),
                ],
                paragraphSpacing: TypographyTokens.label.paragraphSpacingLarge,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Label Medium',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Medium)',
                    style: TypographyTokens.label.medium,
                    sampleText: knobContext.knobs.string(
                      label: 'Label Medium Text',
                      initialValue: 'Label Medium Text',
                    ),
                    usage: 'Button labels, navigation items',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.label.medium.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Label Medium Lighter Text',
                      initialValue: 'Label Medium Text',
                    ),
                    usage: 'Secondary labels, less emphasis',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.label.medium.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Label Medium Heavier Text',
                      initialValue: 'Label Medium Text',
                    ),
                    usage: 'Emphasized labels, important UI text',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Caps (Medium)',
                    style: TypographyTokens.label.mediumCaps,
                    sampleText: knobContext.knobs.string(
                      label: 'Label Medium Caps Text',
                      initialValue: 'LABEL MEDIUM CAPS TEXT',
                    ),
                    usage: 'Button text, emphasized UI elements',
                  ),
                ],
                paragraphSpacing: TypographyTokens.label.paragraphSpacingMedium,
              ),
              _TypographyVariantGroup(
                knobContext: knobContext,
                name: 'Label Small',
                variants: [
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Default (Medium)',
                    style: TypographyTokens.label.small,
                    sampleText: knobContext.knobs.string(
                      label: 'Label Small Text',
                      initialValue: 'Label Small Text',
                    ),
                    usage: 'Small UI elements, tags',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Lighter',
                    style: TypographyTokens.label.small.copyWith(fontWeight: FontWeight.w400),
                    sampleText: knobContext.knobs.string(
                      label: 'Label Small Lighter Text',
                      initialValue: 'Label Small Text',
                    ),
                    usage: 'Secondary labels, less emphasis',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Medium Heavier',
                    style: TypographyTokens.label.small.copyWith(fontWeight: FontWeight.w600),
                    sampleText: knobContext.knobs.string(
                      label: 'Label Small Heavier Text',
                      initialValue: 'Label Small Text',
                    ),
                    usage: 'Emphasized labels, small UI text',
                  ),
                  _TypographyItem(
                    knobContext: knobContext,
                    name: 'Caps (Medium)',
                    style: TypographyTokens.label.smallCaps,
                    sampleText: knobContext.knobs.string(
                      label: 'Label Small Caps Text',
                      initialValue: 'LABEL SMALL CAPS TEXT',
                    ),
                    usage: 'Small emphasized UI text, tags',
                  ),
                ],
                paragraphSpacing: TypographyTokens.label.paragraphSpacingSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TypographySection extends StatelessWidget {
  final String title;
  final String description;
  final List<_TypographyVariantGroup> styles;
  const _TypographySection({
    required this.title,
    required this.description,
    required this.styles,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TypographyTokens.headline.medium.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: FPSpacing.xs),
        Text(
          description,
          style: TypographyTokens.body.medium.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(height: FPSpacing.lg),
        ...styles.map((style) => Padding(
              padding: EdgeInsets.only(bottom: FPSpacing.lg),
              child: style,
            )),
      ],
    );
  }
}

class _TypographyVariantGroup extends StatelessWidget {
  final BuildContext knobContext;
  final String name;
  final List<_TypographyItem> variants;
  final double paragraphSpacing;
  const _TypographyVariantGroup({
    required this.knobContext,
    required this.name,
    required this.variants,
    required this.paragraphSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TypographyTokens.label.medium.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: FPSpacing.sm),
        ...variants.map((variant) => Padding(
              padding: EdgeInsets.only(bottom: FPSpacing.md),
              child: variant,
            )),
        Container(
          padding: EdgeInsets.all(FPSpacing.sm),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceVariant.withOpacity(0.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Icon(
                Icons.format_line_spacing,
                size: 16,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              SizedBox(width: FPSpacing.xs),
              Text(
                'Paragraph Spacing: ${paragraphSpacing}px',
                style: TypographyTokens.label.small.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TypographyItem extends StatelessWidget {
  final BuildContext knobContext;
  final String name;
  final TextStyle style;
  final String sampleText;
  final String usage;
  const _TypographyItem({
    required this.knobContext,
    required this.name,
    required this.style,
    required this.sampleText,
    required this.usage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(FPSpacing.lg),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TypographyTokens.label.medium.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    SizedBox(height: FPSpacing.xs),
                    Text(
                      usage,
                      style: TypographyTokens.body.small.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: FPSpacing.sm,
                  vertical: FPSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '${style.fontSize?.toInt() ?? 0}px / ${style.height?.toStringAsFixed(2) ?? 1.0} / ${style.letterSpacing?.toInt() ?? 0}px',
                  style: TypographyTokens.label.small.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: FPSpacing.md),
          Text(
            sampleText,
            style: style.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
} 