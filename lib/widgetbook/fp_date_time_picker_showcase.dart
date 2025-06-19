import 'package:flutter/material.dart';
import '../core/widgets/fp_date_time_pickers.dart';

class FPDateTimePickerShowcase extends StatefulWidget {
  const FPDateTimePickerShowcase({super.key});

  @override
  State<FPDateTimePickerShowcase> createState() => _FPDateTimePickerShowcaseState();
}

class _FPDateTimePickerShowcaseState extends State<FPDateTimePickerShowcase> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  DateTimeRange? _selectedRange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FP Date/Time Picker Showcase')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                setState(() => _selectedDate = date);
              },
              child: const Text('Show Date Picker'),
            ),
            if (_selectedDate != null)
              Text('Selected date: ${_selectedDate!.toLocal()}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                setState(() => _selectedTime = time);
              },
              child: const Text('Show Time Picker'),
            ),
            if (_selectedTime != null)
              Text('Selected time: ${_selectedTime!.format(context)}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final range = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                setState(() => _selectedRange = range);
              },
              child: const Text('Show Date Range Picker'),
            ),
            if (_selectedRange != null)
              Text('Selected range: ${_selectedRange!.start.toLocal()} - ${_selectedRange!.end.toLocal()}'),
          ],
        ),
      ),
    );
  }
} 