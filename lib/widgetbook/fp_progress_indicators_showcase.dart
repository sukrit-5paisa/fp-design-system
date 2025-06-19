import 'package:flutter/material.dart';
import '../core/widgets/fp_progress_indicators.dart';

class FPProgressIndicatorsShowcase extends StatefulWidget {
  const FPProgressIndicatorsShowcase({super.key});

  @override
  State<FPProgressIndicatorsShowcase> createState() => _FPProgressIndicatorsShowcaseState();
}

class _FPProgressIndicatorsShowcaseState extends State<FPProgressIndicatorsShowcase> {
  double _linearProgressValue = 0.3;
  double _circularProgressValue = 0.6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Progress Indicators'),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Linear Progress Indicators'),
            _buildLinearProgressSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('Circular Progress Indicators'),
            _buildCircularProgressSection(),
            
            const SizedBox(height: 32),
            _buildSectionTitle('Determinate Progress'),
            _buildDeterminateProgressSection(),
            
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

  Widget _buildLinearProgressSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Indeterminate Linear Progress'),
        const SizedBox(height: 8),
        const FPLinearProgressIndicator(),
        
        const SizedBox(height: 16),
        const Text('Determinate Linear Progress'),
        const SizedBox(height: 8),
        FPLinearProgressIndicator(
          value: _linearProgressValue,
        ),
        
        const SizedBox(height: 8),
        Slider(
          value: _linearProgressValue,
          onChanged: (value) {
            setState(() {
              _linearProgressValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildCircularProgressSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Indeterminate Circular Progress'),
        const SizedBox(height: 16),
        Row(
          children: [
            const FPCircularProgressIndicator(),
            const SizedBox(width: 32),
            const FPCircularProgressIndicator(),
            const SizedBox(width: 32),
            const FPCircularProgressIndicator(),
          ],
        ),
        
        const SizedBox(height: 24),
        const Text('Determinate Circular Progress'),
        const SizedBox(height: 16),
        Row(
          children: [
            FPCircularProgressIndicator(
              value: _circularProgressValue,
            ),
            const SizedBox(width: 32),
            FPCircularProgressIndicator(
              value: _circularProgressValue,
            ),
            const SizedBox(width: 32),
            FPCircularProgressIndicator(
              value: _circularProgressValue,
            ),
          ],
        ),
        
        const SizedBox(height: 8),
        Slider(
          value: _circularProgressValue,
          onChanged: (value) {
            setState(() {
              _circularProgressValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildDeterminateProgressSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Progress with Labels'),
        const SizedBox(height: 16),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Upload Progress'),
                Text('${(_linearProgressValue * 100).toInt()}%'),
              ],
            ),
            const SizedBox(height: 8),
            FPLinearProgressIndicator(
              value: _linearProgressValue,
            ),
          ],
        ),
        
        const SizedBox(height: 24),
        Row(
          children: [
            Column(
              children: [
                FPCircularProgressIndicator(
                  value: _circularProgressValue,
                ),
                const SizedBox(height: 8),
                Text('${(_circularProgressValue * 100).toInt()}%'),
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: [
                FPCircularProgressIndicator(
                  value: _circularProgressValue,
                ),
                const SizedBox(height: 8),
                Text('${(_circularProgressValue * 100).toInt()}%'),
              ],
            ),
          ],
        ),
      ],
    );
  }
} 