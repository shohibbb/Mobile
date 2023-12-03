import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/client_controller.dart';

class StorageController extends ClientControler {
  Storage? storage;

  @override
  void onInit() {
    super.onInit();

    storage = Storage(client);
  }

  Future storageImage() async {
    try {
      final result = await storage!.createFile(
          bucketId: 'bucketId',
          fileId: ID.unique(),
          file: InputFile.fromPath(
              path: './path-to-files/image.jpg', filename: 'image.jpg'));
      print("StorageController :: storageImage $result");
    } catch (error) {
      Get.defaultDialog(
          title: "Error Storage",
          titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
          titleStyle: Get.context?.theme.textTheme.titleLarge,
          content: Text(
            "$error",
            style: Get.context?.theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15));
    }
  }
}
