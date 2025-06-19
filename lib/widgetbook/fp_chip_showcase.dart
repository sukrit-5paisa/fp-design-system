import 'package:flutter/material.dart';
import '../core/widgets/fp_chip.dart';

class FPChipShowcase extends StatelessWidget {
  const FPChipShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Chip Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Assist Chips',
              [
                FPChip(
                  label: 'Assist Chip',
                  variant: FPChipVariant.assist,
                  onPressed: () {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'With Icon',
                  variant: FPChipVariant.assist,
                  leadingIcon: Icons.add,
                  onPressed: () {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'Disabled',
                  variant: FPChipVariant.assist,
                  disabled: true,
                ),
              ],
            ),
            _buildSection(
              'Filter Chips',
              [
                FPChip(
                  label: 'Filter Chip',
                  variant: FPChipVariant.filter,
                  onSelected: (selected) {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'Selected Filter',
                  variant: FPChipVariant.filter,
                  selected: true,
                  onSelected: (selected) {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'With Icon',
                  variant: FPChipVariant.filter,
                  leadingIcon: Icons.filter_list,
                  onSelected: (selected) {},
                ),
              ],
            ),
            _buildSection(
              'Input Chips',
              [
                FPChip(
                  label: 'Input Chip',
                  variant: FPChipVariant.input,
                  onPressed: () {},
                  onDeleted: () {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'With Avatar',
                  variant: FPChipVariant.input,
                  avatar: const CircleAvatar(
                    radius: 12,
                    child: Text('A'),
                  ),
                  onPressed: () {},
                  onDeleted: () {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'Selected Input',
                  variant: FPChipVariant.input,
                  selected: true,
                  onPressed: () {},
                  onDeleted: () {},
                ),
              ],
            ),
            _buildSection(
              'Suggestion Chips',
              [
                FPChip(
                  label: 'Suggestion',
                  variant: FPChipVariant.suggestion,
                  onPressed: () {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'With Icon',
                  variant: FPChipVariant.suggestion,
                  leadingIcon: Icons.search,
                  onPressed: () {},
                ),
              ],
            ),
            _buildSection(
              'Choice Chips',
              [
                FPChip(
                  label: 'Choice 1',
                  variant: FPChipVariant.choice,
                  onSelected: (selected) {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'Choice 2',
                  variant: FPChipVariant.choice,
                  selected: true,
                  onSelected: (selected) {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'With Avatar',
                  variant: FPChipVariant.choice,
                  avatar: const CircleAvatar(
                    radius: 12,
                    child: Text('C'),
                  ),
                  onSelected: (selected) {},
                ),
              ],
            ),
            _buildSection(
              'Custom Styled Chips',
              [
                FPChip(
                  label: 'Custom Colors',
                  variant: FPChipVariant.assist,
                  backgroundColor: Colors.blue.shade100,
                  labelColor: Colors.blue.shade900,
                  onPressed: () {},
                ),
                const SizedBox(height: 8),
                FPChip(
                  label: 'Custom Border',
                  variant: FPChipVariant.assist,
                  side: const BorderSide(color: Colors.red, width: 2),
                  onPressed: () {},
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
          spacing: 8,
          runSpacing: 8,
          children: children,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
} 