import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import '../core/widgets/fp_button.dart';

// Only this function is needed for Widgetbook v3.11.0
Widget fpButtonAllVariantsShowcase(BuildContext context) {
  final label = context.knobs.string(label: 'Button Text', initialValue: 'Button');
  final enabled = context.knobs.boolean(label: 'Enabled', initialValue: true);
  final loading = context.knobs.boolean(label: 'Loading', initialValue: false);

  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FPButton(
          label: label,
          enabled: enabled,
          loading: loading,
          variant: FPButtonVariant.filled,
          onPressed: enabled && !loading ? () {} : null,
        ),
        const SizedBox(height: 16),
        FPButton(
          label: label,
          enabled: enabled,
          loading: loading,
          variant: FPButtonVariant.tonal,
          onPressed: enabled && !loading ? () {} : null,
        ),
        const SizedBox(height: 16),
        FPButton(
          label: label,
          enabled: enabled,
          loading: loading,
          variant: FPButtonVariant.elevated,
          onPressed: enabled && !loading ? () {} : null,
        ),
        const SizedBox(height: 16),
        FPButton(
          label: label,
          enabled: enabled,
          loading: loading,
          variant: FPButtonVariant.outlined,
          onPressed: enabled && !loading ? () {} : null,
        ),
        const SizedBox(height: 16),
        FPButton(
          label: label,
          enabled: enabled,
          loading: loading,
          variant: FPButtonVariant.text,
          onPressed: enabled && !loading ? () {} : null,
        ),
      ],
    ),
  );
} 