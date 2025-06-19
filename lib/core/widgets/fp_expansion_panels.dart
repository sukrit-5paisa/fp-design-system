import 'package:flutter/material.dart';

// ============================================================================
// EXPANSION PANEL
// ============================================================================

class FPExpansionPanel extends StatelessWidget {
  final Widget header;
  final Widget body;
  final bool isExpanded;
  final ValueChanged<bool>? onExpansionChanged;
  final bool canTapOnHeader;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool maintainState;
  final bool hasIcon;
  final IconData? icon;
  final IconData? collapsedIcon;
  final Color? iconColor;
  final Color? collapsedIconColor;
  final double? iconSize;
  final double? collapsedIconSize;
  final Duration? animationDuration;
  final Curve? animationCurve;
  final bool initiallyExpanded;

  const FPExpansionPanel({
    super.key,
    required this.header,
    required this.body,
    this.isExpanded = false,
    this.onExpansionChanged,
    this.canTapOnHeader = true,
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.margin,
    this.shape,
    this.clipBehavior = Clip.none,
    this.maintainState = false,
    this.hasIcon = true,
    this.icon,
    this.collapsedIcon,
    this.iconColor,
    this.collapsedIconColor,
    this.iconSize,
    this.collapsedIconSize,
    this.animationDuration,
    this.animationCurve,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ExpansionPanel(
      headerBuilder: (context, isExpanded) => header,
      body: body,
      isExpanded: isExpanded,
      canTapOnHeader: canTapOnHeader,
      backgroundColor: backgroundColor ?? colorScheme.surface,
      collapsedBackgroundColor: collapsedBackgroundColor ?? colorScheme.surface,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      margin: margin,
      shape: shape,
      clipBehavior: clipBehavior,
      maintainState: maintainState,
      hasIcon: hasIcon,
      icon: icon,
      collapsedIcon: collapsedIcon,
      iconColor: iconColor ?? colorScheme.onSurfaceVariant,
      collapsedIconColor: collapsedIconColor ?? colorScheme.onSurfaceVariant,
      iconSize: iconSize,
      collapsedIconSize: collapsedIconSize,
      animationDuration: animationDuration,
      animationCurve: animationCurve,
      initiallyExpanded: initiallyExpanded,
    );
  }
}

// ============================================================================
// EXPANSION PANEL LIST
// ============================================================================

class FPExpansionPanelList extends StatefulWidget {
  final List<FPExpansionPanel> children;
  final ValueChanged<int>? expansionCallback;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? expandedHeaderPadding;
  final EdgeInsetsGeometry? materialGapSize;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool dividerColor;
  final bool hasIcon;
  final IconData? icon;
  final IconData? collapsedIcon;
  final Color? iconColor;
  final Color? collapsedIconColor;
  final double? iconSize;
  final double? collapsedIconSize;
  final Duration? animationDuration;
  final Curve? animationCurve;
  final bool initiallyExpanded;
  final bool allowMultipleExpansion;

  const FPExpansionPanelList({
    super.key,
    required this.children,
    this.expansionCallback,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.expandedHeaderPadding,
    this.materialGapSize,
    this.shape,
    this.clipBehavior = Clip.none,
    this.dividerColor = true,
    this.hasIcon = true,
    this.icon,
    this.collapsedIcon,
    this.iconColor,
    this.collapsedIconColor,
    this.iconSize,
    this.collapsedIconSize,
    this.animationDuration,
    this.animationCurve,
    this.initiallyExpanded = false,
    this.allowMultipleExpansion = false,
  });

  @override
  State<FPExpansionPanelList> createState() => _FPExpansionPanelListState();
}

class _FPExpansionPanelListState extends State<FPExpansionPanelList> {
  late List<bool> _expandedStates;

  @override
  void initState() {
    super.initState();
    _expandedStates = List.generate(
      widget.children.length,
      (index) => widget.initiallyExpanded,
    );
  }

  void _onExpansionChanged(int index, bool isExpanded) {
    setState(() {
      if (widget.allowMultipleExpansion) {
        _expandedStates[index] = isExpanded;
      } else {
        // Close all other panels
        for (int i = 0; i < _expandedStates.length; i++) {
          _expandedStates[i] = i == index ? isExpanded : false;
        }
      }
    });
    widget.expansionCallback?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ExpansionPanelList(
      expansionCallback: _onExpansionChanged,
      backgroundColor: widget.backgroundColor ?? colorScheme.surface,
      surfaceTintColor: widget.surfaceTintColor,
      elevation: widget.elevation,
      expandedHeaderPadding: widget.expandedHeaderPadding,
      materialGapSize: widget.materialGapSize,
      shape: widget.shape,
      clipBehavior: widget.clipBehavior,
      dividerColor: widget.dividerColor ? colorScheme.outline : null,
      hasIcon: widget.hasIcon,
      icon: widget.icon,
      collapsedIcon: widget.collapsedIcon,
      iconColor: widget.iconColor ?? colorScheme.onSurfaceVariant,
      collapsedIconColor: widget.collapsedIconColor ?? colorScheme.onSurfaceVariant,
      iconSize: widget.iconSize,
      collapsedIconSize: widget.collapsedIconSize,
      animationDuration: widget.animationDuration,
      animationCurve: widget.animationCurve,
      children: widget.children.asMap().entries.map((entry) {
        final index = entry.key;
        final child = entry.value;
        return ExpansionPanel(
          headerBuilder: child.header is Widget ? (context, isExpanded) => child.header : null,
          body: child.body,
          isExpanded: _expandedStates[index],
          canTapOnHeader: child.canTapOnHeader,
          backgroundColor: child.backgroundColor,
          collapsedBackgroundColor: child.collapsedBackgroundColor,
          surfaceTintColor: child.surfaceTintColor,
          elevation: child.elevation,
          margin: child.margin,
          shape: child.shape,
          clipBehavior: child.clipBehavior,
          maintainState: child.maintainState,
          hasIcon: child.hasIcon,
          icon: child.icon,
          collapsedIcon: child.collapsedIcon,
          iconColor: child.iconColor,
          collapsedIconColor: child.collapsedIconColor,
          iconSize: child.iconSize,
          collapsedIconSize: child.collapsedIconSize,
          animationDuration: child.animationDuration,
          animationCurve: child.animationCurve,
          initiallyExpanded: child.initiallyExpanded,
        );
      }).toList(),
    );
  }
}

// ============================================================================
// EXPANSION TILE
// ============================================================================

class FPExpansionTile extends StatelessWidget {
  final Widget title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final List<Widget> children;
  final bool initiallyExpanded;
  final bool maintainState;
  final bool tilePadding;
  final bool expandedCrossAxisAlignment;
  final bool expandedAlignment;
  final bool childrenPadding;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final Color? iconColor;
  final Color? collapsedIconColor;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final Duration? animationDuration;
  final Curve? animationCurve;
  final VoidCallback? onExpansionChanged;

  const FPExpansionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    required this.children,
    this.initiallyExpanded = false,
    this.maintainState = false,
    this.tilePadding = true,
    this.expandedCrossAxisAlignment = CrossAxisAlignment.center,
    this.expandedAlignment = Alignment.topLeft,
    this.childrenPadding = true,
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.iconColor,
    this.collapsedIconColor,
    this.elevation,
    this.shape,
    this.clipBehavior = Clip.none,
    this.animationDuration,
    this.animationCurve,
    this.onExpansionChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      color: backgroundColor ?? colorScheme.surface,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      child: ExpansionTile(
        title: title,
        subtitle: subtitle,
        leading: leading,
        trailing: trailing,
        initiallyExpanded: initiallyExpanded,
        maintainState: maintainState,
        tilePadding: tilePadding ? null : EdgeInsets.zero,
        expandedCrossAxisAlignment: expandedCrossAxisAlignment,
        expandedAlignment: expandedAlignment,
        childrenPadding: childrenPadding ? null : EdgeInsets.zero,
        backgroundColor: backgroundColor ?? colorScheme.surface,
        collapsedBackgroundColor: collapsedBackgroundColor ?? colorScheme.surface,
        iconColor: iconColor ?? colorScheme.onSurfaceVariant,
        collapsedIconColor: collapsedIconColor ?? colorScheme.onSurfaceVariant,
        onExpansionChanged: (expanded) {
          onExpansionChanged?.call();
        },
        children: children,
      ),
    );
  }
}

// ============================================================================
// EXPANSION PANEL HELPERS
// ============================================================================

class FPExpansionPanelHelpers {
  static FPExpansionPanel createPanel({
    required Widget header,
    required Widget body,
    bool isExpanded = false,
    ValueChanged<bool>? onExpansionChanged,
    bool canTapOnHeader = true,
    Color? backgroundColor,
    Color? collapsedBackgroundColor,
    bool hasIcon = true,
    IconData? icon,
    IconData? collapsedIcon,
    Color? iconColor,
    Color? collapsedIconColor,
    bool maintainState = false,
    bool initiallyExpanded = false,
  }) {
    return FPExpansionPanel(
      header: header,
      body: body,
      isExpanded: isExpanded,
      onExpansionChanged: onExpansionChanged,
      canTapOnHeader: canTapOnHeader,
      backgroundColor: backgroundColor,
      collapsedBackgroundColor: collapsedBackgroundColor,
      hasIcon: hasIcon,
      icon: icon,
      collapsedIcon: collapsedIcon,
      iconColor: iconColor,
      collapsedIconColor: collapsedIconColor,
      maintainState: maintainState,
      initiallyExpanded: initiallyExpanded,
    );
  }

  static FPExpansionPanel createTextPanel({
    required String title,
    required String content,
    String? subtitle,
    Widget? leading,
    Widget? trailing,
    bool isExpanded = false,
    ValueChanged<bool>? onExpansionChanged,
    bool canTapOnHeader = true,
    Color? backgroundColor,
    Color? collapsedBackgroundColor,
    bool hasIcon = true,
    IconData? icon,
    IconData? collapsedIcon,
    Color? iconColor,
    Color? collapsedIconColor,
    bool maintainState = false,
    bool initiallyExpanded = false,
  }) {
    return FPExpansionPanel(
      header: ListTile(
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        leading: leading,
        trailing: trailing,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(content),
      ),
      isExpanded: isExpanded,
      onExpansionChanged: onExpansionChanged,
      canTapOnHeader: canTapOnHeader,
      backgroundColor: backgroundColor,
      collapsedBackgroundColor: collapsedBackgroundColor,
      hasIcon: hasIcon,
      icon: icon,
      collapsedIcon: collapsedIcon,
      iconColor: iconColor,
      collapsedIconColor: collapsedIconColor,
      maintainState: maintainState,
      initiallyExpanded: initiallyExpanded,
    );
  }

  static FPExpansionPanel createWidgetPanel({
    required String title,
    required Widget content,
    String? subtitle,
    Widget? leading,
    Widget? trailing,
    bool isExpanded = false,
    ValueChanged<bool>? onExpansionChanged,
    bool canTapOnHeader = true,
    Color? backgroundColor,
    Color? collapsedBackgroundColor,
    bool hasIcon = true,
    IconData? icon,
    IconData? collapsedIcon,
    Color? iconColor,
    Color? collapsedIconColor,
    bool maintainState = false,
    bool initiallyExpanded = false,
  }) {
    return FPExpansionPanel(
      header: ListTile(
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        leading: leading,
        trailing: trailing,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: content,
      ),
      isExpanded: isExpanded,
      onExpansionChanged: onExpansionChanged,
      canTapOnHeader: canTapOnHeader,
      backgroundColor: backgroundColor,
      collapsedBackgroundColor: collapsedBackgroundColor,
      hasIcon: hasIcon,
      icon: icon,
      collapsedIcon: collapsedIcon,
      iconColor: iconColor,
      collapsedIconColor: collapsedIconColor,
      maintainState: maintainState,
      initiallyExpanded: initiallyExpanded,
    );
  }

  static FPExpansionTile createTile({
    required String title,
    required List<Widget> children,
    String? subtitle,
    Widget? leading,
    Widget? trailing,
    bool initiallyExpanded = false,
    bool maintainState = false,
    Color? backgroundColor,
    Color? collapsedBackgroundColor,
    Color? iconColor,
    Color? collapsedIconColor,
    double? elevation,
    ShapeBorder? shape,
    VoidCallback? onExpansionChanged,
  }) {
    return FPExpansionTile(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      leading: leading,
      trailing: trailing,
      children: children,
      initiallyExpanded: initiallyExpanded,
      maintainState: maintainState,
      backgroundColor: backgroundColor,
      collapsedBackgroundColor: collapsedBackgroundColor,
      iconColor: iconColor,
      collapsedIconColor: collapsedIconColor,
      elevation: elevation,
      shape: shape,
      onExpansionChanged: onExpansionChanged,
    );
  }
} 