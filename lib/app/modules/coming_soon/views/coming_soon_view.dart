import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/coming_soon_controller.dart';

class ComingSoonView extends GetView<ComingSoonController> {
  const ComingSoonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_coming_soon.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              // AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Transform.rotate(
                      angle: 180 * 3.14 / 180,
                      child: Image.asset(
                        'assets/images/arrow_2.png',
                        width: 42.w,
                      ),
                    ),
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
              30.verticalSpace,
              Image.asset(
                'assets/images/coming_soon_illustration.png',
                width: 330.w,
              ),
              Text(
                "Coming Soon...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 35.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
