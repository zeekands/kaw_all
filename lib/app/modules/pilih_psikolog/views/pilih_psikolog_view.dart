import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/pilih_psikolog_controller.dart';

class PilihPsikologView extends GetView<PilihPsikologController> {
  const PilihPsikologView({Key? key}) : super(key: key);

  Widget _buildItemList() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 26,
      ),
      width: 266.w,
      height: 437.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
        color: const Color(0xffDCE3D9),
      ),
      child: Column(
        children: [
          Text(
            "Tri Heniyati Subekti, S.Psi",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
          25.verticalSpace,
          Expanded(
            child: Container(
              width: 212.w,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 4), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: const NetworkImage(
                      'https://picsum.photos/id/237/200/300'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_pilih_psikolog.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            fit: StackFit.loose,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // AppBar Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 42.w,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.menu),
                              10.horizontalSpace,
                              Image.asset(
                                'assets/images/profile_picture.png',
                                width: 42.w,
                              ),
                            ],
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 12.w, vertical: 14.h),
                      Text(
                        "Rp. 130.000/jam",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          fontFamily: 'Montserrat',
                          color: const Color(0xff646060),
                        ),
                      ),
                    ],
                  ),
                  // Detail Psikolog Section
                  Container(
                    width: 1.sw,
                    decoration: BoxDecoration(
                      color: const Color(0xffACBCA5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.r),
                        topRight: Radius.circular(50.r),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        50.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Satisfied",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFAF3EB),
                                  ),
                                ),
                                10.verticalSpace,
                                Container(
                                  width: 90.w,
                                  height: 90.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ],
                                    color: const Color(0xffFAF3EB),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Text(
                                    "95%",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5ABA2D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Unsatisfied",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffFAF3EB),
                                  ),
                                ),
                                10.verticalSpace,
                                Container(
                                  width: 90.w,
                                  height: 90.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: const Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ],
                                    color: const Color(0xffFAF3EB),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Text(
                                    "5%",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffA70D03),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        const Text(
                          "Umur: 41 Tahun",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFAF3EB),
                          ),
                        ),
                        const Text(
                          "Spesialisasi: Remaja",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFAF3EB),
                          ),
                        ),
                        const Text(
                          "Pengalaman: 10 Tahun",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFAF3EB),
                          ),
                        ),
                        20.verticalSpace,
                        Material(
                          color: const Color(0xff4E524C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: 1.sw,
                              height: 50.h,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Pesan Sekarang",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ).paddingSymmetric(horizontal: 16.w),
                        16.verticalSpace,
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    120.verticalSpace,
                    Expanded(
                      child: PageView.builder(
                        itemCount: controller.data.length,
                        controller: PageController(viewportFraction: 0.7),
                        onPageChanged: (int index) {
                          controller.focusItemCard(index);
                        },
                        itemBuilder: (_, i) {
                          return Obx(
                            () => Transform.scale(
                              scale:
                                  controller.focusItemCard.value == i ? 1 : 0.7,
                              child: _buildItemList(),
                            ),
                          );
                        },
                      ),
                    ),
                    320.verticalSpace
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
