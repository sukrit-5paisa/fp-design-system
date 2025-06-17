import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../../../core/theme/theme.dart';

/// FP Design System Input Widget
/// A customizable text input component that follows the design system
@WidgetbookStory(name: 'FPInput', useCases: [
  FPInputUseCase,
])
class FPInput extends StatefulWidget {
  /// The label text for the input
  final String? label;

  /// The placeholder text for the input
  final String? placeholder;

  /// The helper text to display below the input
  final String? helperText;

  /// The error text to display when the input has an error
  final String? errorText;

  /// Whether the input has an error
  final bool hasError;

  /// The prefix icon for the input
  final IconData? prefixIcon;

  /// The suffix icon for the input
  final IconData? suffixIcon;

  /// Whether the input is a password field
  final bool isPassword;

  /// Whether the input is enabled
  final bool enabled;

  /// Whether the input is read-only
  final bool readOnly;

  /// The maximum number of lines for the input
  final int? maxLines;

  /// The maximum number of characters for the input
  final int? maxLength;

  /// The keyboard type for the input
  final TextInputType? keyboardType;

  /// The text input action for the input
  final TextInputAction? textInputAction;

  /// The text capitalization for the input
  final TextCapitalization textCapitalization;

  /// The text direction for the input
  final TextDirection? textDirection;

  /// The text align for the input
  final TextAlign textAlign;

  /// The autofocus for the input
  final bool autofocus;

  /// The obscuring character for password inputs
  final String obscuringCharacter;

  /// The controller for the input
  final TextEditingController? controller;

  /// The focus node for the input
  final FocusNode? focusNode;

  /// The validator function for the input
  final String? Function(String?)? validator;

  /// The on changed callback for the input
  final ValueChanged<String>? onChanged;

  /// The on submitted callback for the input
  final ValueChanged<String>? onSubmitted;

  /// The on tap callback for the input
  final VoidCallback? onTap;

  /// The on editing complete callback for the input
  final VoidCallback? onEditingComplete;

  /// The on field submitted callback for the input
  final ValueChanged<String>? onFieldSubmitted;

  /// The on saved callback for the input
  final FormFieldSetter<String>? onSaved;

  /// The input's width (optional)
  final double? width;

  /// The input's height (optional)
  final double? height;

  const FPInput({
    super.key,
    this.label,
    this.placeholder,
    this.helperText,
    this.errorText,
    this.hasError = false,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.controller,
    this.focusNode,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.width,
    this.height,
  });

  @override
  State<FPInput> createState() => _FPInputState();
}

class _FPInputState extends State<FPInput> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
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

    // Build the input field
    Widget inputField = _buildInputField(theme, colorScheme);

    // Apply size constraints if specified
    if (widget.width != null || widget.height != null) {
      inputField = SizedBox(
        width: widget.width,
        height: widget.height,
        child: inputField,
      );
    }

    return inputField;
  }

  Widget _buildInputField(ThemeData theme, ColorScheme colorScheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: theme.textTheme.labelLarge?.copyWith(
              color: widget.hasError 
                  ? colorScheme.error 
                  : colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 4),
        ],

        // Input field
        TextFormField(
          controller: _controller,
          focusNode: _focusNode,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          maxLines: widget.isPassword ? 1 : widget.maxLines,
          maxLength: widget.maxLength,
          keyboardType: widget.isPassword 
              ? TextInputType.visiblePassword 
              : widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          textDirection: widget.textDirection,
          textAlign: widget.textAlign,
          autofocus: widget.autofocus,
          obscureText: widget.isPassword && _obscureText,
          obscuringCharacter: widget.obscuringCharacter,
          validator: widget.validator,
          onChanged: widget.onChanged,
          onSubmitted: widget.onSubmitted,
          onTap: widget.onTap,
          onEditingComplete: widget.onEditingComplete,
          onFieldSubmitted: widget.onFieldSubmitted,
          onSaved: widget.onSaved,
          decoration: _buildInputDecoration(theme, colorScheme),
        ),

        // Helper text or error text
        if (widget.helperText != null && !widget.hasError) ...[
          const SizedBox(height: 4),
          Text(
            widget.helperText!,
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],

        if (widget.hasError && widget.errorText != null) ...[
          const SizedBox(height: 4),
          Text(
            widget.errorText!,
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.error,
            ),
          ),
        ],
      ],
    );
  }

  InputDecoration _buildInputDecoration(ThemeData theme, ColorScheme colorScheme) {
    return InputDecoration(
      hintText: widget.placeholder,
      hintStyle: theme.textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
      prefixIcon: widget.prefixIcon != null
          ? Icon(
              widget.prefixIcon,
              color: widget.hasError 
                  ? colorScheme.error 
                  : colorScheme.onSurfaceVariant,
            )
          : null,
      suffixIcon: _buildSuffixIcon(colorScheme),
      filled: true,
      fillColor: widget.enabled 
          ? colorScheme.surface 
          : colorScheme.onSurface.withOpacity(0.04),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: widget.hasError 
              ? colorScheme.error 
              : colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: widget.hasError 
              ? colorScheme.error 
              : colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: widget.hasError 
              ? colorScheme.error 
              : colorScheme.primary,
          width: 2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: colorScheme.error,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: colorScheme.error,
          width: 2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: colorScheme.onSurface.withOpacity(0.12),
          width: 1,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
    );
  }

  Widget? _buildSuffixIcon(ColorScheme colorScheme) {
    if (widget.isPassword) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
          color: colorScheme.onSurfaceVariant,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
    }

    if (widget.suffixIcon != null) {
      return Icon(
        widget.suffixIcon,
        color: widget.hasError 
            ? colorScheme.error 
            : colorScheme.onSurfaceVariant,
      );
    }

    return null;
  }
}

/// Use case for FPInput in Widgetbook
class FPInputUseCase extends WidgetbookUseCase {
  const FPInputUseCase();

  @override
  Widget build(BuildContext context) {
    return const FPInput(
      label: 'Input Label',
      placeholder: 'Enter text here',
      helperText: 'This is helper text',
    );
  }
} 