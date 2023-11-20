import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:praktikum1/Controller/AuthController.dart';
import 'package:praktikum1/View/Register_View.dart';
import 'package:praktikum1/View/web_view.dart';
import 'package:praktikum1/Controller/ProfileController.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  final ProfileController controller = Get.put(ProfileController());
  final AuthController _authController = Get.put(AuthController());
  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      color: Colors.blueAccent,
                      onPressed: () {
                        Get.to(const WebViewApp());
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
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        _authController.isLoading.value
                            ? Colors.grey
                            : Colors.blue)),
                child: const Text('Upload Image',style: TextStyle(color: Colors.black87)),
              ),
              const SizedBox(height: 50.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Atur tata letak tombol di sini
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(const RegisterPage());
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            _authController.isLoading.value
                                ? Colors.grey
                                : Colors.blue)),
                    child: const Text('Sign In',style: TextStyle(color: Colors.black87),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _authController.logout();
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            _authController.isLoading.value
                                ? Colors.grey
                                : Colors.blue)),
                    child: const Text('Log Out',style: TextStyle(color: Colors.black87)),
                  ),
                ],
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
      );
  }
}
