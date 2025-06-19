import 'package:flutter/material.dart';

class FPExpansionPanelShowcase extends StatefulWidget {
  const FPExpansionPanelShowcase({super.key});

  @override
  State<FPExpansionPanelShowcase> createState() => _FPExpansionPanelShowcaseState();
}

class _FPExpansionPanelShowcaseState extends State<FPExpansionPanelShowcase> {
  List<bool> _expanded = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Expansion Panel Showcase')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: ExpansionPanelList(
          expansionCallback: (index, isOpen) => setState(() => _expanded[index] = !isOpen),
          children: [
            ExpansionPanel(
              headerBuilder: (context, isOpen) => const ListTile(title: Text('Panel 1')),
              body: ListTile(
                leading: Image.network('https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=facearea&w=48&h=48&facepad=2'),
                title: const Text('This panel contains an image.'),
              ),
              isExpanded: _expanded[0],
            ),
            ExpansionPanel(
              headerBuilder: (context, isOpen) => const ListTile(title: Text('Panel 2')),
              body: const ListTile(title: Text('Another panel.')),
              isExpanded: _expanded[1],
            ),
          ],
        ),
      ),
    );
  }
} 