import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:intl/intl.dart';

import '../controllers/ticketing_controller.dart';

class TicketingView extends GetView<TicketingController> {
  const TicketingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300.h,
                  width: 1.sw,
                  decoration: const BoxDecoration(
                    color: Color(0xffF5C3B3),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 42.w,
                  ),
                ).paddingOnly(left: 20.w, top: 20.h),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Konseling Psikolog',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ).paddingOnly(top: 20.h),
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Container(
                        width: 140.w,
                        height: 180.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(
                                  0, 4), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Dr. Rizki Ramadhan',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ).paddingOnly(top: 10.h),
                    ],
                  ),
                ).marginOnly(top: 60.h),
              ],
            ),
            HorizontalCalendar(
              date: DateTime.now().add(const Duration(days: 1)),
              initialDate: DateTime.now().subtract(const Duration(days: 2)),
              textColor: Colors.black,
              backgroundColor: Colors.white,
              selectedColor: const Color(0xffF5C3B3),
              onDateSelected: (date) {
                controller.date.value = DateTime.parse(date);
              },
            ),
            20.verticalSpace,
            Obx(() {
              var data =
                  DateFormat('EEEE, d MMM yyyy').format(controller.date.value);
              return Text(
                data,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              );
            }),
            const Spacer(),
            Container(
              height: 414.h,
              width: 1.sw,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bottom_ticketing.png',
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 60.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                          color: Color(0xff9ECC88),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '1$index:00 - 1${index + 1}:00',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ).paddingOnly(top: 20.h),
                    ),
                  ).paddingOnly(bottom: 60.h),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 60.h,
                      width: 200.w,
                      decoration: const BoxDecoration(
                        color: Color(0xff647C59),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Schedule Now',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ).paddingOnly(bottom: 20.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
