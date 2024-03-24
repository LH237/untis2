import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 45, 59),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 43, 45, 59),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'Stundenplan',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectDate extends StatefulWidget {
  @override
  _SelectDateState createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Heutige Stunden")),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Text("Heute"),
        Container(
          child: TableCalendar(
            locale: "de_DE",
            rowHeight: 43,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(201, 10, 16),
            lastDay: DateTime.utc(2040, 3, 14),
            onDaySelected: _onDaySelected,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DateSelectionWidget()),
              );
            },
            child: Text('Datum auswählen'),
        ),
      ],
    );
  }
}

class DateSelectionWidget extends StatefulWidget {
  @override
  _DateSelectionWidgetState createState() => _DateSelectionWidgetState();
}

class _DateSelectionWidgetState extends State<DateSelectionWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Datum auswählen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _selectDate(context);
          },
          child: Text('Datum auswählen'),
        ),
      ),
    );
  }
}
