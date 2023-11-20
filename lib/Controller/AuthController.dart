import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/View/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SharedPreferences _prefs = Get.find<SharedPreferences>();

  RxBool isLoading = false.obs;
  RxBool isLoggedIn = false.obs;

  @override
  void onInit(){
    super.onInit();
    checkLoginStatus();
  }

  Future<void>checkLoginStatus() async{
    isLoggedIn.value = _prefs.containsKey('user_token');
  }

  Future<void> registerUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('success', 'Register succesful',
          backgroundColor: Colors.green);
      Get.off(const LoginPage());
    } catch (error) {
      Get.snackbar('Error', 'Register Failed : $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _prefs.setString('user_token', _auth.currentUser!.uid);
      Get.snackbar('success', 'Login Successful', backgroundColor: Colors.green);
      isLoggedIn.value = true;
      Get.offAllNamed('/home');
    } catch (error) {
      Get.snackbar('Error', 'Login failed : $error');
    } finally {
      isLoading.value = false;
    }
  }


  void logout() async{
    _prefs.remove('user_token');
    isLoggedIn.value = false;
    await _auth.signOut();
    Get.offAllNamed('login');
  }

}
