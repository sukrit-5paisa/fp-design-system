import 'package:flutter/material.dart';
import '../core/widgets/fp_lists.dart';

class FPListsShowcase extends StatelessWidget {
  const FPListsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FP Lists Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Basic List Tiles',
              [
                _buildListDemo(
                  'Simple List Tile',
                  Column(
                    children: [
                      FPListTile(
                        title: const Text('Simple List Tile'),
                        onTap: () {},
                      ),
                      FPListTile(
                        title: const Text('With Subtitle'),
                        subtitle: const Text('This is a subtitle'),
                        onTap: () {},
                      ),
                      FPListTile(
                        title: const Text('With Trailing'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                _buildListDemo(
                  'With Leading Icon',
                  Column(
                    children: [
                      FPListTile(
                        leading: const Icon(Icons.person),
                        title: const Text('Profile'),
                        onTap: () {},
                      ),
                      FPListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('Settings'),
                        subtitle: const Text('App settings and preferences'),
                        onTap: () {},
                      ),
                      FPListTile(
                        leading: const Icon(Icons.notifications),
                        title: const Text('Notifications'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'List Tiles with Avatars',
              [
                _buildListDemo(
                  'Text Avatars',
                  Column(
                    children: [
                      FPListTileWithAvatar(
                        avatarText: 'JD',
                        title: const Text('John Doe'),
                        subtitle: const Text('Software Engineer'),
                        onTap: () {},
                      ),
                      FPListTileWithAvatar(
                        avatarText: 'JS',
                        title: const Text('Jane Smith'),
                        subtitle: const Text('Product Manager'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                _buildListDemo(
                  'Icon Avatars',
                  Column(
                    children: [
                      FPListTileWithAvatar(
                        avatarIcon: Icons.person,
                        title: const Text('User Profile'),
                        subtitle: const Text('View and edit profile'),
                        onTap: () {},
                      ),
                      FPListTileWithAvatar(
                        avatarIcon: Icons.business,
                        title: const Text('Company'),
                        subtitle: const Text('Company information'),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'List Tiles with Icons',
              [
                _buildListDemo(
                  'Icon List Tiles',
                  Column(
                    children: [
                      FPListTileWithIcon(
                        icon: Icons.home,
                        title: const Text('Home'),
                        onTap: () {},
                      ),
                      FPListTileWithIcon(
                        icon: Icons.favorite,
                        title: const Text('Favorites'),
                        subtitle: const Text('Your favorite items'),
                        onTap: () {},
                      ),
                      FPListTileWithIcon(
                        icon: Icons.download,
                        title: const Text('Downloads'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                _buildListDemo(
                  'Custom Icon Colors',
                  Column(
                    children: [
                      FPListTileWithIcon(
                        icon: Icons.star,
                        title: const Text('Premium'),
                        iconColor: Colors.amber,
                        onTap: () {},
                      ),
                      FPListTileWithIcon(
                        icon: Icons.warning,
                        title: const Text('Warning'),
                        iconColor: Colors.orange,
                        onTap: () {},
                      ),
                      FPListTileWithIcon(
                        icon: Icons.error,
                        title: const Text('Error'),
                        iconColor: Colors.red,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Interactive List Tiles',
              [
                _buildListDemo(
                  'Selectable Tiles',
                  Column(
                    children: [
                      FPListTile(
                        leading: const Icon(Icons.check_circle),
                        title: const Text('Selected Item'),
                        selected: true,
                        onTap: () {},
                      ),
                      FPListTile(
                        leading: const Icon(Icons.radio_button_unchecked),
                        title: const Text('Unselected Item'),
                        selected: false,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                _buildListDemo(
                  'Disabled Tiles',
                  Column(
                    children: [
                      FPListTile(
                        leading: const Icon(Icons.block),
                        title: const Text('Disabled Item'),
                        enabled: false,
                        onTap: () {},
                      ),
                      FPListTile(
                        leading: const Icon(Icons.lock),
                        title: const Text('Locked Item'),
                        subtitle: const Text('This item is locked'),
                        enabled: false,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'Custom Styled List Tiles',
              [
                _buildListDemo(
                  'Custom Colors',
                  Column(
                    children: [
                      FPListTile(
                        leading: const Icon(Icons.favorite),
                        title: const Text('Custom Colored Tile'),
                        tileColor: Colors.red.shade50,
                        selectedTileColor: Colors.red.shade100,
                        onTap: () {},
                      ),
                      FPListTile(
                        leading: const Icon(Icons.star),
                        title: const Text('Another Custom Tile'),
                        tileColor: Colors.blue.shade50,
                        selectedTileColor: Colors.blue.shade100,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                _buildListDemo(
                  'Custom Shapes',
                  Column(
                    children: [
                      FPListTile(
                        leading: const Icon(Icons.rounded_corner),
                        title: const Text('Rounded Tile'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {},
                      ),
                      FPListTile(
                        leading: const Icon(Icons.rectangle),
                        title: const Text('Custom Padding'),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 8,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildSection(
              'List Examples',
              [
                _buildExample(
                  'Settings List',
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        FPListTileWithIcon(
                          icon: Icons.person,
                          title: const Text('Account'),
                          subtitle: const Text('Manage your account'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        FPListTileWithIcon(
                          icon: Icons.notifications,
                          title: const Text('Notifications'),
                          subtitle: const Text('Configure notifications'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        FPListTileWithIcon(
                          icon: Icons.security,
                          title: const Text('Privacy'),
                          subtitle: const Text('Privacy and security'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        FPListTileWithIcon(
                          icon: Icons.help,
                          title: const Text('Help & Support'),
                          subtitle: const Text('Get help and support'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                _buildExample(
                  'Contact List',
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        FPListTileWithAvatar(
                          avatarText: 'JD',
                          title: const Text('John Doe'),
                          subtitle: const Text('+1 (555) 123-4567'),
                          trailing: const Icon(Icons.phone),
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        FPListTileWithAvatar(
                          avatarText: 'JS',
                          title: const Text('Jane Smith'),
                          subtitle: const Text('+1 (555) 987-6543'),
                          trailing: const Icon(Icons.message),
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        FPListTileWithAvatar(
                          avatarText: 'MJ',
                          title: const Text('Mike Johnson'),
                          subtitle: const Text('+1 (555) 456-7890'),
                          trailing: const Icon(Icons.video_call),
                          onTap: () {},
                        ),
                      ],
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

  Widget _buildListDemo(String label, Widget list) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: list,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildExample(String title, Widget example) {
    return Container(
      width: 300,
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
          example,
        ],
      ),
    );
  }
} 