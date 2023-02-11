import 'package:cherry_app/Screens/homePage.dart';
import 'package:flutter/material.dart';

import 'Screens/jobsAvailable.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: homePage());
  }
}

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  List Pages = [
    homePage(),
    jobsAvail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.cases_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline)),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined)),
        ],
      ),
    );
  }
}
