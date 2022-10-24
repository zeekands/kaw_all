import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);

  void openBottomSheet() {
    Get.bottomSheet(
      Column(
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Bottom Sheet',
              style: TextStyle(fontSize: 18),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Close'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembayaran',
          style: TextStyle(
            color: Color(0xff5B6656),
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color(0xffD9D9D9),
        centerTitle: true,
        elevation: 1,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Transform.rotate(
            angle: 180 * 3.14 / 180,
            child: Image.asset(
              'assets/images/arrow_2.png',
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Click Me"),
          onPressed: openBottomSheet,
        ),
      ),
    );
  }
}
