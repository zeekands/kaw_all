import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/Color.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: statusBarColor,
    ));
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            color: loginBackgroudColor,
          ),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/maskot_welcome.png',
                width: 120.w,
                height: 82.h,
              ).paddingOnly(top: 74.h, left: 32.w),
              Container(
                width: 1.sw,
                height: 1.sh,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: const Color(0xFFD9D9D9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "New Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                      ),
                    ).paddingOnly(top: 22.h, bottom: 12.h),
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Full Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ).paddingOnly(bottom: 12.h),
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                            const Text(
                              "Age",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ).paddingOnly(top: 30.h, bottom: 12.h),
                            Row(
                              children: [
                                Flexible(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      isDense: true,
                                      contentPadding: const EdgeInsets.all(12),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: 'null',
                                      onChanged: (index) {},
                                    ),
                                    const Text(
                                      'Female',
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: 'null',
                                      onChanged: (index) {},
                                    ),
                                    const Text(
                                      'Male',
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Text(
                              "Phone Number",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ).paddingOnly(top: 30.h, bottom: 12.h),
                            TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                            const Text(
                              "Email Address",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ).paddingOnly(top: 30.h, bottom: 12.h),
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                            const Text(
                              "Username",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ).paddingOnly(top: 30.h, bottom: 12.h),
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                            const Text(
                              "Password",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ).paddingOnly(top: 30.h, bottom: 12.h),
                            TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                            const Text(
                              "Confirm Password",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                              ),
                            ).paddingOnly(top: 30.h, bottom: 12.h),
                            TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                            Container(
                              width: 1.sw,
                              height: 45.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xFF99AB91),
                              ),
                              child: const Center(
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ).paddingOnly(top: 50.h),
                            Center(
                              child: const Text(
                                "or",
                                style: TextStyle(
                                  color: Color(0xFF585656),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                ),
                              ).paddingOnly(top: 7.h, bottom: 7.h),
                            ),
                            Container(
                              width: 1.sw,
                              height: 45.h,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(0, 4),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xFFF5C3B3),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Login with",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    10.horizontalSpace,
                                    Image.asset(
                                      'assets/images/google.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                    color: Color(0xFF585656),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => Get.toNamed(Routes.LOGIN),
                                  child: const Text(
                                    " Login",
                                    style: TextStyle(
                                      color: Color(0xFFEC9F87),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                              ],
                            ).paddingOnly(top: 45.h),
                          ],
                        ).paddingSymmetric(vertical: 22.h),
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 36.w),
              ).paddingOnly(top: 143.h),
            ],
          ),
        ),
      ),
    );
  }
}
