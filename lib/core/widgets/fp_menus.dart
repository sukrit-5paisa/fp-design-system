import 'package:flutter/material.dart';

// ============================================================================
// DROPDOWN MENU
// ============================================================================

class FPDropdownMenu<T> extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final List<FPDropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final bool isExpanded;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final InputDecoration? inputDecoration;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final bool isDense;

  const FPDropdownMenu({
    super.key,
    this.labelText,
    this.hintText,
    required this.items,
    this.value,
    this.onChanged,
    this.enabled = true,
    this.isExpanded = false,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.padding,
    this.inputDecoration,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.isDense = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DropdownMenu<T>(
      label: labelText != null ? Text(labelText!) : null,
      hintText: hintText,
      initialSelection: value,
      onSelected: onChanged,
      enabled: enabled,
      width: isExpanded ? double.infinity : null,
      menuStyle: MenuStyle(
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? colorScheme.surface,
        ),
        surfaceTintColor: MaterialStateProperty.all(
          surfaceTintColor,
        ),
        elevation: MaterialStateProperty.all(elevation),
        padding: MaterialStateProperty.all(padding),
      ),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: colorScheme.onSurfaceVariant,
        suffixIconColor: colorScheme.onSurfaceVariant,
        errorStyle: theme.textTheme.bodySmall?.copyWith(
          color: colorScheme.error,
        ),
      ),
      dropdownMenuEntries: items.map((item) => DropdownMenuEntry<T>(
        value: item.value,
        label: item.label,
        leadingIcon: item.leadingIcon,
        trailingIcon: item.trailingIcon,
        enabled: item.enabled,
      )).toList(),
    );
  }
}

class FPDropdownMenuItem<T> {
  final T value;
  final String label;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool enabled;

  const FPDropdownMenuItem({
    required this.value,
    required this.label,
    this.leadingIcon,
    this.trailingIcon,
    this.enabled = true,
  });
}

// ============================================================================
// EXPOSED DROPDOWN MENU
// ============================================================================

class FPExposedDropdownMenu<T> extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final List<FPDropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final bool enabled;
  final bool isExpanded;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final InputDecoration? inputDecoration;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final bool isDense;

  const FPExposedDropdownMenu({
    super.key,
    this.labelText,
    this.hintText,
    required this.items,
    this.value,
    this.onChanged,
    this.enabled = true,
    this.isExpanded = false,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.padding,
    this.inputDecoration,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.isDense = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DropdownButtonFormField<T>(
      value: value,
      onChanged: enabled ? onChanged : null,
      decoration: inputDecoration ?? InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorText: errorText,
        border: const OutlineInputBorder(),
        isDense: isDense,
      ),
      items: items.map((item) => DropdownMenuItem<T>(
        value: item.value,
        enabled: item.enabled,
        child: Row(
          children: [
            if (item.leadingIcon != null) ...[
              item.leadingIcon!,
              const SizedBox(width: 8),
            ],
            Expanded(child: Text(item.label)),
            if (item.trailingIcon != null) ...[
              const SizedBox(width: 8),
              item.trailingIcon!,
            ],
          ],
        ),
      )).toList(),
      isExpanded: isExpanded,
    );
  }
}

// ============================================================================
// MENU
// ============================================================================

class FPMenu extends StatelessWidget {
  final List<FPMenuItem> items;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final double? width;
  final double? height;

  const FPMenu({
    super.key,
    required this.items,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.padding,
    this.shape,
    this.clipBehavior = Clip.none,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return MenuBar(
      children: items.map((item) => _buildMenuItem(context, item)).toList(),
    );
  }

  Widget _buildMenuItem(BuildContext context, FPMenuItem item) {
    if (item is FPMenuSubmenuItem) {
      return SubmenuButton(
        menuChildren: item.children.map((child) => _buildMenuItem(context, child)).toList(),
        child: Text(item.label),
      );
    } else if (item is FPMenuActionItem) {
      return MenuItemButton(
        onPressed: item.onPressed,
        leadingIcon: item.leadingIcon,
        trailingIcon: item.trailingIcon,
        child: Text(item.label),
      );
    } else if (item is FPMenuDividerItem) {
      return const SizedBox.shrink();
    }
    return const SizedBox.shrink();
  }
}

abstract class FPMenuItem {}

class FPMenuActionItem extends FPMenuItem {
  final String label;
  final VoidCallback? onPressed;
  final Widget? leadingIcon;
  final Widget? trailingIcon;

  FPMenuActionItem({
    required this.label,
    this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
  });
}

class FPMenuSubmenuItem extends FPMenuItem {
  final String label;
  final List<FPMenuItem> children;

  FPMenuSubmenuItem({
    required this.label,
    required this.children,
  });
}

class FPMenuDividerItem extends FPMenuItem {}

// ============================================================================
// CONTEXT MENU
// ============================================================================

class FPContextMenu extends StatelessWidget {
  final List<FPMenuItem> items;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final double? width;
  final double? height;

  const FPContextMenu({
    super.key,
    required this.items,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.padding,
    this.shape,
    this.clipBehavior = Clip.none,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return MenuAnchor(
      builder: (context, controller, child) {
        return GestureDetector(
          onSecondaryTapDown: (details) {
            controller.open();
          },
          child: child,
        );
      },
      menuChildren: items.map((item) => _buildMenuItem(context, item)).toList(),
      style: MenuStyle(
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? colorScheme.surface,
        ),
        surfaceTintColor: MaterialStateProperty.all(surfaceTintColor),
        elevation: MaterialStateProperty.all(elevation),
        padding: MaterialStateProperty.all(padding),
        shape: shape is OutlinedBorder ? MaterialStateProperty.all(shape as OutlinedBorder) : null,
        minimumSize: MaterialStateProperty.all(
          Size(width ?? 200, height ?? 0),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, FPMenuItem item) {
    if (item is FPMenuSubmenuItem) {
      return SubmenuButton(
        menuChildren: item.children.map((child) => _buildMenuItem(context, child)).toList(),
        child: Text(item.label),
      );
    } else if (item is FPMenuActionItem) {
      return MenuItemButton(
        onPressed: item.onPressed,
        leadingIcon: item.leadingIcon,
        trailingIcon: item.trailingIcon,
        child: Text(item.label),
      );
    } else if (item is FPMenuDividerItem) {
      return const PopupMenuItem(enabled: false, height: 1, child: Divider(height: 1));
    }
    return const PopupMenuItem(child: SizedBox.shrink());
  }
}

// ============================================================================
// MENU HELPERS
// ============================================================================

class FPMenuHelpers {
  static Future<T?> showDropdownMenu<T>({
    required BuildContext context,
    required List<FPDropdownMenuItem<T>> items,
    T? initialValue,
    ValueChanged<T?>? onChanged,
    String? labelText,
    String? hintText,
    bool enabled = true,
  }) {
    return showMenu<T>(
      context: context,
      initialValue: initialValue,
      position: RelativeRect.fromLTRB(0, 0, 0, 0),
      items: items.map((item) => PopupMenuItem<T>(
        value: item.value,
        enabled: item.enabled,
        child: Row(
          children: [
            if (item.leadingIcon != null) ...[
              item.leadingIcon!,
              const SizedBox(width: 8),
            ],
            Expanded(child: Text(item.label)),
            if (item.trailingIcon != null) ...[
              const SizedBox(width: 8),
              item.trailingIcon!,
            ],
          ],
        ),
      )).toList(),
    );
  }

  static void showContextMenu({
    required BuildContext context,
    required List<FPMenuItem> items,
    Offset? position,
  }) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect menuPosition = RelativeRect.fromRect(
      Rect.fromPoints(
        position ?? Offset.zero,
        position ?? Offset.zero,
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: menuPosition,
      items: items.map((item) => _buildPopupMenuItem(context, item)).toList(),
    );
  }

  static PopupMenuItem _buildPopupMenuItem(BuildContext context, FPMenuItem item) {
    if (item is FPMenuActionItem) {
      return PopupMenuItem(
        onTap: item.onPressed,
        child: Row(
          children: [
            if (item.leadingIcon != null) ...[
              item.leadingIcon!,
              const SizedBox(width: 8),
            ],
            Expanded(child: Text(item.label)),
            if (item.trailingIcon != null) ...[
              const SizedBox(width: 8),
              item.trailingIcon!,
            ],
          ],
        ),
      );
    } else if (item is FPMenuDividerItem) {
      return const PopupMenuItem(enabled: false, height: 1, child: Divider(height: 1));
    }
    return const PopupMenuItem(child: SizedBox.shrink());
  }
}