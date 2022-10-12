import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaw_all/app/utils/auth.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final docRef = FirebaseFirestore.instance.collection('users');

  Future<String> getRole(String id) async {
    try {
      String role = '';
      await docRef.doc(id).get().then((value) {
        role = value['role'];
      });
      return role;
    } catch (e) {
      return '';
    }
  }

  void login() async {
    final dataLogin = await Authentication.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );

    if (dataLogin != null) {
      String role = await getRole(dataLogin.uid);
      if (role == 'dokter') {
        Get.offAllNamed(Routes.DOKTER_HOME);
      } else {
        Get.offAllNamed(Routes.NAVIGATION_BAR);
      }
    }
  }
}
