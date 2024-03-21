import 'package:flutter/material.dart';
import 'package:untis2/pages/home.dart';
import 'package:untis2/pages/stundenplan.dart';
import 'package:untis2/pages/allgemeines.dart';
import 'package:untis2/pages/einstellungen.dart';
import 'package:untis2/pages/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage' :(context) => FirstPage(),
        '/homepage' :(context) => HomePage(),
        '/schedule' :(context) => SchedulePage(),
        '/allgemeines' :(context) => AllgemeinesPage(),
        '/settingspage' :(context) => SettingsPage()
      },
    );
  }
}