import 'package:flutter/material.dart';
import 'package:sadapay_clone/screens/more_screen.dart';
import 'package:sadapay_clone/screens/payments.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/homepage_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currIndex = 0;

  final tabs = [
    const HomePageItem(),
    const Payments(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 237, 237),
      body: tabs[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_kanban),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
        fixedColor: const Color.fromARGB(255, 255, 129, 129),
        onTap: (index) {
          setState(() {
            _currIndex = index;
          });
        },
      ),
    );
  }
}
