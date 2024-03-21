import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 43, 45, 59),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10
          ),
          child: GNav(
            padding: const EdgeInsets.all(15),
            backgroundColor: const Color.fromARGB(255, 43, 45, 59),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.lightBlue,
            onTabChange: (value) => navigateBottomBar(value),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.schedule_rounded,
                text: 'Stundenplan',
              ),
              GButton(
                icon: Icons.info_outline_rounded,
                text: 'Allgemeines',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Einstellungen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

