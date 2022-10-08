import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/mentimeter_controller.dart';

class MentimeterView extends GetView<MentimeterController> {
  const MentimeterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/fixbg.png',
              fit: BoxFit.cover,
              height: 1.sh,
              width: 1.sw,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/top_bar_mentimeter.png',
                  width: 1.sw,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/danger_zone_card.png',
                  width: 355.w,
                  height: 255.h,
                ),
                const Spacer(),
                Container(
                  height: .3.sh,
                  width: 1.sw,
                  decoration: const BoxDecoration(
                    color: Color(0xffD8E6D2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/fake_call.png",
                      ).paddingOnly(left: 20.w),
                      Image.asset(
                        "assets/images/berani_melapor.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
