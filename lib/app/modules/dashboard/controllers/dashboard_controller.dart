import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final count = 0.obs;
  var bottomNavIndex = 0.obs;
  final whatsNewList = [
    {
      'title': 'KoLaK',
      'description': 'Konseling Serasa Jajan Ayam Geprek',
      'image': 'assets/images/img_kolak_dashboard.png',
    },
    {
      'title': 'Yuk Volunteer!',
      'description': 'Ingin Ikut Berkontribusi?',
      'image': 'assets/images/img_volunteer_dashboard.png',
    },
    {
      'title': 'PaNaS',
      'description': 'Paket Nanya Sepuasnya',
      'image': 'assets/images/img_panas_dashboard.png',
    },
  ];

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
