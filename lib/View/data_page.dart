import 'package:flutter/material.dart';
import 'package:praktikum1/Controller/database_controller.dart';
import 'package:get/get.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  final DatabaseController databaseController = Get.put(DatabaseController());

  void initState() {
    super.initState();
    databaseController.getProfile(); // Call getProfile() method in initState()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF34303E),
      // appBar: AppBar(
      //   title: const Text('Data Page'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Selamat membaca user',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 40),
            Text(
              'Name : ${databaseController.messages.value.first['nama'].toString()}',
              style: const TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),
            Text(
              'Age : ${databaseController.messages.value.first['umur'].toString()}',
              style: const TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
