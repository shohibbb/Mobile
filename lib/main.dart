import 'package:flutter/material.dart';
// import 'package:praktikum1/kategori/HomeView.dart';
import 'package:praktikum1/View/NavView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navbar(),
    );
  }
}
