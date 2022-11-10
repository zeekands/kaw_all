import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kaw_all/app/routes/app_pages.dart';

import '../controllers/bayar_chat_controller.dart';

class BayarChatView extends GetView<BayarChatController> {
  const BayarChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_bayar_chat.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              // AppBar Section
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
              const Spacer(),
              // Content Section
              Image.asset(
                "assets/images/bayar_chat_illustration.png",
                width: 300.w,
                height: 300.h,
              ),
              const Spacer(),
              Container(
                width: 1.sw,
                height: 370.h,
                decoration: const BoxDecoration(
                  color: Color(0xffF1BCAA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 1.sw,
                      height: 180.h,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) => Obx(
                          () => GestureDetector(
                            onTap: () => controller.selectedVal.value = index,
                            child: CardHargaPerKata(
                              jmlKata:
                                  controller.data[index]['jmlKata'].toString(),
                              harga: controller.data[index]['harga'].toString(),
                              cardColor: controller.selectedVal.value == index
                                  ? const Color(0xffA2BB96)
                                  : const Color(0xffFFFFFF),
                              borderColor: controller.selectedVal.value == index
                                  ? const Color(0xff44563C)
                                  : const Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        controller.updateWordChatCount();
                        Get.toNamed(Routes.PAYMENT);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffBE5F5F),
                        minimumSize: Size(131.w, 50.h),
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        "Bayar",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
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

class CardHargaPerKata extends StatelessWidget {
  final String jmlKata;
  final String harga;
  final Color cardColor;
  final Color borderColor;

  const CardHargaPerKata({
    Key? key,
    required this.jmlKata,
    required this.harga,
    required this.cardColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      width: 144.w,
      height: 147.h,
      decoration: BoxDecoration(
        color: cardColor,
        border: Border.all(
          color: borderColor,
          width: 1.5.w,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            jmlKata,
            style: TextStyle(
              color: const Color(0xffB55D5D),
              fontFamily: 'Montserrat',
              fontSize: 34.sp,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  offset: const Offset(0, 3),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
          Text(
            "Kata",
            style: TextStyle(
              color: const Color(0xffB55D5D),
              fontFamily: 'Montserrat',
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "Rp. $harga",
            style: TextStyle(
              color: const Color(0xffF1774E),
              fontFamily: 'Montserrat',
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    ).paddingOnly(bottom: 10.h, left: 10.w, right: 10.w);
  }
}
