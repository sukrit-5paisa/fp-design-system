import 'package:flutter/material.dart';
import '../core/widgets/fp_button.dart';
import '../core/widgets/fp_tooltips.dart';

Widget fpTooltipsShowcase(BuildContext context) {
  return const FPTooltipsShowcase();
}

class FPTooltipsShowcase extends StatelessWidget {
  const FPTooltipsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Tooltips')),
      body: Center(
        child: FPTooltip(
          message: 'This is a tooltip message',
          child: const FPElevatedButton(
            label: 'Hover for Tooltip',
            onPressed: null,
          ),
        ),
      ),
    );
  }
} 