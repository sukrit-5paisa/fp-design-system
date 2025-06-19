import 'package:flutter/material.dart';
import '../core/widgets/fp_menus.dart';

class FPMenusShowcase extends StatelessWidget {
  const FPMenusShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Menus Showcase')),
      body: Center(
        child: PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  Image.network('https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=facearea&w=24&h=24&facepad=2', width: 24, height: 24),
                  const SizedBox(width: 8),
                  const Text('Profile'),
                ],
              ),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text('Settings'),
            ),
            const PopupMenuItem(
              value: 3,
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
} 