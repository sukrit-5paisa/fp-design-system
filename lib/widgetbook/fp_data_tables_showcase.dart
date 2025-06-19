import 'package:flutter/material.dart';
import '../core/widgets/fp_data_tables.dart';

class FPDataTablesShowcase extends StatelessWidget {
  const FPDataTablesShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Data Tables Showcase')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Basic Data Table'),
          const SizedBox(height: 8),
          FPDataTable(
            columns: [
              FPDataColumn(label: const Text('Name')),
              FPDataColumn(label: const Text('Avatar')),
              FPDataColumn(label: const Text('Role')),
            ],
            rows: [
              FPDataRow(cells: [
                FPDataCell(child: const Text('Alice')),
                FPDataCell(child: Image.network('https://randomuser.me/api/portraits/women/1.jpg', width: 32, height: 32)),
                FPDataCell(child: const Text('Admin')),
              ]),
              FPDataRow(cells: [
                FPDataCell(child: const Text('Bob')),
                FPDataCell(child: Image.network('https://randomuser.me/api/portraits/men/2.jpg', width: 32, height: 32)),
                FPDataCell(child: const Text('User')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
} 