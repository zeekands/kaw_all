import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routes/app_pages.dart';
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
        child: Stack(
          children: [
            Image.asset(
              "assets/images/homescreen_bg.png",
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            SingleChildScrollView(
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
                          fit: BoxFit.fill,
                          width: 360.w,
                          height: 268.h,
                        ),
                      ),
                      // AppBar Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/icon_more_appbar.png',
                                width: 24.w,
                              ),
                              10.horizontalSpace,
                              Image.asset(
                                'assets/images/profile_picture.png',
                                width: 42.w,
                              ),
                            ],
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 12.w, vertical: 14.h),
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
                              Obx(() {
                                return Text(
                                  "Hi, ${controller.nama.value}!\nHow are you?",
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontFamily: 'Montserrat',
                                  ),
                                );
                              }),
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
                                  color: const Color(0xffB6411C),
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
                  15.verticalSpace,
                  Text(
                    "Jalan Yuk",
                    style: TextStyle(
                      color: const Color(0xffA14D4D),
                      fontSize: 20.sp,
                      fontFamily: 'JosefinSans',
                      shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(1, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ).paddingOnly(left: 36.w, bottom: 10.h),
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
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                'assets/images/call_dashboard.png',
                                width: 78.w,
                                height: 78.h,
                              ),
                            ),
                          ).paddingSymmetric(horizontal: 23.w, vertical: 19.h),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Mau jalan sendirian tapi takut?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'JosefinSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Yuk kami temani!",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'JosefinSans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ).paddingOnly(
                              top: 10,
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
                          offset: const Offset(1, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ).paddingOnly(top: 25.h, left: 36.w, bottom: 10.h),
                  SizedBox(
                    height: 160.h,
                    width: 1.sw,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.whatsNewList.length,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(
                              controller.whatsNewList[index]['onTap'],
                            );
                          },
                          child: Container(
                            width: 120.w,
                            height: 150.h,
                            decoration: BoxDecoration(
                              color: const Color(0xffFAEBE6),
                              borderRadius: BorderRadius.circular(30.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(2, 4),
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset(
                                    controller.whatsNewList[index]['image']
                                        .toString(),
                                    height: 88.h,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      controller.whatsNewList[index]['title']
                                          .toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xffB6411C),
                                        fontSize: 14.sp,
                                        fontFamily: 'JosefinSans',
                                      ),
                                    ).paddingOnly(top: 15.h, bottom: 7.h),
                                    Text(
                                      controller.whatsNewList[index]
                                              ['description']
                                          .toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xff877878),
                                        fontSize: 8.sp,
                                        fontFamily: 'JosefinSans',
                                      ),
                                    ).paddingOnly(
                                        bottom: 15.h, left: 10.w, right: 10.w),
                                  ],
                                ),
                              ],
                            ),
                          ).paddingOnly(right: 10.w, bottom: 10.h),
                        );
                      },
                    ),
                  ),
                  Text(
                    "Konseling",
                    style: TextStyle(
                      color: const Color(0xffA14D4D),
                      fontSize: 20.sp,
                      fontFamily: 'JosefinSans',
                      shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(1, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ).paddingOnly(left: 36.w, top: 10.h, bottom: 5.h),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/konseling_card.png',
                        width: 1.sw,
                        height: 200.h,
                      ).paddingOnly(bottom: 10.h),
                      Column(
                        children: [
                          ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffA14D4D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.r),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 30.w,
                                      vertical: 10.h,
                                    ),
                                    minimumSize: Size(200.w, 33.h),
                                  ),
                                  onPressed: () {
                                    Get.toNamed(Routes.PILIH_PSIKOLOG);
                                  },
                                  child: const Text("Lihat List Psikolog"))
                              .paddingOnly(left: 36.w),
                          ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffA14D4D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.r),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 30.w,
                                      vertical: 10.h,
                                    ),
                                    minimumSize: Size(200.w, 33.h),
                                  ),
                                  onPressed: () {
                                    Get.toNamed(Routes.PROFILE_RELAWAN);
                                  },
                                  child: const Text("Lihat Konselor Relawan"))
                              .paddingOnly(left: 36.w),
                        ],
                      ).paddingOnly(top: 10.h),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
