import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/database_controller.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _InputNameAgePageState();
}

class _InputNameAgePageState extends State<EditProfile> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Nama dan Umur'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nama input field
            TextField(
              decoration: const InputDecoration(labelText: 'Nama'),
              controller: _nameController,
            ),

            // Umur input field
            TextField(
              decoration: const InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
              controller: _ageController,
            ),

            // Submit button
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                final age = int.parse(_ageController.text);

                final databaseController = Get.put(DatabaseController());
                databaseController.storeUserName(name, age);
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
