import 'package:flutter/material.dart';
import 'package:praktikum06_guided/my_tabbar.dart';
import 'package:praktikum06_guided/package.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _currentIndex = 0;

  static List<Widget> _page = <Widget> [
    const MyTabBar(),
    const MyPackage(),
    const MyPackage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Bottom NavBar'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),  
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amberAccent,
        onTap: _onItemTapped,
      )
    );
  }
}