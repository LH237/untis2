import 'package:flutter/material.dart';
import 'package:flutter_custom_month_picker/flutter_custom_month_picker.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  int month = 3;
  int year = 2024;
  bool kDebugMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 45, 59),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          showMonthPicker(context, onSelected: (month, year) {
            if (kDebugMode) {
              print('Selected month: $month, year: $year');
            }
            setState(() {
              this.month = month;
              this.year = year;
            });
          },
            initialSelectedMonth: month,
            initialSelectedYear: year,
            firstEnabledMonth: 3,
            lastEnabledMonth: 10,
            firstYear: 2000,
            lastYear: 2025,
            selectButtonText: 'OK',
            cancelButtonText: 'Cancel',
            highlightColor: Colors.lightBlue,
            textColor: Colors.white,
            contentBackgroundColor: Colors.white,
            dialogBackgroundColor: Colors.white);
          },
        child: Icon(Icons.calendar_today_rounded),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 43, 45, 59),
        child: Text('')
      ),
    );
  }
}