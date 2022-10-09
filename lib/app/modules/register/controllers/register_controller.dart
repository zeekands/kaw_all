import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaw_all/app/utils/auth.dart';

class RegisterController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final ageController = TextEditingController();
  final sexController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final userNameController = TextEditingController();

  Future<void> register(
      {required String name,
      required String email,
      required String password,
      required int age,
      required String sex,
      required String phoneNumber,
      required String userName}) async {
    Authentication.signUpWithEmailAndPassword(
        name: name,
        email: email,
        password: password,
        age: age,
        sex: sex,
        phoneNumber: phoneNumber,
        userName: userName);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    ageController.dispose();
    sexController.dispose();
    phoneNumberController.dispose();
    userNameController.dispose();
  }
}
