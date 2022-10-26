import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/receipt_controller.dart';

class ReceiptView extends GetView<ReceiptController> {
  const ReceiptView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_receipt.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Image.asset('assets/images/receipt_illustration.png'),
          ),
        ),
      ),
    );
  }
}
