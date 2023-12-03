import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/account_controller.dart';

class LoginAppwrite extends StatefulWidget {
  const LoginAppwrite({super.key});

  @override
  State<LoginAppwrite> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginAppwrite> {
  final AccountController accountController = Get.put(AccountController());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email input field
            TextField(
              decoration: const InputDecoration(labelText: "Email"),
              controller: _emailController,
            ),
            // Password input field
            TextField(
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
              controller: _passwordController,
            ),
            // Login button
            MaterialButton(
              color: Colors.blue,
              child: const Text("Login"),
              onPressed: () {
                // Capture the user's input
                Map map = {
                  "email": _emailController.text,
                  "password": _passwordController.text,
                };
                accountController.createEmailSession(map);
              },
            ),
          ],
        ),
      ),
    );
  }
}
