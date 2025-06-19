import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';

// ============================================================================
// LIST TILE
// ============================================================================

class FPListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool enabled;
  final bool selected;
  final bool autofocus;
  final Color? tileColor;
  final Color? selectedTileColor;
  final Color? iconColor;
  final Color? textColor;
  final Color? selectedColor;
  final ListTileStyle? style;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? contentPadding;
  final bool dense;
  final VisualDensity? visualDensity;
  final FocusNode? focusNode;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  final double? horizontalTitleGap;
  final double? minTileHeight;
  final bool? enableFeedback;

  const FPListTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
    this.enabled = true,
    this.selected = false,
    this.autofocus = false,
    this.tileColor,
    this.selectedTileColor,
    this.iconColor,
    this.textColor,
    this.selectedColor,
    this.style,
    this.shape,
    this.contentPadding,
    this.dense = false,
    this.visualDensity,
    this.focusNode,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.horizontalTitleGap,
    this.minTileHeight,
    this.enableFeedback,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
      onLongPress: onLongPress,
      enabled: enabled,
      selected: selected,
      autofocus: autofocus,
      tileColor: tileColor,
      selectedTileColor: selectedTileColor ?? colorScheme.primaryContainer,
      iconColor: iconColor,
      textColor: textColor,
      selectedColor: selectedColor ?? colorScheme.onPrimaryContainer,
      style: style,
      shape: shape,
      contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: FPSpacing.lg, vertical: FPSpacing.sm),
      dense: dense,
      visualDensity: visualDensity,
      focusNode: focusNode,
      minVerticalPadding: minVerticalPadding,
      minLeadingWidth: minLeadingWidth,
      horizontalTitleGap: horizontalTitleGap,
      minTileHeight: minTileHeight,
      enableFeedback: enableFeedback,
    );
  }
}

// ============================================================================
// LIST WITH AVATARS
// ============================================================================

class FPListTileWithAvatar extends StatelessWidget {
  final String? avatarUrl;
  final String? avatarText;
  final IconData? avatarIcon;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool enabled;
  final bool selected;
  final Color? avatarBackgroundColor;
  final double avatarRadius;

  const FPListTileWithAvatar({
    super.key,
    this.avatarUrl,
    this.avatarText,
    this.avatarIcon,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.enabled = true,
    this.selected = false,
    this.avatarBackgroundColor,
    this.avatarRadius = 20,
  }) : assert(avatarUrl != null || avatarText != null || avatarIcon != null);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Widget avatar;
    if (avatarUrl != null) {
      avatar = CircleAvatar(
        radius: avatarRadius,
        backgroundImage: NetworkImage(avatarUrl!),
      );
    } else if (avatarText != null) {
      avatar = CircleAvatar(
        radius: avatarRadius,
        backgroundColor: avatarBackgroundColor ?? colorScheme.primary,
        child: Text(
          avatarText!,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onPrimary,
          ),
        ),
      );
    } else {
      avatar = CircleAvatar(
        radius: avatarRadius,
        backgroundColor: avatarBackgroundColor ?? colorScheme.primary,
        child: Icon(
          avatarIcon,
          color: colorScheme.onPrimary,
        ),
      );
    }

    return FPListTile(
      leading: avatar,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
      enabled: enabled,
      selected: selected,
    );
  }
}

// ============================================================================
// LIST WITH ICONS
// ============================================================================

class FPListTileWithIcon extends StatelessWidget {
  final IconData icon;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool enabled;
  final bool selected;
  final Color? iconColor;
  final double iconSize;

  const FPListTileWithIcon({
    super.key,
    required this.icon,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.enabled = true,
    this.selected = false,
    this.iconColor,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FPListTile(
      leading: Icon(
        icon,
        color: iconColor ?? colorScheme.onSurfaceVariant,
        size: iconSize,
      ),
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
      enabled: enabled,
      selected: selected,
    );
  }
}

// ============================================================================
// LIST WITH ACTIONS
// ============================================================================

class FPListTileWithActions extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final List<Widget> actions;
  final VoidCallback? onTap;
  final bool enabled;
  final bool selected;
  final bool showDivider;

  const FPListTileWithActions({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    required this.actions,
    this.onTap,
    this.enabled = true,
    this.selected = false,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FPListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: actions.map((action) => Padding(
              padding: const EdgeInsets.only(left: FPSpacing.sm),
              child: action,
            )).toList(),
          ),
          onTap: onTap,
          enabled: enabled,
          selected: selected,
        ),
        if (showDivider) const Divider(height: 1),
      ],
    );
  }
}

// ============================================================================
// LIST WITH CHECKBOXES
// ============================================================================

class FPListTileWithCheckbox extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final bool enabled;
  final bool selected;
  final Color? activeColor;
  final Color? checkColor;
  final bool tristate;

  const FPListTileWithCheckbox({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    required this.value,
    this.onChanged,
    this.enabled = true,
    this.selected = false,
    this.activeColor,
    this.checkColor,
    this.tristate = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FPListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: Checkbox(
        value: value,
        onChanged: enabled ? onChanged : null,
        activeColor: activeColor ?? colorScheme.primary,
        checkColor: checkColor ?? colorScheme.onPrimary,
        tristate: tristate,
      ),
      onTap: enabled && onChanged != null ? () => onChanged!(!value) : null,
      enabled: enabled,
      selected: selected,
    );
  }
}

// ============================================================================
// LIST WITH RADIO BUTTONS
// ============================================================================

class FPListTileWithRadio<T> extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final bool selected;
  final Color? activeColor;

  const FPListTileWithRadio({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.enabled = true,
    this.selected = false,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FPListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: Radio<T>(
        value: value,
        groupValue: groupValue,
        onChanged: enabled ? onChanged : null,
        activeColor: activeColor ?? colorScheme.primary,
      ),
      onTap: enabled && onChanged != null ? () => onChanged!(value) : null,
      enabled: enabled,
      selected: selected,
    );
  }
}

// ============================================================================
// LIST WITH SWITCHES
// ============================================================================

class FPListTileWithSwitch extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool enabled;
  final bool selected;
  final Color? activeColor;
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;

  const FPListTileWithSwitch({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    required this.value,
    this.onChanged,
    this.enabled = true,
    this.selected = false,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return FPListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: Switch(
        value: value,
        onChanged: enabled ? onChanged : null,
        activeColor: activeColor ?? colorScheme.primary,
        activeTrackColor: activeTrackColor ?? colorScheme.primaryContainer,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
      ),
      onTap: enabled && onChanged != null ? () => onChanged!(!value) : null,
      enabled: enabled,
      selected: selected,
    );
  }
}

// ============================================================================
// LIST HELPERS
// ============================================================================

class FPListHelpers {
  static Widget createListTile({
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
    bool enabled = true,
    bool selected = false,
  }) {
    return FPListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
      enabled: enabled,
      selected: selected,
    );
  }

  static Widget createListTileWithAvatar({
    String? avatarUrl,
    String? avatarText,
    IconData? avatarIcon,
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
    bool enabled = true,
    bool selected = false,
  }) {
    return FPListTileWithAvatar(
      avatarUrl: avatarUrl,
      avatarText: avatarText,
      avatarIcon: avatarIcon,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
      enabled: enabled,
      selected: selected,
    );
  }

  static Widget createListTileWithIcon({
    required IconData icon,
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
    bool enabled = true,
    bool selected = false,
  }) {
    return FPListTileWithIcon(
      icon: icon,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
      enabled: enabled,
      selected: selected,
    );
  }

  static Widget createListTileWithActions({
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    required List<Widget> actions,
    VoidCallback? onTap,
    bool enabled = true,
    bool selected = false,
  }) {
    return FPListTileWithActions(
      leading: leading,
      title: title,
      subtitle: subtitle,
      actions: actions,
      onTap: onTap,
      enabled: enabled,
      selected: selected,
    );
  }

  static Widget createListTileWithCheckbox({
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    required bool value,
    ValueChanged<bool?>? onChanged,
    bool enabled = true,
    bool selected = false,
  }) {
    return FPListTileWithCheckbox(
      leading: leading,
      title: title,
      subtitle: subtitle,
      value: value,
      onChanged: onChanged,
      enabled: enabled,
      selected: selected,
    );
  }

  static Widget createListTileWithRadio<T>({
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    required T value,
    required T? groupValue,
    ValueChanged<T?>? onChanged,
    bool enabled = true,
    bool selected = false,
  }) {
    return FPListTileWithRadio<T>(
      leading: leading,
      title: title,
      subtitle: subtitle,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      enabled: enabled,
      selected: selected,
    );
  }

  static Widget createListTileWithSwitch({
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    required bool value,
    ValueChanged<bool>? onChanged,
    bool enabled = true,
    bool selected = false,
  }) {
    return FPListTileWithSwitch(
      leading: leading,
      title: title,
      subtitle: subtitle,
      value: value,
      onChanged: onChanged,
      enabled: enabled,
      selected: selected,
    );
  }
}