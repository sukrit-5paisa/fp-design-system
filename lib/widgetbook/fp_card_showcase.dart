import 'package:flutter/material.dart';
import '../core/widgets/fp_card.dart';

class FPCardShowcase extends StatelessWidget {
  const FPCardShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Card Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Card Variants',
              [
                _buildCardDemo(
                  'Elevated Card',
                  FPCard(
                    variant: FPCardVariant.elevated,
                    child: const FPCardContent(
                      title: 'Elevated Card',
                      subtitle: 'This is an elevated card with shadow',
                      leading: Icon(Icons.star),
                    ),
                  ),
                ),
                _buildCardDemo(
                  'Filled Card',
                  FPCard(
                    variant: FPCardVariant.filled,
                    child: const FPCardContent(
                      title: 'Filled Card',
                      subtitle: 'This is a filled card with background color',
                      leading: Icon(Icons.favorite),
                    ),
                  ),
                ),
                _buildCardDemo(
                  'Outlined Card',
                  FPCard(
                    variant: FPCardVariant.outlined,
                    child: const FPCardContent(
                      title: 'Outlined Card',
                      subtitle: 'This is an outlined card with border',
                      leading: Icon(Icons.info),
                    ),
                  ),
                ),
              ],
            ),
            _buildSection(
              'Card with Actions',
              [
                _buildCardDemo(
                  'With Actions',
                  FPCard(
                    child: FPCardContent(
                      title: 'Card with Actions',
                      subtitle: 'This card has action buttons',
                      leading: const Icon(Icons.edit),
                      actions: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  ),
                ),
                _buildCardDemo(
                  'With Divider',
                  FPCard(
                    child: FPCardContent(
                      title: 'Card with Divider',
                      subtitle: 'This card has a divider',
                      leading: const Icon(Icons.list),
                      showDivider: true,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            _buildSection(
              'Interactive Cards',
              [
                _buildCardDemo(
                  'Tappable Card',
                  FPCard(
                    onTap: () {},
                    child: const FPCardContent(
                      title: 'Tappable Card',
                      subtitle: 'Tap this card to see the ripple effect',
                      leading: Icon(Icons.touch_app),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                _buildCardDemo(
                  'Custom Colors',
                  FPCard(
                    variant: FPCardVariant.filled,
                    color: Colors.blue.shade50,
                    child: const FPCardContent(
                      title: 'Custom Colors',
                      subtitle: 'This card has custom background color',
                      leading: Icon(Icons.palette),
                    ),
                  ),
                ),
              ],
            ),
            _buildSection(
              'Card with Custom Content',
              [
                _buildCardDemo(
                  'Image Card',
                  FPCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.network(
                            'https://picsum.photos/300/150',
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const FPCardContent(
                          title: 'Image Card',
                          subtitle: 'This card contains an image',
                        ),
                      ],
                    ),
                  ),
                ),
                _buildCardDemo(
                  'List Card',
                  FPCard(
                    child: Column(
                      children: [
                        const FPCardContent(
                          title: 'List Items',
                          subtitle: 'This card contains a list',
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Icon(Icons.check_circle),
                              title: Text('Item ${index + 1}'),
                              subtitle: Text('Description for item ${index + 1}'),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            _buildSection(
              'Card Sizing',
              [
                _buildCardDemo(
                  'Small Card',
                  SizedBox(
                    width: 200,
                    child: FPCard(
                      child: const FPCardContent(
                        title: 'Small Card',
                        subtitle: 'This is a small card',
                      ),
                    ),
                  ),
                ),
                _buildCardDemo(
                  'Large Card',
                  SizedBox(
                    width: 350,
                    child: FPCard(
                      child: const FPCardContent(
                        title: 'Large Card',
                        subtitle: 'This is a larger card with more content',
                        leading: Icon(Icons.expand),
                      ),
                    ),
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

  Widget _buildCardDemo(String label, Widget card) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        card,
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
} 