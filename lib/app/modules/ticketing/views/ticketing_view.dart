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
      body: Column(
        children: [
          Container(
            height: 327.h,
            width: 1.sw,
            decoration: const BoxDecoration(
              color: Color(0xffF5C3B3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
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
          )
        ],
      ),
    );
  }
}
