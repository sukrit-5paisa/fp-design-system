import 'package:flutter/material.dart';
import '../core/widgets/fp_button.dart';
import '../core/widgets/fp_progress_indicators.dart';
import '../core/widgets/fp_bottom_sheets.dart';
import '../core/widgets/fp_dialogs.dart';
import '../core/widgets/fp_snackbars.dart';
import '../core/widgets/fp_dividers.dart';
import '../core/widgets/fp_tooltips.dart';

Widget fpExtraComponentsShowcase(BuildContext context) {
  return const FPExtraComponentsShowcase();
}

class FPExtraComponentsShowcase extends StatefulWidget {
  const FPExtraComponentsShowcase({super.key});

  @override
  State<FPExtraComponentsShowcase> createState() => _FPExtraComponentsShowcaseState();
}

class _FPExtraComponentsShowcaseState extends State<FPExtraComponentsShowcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Extra Components')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Progress Indicators'),
            _buildProgressIndicatorsSection(),
            const SizedBox(height: 32),
            _buildSectionTitle('Bottom Sheets'),
            _buildBottomSheetsSection(),
            const SizedBox(height: 32),
            _buildSectionTitle('Dialogs'),
            _buildDialogsSection(),
            const SizedBox(height: 32),
            _buildSectionTitle('Snackbars'),
            _buildSnackbarsSection(),
            const SizedBox(height: 32),
            _buildSectionTitle('Dividers'),
            _buildDividersSection(),
            const SizedBox(height: 32),
            _buildSectionTitle('Tooltips'),
            _buildTooltipsSection(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildProgressIndicatorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Linear Progress Indicator'),
        SizedBox(height: 8),
        FPLinearProgressIndicator(value: 0.5),
        SizedBox(height: 16),
        Text('Circular Progress Indicator'),
        SizedBox(height: 8),
        FPCircularProgressIndicator(value: 0.5),
        SizedBox(height: 16),
        Text('Indeterminate Linear'),
        SizedBox(height: 8),
        FPIndeterminateProgress(type: FPProgressType.linear),
        SizedBox(height: 16),
        Text('Indeterminate Circular'),
        SizedBox(height: 8),
        FPIndeterminateProgress(type: FPProgressType.circular),
        SizedBox(height: 16),
        Text('Progress With Label'),
        SizedBox(height: 8),
        FPProgressWithLabel(label: 'Upload Progress', value: 0.3, showPercentage: true),
      ],
    );
  }

  Widget _buildBottomSheetsSection() {
    return Row(
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
    );
  }

  Widget _buildDialogsSection() {
    return Row(
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
    );
  }

  Widget _buildSnackbarsSection() {
    return Row(
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
    );
  }

  Widget _buildDividersSection() {
    return Column(
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
    );
  }

  Widget _buildTooltipsSection() {
    return FPTooltip(
      message: 'This is a tooltip message',
      child: const FPElevatedButton(
        label: 'Hover for Tooltip',
        onPressed: null,
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