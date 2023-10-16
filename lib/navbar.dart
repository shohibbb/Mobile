import 'package:flutter/material.dart';
import 'package:praktikum1/Home.dart';
import 'package:praktikum1/Search.dart';
import 'package:praktikum1/profile.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  _navbarState createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _selected = 0;

  void onTap (int index){
    setState(() {
      _selected = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    final listpage = <Widget>[
      Home(),
      const SearchBarApp(),
      Profile()
    ];

    final bottom = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home'
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search'
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile'
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History'
      ),

    ];

    final bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: bottom,
      currentIndex: _selected,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blueAccent,
      onTap: onTap,
    );

    return Scaffold(
      body: Center(
        child: listpage[
        _selected
        ],
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
