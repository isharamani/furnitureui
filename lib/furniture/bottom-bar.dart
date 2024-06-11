import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/favorite.dart';
import 'package:furnitureui/furniture/notification.dart';
import 'package:furnitureui/furniture/Home.dart';
import 'package:furnitureui/furniture/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedTab == 1?Favorite():_selectedTab == 2? Screen():_selectedTab == 3?Profile():Page3(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_sharp, size: 30), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none, size: 30), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp, size: 30), label: ""),
        ],
      ),

    );
  }
}
