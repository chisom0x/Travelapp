// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import './home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedindex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        currentIndex: selectedindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            label: ' ',
            activeIcon: Icon(
              Icons.home_filled,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_off_outlined,
              color: Colors.grey,
            ),
            label: ' ',
            activeIcon: Icon(
              Icons.home_filled,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: ' ',
            activeIcon: Icon(
              Icons.home_filled,
              color: Colors.blue,
            ),
          )
        ],
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(selectedindex),
    );
  }
}
