import 'package:flutter/material.dart';
import '../core/widgets/fp_fab.dart';

class FPFabShowcase extends StatelessWidget {
  const FPFabShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP FAB Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Regular FAB',
              [
                _buildFabDemo(
                  'Icon Only',
                  FPFloatingActionButton(
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                ),
                _buildFabDemo(
                  'With Custom Colors',
                  FPFloatingActionButton(
                    icon: Icons.favorite,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                _buildFabDemo(
                  'Custom Shape',
                  FPFloatingActionButton(
                    icon: Icons.star,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'Extended FAB',
              [
                _buildFabDemo(
                  'With Label',
                  FPFloatingActionButton(
                    icon: Icons.add,
                    label: 'Add Item',
                    isExtended: true,
                    onPressed: () {},
                  ),
                ),
                _buildFabDemo(
                  'Custom Colors',
                  FPFloatingActionButton(
                    icon: Icons.edit,
                    label: 'Edit',
                    isExtended: true,
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'Small FAB',
              [
                _buildFabDemo(
                  'Small Icon',
                  FPSmallFAB(
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                ),
                _buildFabDemo(
                  'Custom Colors',
                  FPSmallFAB(
                    icon: Icons.favorite,
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'Large FAB',
              [
                _buildFabDemo(
                  'Large Icon',
                  FPLargeFAB(
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                ),
                _buildFabDemo(
                  'Custom Colors',
                  FPLargeFAB(
                    icon: Icons.star,
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'FAB with Custom Child',
              [
                _buildFabDemo(
                  'Custom Widget',
                  FPFloatingActionButton(
                    child: const Text(
                      'A',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                _buildFabDemo(
                  'Stacked Icons',
                  FPFloatingActionButton(
                    child: Stack(
                      children: [
                        const Icon(Icons.notifications),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 12,
                              minHeight: 12,
                            ),
                            child: const Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            _buildSection(
              'FAB with Different Elevations',
              [
                _buildFabDemo(
                  'Low Elevation',
                  FPFloatingActionButton(
                    icon: Icons.add,
                    elevation: 2,
                    onPressed: () {},
                  ),
                ),
                _buildFabDemo(
                  'High Elevation',
                  FPFloatingActionButton(
                    icon: Icons.add,
                    elevation: 8,
                    onPressed: () {},
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

  Widget _buildFabDemo(String label, Widget fab) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(child: fab),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
} 