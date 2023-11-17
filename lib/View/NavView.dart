import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/View/HomeView.dart';
import 'package:praktikum1/Controller/Navcontroller.dart';
import 'package:praktikum1/View/ProfileView.dart';
import 'package:praktikum1/View/SearchView.dart';

class Navbar extends StatelessWidget {
  final AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    final List<Widget> listpage = [
      Home(),
      SearchView(),
      ProfileView(),
    ];

    return Scaffold(
      body: Obx(
            () => IndexedStack(
          index: controller.model.selectedPageIndex.value,
          children: listpage,
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
          currentIndex: controller.model.selectedPageIndex.value,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          onTap: controller.changePage,
        ),
      ),
    );
  }
}