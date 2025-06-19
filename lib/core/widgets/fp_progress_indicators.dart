import 'package:flutter/material.dart';

// ============================================================================
// LINEAR PROGRESS INDICATOR
// ============================================================================

class FPLinearProgressIndicator extends StatelessWidget {
  final double? value;
  final Color? backgroundColor;
  final Color? valueColor;
  final double? minHeight;
  final String? semanticsLabel;
  final String? semanticsValue;

  const FPLinearProgressIndicator({
    super.key,
    this.value,
    this.backgroundColor,
    this.valueColor,
    this.minHeight,
    this.semanticsLabel,
    this.semanticsValue,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return LinearProgressIndicator(
      value: value,
      backgroundColor: backgroundColor ?? colorScheme.surfaceContainerHighest,
      valueColor: valueColor != null
          ? AlwaysStoppedAnimation<Color>(valueColor!)
          : AlwaysStoppedAnimation<Color>(colorScheme.primary),
      minHeight: minHeight,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    );
  }
}

// ============================================================================
// CIRCULAR PROGRESS INDICATOR
// ============================================================================

class FPCircularProgressIndicator extends StatelessWidget {
  final double? value;
  final Color? backgroundColor;
  final Color? valueColor;
  final double strokeWidth;
  final String? semanticsLabel;
  final String? semanticsValue;

  const FPCircularProgressIndicator({
    super.key,
    this.value,
    this.backgroundColor,
    this.valueColor,
    this.strokeWidth = 4.0,
    this.semanticsLabel,
    this.semanticsValue,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return CircularProgressIndicator(
      value: value,
      backgroundColor: backgroundColor ?? colorScheme.surfaceContainerHighest,
      valueColor: valueColor != null
          ? AlwaysStoppedAnimation<Color>(valueColor!)
          : AlwaysStoppedAnimation<Color>(colorScheme.primary),
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    );
  }
}

// ============================================================================
// DETERMINATE PROGRESS
// ============================================================================

class FPDeterminateProgress extends StatelessWidget {
  final double value;
  final FPProgressType type;
  final Color? backgroundColor;
  final Color? valueColor;
  final double? minHeight;
  final double strokeWidth;
  final String? semanticsLabel;
  final String? semanticsValue;

  const FPDeterminateProgress({
    super.key,
    required this.value,
    this.type = FPProgressType.linear,
    this.backgroundColor,
    this.valueColor,
    this.minHeight,
    this.strokeWidth = 4.0,
    this.semanticsLabel,
    this.semanticsValue,
  }) : assert(value >= 0.0 && value <= 1.0);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case FPProgressType.linear:
        return FPLinearProgressIndicator(
          value: value,
          backgroundColor: backgroundColor,
          valueColor: valueColor,
          minHeight: minHeight,
          semanticsLabel: semanticsLabel,
          semanticsValue: semanticsValue,
        );
      case FPProgressType.circular:
        return FPCircularProgressIndicator(
          value: value,
          backgroundColor: backgroundColor,
          valueColor: valueColor,
          strokeWidth: strokeWidth,
          semanticsLabel: semanticsLabel,
          semanticsValue: semanticsValue,
        );
    }
  }
}

// ============================================================================
// INDETERMINATE PROGRESS
// ============================================================================

class FPIndeterminateProgress extends StatelessWidget {
  final FPProgressType type;
  final Color? backgroundColor;
  final Color? valueColor;
  final double? minHeight;
  final double strokeWidth;
  final String? semanticsLabel;

  const FPIndeterminateProgress({
    super.key,
    this.type = FPProgressType.linear,
    this.backgroundColor,
    this.valueColor,
    this.minHeight,
    this.strokeWidth = 4.0,
    this.semanticsLabel,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case FPProgressType.linear:
        return FPLinearProgressIndicator(
          backgroundColor: backgroundColor,
          valueColor: valueColor,
          minHeight: minHeight,
          semanticsLabel: semanticsLabel,
        );
      case FPProgressType.circular:
        return FPCircularProgressIndicator(
          backgroundColor: backgroundColor,
          valueColor: valueColor,
          strokeWidth: strokeWidth,
          semanticsLabel: semanticsLabel,
        );
    }
  }
}

// ============================================================================
// PROGRESS WITH LABEL
// ============================================================================

class FPProgressWithLabel extends StatelessWidget {
  final String label;
  final double? value;
  final FPProgressType type;
  final Color? backgroundColor;
  final Color? valueColor;
  final double? minHeight;
  final double strokeWidth;
  final String? semanticsLabel;
  final String? semanticsValue;
  final bool showPercentage;

  const FPProgressWithLabel({
    super.key,
    required this.label,
    this.value,
    this.type = FPProgressType.linear,
    this.backgroundColor,
    this.valueColor,
    this.minHeight,
    this.strokeWidth = 4.0,
    this.semanticsLabel,
    this.semanticsValue,
    this.showPercentage = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: textTheme.bodyMedium,
            ),
            if (showPercentage && value != null)
              Text(
                '${(value! * 100).toInt()}%',
                style: textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        if (value != null)
          FPDeterminateProgress(
            value: value!,
            type: type,
            backgroundColor: backgroundColor,
            valueColor: valueColor,
            minHeight: minHeight,
            strokeWidth: strokeWidth,
            semanticsLabel: semanticsLabel,
            semanticsValue: semanticsValue,
          )
        else
          FPIndeterminateProgress(
            type: type,
            backgroundColor: backgroundColor,
            valueColor: valueColor,
            minHeight: minHeight,
            strokeWidth: strokeWidth,
            semanticsLabel: semanticsLabel,
          ),
      ],
    );
  }
}

// ============================================================================
// PROGRESS TYPES
// ============================================================================

enum FPProgressType { linear, circular }

// ============================================================================
// PROGRESS HELPERS
// ============================================================================

class FPProgressHelpers {
  static Widget createLinearProgress({
    double? value,
    Color? backgroundColor,
    Color? valueColor,
    double? minHeight,
    String? semanticsLabel,
    String? semanticsValue,
  }) {
    return FPLinearProgressIndicator(
      value: value,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      minHeight: minHeight,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    );
  }

  static Widget createCircularProgress({
    double? value,
    Color? backgroundColor,
    Color? valueColor,
    double strokeWidth = 4.0,
    String? semanticsLabel,
    String? semanticsValue,
  }) {
    return FPCircularProgressIndicator(
      value: value,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    );
  }

  static Widget createDeterminateProgress({
    required double value,
    FPProgressType type = FPProgressType.linear,
    Color? backgroundColor,
    Color? valueColor,
    double? minHeight,
    double strokeWidth = 4.0,
    String? semanticsLabel,
    String? semanticsValue,
  }) {
    return FPDeterminateProgress(
      value: value,
      type: type,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      minHeight: minHeight,
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    );
  }

  static Widget createIndeterminateProgress({
    FPProgressType type = FPProgressType.linear,
    Color? backgroundColor,
    Color? valueColor,
    double? minHeight,
    double strokeWidth = 4.0,
    String? semanticsLabel,
  }) {
    return FPIndeterminateProgress(
      type: type,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      minHeight: minHeight,
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
    );
  }

  static Widget createProgressWithLabel({
    required String label,
    double? value,
    FPProgressType type = FPProgressType.linear,
    Color? backgroundColor,
    Color? valueColor,
    double? minHeight,
    double strokeWidth = 4.0,
    String? semanticsLabel,
    String? semanticsValue,
    bool showPercentage = false,
  }) {
    return FPProgressWithLabel(
      label: label,
      value: value,
      type: type,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      minHeight: minHeight,
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
      showPercentage: showPercentage,
    );
  }
}