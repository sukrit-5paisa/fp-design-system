import 'package:flutter/material.dart';

// ============================================================================
// SEARCH BAR
// ============================================================================

class FPSearchBar extends StatefulWidget {
  final String? hintText;
  final String? leadingIcon;
  final String? trailingIcon;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final VoidCallback? onLeadingIconTap;
  final VoidCallback? onTrailingIconTap;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool enabled;
  final bool readOnly;
  final bool autofocus;
  final bool autocorrect;
  final bool enableSuggestions;
  final bool enableIMEPersonalizedLearning;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool isFilterChip;
  final bool showLeadingIcon;
  final bool showTrailingIcon;
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? trailing;
  final String? restorationId;

  const FPSearchBar({
    super.key,
    this.hintText,
    this.leadingIcon,
    this.trailingIcon,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onLeadingIconTap,
    this.onTrailingIconTap,
    this.controller,
    this.focusNode,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.enableIMEPersonalizedLearning = true,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.hintStyle,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.padding,
    this.shape,
    this.clipBehavior = Clip.none,
    this.isFilterChip = false,
    this.showLeadingIcon = true,
    this.showTrailingIcon = true,
    this.actions,
    this.leading,
    this.trailing,
    this.restorationId,
  });

  @override
  State<FPSearchBar> createState() => _FPSearchBarState();
}

class _FPSearchBarState extends State<FPSearchBar> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SearchBar(
      hintText: widget.hintText,
      leading: widget.showLeadingIcon
          ? (widget.leading ?? Icon(
              Icons.search,
              color: colorScheme.onSurfaceVariant,
            ))
          : null,
      trailing: widget.showTrailingIcon
          ? (widget.trailing != null
              ? (widget.trailing is Iterable<Widget> ? widget.trailing as Iterable<Widget> : [widget.trailing!])
              : (_controller.text.isNotEmpty
                  ? [
                      IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: colorScheme.onSurfaceVariant,
                        ),
                        onPressed: () {
                          _controller.clear();
                          widget.onChanged?.call('');
                        },
                      ),
                    ]
                  : null))
          : null,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      onTap: widget.onTap,
      controller: _controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      textCapitalization: widget.textCapitalization,
      backgroundColor: MaterialStateProperty.all(
        widget.backgroundColor ?? colorScheme.surface,
      ),
      surfaceTintColor: MaterialStateProperty.all(
        widget.surfaceTintColor,
      ),
      elevation: MaterialStateProperty.all(widget.elevation),
      padding: MaterialStateProperty.all(
        widget.padding ?? const EdgeInsets.symmetric(horizontal: 16),
      ),
      shape: MaterialStateProperty.all(
        (widget.shape is OutlinedBorder ? widget.shape as OutlinedBorder : null) ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
      ),
    );
  }
}

// ============================================================================
// SEARCH SUGGESTIONS
// ============================================================================

class FPSearchSuggestions extends StatefulWidget {
  final List<FPSearchSuggestion> suggestions;
  final ValueChanged<FPSearchSuggestion>? onSuggestionSelected;
  final String? query;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;
  final Clip clipBehavior;
  final bool showDivider;
  final int maxSuggestions;
  final Widget? emptyWidget;
  final Widget? loadingWidget;

  const FPSearchSuggestions({
    super.key,
    required this.suggestions,
    this.onSuggestionSelected,
    this.query,
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.padding,
    this.shape,
    this.clipBehavior = Clip.none,
    this.showDivider = true,
    this.maxSuggestions = 10,
    this.emptyWidget,
    this.loadingWidget,
  });

  @override
  State<FPSearchSuggestions> createState() => _FPSearchSuggestionsState();
}

class _FPSearchSuggestionsState extends State<FPSearchSuggestions> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (widget.suggestions.isEmpty) {
      return widget.emptyWidget ?? Card(
        color: widget.backgroundColor ?? colorScheme.surface,
        surfaceTintColor: widget.surfaceTintColor,
        elevation: widget.elevation,
        shape: widget.shape,
        clipBehavior: widget.clipBehavior,
        child: Padding(
          padding: widget.padding ?? const EdgeInsets.all(16),
          child: Text(
            'No suggestions found',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    }

    final filteredSuggestions = widget.suggestions
        .take(widget.maxSuggestions)
        .toList();

    return Card(
      color: widget.backgroundColor ?? colorScheme.surface,
      surfaceTintColor: widget.surfaceTintColor,
      elevation: widget.elevation,
      shape: widget.shape,
      clipBehavior: widget.clipBehavior,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < filteredSuggestions.length; i++) ...[
            _buildSuggestionTile(context, filteredSuggestions[i]),
            if (widget.showDivider && i < filteredSuggestions.length - 1)
              const Divider(height: 1),
          ],
        ],
      ),
    );
  }

  Widget _buildSuggestionTile(BuildContext context, FPSearchSuggestion suggestion) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      leading: suggestion.icon,
      title: suggestion.title,
      subtitle: suggestion.subtitle,
      trailing: suggestion.trailing,
      onTap: () {
        widget.onSuggestionSelected?.call(suggestion);
      },
      contentPadding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 16),
      dense: true,
    );
  }
}

class FPSearchSuggestion {
  final Widget? icon;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final String value;
  final Map<String, dynamic>? data;

  const FPSearchSuggestion({
    this.icon,
    required this.title,
    this.subtitle,
    this.trailing,
    required this.value,
    this.data,
  });

  FPSearchSuggestion.text({
    this.icon,
    required String title,
    String? subtitle,
    this.trailing,
    required this.value,
    this.data,
  }) : title = Text(title),
       subtitle = subtitle != null ? Text(subtitle) : null;
}

// ============================================================================
// SEARCH WITH SUGGESTIONS
// ============================================================================

class FPSearchWithSuggestions extends StatefulWidget {
  final String? hintText;
  final List<FPSearchSuggestion> suggestions;
  final ValueChanged<String>? onChanged;
  final ValueChanged<FPSearchSuggestion>? onSuggestionSelected;
  final Future<List<FPSearchSuggestion>> Function(String)? onSearch;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool enabled;
  final bool showSuggestions;
  final int maxSuggestions;
  final Widget? emptyWidget;
  final Widget? loadingWidget;
  final Duration searchDelay;

  const FPSearchWithSuggestions({
    super.key,
    this.hintText,
    required this.suggestions,
    this.onChanged,
    this.onSuggestionSelected,
    this.onSearch,
    this.controller,
    this.focusNode,
    this.enabled = true,
    this.showSuggestions = true,
    this.maxSuggestions = 10,
    this.emptyWidget,
    this.loadingWidget,
    this.searchDelay = const Duration(milliseconds: 300),
  });

  @override
  State<FPSearchWithSuggestions> createState() => _FPSearchWithSuggestionsState();
}

class _FPSearchWithSuggestionsState extends State<FPSearchWithSuggestions> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  List<FPSearchSuggestion> _filteredSuggestions = [];
  bool _isLoading = false;
  bool _showSuggestions = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _filteredSuggestions = widget.suggestions;
    
    _focusNode.addListener(_onFocusChange);
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _showSuggestions = _focusNode.hasFocus && widget.showSuggestions;
    });
  }

  void _onTextChanged() {
    final query = _controller.text;
    widget.onChanged?.call(query);

    if (widget.onSearch != null) {
      _performSearch(query);
    } else {
      _filterSuggestions(query);
    }
  }

  void _performSearch(String query) async {
    if (query.isEmpty) {
      setState(() {
        _filteredSuggestions = widget.suggestions;
        _isLoading = false;
      });
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      await Future.delayed(widget.searchDelay);
      if (mounted) {
        final results = await widget.onSearch!(query);
        setState(() {
          _filteredSuggestions = results;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _filterSuggestions(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredSuggestions = widget.suggestions;
      });
      return;
    }

    final filtered = widget.suggestions.where((suggestion) {
      return suggestion.value.toLowerCase().contains(query.toLowerCase()) ||
             suggestion.title.toString().toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      _filteredSuggestions = filtered;
    });
  }

  void _onSuggestionSelected(FPSearchSuggestion suggestion) {
    _controller.text = suggestion.value;
    _controller.selection = TextSelection.fromPosition(
      TextPosition(offset: suggestion.value.length),
    );
    _focusNode.unfocus();
    widget.onSuggestionSelected?.call(suggestion);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FPSearchBar(
          hintText: widget.hintText,
          controller: _controller,
          focusNode: _focusNode,
          enabled: widget.enabled,
          onChanged: widget.onChanged,
        ),
        if (_showSuggestions) ...[
          const SizedBox(height: 8),
          if (_isLoading)
            widget.loadingWidget ?? const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          else
            FPSearchSuggestions(
              suggestions: _filteredSuggestions,
              onSuggestionSelected: _onSuggestionSelected,
              query: _controller.text,
              maxSuggestions: widget.maxSuggestions,
              emptyWidget: widget.emptyWidget,
            ),
        ],
      ],
    );
  }
}

// ============================================================================
// SEARCH HELPERS
// ============================================================================

class FPSearchHelpers {
  static FPSearchSuggestion createTextSuggestion({
    String? icon,
    required String title,
    String? subtitle,
    String? trailing,
    required String value,
    Map<String, dynamic>? data,
  }) {
    return FPSearchSuggestion(
      icon: icon != null ? Icon(Icons.search) : null,
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: trailing != null ? Text(trailing) : null,
      value: value,
      data: data,
    );
  }

  static FPSearchSuggestion createIconSuggestion({
    required IconData icon,
    required String title,
    String? subtitle,
    Widget? trailing,
    required String value,
    Map<String, dynamic>? data,
  }) {
    return FPSearchSuggestion(
      icon: Icon(icon),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: trailing,
      value: value,
      data: data,
    );
  }

  static List<FPSearchSuggestion> filterSuggestions(
    List<FPSearchSuggestion> suggestions,
    String query,
  ) {
    if (query.isEmpty) return suggestions;

    return suggestions.where((suggestion) {
      return suggestion.value.toLowerCase().contains(query.toLowerCase()) ||
             suggestion.title.toString().toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
} 