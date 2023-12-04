import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/database_controller.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _favgenreController = TextEditingController();

  final databaseController = Get.put(DatabaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF34303E),
      appBar: AppBar(
        title: const Text(
          'Edit Profil',
          style: TextStyle(color: Colors.cyan),
        ),
        backgroundColor: const Color(0xFF34303E),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nama input field
            TextField(
              decoration: const InputDecoration(labelText: 'Nama'),
              controller: _nameController,
              style: const TextStyle(color: Colors.white),
            ),

            // Umur input field
            TextField(
              decoration: const InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
              controller: _ageController,
              style: const TextStyle(color: Colors.white),
            ),
            // Genre favorite input field
            TextField(
              decoration: const InputDecoration(labelText: 'Genre Favorit'),
              controller: _favgenreController,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20,),
            // Tombol Edit dan Simpan
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final name = _nameController.text;
                    final age = int.parse(_ageController.text);
                    final favGenre = _favgenreController.text;

                    // Ganti dengan pemanggilan fungsi edit pada DatabaseController
                    databaseController.editProfile(
                        "656c9d859a98bdcb31fe", name, age, favGenre);
                  },
                  child: const Text('Edit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final name = _nameController.text;
                    final age = int.parse(_ageController.text);
                    final favGenre = _favgenreController.text;

                    // Ganti dengan pemanggilan fungsi storeUserName pada DatabaseController
                    databaseController.storeUserName(name, age, favGenre);
                  },
                  child: const Text('Simpan'),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                databaseController.deleteProfile("656c9d859a98bdcb31fe");
              },
              child: const Text('Detele Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
