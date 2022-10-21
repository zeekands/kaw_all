import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/panas_controller.dart';

class PanasView extends GetView<PanasController> {
  const PanasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: BoxDecoration(
            color: const Color(0xffE2C55E).withOpacity(0.5),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 1.sw,
                  height: 240.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: Color(0xffEC9F87),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 42.w,
                          ),
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
                        children: [
                          35.horizontalSpace,
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Image.asset(
                              'assets/images/arrow_back.png',
                            ),
                          ),
                          45.horizontalSpace,
                          Text(
                            "Explore More Promo",
                            style: TextStyle(
                              fontFamily: 'JejuGothic',
                              fontSize: 24.sp,
                              color: const Color(0xffDCE3D9),
                            ),
                          ),
                        ],
                      ),
                      42.verticalSpace,
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 260.w,
                        height: 46.h,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Image.asset(
                          'assets/images/icon_search_2.png',
                          width: 24.w,
                        ).paddingSymmetric(horizontal: 23.w, vertical: 10.h),
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 357.w,
                        height: 700.h,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          color: Color(0xffF0F3EF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/img_card_panas.png',
                              width: 307.w,
                              height: 244.h,
                            ).paddingOnly(top: 54.h, left: 25.w, right: 25.w),
                            Text(
                              "PaNaS",
                              style: TextStyle(
                                fontFamily: 'JosefinSans',
                                fontSize: 30.sp,
                                color: const Color(0xff000000),
                                shadows: [
                                  Shadow(
                                    color: const Color(0xff000000)
                                        .withOpacity(0.25),
                                    offset: const Offset(0, 3),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ).paddingOnly(top: 60.h, left: 41.w),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "Tahu ga apa yang lebih panas dari matahari? Yup, semangat ingin tahu sobat KawAll yang membara! Nah, maka dari itu pada pukul ",
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16.sp,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "9.00 ",
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16.sp,
                                      color: const Color(0xffB6411C),
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "sampai pukul 10.00 Cupin mau kasih promo ",
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16.sp,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "PaNaS, Paket Nanya Sepuasnya",
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16.sp,
                                      color: const Color(0xffB6411C),
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ". Pasti kalian mau tahu lebih banyak hal bukan? Yuk tanyakan langsung ke Dokter KawAll ",
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16.sp,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "GRATIS!",
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffB52E2E),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ).paddingOnly(
                              left: 41.w,
                              right: 41.w,
                              top: 15.h,
                              bottom: 20.h,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                alignment: Alignment.center,
                                width: 115.w,
                                height: 35.h,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x29000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 4,
                                    ),
                                  ],
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Text(
                                  "Gunakan",
                                  style: TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 18.sp,
                                    color: const Color(0xffEC9F87),
                                  ),
                                ),
                              ).paddingOnly(right: 23.w),
                            ),
                          ],
                        ),
                      ).paddingOnly(bottom: 50.h),
                    ),
                    Positioned(
                      top: 630.h,
                      left: 40.w,
                      child: Image.asset(
                        'assets/images/maskot2.png',
                        width: 129.w,
                        height: 108.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
