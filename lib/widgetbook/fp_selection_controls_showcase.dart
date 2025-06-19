import 'package:flutter/material.dart';
import '../core/widgets/fp_selection_controls.dart';

class FPSelectionControlsShowcase extends StatefulWidget {
  const FPSelectionControlsShowcase({super.key});

  @override
  State<FPSelectionControlsShowcase> createState() => _FPSelectionControlsShowcaseState();
}

class _FPSelectionControlsShowcaseState extends State<FPSelectionControlsShowcase> {
  bool _checkboxValue = false;
  bool? _tristateValue;
  String? _radioValue;
  bool _switchValue = false;
  bool _customSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Selection Controls Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Checkboxes',
              [
                _buildControlDemo(
                  'Basic Checkbox',
                  FPCheckbox(
                    value: _checkboxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkboxValue = value ?? false;
                      });
                    },
                  ),
                ),
                _buildControlDemo(
                  'With Label',
                  FPCheckbox(
                    value: _checkboxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkboxValue = value ?? false;
                      });
                    },
                    label: 'Accept terms and conditions',
                  ),
                ),
                _buildControlDemo(
                  'Tristate Checkbox',
                  FPCheckbox(
                    value: _tristateValue,
                    onChanged: (value) {
                      setState(() {
                        _tristateValue = value;
                      });
                    },
                    tristate: true,
                    label: 'Select all items',
                  ),
                ),
                _buildControlDemo(
                  'Custom Colors',
                  FPCheckbox(
                    value: _checkboxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkboxValue = value ?? false;
                      });
                    },
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    label: 'Custom colored checkbox',
                  ),
                ),
                _buildControlDemo(
                  'Disabled Checkbox',
                  FPCheckbox(
                    value: true,
                    onChanged: null,
                    label: 'Disabled checkbox',
                  ),
                ),
              ],
            ),
            _buildSection(
              'Radio Buttons',
              [
                _buildControlDemo(
                  'Basic Radio',
                  FPRadio<String>(
                    value: 'option1',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value;
                      });
                    },
                  ),
                ),
                _buildControlDemo(
                  'With Label',
                  FPRadio<String>(
                    value: 'option1',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value;
                      });
                    },
                    label: 'Option 1',
                  ),
                ),
                _buildControlDemo(
                  'Radio Group',
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FPRadio<String>(
                        value: 'option1',
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                        label: 'Option 1',
                      ),
                      FPRadio<String>(
                        value: 'option2',
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                        label: 'Option 2',
                      ),
                      FPRadio<String>(
                        value: 'option3',
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                        label: 'Option 3',
                      ),
                    ],
                  ),
                ),
                _buildControlDemo(
                  'Custom Colors',
                  FPRadio<String>(
                    value: 'custom',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value;
                      });
                    },
                    activeColor: Colors.purple,
                    label: 'Custom colored radio',
                  ),
                ),
                _buildControlDemo(
                  'Disabled Radio',
                  FPRadio<String>(
                    value: 'disabled',
                    groupValue: 'disabled',
                    onChanged: null,
                    label: 'Disabled radio',
                  ),
                ),
              ],
            ),
            _buildSection(
              'Switches',
              [
                _buildControlDemo(
                  'Basic Switch',
                  FPSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
                _buildControlDemo(
                  'With Label',
                  FPSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                    label: 'Enable notifications',
                  ),
                ),
                _buildControlDemo(
                  'Custom Colors',
                  FPSwitch(
                    value: _customSwitchValue,
                    onChanged: (value) {
                      setState(() {
                        _customSwitchValue = value;
                      });
                    },
                    activeColor: Colors.orange,
                    activeTrackColor: Colors.orange.shade200,
                    inactiveThumbColor: Colors.grey.shade400,
                    inactiveTrackColor: Colors.grey.shade200,
                    label: 'Custom colored switch',
                  ),
                ),
                _buildControlDemo(
                  'Disabled Switch',
                  FPSwitch(
                    value: true,
                    onChanged: null,
                    label: 'Disabled switch',
                  ),
                ),
              ],
            ),
            _buildSection(
              'Form Examples',
              [
                _buildFormExample(
                  'Settings Form',
                  Column(
                    children: [
                      FPCheckbox(
                        value: _checkboxValue,
                        onChanged: (value) {
                          setState(() {
                            _checkboxValue = value ?? false;
                          });
                        },
                        label: 'Enable dark mode',
                      ),
                      const SizedBox(height: 16),
                      FPSwitch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                        label: 'Auto-save documents',
                      ),
                      const SizedBox(height: 16),
                      const Text('Theme preference:', style: TextStyle(fontWeight: FontWeight.bold)),
                      FPRadio<String>(
                        value: 'light',
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                        label: 'Light theme',
                      ),
                      FPRadio<String>(
                        value: 'dark',
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                        label: 'Dark theme',
                      ),
                      FPRadio<String>(
                        value: 'system',
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                        label: 'System default',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: children,
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildControlDemo(String label, Widget control) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        control,
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildFormExample(String title, Widget form) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          form,
        ],
      ),
    );
  }
} 