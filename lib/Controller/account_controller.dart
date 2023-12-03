import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/client_controller.dart';

class AccountController extends ClientControler {
  Account? account;

  @override
  void onInit() {
    super.onInit();

    account = Account(client);
  }

  Future createAccount(Map map) async {
    try {
      final result = await account!.create(
          userId: map['userId'],
          email: map['email'],
          password: map['password'],
          name: map['name']);
      print("AccuntController :: createAccount $result");
      Get.defaultDialog(
        title: "Registration Successful",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "You have successfully registered!",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
        onConfirm: () {
          Get.offAllNamed('/home'); // Redirect to homepage
        },
      );
    } catch (error) {
      Get.defaultDialog(
          title: "Error Account",
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

  Future createEmailSession(Map map) async {
    try {
      final result = await account!.createEmailSession(
        email: map['email'],
        password: map['password'],
      );
      Get.defaultDialog(
        title: "Login Successful",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "You have successfully log in!",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
        onConfirm: () {
          Get.offAllNamed('/home'); // Redirect to homepage
        },
      );
      print("AccountController:: createEmailSession $result");
    } catch (error) {
      Get.defaultDialog(
        title: "Error Account",
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
