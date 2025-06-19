import 'package:flutter/material.dart';
import 'core/widgets/fp_button.dart';
import 'core/widgets/fp_card.dart';
import 'core/widgets/fp_chip.dart';
import 'core/widgets/fp_text_field.dart';
import 'core/widgets/fp_selection_controls.dart';
import 'core/widgets/fp_slider.dart';
import 'core/widgets/fp_bottom_sheets.dart';
import 'core/widgets/fp_dialogs.dart';
import 'core/widgets/fp_progress_indicators.dart';
import 'core/widgets/fp_fab.dart';
import 'core/widgets/fp_snackbars.dart';
import 'core/widgets/fp_tooltips.dart';
import 'core/widgets/fp_dividers.dart';
import 'core/theme/theme.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({super.key});

  @override
  State<TestWidgets> createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets> {
  double sliderValue = 0.5;
  RangeValues rangeSliderValues = const RangeValues(0.2, 0.8);
  bool checkboxValue = false;
  String? radioValue;
  bool switchValue = false;
  double progressValue = 0.3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FP Design System Showcase'),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('FP Design System Components', 
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              
              // Test Buttons
              _buildSection('Buttons', [
                FPElevatedButton(label: 'Elevated Button', onPressed: () {}),
                const SizedBox(height: 8),
                FPFilledButton(label: 'Filled Button', onPressed: () {}),
                const SizedBox(height: 8),
                FPOutlinedButton(label: 'Outlined Button', onPressed: () {}),
                const SizedBox(height: 8),
                FPTextButton(label: 'Text Button', onPressed: () {}),
              ]),
              
              // Test Cards
              _buildSection('Cards', [
                FPElevatedCard(
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Elevated Card Content'),
                  ),
                ),
                const SizedBox(height: 8),
                FPFilledCard(
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Filled Card Content'),
                  ),
                ),
                const SizedBox(height: 8),
                FPOutlinedCard(
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Outlined Card Content'),
                  ),
                ),
              ]),
              
              // Test Chips
              _buildSection('Chips', [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    FPAssistChip(label: 'Assist Chip', onPressed: () {}),
                    FPFilterChip(label: 'Filter Chip', onSelected: (selected) {}),
                    FPInputChip(label: 'Input Chip', onDeleted: () {}),
                  ],
                ),
              ]),
              
              // Test Text Fields
              _buildSection('Text Fields', [
                FPFilledTextField(label: 'Filled Text Field'),
                const SizedBox(height: 8),
                FPOutlinedTextField(label: 'Outlined Text Field'),
              ]),
              
              // Test Selection Controls
              _buildSection('Selection Controls', [
                FPCheckbox(
                  label: 'Checkbox', 
                  value: checkboxValue, 
                  onChanged: (value) => setState(() => checkboxValue = value ?? false)
                ),
                FPRadio<String>(
                  label: 'Radio Button 1', 
                  value: 'option1', 
                  groupValue: radioValue,
                  onChanged: (value) => setState(() => radioValue = value)
                ),
                FPRadio<String>(
                  label: 'Radio Button 2', 
                  value: 'option2', 
                  groupValue: radioValue,
                  onChanged: (value) => setState(() => radioValue = value)
                ),
                FPSwitch(
                  label: 'Switch', 
                  value: switchValue, 
                  onChanged: (value) => setState(() => switchValue = value)
                ),
              ]),
              
              // Test Sliders
              _buildSection('Sliders', [
                FPSlider(
                  value: sliderValue, 
                  onChanged: (value) => setState(() => sliderValue = value)
                ),
                const SizedBox(height: 8),
                FPRangeSlider(
                  values: rangeSliderValues, 
                  onChanged: (values) => setState(() => rangeSliderValues = values)
                ),
              ]),
              
              // Test Progress Indicators
              _buildSection('Progress Indicators', [
                FPLinearProgressIndicator(value: progressValue),
                const SizedBox(height: 8),
                FPCircularProgressIndicator(value: progressValue),
                const SizedBox(height: 8),
                FPIndeterminateProgress(type: FPProgressType.linear),
                const SizedBox(height: 8),
                FPIndeterminateProgress(type: FPProgressType.circular),
                const SizedBox(height: 8),
                FPProgressWithLabel(
                  label: 'Upload Progress',
                  value: progressValue,
                  showPercentage: true,
                ),
              ]),
              
              // Test Bottom Sheets
              _buildSection('Bottom Sheets', [
                FPElevatedButton(
                  label: 'Show Modal Bottom Sheet',
                  onPressed: () => _showModalBottomSheet(context),
                ),
                const SizedBox(height: 8),
                FPElevatedButton(
                  label: 'Show Standard Bottom Sheet',
                  onPressed: () => _showStandardBottomSheet(context),
                ),
              ]),
              
              // Test Dialogs
              _buildSection('Dialogs', [
                FPElevatedButton(
                  label: 'Show Alert Dialog',
                  onPressed: () => _showAlertDialog(context),
                ),
                const SizedBox(height: 8),
                FPElevatedButton(
                  label: 'Show Confirmation Dialog',
                  onPressed: () => _showConfirmationDialog(context),
                ),
                const SizedBox(height: 8),
                FPElevatedButton(
                  label: 'Show Simple Dialog',
                  onPressed: () => _showSimpleDialog(context),
                ),
              ]),
              
              // Test Snackbars
              _buildSection('Snackbars', [
                FPElevatedButton(
                  label: 'Show Basic Snackbar',
                  onPressed: () => _showBasicSnackbar(context),
                ),
                const SizedBox(height: 8),
                FPElevatedButton(
                  label: 'Show Snackbar with Action',
                  onPressed: () => _showSnackbarWithAction(context),
                ),
              ]),
              
              // Test Dividers
              _buildSection('Dividers', [
                const Text('Content above divider'),
                const SizedBox(height: 8),
                const FPDivider(),
                const SizedBox(height: 8),
                const Text('Content below divider'),
                const SizedBox(height: 16),
                const FPVerticalDivider(),
              ]),
              
              // Test Tooltips
              _buildSection('Tooltips', [
                FPTooltip(
                  message: 'This is a tooltip message',
                  child: const FPElevatedButton(
                    label: 'Hover for Tooltip',
                    onPressed: null,
                  ),
                ),
              ]),
              
              const SizedBox(height: 100), // Space for FAB
            ],
          ),
        ),
        floatingActionButton: FPFloatingActionButton(
          icon: Icons.add,
          onPressed: () => _showBasicSnackbar(context),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        ...children,
        const SizedBox(height: 20),
      ],
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