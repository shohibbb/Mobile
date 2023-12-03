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

  Future storeUserName(String name, int age) async {
    Map<String, dynamic> data = {'nama': name, 'umur': age};
    try {
      await databases!.createDocument(
          databaseId: "656c3fc70b7ff3754b6f",
          documentId: ID.unique(),
          collectionId: "656c3ff18d52229082f1",
          data: data,
          permissions: [
            Permission.read(Role.any()),
            Permission.update(Role.any()),
            Permission.delete(Role.any()),
          ]);
      print("DatabaseController:: storeUserName");
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

  Rx<List<Map<String, dynamic>>> messages = Rx<List<Map<String, dynamic>>>([]);

  Future<void> getProfile() async {
    try {
      // Ganti dengan kode untuk mengambil data pesan dari database
      // Contoh pengambilan data dari database
      final response = await databases!.listDocuments(
        databaseId: "656c3fc70b7ff3754b6f",
        collectionId: "656c3ff18d52229082f1",
      );

      // ignore: unnecessary_null_comparison
      if (response.documents != null) {
        List<Map<String, dynamic>> convertedMessages =
        response.documents.map((document) => document.data).toList();
        messages.value = convertedMessages;
      }
    } catch (error) {
      print("Error: $error");
    }
  }
}