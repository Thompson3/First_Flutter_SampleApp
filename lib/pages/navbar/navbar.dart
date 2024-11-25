// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:dribble/pages/about_page.dart';
import 'package:dribble/pages/home_page.dart';
import 'package:dribble/pages/navbar/find_page.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedItems = 0;
  List _navOptions = [HomePage(), AboutPage(), FindPage(), Text('KEEP IT UP')];
  void _tapMe(int index) {
    setState(() {
      _selectedItems = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navOptions[_selectedItems],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp), label: 'About'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_searching_rounded), label: 'Find'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile')
        ],
        currentIndex: _selectedItems,
        onTap: _tapMe,
      ),
    );
  }
}
