import 'package:flutter/material.dart';
import '../core/widgets/fp_banners.dart';

class FPBannerShowcase extends StatelessWidget {
  const FPBannerShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Banner Showcase')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Basic Banner'),
          const SizedBox(height: 8),
          FPBanner(
            content: 'This is a basic info banner.',
            leadingIcon: Image.network(
              'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=facearea&w=48&h=48&facepad=2',
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.blue.shade50,
            contentColor: Colors.blue.shade900,
          ),
          const SizedBox(height: 24),
          const Text('Banner with Actions'),
          const SizedBox(height: 8),
          FPBannerWithActions(
            content: 'This banner has actions.',
            actions: [
              TextButton(onPressed: () {}, child: const Text('Dismiss')),
              ElevatedButton(onPressed: () {}, child: const Text('Action')),
            ],
            leadingIcon: const Icon(Icons.info, color: Colors.blue),
            backgroundColor: Colors.yellow.shade50,
            contentColor: Colors.orange.shade900,
          ),
        ],
      ),
    );
  }
} 