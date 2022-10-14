import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:kaw_all/app/routes/app_pages.dart';

class DashboardController extends GetxController {
  final count = 0.obs;
  var bottomNavIndex = 0.obs;
  late User? user;
  var nama = ''.obs;
  var email = '';
  var username = '';
  var age = 0;

  final docRef = FirebaseFirestore.instance.collection('users');
  final whatsNewList = <Map<String, dynamic>>[
    {
      'title': 'KoLaK',
      'description': 'Konseling Serasa Jajan Ayam Geprek',
      'image': 'assets/images/img_kolak_dashboard.png',
      'onTap': "",
      'bgColor': const Color(0xFFFAEBE6),
      'titleColor': const Color(0xFFB6411C),
      'descColor': const Color(0xFF877878),
    },
    {
      'title': 'Yuk Volunteer!',
      'description': 'Ingin Ikut Berkontribusi?',
      'image': 'assets/images/img_volunteer_dashboard.png',
      'onTap': Routes.VOLUNTEER_HIRING,
      'bgColor': const Color(0xFFDCE3D9),
      'titleColor': const Color(0xFF4B4848),
      'descColor': const Color(0xFF877878),
    },
    {
      'title': 'PaNaS',
      'description': 'Paket Nanya Sepuasnya',
      'image': 'assets/images/img_panas_dashboard.png',
      'onTap': Routes.COMING_SOON,
      'bgColor': const Color(0xFFEDD4D4),
      'titleColor': const Color(0xFFB6411C),
      'descColor': const Color(0xFF877878),
    },
    {
      'title': 'Donasi',
      'description': 'Ingin membantu tapi ga ada waktu?',
      'image': 'assets/images/img_donasi_dashboard.png',
      'onTap': Routes.COMING_SOON,
      'bgColor': const Color(0xFFDA8383),
      'titleColor': const Color(0xFF4B4848),
      'descColor': const Color(0xFFFFFEFE),
    },
  ];

  @override
  void onInit() async {
    super.onInit();
    user = FirebaseAuth.instance.currentUser;

    await getUserDetail();
    // nama = user?.displayName?.split(' ')[0] ?? "";
  }

  Future<void> getUserDetail() async {
    await docRef.doc(user!.uid).get().then((value) {
      nama.value = value['name'].split(' ')[0] ?? "";
      email = value['email'];
      username = value['userName'];
      age = value['age'];
    });
  }

  void increment() => count.value++;
}
