import 'package:cherry_app/Screens/NavScreens/hiringScreen.dart';
import 'package:cherry_app/Screens/NavScreens/myAccount.dart';
import 'package:cherry_app/Screens/NavScreens/myWork.dart';
import 'package:cherry_app/Screens/homePage.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: mainPage());
  }
}

class mainPage extends StatefulWidget {

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List Pages = [
    homePage(),
    myWork(),
    hiringScreen(),
    myAccount(),
  ];

  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        currentIndex: currentIndex,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label: "", icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.cases_outlined)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.work_outline)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.account_circle_outlined)),
        ],
      ),
    );
  }
}
