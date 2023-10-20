// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:praktikum1/Search.dart';
// import 'package:praktikum1/kategori/HomeView.dart';
// import 'package:praktikum1/profile.dart';
//
// class Navbar extends StatefulWidget {
//   const Navbar({super.key});
//
//   @override
//   _NavbarState createState() => _NavbarState();
// }
//
// class _NavbarState extends State<Navbar> {
//   RxInt _selected = 0.obs;
//
//   void onTap(int index) {
//     _selected.value = index;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> listpage = [
//       Home(),
//       SearchBarApp(),
//       Profile(),
//     ];
//
//     return Scaffold(
//       body: Obx(
//             () => IndexedStack(
//           index: _selected.value,
//           children: listpage,
//         ),
//       ),
//       bottomNavigationBar: Obx(
//             () => BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           backgroundColor: Colors.black,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.history),
//               label: 'History',
//             ),
//           ],
//           currentIndex: _selected.value,
//           unselectedItemColor: Colors.grey,
//           selectedItemColor: Colors.blueAccent,
//           onTap: onTap,
//         ),
//       ),
//     );
//   }
// }
