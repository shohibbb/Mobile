import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:praktikum1/web_view.dart';
import 'package:praktikum1/Controller/ProfileController.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  final ProfileController controller = Get.put(ProfileController());
  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {'/home': (context) => const WebViewApp()},
      home: Scaffold(
        backgroundColor: const Color(0xFF34303E),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebViewApp()));
                      }),
                ],
              ),
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
                            Get.find<ProfileController>()
                                .pickImage(ImageSource.camera);
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.photo_library),
                          title: const Text('Choose from gallery'),
                          tileColor: Colors.white,
                          onTap: () {
                            Get.find<ProfileController>()
                                .pickImage(ImageSource.gallery);
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
                    itemCount: Get.find<ProfileController>().images.length,
                    itemBuilder: (context, index) {
                      final image = Get.find<ProfileController>().images[index];
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
      ),
    );
  }
}
