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

  Future storeUserName(String name, int age, String FavGenre) async {
    Map<String, dynamic> data = {
      'nama': name,
      'umur': age,
      'Favorite_Genre': FavGenre
    };
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
      Get.defaultDialog(
          title: "Success",
          titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
          titleStyle: Get.context?.theme.textTheme.titleLarge,
          content: Text(
            "Data Uploaded",
            style: Get.context?.theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15));
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

  Future<void> getProfile(String documentId) async {
    try {
      final response = await databases!.getDocument(
        databaseId: "656c3fc70b7ff3754b6f",
        collectionId: "656c3ff18d52229082f1",
        documentId: documentId,
      );

      if (response.data != null) {
        Map<String, dynamic> convertedMessage = response.data;
        messages.value = [convertedMessage];
      } else {
        print("No data found for document ID: $documentId");
      }
    } catch (error) {
      print("Error: $error");
    }
  }

  Future<void> editProfile(String documentId, String newName, int newAge, String newFavGenre) async {
    try {
      Map<String, dynamic> newData = {
        'nama': newName,
        'umur': newAge,
        'Favorite_Genre': newFavGenre,
      };

      await databases!.updateDocument(
        databaseId: "656c3fc70b7ff3754b6f",
        collectionId: "656c3ff18d52229082f1",
        documentId: documentId,
        data: newData,
      );

      Get.defaultDialog(
        title: "Success",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "Data Updated",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
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
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
  Future<void> deleteProfile(String documentId) async {
    try {
      await databases!.deleteDocument(
        databaseId: "656c3fc70b7ff3754b6f",
        collectionId: "656c3ff18d52229082f1",
        documentId: documentId,
      );

      Get.defaultDialog(
        title: "Success",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "Data Deleted",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
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
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }

}
