import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum1/Controller/account_controller.dart';

class RegisterAppwrite extends StatefulWidget {
  const RegisterAppwrite({super.key});

  @override
  State<RegisterAppwrite> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterAppwrite> {
  final AccountController accountController = Get.put(AccountController());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
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
            // Name input field
            TextField(
              decoration: const InputDecoration(labelText: "Name"),
              controller: _nameController,
            ),
            // Register button
            MaterialButton(
              color: Colors.blue,
              child: const Text("Register"),
              onPressed: () {
                // Capture the user's input
                Map map = {
                  "userId": _nameController.text,
                  "email": _emailController.text,
                  "password": _passwordController.text,
                  "name" : _nameController.text
                };
                accountController.createAccount(map);
              },
            ),
          ],
        ),
      ),
    );
  }
}
