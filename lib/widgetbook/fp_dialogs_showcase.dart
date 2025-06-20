import 'package:flutter/material.dart';
import '../core/widgets/fp_button.dart';
import '../core/widgets/fp_dialogs.dart';

Widget fpDialogsShowcase(BuildContext context) {
  return const FPDialogsShowcase();
}

class FPDialogsShowcase extends StatelessWidget {
  const FPDialogsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Dialogs')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            FPElevatedButton(
              label: 'Show Alert Dialog',
              onPressed: () => _showAlertDialog(context),
            ),
            const SizedBox(width: 16),
            FPElevatedButton(
              label: 'Show Confirmation Dialog',
              onPressed: () => _showConfirmationDialog(context),
            ),
            const SizedBox(width: 16),
            FPElevatedButton(
              label: 'Show Simple Dialog',
              onPressed: () => _showSimpleDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    FPDialogHelpers.showAlertDialog(
      context: context,
      title: 'Alert Dialog',
      content: 'This is an alert dialog message.',
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    FPDialogHelpers.showConfirmationDialog(
      context: context,
      title: 'Confirmation Dialog',
      content: 'Are you sure you want to proceed?',
      confirmText: 'Yes',
      cancelText: 'No',
    );
  }

  void _showSimpleDialog(BuildContext context) {
    FPDialogHelpers.showSimpleDialog(
      context: context,
      title: 'Simple Dialog',
      children: [
        ListTile(
          leading: const Icon(Icons.folder),
          title: const Text('Option 1'),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: const Icon(Icons.folder_open),
          title: const Text('Option 2'),
          onTap: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
} 