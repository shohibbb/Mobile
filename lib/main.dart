import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/AuthController.dart';
import 'package:praktikum1/Controller/notification_handler.dart';
import 'package:praktikum1/View/NavView.dart';
import 'package:praktikum1/View/login_page.dart';
import 'package:praktikum1/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Get.putAsync(() async => SharedPreferences.getInstance());
  await FirebaseMessagingHandler().initPushNotification();
  await FirebaseMessagingHandler().initLocalNotification();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'tugas',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        initialRoute: _authController.isLoggedIn.value ? '/home' : '/login',
        getPages: [
          GetPage(name: '/login', page: () => const LoginPage()),
          GetPage(name: '/home', page: () =>  Navbar()),
        ]
        // home: Navbar(),
        );
  }
}
