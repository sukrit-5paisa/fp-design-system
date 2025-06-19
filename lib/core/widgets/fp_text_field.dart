import 'package:flutter/material.dart';
import '../../core/theme/spacing.dart';

enum FPTextFieldVariant { filled, outlined }

class FPTextField extends StatefulWidget {
  final String? label;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final String? counterText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? prefix;
  final Widget? suffix;
  final FPTextFieldVariant variant;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool showCharacterCounter;
  final bool autocorrect;
  final bool enableSuggestions;
  final bool autofocus;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final InputDecoration? decoration;
  final TextStyle? style;
  final Color? fillColor;
  final Color? focusedFillColor;
  final Color? disabledFillColor;
  final Color? errorFillColor;
  final BorderSide? border;
  final BorderSide? focusedBorder;
  final BorderSide? disabledBorder;
  final BorderSide? errorBorder;
  final BorderSide? focusedErrorBorder;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final bool filled;
  final bool isDense;
  final bool isCollapsed;
  final bool alignLabelWithHint;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final FloatingLabelAlignment? floatingLabelAlignment;
  final List<BoxShadow>? boxShadow;
  final Clip clipBehavior;
  final VisualDensity? visualDensity;
  final bool? isEnabled;

  const FPTextField({
    super.key,
    this.label,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.counterText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefix,
    this.suffix,
    this.variant = FPTextFieldVariant.filled,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.showCharacterCounter = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.autofocus = false,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.validator,
    this.decoration,
    this.style,
    this.fillColor,
    this.focusedFillColor,
    this.disabledFillColor,
    this.errorFillColor,
    this.border,
    this.focusedBorder,
    this.disabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.borderRadius,
    this.contentPadding,
    this.filled = true,
    this.isDense = false,
    this.isCollapsed = false,
    this.alignLabelWithHint = false,
    this.floatingLabelBehavior,
    this.floatingLabelAlignment,
    this.boxShadow,
    this.clipBehavior = Clip.none,
    this.visualDensity,
    this.isEnabled,
  });

  @override
  State<FPTextField> createState() => _FPTextFieldState();
}

class _FPTextFieldState extends State<FPTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _obscureText = widget.obscureText;
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final isEnabled = widget.isEnabled ?? widget.enabled;

    InputDecoration decoration = widget.decoration ?? InputDecoration(
      labelText: widget.label ?? widget.labelText,
      hintText: widget.hintText,
      helperText: widget.helperText,
      errorText: widget.errorText,
      counterText: widget.showCharacterCounter && widget.maxLength != null 
          ? '${_controller.text.length}/${widget.maxLength}'
          : widget.counterText,
      prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
      suffixIcon: widget.obscureText 
          ? IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            )
          : widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
      prefix: widget.prefix,
      suffix: widget.suffix,
      filled: widget.filled,
      fillColor: _getFillColor(colorScheme),
      border: _getBorder(colorScheme),
      enabledBorder: _getEnabledBorder(colorScheme),
      focusedBorder: _getFocusedBorder(colorScheme),
      disabledBorder: _getDisabledBorder(colorScheme),
      errorBorder: _getErrorBorder(colorScheme),
      focusedErrorBorder: _getFocusedErrorBorder(colorScheme),
      contentPadding: widget.contentPadding ?? const EdgeInsets.symmetric(
        horizontal: FPSpacing.md,
        vertical: FPSpacing.sm,
      ),
      isDense: widget.isDense,
      isCollapsed: widget.isCollapsed,
      alignLabelWithHint: widget.alignLabelWithHint,
      floatingLabelBehavior: widget.floatingLabelBehavior ?? FloatingLabelBehavior.auto,
      floatingLabelAlignment: widget.floatingLabelAlignment,
      labelStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
      hintStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
      helperStyle: textTheme.bodySmall?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
      errorStyle: textTheme.bodySmall?.copyWith(
        color: colorScheme.error,
      ),
      counterStyle: textTheme.bodySmall?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
    );

    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: _obscureText,
      enabled: isEnabled,
      readOnly: widget.readOnly,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      showCursor: false,
      autocorrect: widget.autocorrect,
      enableSuggestions: widget.enableSuggestions,
      autofocus: widget.autofocus,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      onTap: widget.onTap,
      validator: widget.validator,
      decoration: decoration,
      style: widget.style ?? textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface,
      ),
    );
  }

  Color? _getFillColor(ColorScheme colorScheme) {
    if (widget.errorText != null) {
      return widget.errorFillColor ?? colorScheme.errorContainer.withOpacity(0.1);
    }
    if (!widget.enabled) {
      return widget.disabledFillColor ?? colorScheme.surfaceVariant.withOpacity(0.5);
    }
    return widget.fillColor ?? colorScheme.surfaceVariant;
  }

  InputBorder? _getBorder(ColorScheme colorScheme) {
    if (widget.variant == FPTextFieldVariant.outlined) {
      return OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
        borderSide: widget.border ?? BorderSide(
          color: colorScheme.outline,
          width: 1,
        ),
      );
    }
    return UnderlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      borderSide: widget.border ?? BorderSide(
        color: colorScheme.outline,
        width: 1,
      ),
    );
  }

  InputBorder? _getEnabledBorder(ColorScheme colorScheme) {
    if (widget.variant == FPTextFieldVariant.outlined) {
      return OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
        borderSide: widget.border ?? BorderSide(
          color: colorScheme.outline,
          width: 1,
        ),
      );
    }
    return UnderlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      borderSide: widget.border ?? BorderSide(
        color: colorScheme.outline,
        width: 1,
      ),
    );
  }

  InputBorder? _getFocusedBorder(ColorScheme colorScheme) {
    if (widget.variant == FPTextFieldVariant.outlined) {
      return OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
        borderSide: widget.focusedBorder ?? BorderSide(
          color: colorScheme.primary,
          width: 2,
        ),
      );
    }
    return UnderlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      borderSide: widget.focusedBorder ?? BorderSide(
        color: colorScheme.primary,
        width: 2,
      ),
    );
  }

  InputBorder? _getDisabledBorder(ColorScheme colorScheme) {
    if (widget.variant == FPTextFieldVariant.outlined) {
      return OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
        borderSide: widget.disabledBorder ?? BorderSide(
          color: colorScheme.outline.withOpacity(0.38),
          width: 1,
        ),
      );
    }
    return UnderlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      borderSide: widget.disabledBorder ?? BorderSide(
        color: colorScheme.outline.withOpacity(0.38),
        width: 1,
      ),
    );
  }

  InputBorder? _getErrorBorder(ColorScheme colorScheme) {
    if (widget.variant == FPTextFieldVariant.outlined) {
      return OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
        borderSide: widget.errorBorder ?? BorderSide(
          color: colorScheme.error,
          width: 1,
        ),
      );
    }
    return UnderlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      borderSide: widget.errorBorder ?? BorderSide(
        color: colorScheme.error,
        width: 1,
      ),
    );
  }

  InputBorder? _getFocusedErrorBorder(ColorScheme colorScheme) {
    if (widget.variant == FPTextFieldVariant.outlined) {
      return OutlineInputBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
        borderSide: widget.focusedErrorBorder ?? BorderSide(
          color: colorScheme.error,
          width: 2,
        ),
      );
    }
    return UnderlineInputBorder(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      borderSide: widget.focusedErrorBorder ?? BorderSide(
        color: colorScheme.error,
        width: 2,
      ),
    );
  }
}

/// FP-themed Filled Text Field - inherits from Material 3 TextField
class FPFilledTextField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? errorText;
  final String? helperText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final int? maxLength;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;

  const FPFilledTextField({
    super.key,
    this.label,
    this.hintText,
    this.errorText,
    this.helperText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      enabled: enabled,
      maxLength: maxLength,
      maxLines: maxLines,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        errorText: errorText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: FPSpacing.md,
          vertical: FPSpacing.sm,
        ),
      ),
    );
  }
}

/// FP-themed Outlined Text Field - inherits from Material 3 TextField with outline
class FPOutlinedTextField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? errorText;
  final String? helperText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final int? maxLength;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;

  const FPOutlinedTextField({
    super.key,
    this.label,
    this.hintText,
    this.errorText,
    this.helperText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      enabled: enabled,
      maxLength: maxLength,
      maxLines: maxLines,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        errorText: errorText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: false,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.outline,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.outline,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: FPSpacing.md,
          vertical: FPSpacing.sm,
        ),
      ),
    );
  }
} 