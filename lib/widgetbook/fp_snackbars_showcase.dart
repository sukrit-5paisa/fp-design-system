import 'package:flutter/material.dart';
import '../core/widgets/fp_button.dart';
import '../core/widgets/fp_snackbars.dart';

Widget fpSnackbarsShowcase(BuildContext context) {
  return const FPSnackbarsShowcase();
}

class FPSnackbarsShowcase extends StatelessWidget {
  const FPSnackbarsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Snackbars')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            FPElevatedButton(
              label: 'Show Basic Snackbar',
              onPressed: () => _showBasicSnackbar(context),
            ),
            const SizedBox(width: 16),
            FPElevatedButton(
              label: 'Show Snackbar with Action',
              onPressed: () => _showSnackbarWithAction(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showBasicSnackbar(BuildContext context) {
    FPSnackBars.showSnackBar(
      context: context,
      message: 'This is a basic snackbar message',
    );
  }

  void _showSnackbarWithAction(BuildContext context) {
    FPSnackBars.showSnackBarWithAction(
      context: context,
      message: 'This is a snackbar with action',
      actionLabel: 'Undo',
      onAction: () {
        // Handle action
      },
    );
  }
} 