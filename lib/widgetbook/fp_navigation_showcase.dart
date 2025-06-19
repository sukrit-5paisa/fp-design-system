import 'package:flutter/material.dart';
// import your navigation widgets here if you have custom ones

class FPNavigationShowcase extends StatefulWidget {
  const FPNavigationShowcase({super.key});

  @override
  State<FPNavigationShowcase> createState() => _FPNavigationShowcaseState();
}

class _FPNavigationShowcaseState extends State<FPNavigationShowcase> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Navigation Showcase')),
      body: Center(
        child: Text('Selected tab: $_selectedIndex'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
} 