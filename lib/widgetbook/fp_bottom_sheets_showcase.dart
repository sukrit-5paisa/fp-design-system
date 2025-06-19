import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import '../core/widgets/fp_button.dart';
import '../core/widgets/fp_bottom_sheets.dart';

@WidgetbookUseCase(name: 'FP Bottom Sheets', type: FPBottomSheetsShowcase)
Widget fpBottomSheetsShowcase(BuildContext context) {
  return const FPBottomSheetsShowcase();
}

class FPBottomSheetsShowcase extends StatelessWidget {
  const FPBottomSheetsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Bottom Sheets')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            FPElevatedButton(
              label: 'Show Modal Bottom Sheet',
              onPressed: () => _showModalBottomSheet(context),
            ),
            const SizedBox(width: 16),
            FPElevatedButton(
              label: 'Show Standard Bottom Sheet',
              onPressed: () => _showStandardBottomSheet(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    FPBottomSheets.showFPModalBottomSheet(
      context: context,
      title: 'Modal Bottom Sheet',
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('This is a modal bottom sheet content.'),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Confirm'),
        ),
      ],
    );
  }

  void _showStandardBottomSheet(BuildContext context) {
    FPBottomSheets.showFPStandardBottomSheet(
      context: context,
      title: 'Standard Bottom Sheet',
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('This is a standard bottom sheet content.'),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }
} 