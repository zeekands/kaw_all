import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final count = 0.obs;
  var bottomNavIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
