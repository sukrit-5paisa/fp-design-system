import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../core/widgets/fp_dividers.dart';

@WidgetbookUseCase(name: 'FP Dividers', type: FPDividersShowcase)
Widget fpDividersShowcase(BuildContext context) {
  return const FPDividersShowcase();
}

class FPDividersShowcase extends StatelessWidget {
  const FPDividersShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Dividers')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Horizontal Divider'),
            SizedBox(height: 8),
            FPDivider(),
            SizedBox(height: 16),
            Text('Vertical Divider'),
            SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Text('Left'),
                  FPVerticalDivider(),
                  Text('Right'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 