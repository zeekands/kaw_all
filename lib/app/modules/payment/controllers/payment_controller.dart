import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PaymentController extends GetxController {
  final whatsNewList = <Map<String, dynamic>>[
    {
      'title': 'KoLaK',
      'description': 'Konseling Serasa Jajan Ayam Geprek',
      'image': 'assets/images/img_kolak_dashboard.png',
      'onTap': Routes.KOLAK,
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
  ];

  void openBottomSheet() {
    Get.bottomSheet(
      isDismissible: false,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(Icons.close),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Metode Pembayaran Lain',
                    style: TextStyle(
                      color: Color(0xff5B6656),
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ).paddingOnly(top: 15, left: 15, right: 15),
          20.verticalSpace,
          Text(
            'Transfer Bank',
            style: TextStyle(
              color: Color(0xff5B6656),
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ).paddingOnly(top: 10, left: 15, right: 15),
          10.verticalSpace,
          Column(
            children: [
              ListTile(
                leading: Image.asset('assets/images/logo.png'),
                title: Text('BCA'),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('assets/images/logo.png'),
                title: Text('BCA'),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('assets/images/logo.png'),
                title: Text('BCA'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    openBottomSheet();
  }

  @override
  void onClose() {
    super.onClose();
  }
}