import 'dart:ui';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../utils/color.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: statusBarColor,
    ));
    return Scaffold(
      backgroundColor: const Color(0xffF7F6F6),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 1.sw,
                  height: 265.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffEFCABE),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/item_background_dashboard.png',
                    width: 360.w,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.menu),
                    10.horizontalSpace,
                    Image.asset(
                      'assets/images/profile_picture.png',
                      width: 42.w,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 12.w, vertical: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/maskot_dashboard.png',
                      width: 91.w,
                      height: 145.h,
                    ).paddingOnly(top: 64.h, left: 30.w),
                    30.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        70.verticalSpace,
                        Text(
                          "Hi, Ja! How are\nyou?",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        15.verticalSpace,
                        Image.asset(
                          'assets/images/dots_dashboard.png',
                          width: 36.w,
                          height: 20.h,
                        ),
                        5.verticalSpace,
                        Text(
                          "Take our quiz here to express\nyourself!",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffB6411C),
                          ),
                        ),
                        10.verticalSpace,
                        Image.asset(
                          'assets/images/arrow.png',
                          width: 36.w,
                          height: 20.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "Jalan Yuk",
              style: TextStyle(
                color: Color(0xffA14D4D),
                fontSize: 20.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.search,
            Icons.add,
            Icons.favorite,
          ],
          gapWidth: 10.w,
          gapLocation: GapLocation.none,
          leftCornerRadius: 32.r,
          rightCornerRadius: 32.r,
          activeIndex: controller.bottomNavIndex.value,
          activeColor: const Color(0xFF5B6656),
          inactiveColor: Colors.grey.shade400,
          shadow: const Shadow(
            color: Colors.grey,
            offset: Offset(0, 0),
            blurRadius: 4,
          ),
          iconSize: 35.sp,
          height: 85.h,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: (index) => controller.bottomNavIndex.value = index,
        ),
      ),
    );
  }
}
