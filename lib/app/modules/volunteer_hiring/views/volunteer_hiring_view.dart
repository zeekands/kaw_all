import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/volunteer_hiring_controller.dart';

class VolunteerHiringView extends GetView<VolunteerHiringController> {
  const VolunteerHiringView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/voulentere_hiring_bg.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              56.verticalSpace,
              Text(
                "We hear\nyou!",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.sp,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.grey,
                        offset: const Offset(1.0, 5.0),
                      ),
                    ],
                    fontWeight: FontWeight.w700),
              ),
              38.verticalSpace,
              Text(
                "We are currently hiring volunteers for our upcoming projects. If you are interested,please fill out the form below.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
              82.verticalSpace,
              Text(
                "Tertarik untuk \ngabung?",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.sp,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.grey,
                        offset: const Offset(1.0, 5.0),
                      ),
                    ],
                    fontWeight: FontWeight.w700),
              ),
              38.verticalSpace,
              Text(
                "Jadilah relawan di platform kami! Cek akun instagram @kawall untuk informasi lebih lanjut. Kepedulianmu penolong kami.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xff788372),
                    fontSize: 20.sp,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Center(
                child: Image.asset(
                  "assets/images/hiring_button.png",
                  alignment: Alignment.center,
                ),
              ),
              40.verticalSpace,
            ],
          ).paddingOnly(left: 33.w, right: 29.w),
        ),
      ),
    );
  }
}
