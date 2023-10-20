import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:praktikum1/kategori/ProfileController.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF34303E),
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.camera),
                        title: const Text('Take a picture'),
                        tileColor: Colors.white,
                        onTap: () {
                          controller.pickImage(ImageSource.camera);
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.photo_library),
                        title: const Text('Choose from gallery'),
                        tileColor: Colors.white,
                        onTap: () {
                          controller.pickImage(ImageSource.gallery);
                          Get.back();
                        },
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Upload Image'),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            Expanded(
              child: Obx(
                    () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.images.length,
                  itemBuilder: (context, index) {
                    final image = controller.images[index];
                    return ListTile(
                      title: Text(image.title),
                      subtitle: Text(image.description),
                      leading: Image.file(
                        File(image.imagePath),
                        width: 50,
                        height: 50,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
