import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../core/theme/theme.dart';
import '../../core/theme/typography.dart';

/// Experimental Atomic Widgets for testing the design system
/// These widgets are grouped under experimental for easy deletion if required

@WidgetbookUseCase(name: 'Primary Button', type: FPButton)
Widget primaryButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Primary Button',
    variant: ButtonVariant.primary,
  );
}

@WidgetbookUseCase(name: 'Secondary Button', type: FPButton)
Widget secondaryButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Secondary Button',
    variant: ButtonVariant.secondary,
  );
}

@WidgetbookUseCase(name: 'Tertiary Button', type: FPButton)
Widget tertiaryButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Tertiary Button',
    variant: ButtonVariant.tertiary,
  );
}

@WidgetbookUseCase(name: 'Outlined Button', type: FPButton)
Widget outlinedButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Outlined Button',
    variant: ButtonVariant.outlined,
  );
}

@WidgetbookUseCase(name: 'Text Button', type: FPButton)
Widget textButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Text Button',
    variant: ButtonVariant.text,
  );
}

@WidgetbookUseCase(name: 'Button with Icon', type: FPButton)
Widget buttonWithIconUseCase(BuildContext context) {
  return const FPButton(
    text: 'Button with Icon',
    variant: ButtonVariant.primary,
    icon: Icons.add,
  );
}

@WidgetbookUseCase(name: 'Disabled Button', type: FPButton)
Widget disabledButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Disabled Button',
    variant: ButtonVariant.primary,
    enabled: false,
  );
}

@WidgetbookUseCase(name: 'Loading Button', type: FPButton)
Widget loadingButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Loading Button',
    variant: ButtonVariant.primary,
    isLoading: true,
  );
}

@WidgetbookUseCase(name: 'Small Button', type: FPButton)
Widget smallButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Small Button',
    variant: ButtonVariant.primary,
    size: ButtonSize.small,
  );
}

@WidgetbookUseCase(name: 'Large Button', type: FPButton)
Widget largeButtonUseCase(BuildContext context) {
  return const FPButton(
    text: 'Large Button',
    variant: ButtonVariant.primary,
    size: ButtonSize.large,
  );
}

@WidgetbookUseCase(name: 'Basic Card', type: FPCard)
Widget basicCardUseCase(BuildContext context) {
  return const FPCard(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text('Basic Card Content'),
    ),
  );
}

@WidgetbookUseCase(name: 'Card with Title', type: FPCard)
Widget cardWithTitleUseCase(BuildContext context) {
  return const FPCard(
    title: 'Card Title',
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text('Card with title and content'),
    ),
  );
}

@WidgetbookUseCase(name: 'Card with Actions', type: FPCard)
Widget cardWithActionsUseCase(BuildContext context) {
  return const FPCard(
    title: 'Card with Actions',
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text('Card content with action buttons'),
    ),
    actions: [
      FPButton(text: 'Action 1', variant: ButtonVariant.text),
      FPButton(text: 'Action 2', variant: ButtonVariant.primary),
    ],
  );
}

@WidgetbookUseCase(name: 'Basic Input', type: FPInput)
Widget basicInputUseCase(BuildContext context) {
  return const FPInput(
    label: 'Basic Input',
    placeholder: 'Enter text here',
  );
}

@WidgetbookUseCase(name: 'Input with Helper Text', type: FPInput)
Widget inputWithHelperTextUseCase(BuildContext context) {
  return const FPInput(
    label: 'Input with Helper',
    placeholder: 'Enter text here',
    helperText: 'This is helper text to guide the user',
  );
}

@WidgetbookUseCase(name: 'Input with Error', type: FPInput)
Widget inputWithErrorUseCase(BuildContext context) {
  return const FPInput(
    label: 'Input with Error',
    placeholder: 'Enter text here',
    errorText: 'This field is required',
    hasError: true,
  );
}

@WidgetbookUseCase(name: 'Input with Icon', type: FPInput)
Widget inputWithIconUseCase(BuildContext context) {
  return const FPInput(
    label: 'Input with Icon',
    placeholder: 'Search...',
    prefixIcon: Icons.search,
  );
}

@WidgetbookUseCase(name: 'Password Input', type: FPInput)
Widget passwordInputUseCase(BuildContext context) {
  return const FPInput(
    label: 'Password',
    placeholder: 'Enter password',
    isPassword: true,
  );
}

@WidgetbookUseCase(name: 'Basic Badge', type: FPBadge)
Widget basicBadgeUseCase(BuildContext context) {
  return const FPBadge(
    text: 'Badge',
  );
}

@WidgetbookUseCase(name: 'Badge with Icon', type: FPBadge)
Widget badgeWithIconUseCase(BuildContext context) {
  return const FPBadge(
    text: 'Badge with Icon',
    icon: Icons.star,
  );
}

@WidgetbookUseCase(name: 'Success Badge', type: FPBadge)
Widget successBadgeUseCase(BuildContext context) {
  return const FPBadge(
    text: 'Success',
    variant: BadgeVariant.success,
  );
}

@WidgetbookUseCase(name: 'Warning Badge', type: FPBadge)
Widget warningBadgeUseCase(BuildContext context) {
  return const FPBadge(
    text: 'Warning',
    variant: BadgeVariant.warning,
  );
}

@WidgetbookUseCase(name: 'Error Badge', type: FPBadge)
Widget errorBadgeUseCase(BuildContext context) {
  return const FPBadge(
    text: 'Error',
    variant: BadgeVariant.error,
  );
}

@WidgetbookUseCase(name: 'Info Badge', type: FPBadge)
Widget infoBadgeUseCase(BuildContext context) {
  return const FPBadge(
    text: 'Info',
    variant: BadgeVariant.info,
  );
}

@WidgetbookUseCase(name: 'Basic Chip', type: FPChip)
Widget basicChipUseCase(BuildContext context) {
  return const FPChip(
    label: 'Basic Chip',
  );
}

@WidgetbookUseCase(name: 'Chip with Icon', type: FPChip)
Widget chipWithIconUseCase(BuildContext context) {
  return const FPChip(
    label: 'Chip with Icon',
    icon: Icons.favorite,
  );
}

@WidgetbookUseCase(name: 'Chip with Avatar', type: FPChip)
Widget chipWithAvatarUseCase(BuildContext context) {
  return const FPChip(
    label: 'Chip with Avatar',
    avatar: CircleAvatar(
      child: Text('A'),
    ),
  );
}

@WidgetbookUseCase(name: 'Deletable Chip', type: FPChip)
Widget deletableChipUseCase(BuildContext context) {
  return const FPChip(
    label: 'Deletable Chip',
    onDeleted: null,
  );
}

@WidgetbookUseCase(name: 'Basic Divider', type: FPDivider)
Widget basicDividerUseCase(BuildContext context) {
  return const Column(
    children: [
      Text('Content above'),
      FPDivider(),
      Text('Content below'),
    ],
  );
}

@WidgetbookUseCase(name: 'Divider with Text', type: FPDivider)
Widget dividerWithTextUseCase(BuildContext context) {
  return const Column(
    children: [
      Text('Content above'),
      FPDivider(text: 'OR'),
      Text('Content below'),
    ],
  );
}

@WidgetbookUseCase(name: 'Vertical Divider', type: FPDivider)
Widget verticalDividerUseCase(BuildContext context) {
  return const Row(
    children: [
      Text('Left'),
      FPDivider(vertical: true),
      Text('Right'),
    ],
  );
}

@WidgetbookUseCase(name: 'Basic Spacer', type: FPSpacer)
Widget basicSpacerUseCase(BuildContext context) {
  return const Column(
    children: [
      Text('Top content'),
      FPSpacer(),
      Text('Bottom content'),
    ],
  );
}

@WidgetbookUseCase(name: 'Spacer with Size', type: FPSpacer)
Widget spacerWithSizeUseCase(BuildContext context) {
  return const Column(
    children: [
      Text('Top content'),
      FPSpacer(size: 32),
      Text('Bottom content'),
    ],
  );
}

@WidgetbookUseCase(name: 'Horizontal Spacer', type: FPSpacer)
Widget horizontalSpacerUseCase(BuildContext context) {
  return const Row(
    children: [
      Text('Left'),
      FPSpacer(horizontal: true),
      Text('Right'),
    ],
  );
}

@WidgetbookUseCase(name: 'Basic Avatar', type: FPAvatar)
Widget basicAvatarUseCase(BuildContext context) {
  return const FPAvatar(
    child: Text('JD'),
  );
}

@WidgetbookUseCase(name: 'Avatar with Image', type: FPAvatar)
Widget avatarWithImageUseCase(BuildContext context) {
  return const FPAvatar(
    backgroundImage: NetworkImage('https://via.placeholder.com/40'),
  );
}

@WidgetbookUseCase(name: 'Large Avatar', type: FPAvatar)
Widget largeAvatarUseCase(BuildContext context) {
  return const FPAvatar(
    radius: 32,
    child: Text('JD'),
  );
}

@WidgetbookUseCase(name: 'Small Avatar', type: FPAvatar)
Widget smallAvatarUseCase(BuildContext context) {
  return const FPAvatar(
    radius: 16,
    child: Text('JD'),
  );
}

@WidgetbookUseCase(name: 'Basic Skeleton', type: FPSkeleton)
Widget basicSkeletonUseCase(BuildContext context) {
  return const FPSkeleton(
    width: 200,
    height: 20,
  );
}

@WidgetbookUseCase(name: 'Text Skeleton', type: FPSkeleton)
Widget textSkeletonUseCase(BuildContext context) {
  return const Column(
    children: [
      FPSkeleton(width: 300, height: 24),
      SizedBox(height: 8),
      FPSkeleton(width: 250, height: 16),
      SizedBox(height: 8),
      FPSkeleton(width: 200, height: 16),
    ],
  );
}

@WidgetbookUseCase(name: 'Card Skeleton', type: FPSkeleton)
Widget cardSkeletonUseCase(BuildContext context) {
  return const FPSkeleton(
    width: 300,
    height: 200,
    borderRadius: 12,
  );
}

@WidgetbookUseCase(name: 'Circular Skeleton', type: FPSkeleton)
Widget circularSkeletonUseCase(BuildContext context) {
  return const FPSkeleton(
    width: 40,
    height: 40,
    borderRadius: 20,
  );
} 