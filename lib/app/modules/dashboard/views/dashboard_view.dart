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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ).paddingOnly(bottom: 20.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jalan Yuk",
                      style: TextStyle(
                        color: Color(0xffA14D4D),
                        fontSize: 20.sp,
                        fontFamily: 'JosefinSans',
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(1, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ).paddingOnly(top: 5.h, left: 36.w, bottom: 10.h),
                    Center(
                      child: Container(
                        width: 370.w,
                        height: 138.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffDBEAD5),
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(2, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 102.w,
                              height: 107.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(2, 4),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/call_dashboard.png',
                              ),
                            ).paddingSymmetric(
                                horizontal: 23.w, vertical: 19.h),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mau jalan sendirian tapi takut?",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'JosefinSans',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  30.verticalSpace,
                                  Text(
                                    "Yuk kami temani!",
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'JosefinSans',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ).paddingOnly(
                                top: 25,
                                right: 59.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "What's New?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontFamily: 'JosefinSans',
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(1, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ).paddingOnly(top: 25.h, left: 36.w, bottom: 10.h),
                    SizedBox(
                      width: 1.sw,
                      height: 180.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 150.w,
                            height: 170.h,
                            decoration: BoxDecoration(
                              color: const Color(0xffFAEBE6),
                              borderRadius: BorderRadius.circular(20.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(2, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  controller.whatsNewList[0]['title']
                                      .toString(),
                                  style: TextStyle(
                                    color: Color(0xffB6411C),
                                    fontSize: 20.sp,
                                    fontFamily: 'JosefinSans',
                                  ),
                                ).paddingOnly(top: 15.h, bottom: 7.h),
                                Text(
                                  controller.whatsNewList[0]['description']
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff877878),
                                    fontSize: 12.sp,
                                    fontFamily: 'JosefinSans',
                                  ),
                                ).paddingOnly(bottom: 12.h),
                                Image.asset(
                                  controller.whatsNewList[0]['image']
                                      .toString(),
                                ),
                              ],
                            ),
                          ).paddingOnly(left: 25.w, right: 20.w, bottom: 5.h),
                          Container(
                            width: 150.w,
                            height: 170.h,
                            decoration: BoxDecoration(
                              color: const Color(0xffFAEBE6),
                              borderRadius: BorderRadius.circular(20.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(2, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  controller.whatsNewList[0]['title']
                                      .toString(),
                                  style: TextStyle(
                                    color: Color(0xffB6411C),
                                    fontSize: 20.sp,
                                    fontFamily: 'JosefinSans',
                                  ),
                                ).paddingOnly(top: 15.h, bottom: 7.h),
                                Text(
                                  controller.whatsNewList[0]['description']
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff877878),
                                    fontSize: 12.sp,
                                    fontFamily: 'JosefinSans',
                                  ),
                                ).paddingOnly(bottom: 12.h),
                                Image.asset(
                                  controller.whatsNewList[0]['image']
                                      .toString(),
                                ),
                              ],
                            ),
                          ).paddingOnly(right: 20.w, bottom: 5.h),
                          Container(
                            width: 150.w,
                            height: 170.h,
                            decoration: BoxDecoration(
                              color: const Color(0xffFAEBE6),
                              borderRadius: BorderRadius.circular(20.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(2, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  controller.whatsNewList[0]['title']
                                      .toString(),
                                  style: TextStyle(
                                    color: Color(0xffB6411C),
                                    fontSize: 20.sp,
                                    fontFamily: 'JosefinSans',
                                  ),
                                ).paddingOnly(top: 15.h, bottom: 7.h),
                                Text(
                                  controller.whatsNewList[0]['description']
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff877878),
                                    fontSize: 12.sp,
                                    fontFamily: 'JosefinSans',
                                  ),
                                ).paddingOnly(bottom: 12.h),
                                Image.asset(
                                  controller.whatsNewList[0]['image']
                                      .toString(),
                                ),
                              ],
                            ),
                          ).paddingOnly(right: 25.w, bottom: 5.h),
                        ],
                      ),
                    ),
                    Text(
                      "Konseling",
                      style: TextStyle(
                        color: Color(0xffA14D4D),
                        fontSize: 20.sp,
                        fontFamily: 'JosefinSans',
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(1, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ).paddingOnly(top: 20.h, left: 36.w, bottom: 10.h),
                    Container(
                      width: 1.sw,
                      height: 135.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffF5C3B3),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(2, 4),
                          ),
                        ],
                      ),
                    ).paddingOnly(right: 20.w, left: 35.w, bottom: 25.h),
                  ],
                ),
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
            blurRadius: 3,
          ),
          iconSize: 30.sp,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: (index) => controller.bottomNavIndex.value = index,
        ),
      ),
    );
  }
}
