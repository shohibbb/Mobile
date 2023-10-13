import 'package:flutter/material.dart';
import 'package:praktikum1/Home.dart';
import 'package:praktikum1/HomePage.dart';
import 'package:praktikum1/SearchPage.dart';
import 'package:get/get.dart';
import 'package:praktikum1/navbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      home: navbar(),
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      // ),
      // home: Scaffold(
      //   body: ListView(children: const [
      //     Home(),
      //   ]),
      // ),
    );
  }
}

class NewUpdate extends StatelessWidget {
  const NewUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      unknownRoute: GetPage(
        name: "/notfound",
        page: () => const HomePage(),
      ),
      getPages: [
        GetPage(name: "Home", page: () => const HomePage()),
        GetPage(name: "Search", page: ()=> const SearchPage())
      ],
    );
  }
}
