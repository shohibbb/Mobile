import 'package:flutter/material.dart';

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
    final _listpage = <Widget>[
      const Text('beranda'),
      const Text('home'),
      const Text('Search')
    ];

    final _bottom = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home'
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search'
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History'
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile'
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black45,
      items: _bottom,
      currentIndex: _selected,
      unselectedItemColor: Colors.black12,
      selectedItemColor: Colors.blueAccent,
      onTap: onTap,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Center(
        child: _listpage[
          _selected
        ],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
