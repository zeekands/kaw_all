import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/mentimeter_controller.dart';

class MentimeterView extends GetView<MentimeterController> {
  const MentimeterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_mentimeter.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 1.sw,
                    height: 250.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffE7D69C),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // AppBar
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
                        ).paddingOnly(left: 12.w, right: 12.w, top: 12.h),
                        const Spacer(),
                        Container(
                          width: 328.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffF7F7F7),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xff000000).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xffACBCA5),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomLeft: Radius.circular(25),
                                    ),
                                  ),
                                  child: Image.asset(
                                    'assets/images/img_card_daerah_rawan.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Rawan, Kawan!",
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            color: const Color(0xff000000)
                                                .withOpacity(0.25),
                                            offset: const Offset(1, 3),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    10.verticalSpace,
                                    Text(
                                      "Tau daerah yang rawan? Share it here!",
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    10.verticalSpace,
                                    Image.asset(
                                      'assets/images/arrow_2.png',
                                      width: 24.w,
                                    ),
                                  ],
                                ).paddingOnly(
                                  top: 10.h,
                                  bottom: 10.h,
                                  left: 15.w,
                                  right: 25.w,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 355.w,
                height: 235.h,
                decoration: BoxDecoration(
                  color: const Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        child: Image.asset(
                          'assets/images/img_card_danger_zone.png',
                          width: 370.w,
                          height: 180.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Danger Zones",
                      style: TextStyle(
                        color: const Color(0xffA14D4D),
                        fontFamily: 'JosefinSans',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ).paddingOnly(top: 20.h, left: 30.w),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 1.sw,
                height: 250.h,
                decoration: BoxDecoration(
                  color: const Color(0xffD8E6D2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Need a friend?",
                          style: TextStyle(
                            color: const Color(0xff585656),
                            fontFamily: 'JosefinSans',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color:
                                    const Color(0xff000000).withOpacity(0.25),
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ).paddingOnly(left: 29.w, top: 15.h),
                        10.verticalSpace,
                        Container(
                          width: 142.w,
                          height: 185.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffF4DFD9),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xff000000).withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Just call us with Fake Call",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xffFFFEFE),
                                  fontFamily: 'JosefinSans',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: const Color(0xff000000)
                                          .withOpacity(0.25),
                                      offset: const Offset(0, 2),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                              ).paddingAll(10),
                              Image.asset(
                                'assets/images/call_dashboard.png',
                                width: 65.w,
                              ),
                            ],
                          ),
                        ).paddingOnly(left: 29.w),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Berani melapor",
                            style: TextStyle(
                              color: const Color(0xff585656),
                              fontFamily: 'JosefinSans',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color:
                                      const Color(0xff000000).withOpacity(0.25),
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                          ).paddingOnly(right: 19.w, top: 35.h),
                          Text(
                            "bersama UPT PPA",
                            style: TextStyle(
                              color: const Color(0xff585656),
                              fontFamily: 'JosefinSans',
                              fontSize: 8.sp,
                              shadows: [
                                Shadow(
                                  color:
                                      const Color(0xff000000).withOpacity(0.25),
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                          ).paddingOnly(right: 19.w, top: 5.h, bottom: 10.h),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.PELAPORAN),
                            child: Container(
                              width: 200.w,
                              height: 145.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffF2E9C8),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff000000)
                                        .withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                      "assets/images/img_card_berani_melapor.png")
                                  .paddingOnly(top: 25.h),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
