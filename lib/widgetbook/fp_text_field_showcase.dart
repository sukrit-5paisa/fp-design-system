import 'package:flutter/material.dart';
import '../core/widgets/fp_text_field.dart';

class FPTextFieldShowcase extends StatefulWidget {
  const FPTextFieldShowcase({super.key});

  @override
  State<FPTextFieldShowcase> createState() => _FPTextFieldShowcaseState();
}

class _FPTextFieldShowcaseState extends State<FPTextFieldShowcase> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _multilineController = TextEditingController();
  final TextEditingController _errorController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _searchController.dispose();
    _multilineController.dispose();
    _errorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Text Field Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Basic Text Fields',
              [
                _buildTextFieldDemo(
                  'Filled Text Field',
                  FPTextField(
                    label: 'Filled Text Field',
                    hintText: 'Enter text here',
                    variant: FPTextFieldVariant.filled,
                  ),
                ),
                _buildTextFieldDemo(
                  'Outlined Text Field',
                  FPTextField(
                    label: 'Outlined Text Field',
                    hintText: 'Enter text here',
                    variant: FPTextFieldVariant.outlined,
                  ),
                ),
                _buildTextFieldDemo(
                  'With Helper Text',
                  FPTextField(
                    label: 'Email',
                    hintText: 'Enter your email',
                    helperText: 'We\'ll never share your email',
                    prefixIcon: Icons.email,
                  ),
                ),
              ],
            ),
            _buildSection(
              'Text Fields with Icons',
              [
                _buildTextFieldDemo(
                  'With Prefix Icon',
                  FPTextField(
                    label: 'Search',
                    hintText: 'Search for something...',
                    prefixIcon: Icons.search,
                    controller: _searchController,
                  ),
                ),
                _buildTextFieldDemo(
                  'With Suffix Icon',
                  FPTextField(
                    label: 'Amount',
                    hintText: 'Enter amount',
                    suffixIcon: Icons.attach_money,
                  ),
                ),
                _buildTextFieldDemo(
                  'With Both Icons',
                  FPTextField(
                    label: 'Phone Number',
                    hintText: 'Enter phone number',
                    prefixIcon: Icons.phone,
                    suffixIcon: Icons.contact_phone,
                  ),
                ),
              ],
            ),
            _buildSection(
              'Password Fields',
              [
                _buildTextFieldDemo(
                  'Password Field',
                  FPTextField(
                    label: 'Password',
                    hintText: 'Enter your password',
                    obscureText: true,
                    controller: _passwordController,
                    prefixIcon: Icons.lock,
                  ),
                ),
                _buildTextFieldDemo(
                  'Confirm Password',
                  FPTextField(
                    label: 'Confirm Password',
                    hintText: 'Confirm your password',
                    obscureText: true,
                    prefixIcon: Icons.lock_outline,
                  ),
                ),
              ],
            ),
            _buildSection(
              'Multiline Text Fields',
              [
                _buildTextFieldDemo(
                  'Single Line',
                  FPTextField(
                    label: 'Single Line',
                    hintText: 'This is a single line field',
                    maxLines: 1,
                  ),
                ),
                _buildTextFieldDemo(
                  'Multiline',
                  FPTextField(
                    label: 'Description',
                    hintText: 'Enter a description...',
                    maxLines: 3,
                    controller: _multilineController,
                  ),
                ),
                _buildTextFieldDemo(
                  'Expandable',
                  FPTextField(
                    label: 'Notes',
                    hintText: 'Enter your notes...',
                    minLines: 2,
                    maxLines: 5,
                  ),
                ),
              ],
            ),
            _buildSection(
              'Text Fields with Validation',
              [
                _buildTextFieldDemo(
                  'With Error',
                  FPTextField(
                    label: 'Email',
                    hintText: 'Enter email',
                    errorText: 'Please enter a valid email',
                    controller: _errorController,
                    prefixIcon: Icons.email,
                  ),
                ),
                _buildTextFieldDemo(
                  'With Character Counter',
                  FPTextField(
                    label: 'Bio',
                    hintText: 'Tell us about yourself',
                    maxLength: 100,
                    showCharacterCounter: true,
                    maxLines: 3,
                  ),
                ),
                _buildTextFieldDemo(
                  'Required Field',
                  FPTextField(
                    label: 'Username *',
                    hintText: 'Enter username',
                    helperText: 'This field is required',
                  ),
                ),
              ],
            ),
            _buildSection(
              'Specialized Text Fields',
              [
                _buildTextFieldDemo(
                  'Email Field',
                  FPTextField(
                    label: 'Email Address',
                    hintText: 'example@email.com',
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    prefixIcon: Icons.email,
                  ),
                ),
                _buildTextFieldDemo(
                  'Number Field',
                  FPTextField(
                    label: 'Age',
                    hintText: 'Enter your age',
                    keyboardType: TextInputType.number,
                    prefixIcon: Icons.numbers,
                  ),
                ),
                _buildTextFieldDemo(
                  'Phone Field',
                  FPTextField(
                    label: 'Phone Number',
                    hintText: '+1 (555) 123-4567',
                    keyboardType: TextInputType.phone,
                    prefixIcon: Icons.phone,
                  ),
                ),
              ],
            ),
            _buildSection(
              'Disabled and Read-only',
              [
                _buildTextFieldDemo(
                  'Disabled Field',
                  FPTextField(
                    label: 'Disabled',
                    hintText: 'This field is disabled',
                    enabled: false,
                    prefixIcon: Icons.block,
                  ),
                ),
                _buildTextFieldDemo(
                  'Read-only Field',
                  FPTextField(
                    label: 'Read-only',
                    hintText: 'This field is read-only',
                    readOnly: true,
                    prefixIcon: Icons.lock,
                  ),
                ),
              ],
            ),
            _buildSection(
              'Custom Styled Text Fields',
              [
                _buildTextFieldDemo(
                  'Custom Colors',
                  FPTextField(
                    label: 'Custom Colors',
                    hintText: 'This field has custom colors',
                    fillColor: Colors.blue.shade50,
                    focusedFillColor: Colors.blue.shade100,
                    prefixIcon: Icons.palette,
                  ),
                ),
                _buildTextFieldDemo(
                  'Custom Border',
                  FPTextField(
                    label: 'Custom Border',
                    hintText: 'This field has a custom border',
                    border: BorderSide(color: Colors.green, width: 2),
                    focusedBorder: BorderSide(color: Colors.green, width: 3),
                    prefixIcon: Icons.border_style,
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

  Widget _buildTextFieldDemo(String label, Widget textField) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textField,
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
} 