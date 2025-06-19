 import 'package:flutter/material.dart';

// ============================================================================
// BANNER
// ============================================================================

class FPBanner extends StatelessWidget {
  final String content;
  final Widget? leadingIcon;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final Color? contentColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool showLeadingIcon;
  final IconData? defaultLeadingIcon;
  final FPBannerType type;

  const FPBanner({
    super.key,
    required this.content,
    this.leadingIcon,
    this.backgroundColor,
    this.surfaceTintColor,
    this.contentColor,
    this.elevation,
    this.padding,
    this.margin,
    this.shape,
    this.clipBehavior = Clip.none,
    this.showLeadingIcon = true,
    this.defaultLeadingIcon,
    this.type = FPBannerType.info,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bannerColors = _getBannerColors(colorScheme);
    final bannerIcon = _getBannerIcon(theme);

    return Card(
      color: backgroundColor ?? bannerColors.backgroundColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      margin: margin,
      shape: shape ?? RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: clipBehavior,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showLeadingIcon && (leadingIcon != null || bannerIcon != null)) ...[
              leadingIcon ?? bannerIcon!,
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Text(
                content,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: contentColor ?? bannerColors.contentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _BannerColors _getBannerColors(ColorScheme colorScheme) {
    switch (type) {
      case FPBannerType.info:
        return _BannerColors(
          backgroundColor: colorScheme.primaryContainer,
          contentColor: colorScheme.onPrimaryContainer,
        );
      case FPBannerType.success:
        return _BannerColors(
          backgroundColor: colorScheme.secondaryContainer,
          contentColor: colorScheme.onSecondaryContainer,
        );
      case FPBannerType.warning:
        return _BannerColors(
          backgroundColor: colorScheme.tertiaryContainer,
          contentColor: colorScheme.onTertiaryContainer,
        );
      case FPBannerType.error:
        return _BannerColors(
          backgroundColor: colorScheme.errorContainer,
          contentColor: colorScheme.onErrorContainer,
        );
    }
  }

  Icon? _getBannerIcon(ThemeData theme) {
    if (defaultLeadingIcon != null) {
      return Icon(defaultLeadingIcon);
    }

    switch (type) {
      case FPBannerType.info:
        return Icon(Icons.info_outline, color: theme.colorScheme.primary);
      case FPBannerType.success:
        return Icon(Icons.check_circle_outline, color: theme.colorScheme.secondary);
      case FPBannerType.warning:
        return Icon(Icons.warning_amber_outlined, color: theme.colorScheme.tertiary);
      case FPBannerType.error:
        return Icon(Icons.error_outline, color: theme.colorScheme.error);
    }
  }
}

class _BannerColors {
  final Color backgroundColor;
  final Color contentColor;

  _BannerColors({
    required this.backgroundColor,
    required this.contentColor,
  });
}

enum FPBannerType { info, success, warning, error }

// ============================================================================
// BANNER WITH ACTIONS
// ============================================================================

class FPBannerWithActions extends StatelessWidget {
  final String content;
  final List<Widget> actions;
  final Widget? leadingIcon;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final Color? contentColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool showLeadingIcon;
  final IconData? defaultLeadingIcon;
  final FPBannerType type;
  final MainAxisAlignment actionsAlignment;

  const FPBannerWithActions({
    super.key,
    required this.content,
    required this.actions,
    this.leadingIcon,
    this.backgroundColor,
    this.surfaceTintColor,
    this.contentColor,
    this.elevation,
    this.padding,
    this.margin,
    this.shape,
    this.clipBehavior = Clip.none,
    this.showLeadingIcon = true,
    this.defaultLeadingIcon,
    this.type = FPBannerType.info,
    this.actionsAlignment = MainAxisAlignment.end,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bannerColors = _getBannerColors(colorScheme);
    final bannerIcon = _getBannerIcon(theme);

    return Card(
      color: backgroundColor ?? bannerColors.backgroundColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      margin: margin,
      shape: shape ?? RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: clipBehavior,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showLeadingIcon && (leadingIcon != null || bannerIcon != null)) ...[
                  leadingIcon ?? bannerIcon!,
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: Text(
                    content,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: contentColor ?? bannerColors.contentColor,
                    ),
                  ),
                ),
              ],
            ),
            if (actions.isNotEmpty) ...[
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: actionsAlignment,
                children: actions.map((action) => Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: action,
                )).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  _BannerColors _getBannerColors(ColorScheme colorScheme) {
    switch (type) {
      case FPBannerType.info:
        return _BannerColors(
          backgroundColor: colorScheme.primaryContainer,
          contentColor: colorScheme.onPrimaryContainer,
        );
      case FPBannerType.success:
        return _BannerColors(
          backgroundColor: colorScheme.secondaryContainer,
          contentColor: colorScheme.onSecondaryContainer,
        );
      case FPBannerType.warning:
        return _BannerColors(
          backgroundColor: colorScheme.tertiaryContainer,
          contentColor: colorScheme.onTertiaryContainer,
        );
      case FPBannerType.error:
        return _BannerColors(
          backgroundColor: colorScheme.errorContainer,
          contentColor: colorScheme.onErrorContainer,
        );
    }
  }

  Icon? _getBannerIcon(ThemeData theme) {
    if (defaultLeadingIcon != null) {
      return Icon(defaultLeadingIcon);
    }

    switch (type) {
      case FPBannerType.info:
        return Icon(Icons.info_outline, color: theme.colorScheme.primary);
      case FPBannerType.success:
        return Icon(Icons.check_circle_outline, color: theme.colorScheme.secondary);
      case FPBannerType.warning:
        return Icon(Icons.warning_amber_outlined, color: theme.colorScheme.tertiary);
      case FPBannerType.error:
        return Icon(Icons.error_outline, color: theme.colorScheme.error);
    }
  }
}

// ============================================================================
// DISMISSIBLE BANNER
// ============================================================================

class FPDismissibleBanner extends StatefulWidget {
  final String content;
  final List<Widget>? actions;
  final Widget? leadingIcon;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final Color? contentColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool showLeadingIcon;
  final IconData? defaultLeadingIcon;
  final FPBannerType type;
  final VoidCallback? onDismissed;
  final Duration? dismissDuration;
  final Curve dismissCurve;

  const FPDismissibleBanner({
    super.key,
    required this.content,
    this.actions,
    this.leadingIcon,
    this.backgroundColor,
    this.surfaceTintColor,
    this.contentColor,
    this.elevation,
    this.padding,
    this.margin,
    this.shape,
    this.clipBehavior = Clip.none,
    this.showLeadingIcon = true,
    this.defaultLeadingIcon,
    this.type = FPBannerType.info,
    this.onDismissed,
    this.dismissDuration,
    this.dismissCurve = Curves.easeInOut,
  });

  @override
  State<FPDismissibleBanner> createState() => _FPDismissibleBannerState();
}

class _FPDismissibleBannerState extends State<FPDismissibleBanner>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.dismissDuration ?? const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: widget.dismissCurve,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _dismiss() {
    if (!_isVisible) return;
    
    setState(() {
      _isVisible = false;
    });

    _animationController.forward().then((_) {
      widget.onDismissed?.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isVisible) {
      return SizeTransition(
        sizeFactor: _animation,
        child: const SizedBox.shrink(),
      );
    }

    final actions = widget.actions ?? [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: _dismiss,
        iconSize: 20,
      ),
    ];

    return FadeTransition(
      opacity: _animation,
      child: widget.actions != null
          ? FPBannerWithActions(
              content: widget.content,
              actions: actions,
              leadingIcon: widget.leadingIcon,
              backgroundColor: widget.backgroundColor,
              surfaceTintColor: widget.surfaceTintColor,
              contentColor: widget.contentColor,
              elevation: widget.elevation,
              padding: widget.padding,
              margin: widget.margin,
              shape: widget.shape,
              clipBehavior: widget.clipBehavior,
              showLeadingIcon: widget.showLeadingIcon,
              defaultLeadingIcon: widget.defaultLeadingIcon,
              type: widget.type,
            )
          : FPBanner(
              content: widget.content,
              leadingIcon: widget.leadingIcon,
              backgroundColor: widget.backgroundColor,
              surfaceTintColor: widget.surfaceTintColor,
              contentColor: widget.contentColor,
              elevation: widget.elevation,
              padding: widget.padding,
              margin: widget.margin,
              shape: widget.shape,
              clipBehavior: widget.clipBehavior,
              showLeadingIcon: widget.showLeadingIcon,
              defaultLeadingIcon: widget.defaultLeadingIcon,
              type: widget.type,
            ),
    );
  }
}

// ============================================================================
// BANNER HELPERS
// ============================================================================

class FPBannerHelpers {
  static Widget createInfoBanner({
    required String content,
    List<Widget>? actions,
    Widget? leadingIcon,
    bool dismissible = false,
    VoidCallback? onDismissed,
  }) {
    if (dismissible) {
      return FPDismissibleBanner(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.info,
        onDismissed: onDismissed,
      );
    }

    if (actions != null) {
      return FPBannerWithActions(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.info,
      );
    }

    return FPBanner(
      content: content,
      leadingIcon: leadingIcon,
      type: FPBannerType.info,
    );
  }

  static Widget createSuccessBanner({
    required String content,
    List<Widget>? actions,
    Widget? leadingIcon,
    bool dismissible = false,
    VoidCallback? onDismissed,
  }) {
    if (dismissible) {
      return FPDismissibleBanner(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.success,
        onDismissed: onDismissed,
      );
    }

    if (actions != null) {
      return FPBannerWithActions(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.success,
      );
    }

    return FPBanner(
      content: content,
      leadingIcon: leadingIcon,
      type: FPBannerType.success,
    );
  }

  static Widget createWarningBanner({
    required String content,
    List<Widget>? actions,
    Widget? leadingIcon,
    bool dismissible = false,
    VoidCallback? onDismissed,
  }) {
    if (dismissible) {
      return FPDismissibleBanner(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.warning,
        onDismissed: onDismissed,
      );
    }

    if (actions != null) {
      return FPBannerWithActions(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.warning,
      );
    }

    return FPBanner(
      content: content,
      leadingIcon: leadingIcon,
      type: FPBannerType.warning,
    );
  }

  static Widget createErrorBanner({
    required String content,
    List<Widget>? actions,
    Widget? leadingIcon,
    bool dismissible = false,
    VoidCallback? onDismissed,
  }) {
    if (dismissible) {
      return FPDismissibleBanner(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.error,
        onDismissed: onDismissed,
      );
    }

    if (actions != null) {
      return FPBannerWithActions(
        content: content,
        actions: actions,
        leadingIcon: leadingIcon,
        type: FPBannerType.error,
      );
    }

    return FPBanner(
      content: content,
      leadingIcon: leadingIcon,
      type: FPBannerType.error,
    );
  }
}