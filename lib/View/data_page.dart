import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/ProfileController.dart';
import 'package:praktikum1/Controller/database_controller.dart';

class NewPage extends GetView<ProfileController> {
  final DatabaseController databaseController = Get.put(DatabaseController());

  NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                databaseController.getProfile(); // Call the getProfile() method
              },
              child: const Text('Get Profile'),
            ),
            const SizedBox(height: 20.0),
            Obx(
                  () => Column(
                children: [
                  TextField(
                    readOnly: true, // Make the 'Nama' field read-only
                    controller: TextEditingController(
                      text: databaseController.messages.value
                          .first['nama']
                          .toString(), // Extract nama from messages and convert to String
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextField(
                    readOnly: true, // Make the 'Umur' field read-only
                    controller: TextEditingController(
                      text: databaseController.messages.value
                          .first['umur']
                          .toString(), // Extract umur from messages and convert to String
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Umur',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
