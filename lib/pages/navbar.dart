import 'package:flutter/material.dart';
import 'package:untis2/pages/home.dart';
import 'package:untis2/pages/stundenplan.dart';
import 'package:untis2/pages/allgemeines.dart';
import 'package:untis2/pages/einstellungen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selected = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selected = index;
    });
  }

  final List pages = const [
    HomePage(),
    SchedulePage(),
    AllgemeinesPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selected],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 10, 21, 38),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: const Color(0xFF2A78FF),
        currentIndex: selected,
        onTap: navigateBottomBar,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_rounded),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_sharp),
            label: 'test',
          ),
        ],
      ),
    );
  }
}