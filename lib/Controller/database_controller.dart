import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/client_controller.dart';

class DatabaseController extends ClientControler {
  Databases? databases;

  @override
  void onInit() {
    super.onInit();

    databases = Databases(client);
  }

  Future storeUserName(Map map) async {
    try {
      final result = await databases!.createDocument(
          databaseId: "BD_otaku2023",
          collectionId: 'DBColl_otaku2023',
          documentId: ID.unique(),
          data: map,
          permissions: [
            Permission.read(Role.any()),
            Permission.update(Role.any()),
            Permission.delete(Role.any()),
          ]);
      print("DatabaseController:: storeUserName $databases");
    } catch (error) {
      Get.defaultDialog(
          title: "Error Database",
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
