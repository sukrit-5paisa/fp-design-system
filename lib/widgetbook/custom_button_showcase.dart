import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import '../core/widgets/custom_button.dart';

Widget customButtonAllVariantsShowcase(BuildContext context) {
  final label = context.knobs.string(label: 'Button Text', initialValue: 'Label');
  final showIconLeading = context.knobs.boolean(label: 'Show Icon Leading', initialValue: true);
  final showIconTrailing = context.knobs.boolean(label: 'Show Icon Trailing', initialValue: true);
  final icon = const Icon(Icons.star);
  final size = context.knobs.listOrNull<CustomButtonSize>(
    label: 'Button Size',
    options: CustomButtonSize.values,
    labelBuilder: (value) => value!.toString().split('.').last,
    initialOption: CustomButtonSize.size44BodyMd,
  ) ?? CustomButtonSize.size44BodyMd;
  final style = context.knobs.listOrNull<CustomButtonStyle>(
    label: 'Button Style',
    options: CustomButtonStyle.values,
    labelBuilder: (value) => value!.toString().split('.').last,
    initialOption: CustomButtonStyle.solid,
  ) ?? CustomButtonStyle.solid;
  final state = context.knobs.listOrNull<CustomButtonState>(
    label: 'Button State',
    options: CustomButtonState.values,
    labelBuilder: (value) => value!.toString().split('.').last,
    initialOption: CustomButtonState.idle,
  ) ?? CustomButtonState.idle;

  final colors = CustomButtonColor.values;

  return Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (final color in colors) ...[
            CustomButton(
              label: label,
              style: style,
              color: color,
              size: size,
              state: state,
              showIconLeading: showIconLeading,
              showIconTrailing: showIconTrailing,
              iconLeading: showIconLeading ? icon : null,
              iconTrailing: showIconTrailing ? icon : null,
              onPressed: state == CustomButtonState.disabled ? null : () {},
            ),
            const SizedBox(height: 16),
          ],
        ],
      ),
    ),
  );
} 