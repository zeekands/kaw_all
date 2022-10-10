import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaw_all/app/utils/auth.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    Authentication.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }
}
