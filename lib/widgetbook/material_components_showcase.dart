import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import '../core/theme/theme.dart';
import '../core/widgets/fp_button.dart';
import '../core/widgets/fp_card.dart';
import '../core/widgets/fp_chip.dart';
import '../core/widgets/fp_text_field.dart';
import '../core/widgets/fp_slider.dart';
import '../core/widgets/fp_selection_controls.dart';
import '../core/widgets/fp_progress_indicators.dart';
import '../core/widgets/fp_bottom_sheets.dart';
import '../core/widgets/fp_dialogs.dart';
import '../core/widgets/fp_snackbars.dart';
import '../core/widgets/fp_dividers.dart';
import '../core/widgets/fp_tooltips.dart';

Widget materialComponentsShowcase(BuildContext context) {
  return const MaterialComponentsShowcase();
}

class MaterialComponentsShowcase extends StatefulWidget {
  const MaterialComponentsShowcase({super.key});

  @override
  State<MaterialComponentsShowcase> createState() => _MaterialComponentsShowcaseState();
}

class _MaterialComponentsShowcaseState extends State<MaterialComponentsShowcase> {
  int _selectedIndex = 0;
  bool _isExpanded = false;
  bool _isChecked = false;
  double _sliderValue = 0.5;
  String _selectedChip = 'Option 1';
  bool _switchValue = false;
  String _selectedRadio = 'Option 1';
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Design System - Material 3 Components'),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('1. Buttons'),
            _buildButtonsSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('2. Cards'),
            _buildCardsSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('3. Chips'),
            _buildChipsSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('4. Text Fields'),
            _buildTextFieldsSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('5. Selection Controls'),
            _buildSelectionControlsSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('6. Sliders'),
            _buildSlidersSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('7. Progress Indicators'),
            _buildProgressIndicatorsSection(),

            const SizedBox(height: 32),
            _buildSectionTitle('8. Bottom Sheets'),
            _buildBottomSheetsSection(),

            const SizedBox(height: 32),
            _buildSectionTitle('9. Dialogs'),
            _buildDialogsSection(),

            const SizedBox(height: 32),
            _buildSectionTitle('10. Snackbars'),
            _buildSnackbarsSection(),

            const SizedBox(height: 32),
            _buildSectionTitle('11. Dividers'),
            _buildDividersSection(),

            const SizedBox(height: 32),
            _buildSectionTitle('12. Tooltips'),
            _buildTooltipsSection(),
            
            const SizedBox(height: 100), // Bottom padding
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

  Widget _buildButtonsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Elevated Button'),
        const SizedBox(height: 8),
        FPElevatedButton(
          label: 'Elevated Button',
          onPressed: () {},
        ),
        
        const SizedBox(height: 16),
        const Text('Filled Button'),
        const SizedBox(height: 8),
        FPFilledButton(
          label: 'Filled Button',
          onPressed: () {},
        ),
        
        const SizedBox(height: 16),
        const Text('Outlined Button'),
        const SizedBox(height: 8),
        FPOutlinedButton(
          label: 'Outlined Button',
          onPressed: () {},
        ),
        
        const SizedBox(height: 16),
        const Text('Text Button'),
        const SizedBox(height: 8),
        FPTextButton(
          label: 'Text Button',
          onPressed: () {},
        ),
        
        const SizedBox(height: 16),
        const Text('Buttons with Icons'),
        const SizedBox(height: 8),
        Row(
          children: [
            FPElevatedButton(
              label: 'Add Item',
              icon: Icons.add,
              onPressed: () {},
            ),
            const SizedBox(width: 8),
            FPFilledButton(
              label: 'Delete',
              icon: Icons.delete,
              isDestructive: true,
              onPressed: () {},
            ),
          ],
        ),
        
        const SizedBox(height: 16),
        const Text('Loading Buttons'),
        const SizedBox(height: 8),
        Row(
          children: [
            FPElevatedButton(
              label: 'Loading...',
              isLoading: true,
              onPressed: () {},
            ),
            const SizedBox(width: 8),
            FPFilledButton(
              label: 'Loading...',
              isLoading: true,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCardsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Elevated Card'),
        const SizedBox(height: 8),
        FPElevatedCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Elevated Card',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                'This is an elevated card with some content.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 16),
        const Text('Filled Card'),
        const SizedBox(height: 8),
        FPFilledCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filled Card',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                'This is a filled card with surface variant color.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 16),
        const Text('Outlined Card'),
        const SizedBox(height: 8),
        FPOutlinedCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Outlined Card',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                'This is an outlined card with a border.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChipsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Assist Chips'),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            FPAssistChip(
              label: 'Add to calendar',
              icon: Icons.add,
              onPressed: () {},
            ),
            FPAssistChip(
              label: 'Bookmark',
              icon: Icons.bookmark,
              onPressed: () {},
            ),
          ],
        ),
        
        const SizedBox(height: 16),
        const Text('Filter Chips'),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            FPFilterChip(
              label: 'Filter 1',
              onSelected: (selected) {
                setState(() {
                  _selectedChip = selected ? 'Filter 1' : '';
                });
              },
            ),
            FPFilterChip(
              label: 'Filter 2',
              onSelected: (selected) {
                setState(() {
                  _selectedChip = selected ? 'Filter 2' : '';
                });
              },
            ),
          ],
        ),
        
        const SizedBox(height: 16),
        const Text('Input Chips'),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            FPInputChip(
              label: 'Input Chip 1',
              onDeleted: () {},
            ),
            FPInputChip(
              label: 'Input Chip 2',
              onDeleted: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTextFieldsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Filled Text Field'),
        const SizedBox(height: 8),
        FPFilledTextField(
          label: 'Filled Text Field',
        ),
        
        const SizedBox(height: 16),
        const Text('Outlined Text Field'),
        const SizedBox(height: 8),
        FPOutlinedTextField(
          label: 'Outlined Text Field',
        ),
        
        const SizedBox(height: 16),
        const Text('Text Field with Error'),
        const SizedBox(height: 8),
        FPFilledTextField(
          label: 'Text Field with Error',
          errorText: 'This field has an error',
        ),
        
        const SizedBox(height: 16),
        const Text('Text Field with Helper Text'),
        const SizedBox(height: 8),
        FPFilledTextField(
          label: 'Text Field with Helper Text',
          helperText: 'This is helper text',
        ),
        
        const SizedBox(height: 16),
        const Text('Text Field with Icons'),
        const SizedBox(height: 8),
        FPFilledTextField(
          label: 'Text Field with Icons',
          prefixIcon: const Icon(Icons.person),
          suffixIcon: const Icon(Icons.clear),
        ),
      ],
    );
  }

  Widget _buildSelectionControlsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Checkboxes'),
        const SizedBox(height: 8),
        FPCheckbox(
          label: 'Checkbox',
          value: _checkboxValue,
          onChanged: (value) {
            setState(() {
              _checkboxValue = value ?? false;
            });
          },
        ),
        
        const SizedBox(height: 16),
        const Text('Radio Buttons'),
        const SizedBox(height: 8),
        FPRadio<String>(
          label: 'Option 1',
          value: 'Option 1',
          groupValue: _selectedRadio,
          onChanged: (value) {
            setState(() {
              _selectedRadio = value ?? 'Option 1';
            });
          },
        ),
        FPRadio<String>(
          label: 'Option 2',
          value: 'Option 2',
          groupValue: _selectedRadio,
          onChanged: (value) {
            setState(() {
              _selectedRadio = value ?? 'Option 1';
            });
          },
        ),
        
        const SizedBox(height: 16),
        const Text('Switches'),
        const SizedBox(height: 8),
        FPSwitch(
          label: 'Switch',
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildSlidersSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Continuous Slider'),
        const SizedBox(height: 8),
        FPSlider(
          value: _sliderValue,
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
            });
          },
          min: 0.0,
          max: 1.0,
        ),
        
        const SizedBox(height: 16),
        const Text('Discrete Slider'),
        const SizedBox(height: 8),
        FPSlider(
          value: _sliderValue,
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
            });
          },
          min: 0.0,
          max: 1.0,
          divisions: 10,
        ),
        
        const SizedBox(height: 16),
        const Text('Range Slider'),
        const SizedBox(height: 8),
        FPRangeSlider(
          values: RangeValues(0.2, 0.8),
          onChanged: (values) {
            // Handle range slider change
          },
          min: 0.0,
          max: 1.0,
          divisions: 10,
        ),
      ],
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