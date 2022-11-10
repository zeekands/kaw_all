import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/color.dart';
import '../../pilih_psikolog/models/psikolog_model.dart';
import '../controllers/profile_dokter_controller.dart';

class ProfileDokterView extends GetView<ProfileDokterController> {
  const ProfileDokterView({Key? key}) : super(key: key);
  Widget _buildItemList(Psikolog psikolog, int index) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 30.h,
        horizontal: 26.w,
      ),
      width: 266.w,
      height: 437.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
        color: controller.color.value,
      ),
      child: Column(
        children: [
          Text(
            psikolog.name,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
          25.verticalSpace,
          Expanded(
            child: Container(
              width: 230.w,
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
                  image: AssetImage(psikolog.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    ).paddingOnly(bottom: 5.h);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: statusBarColor,
    ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        width: 1.sw,
        height: 1.sh,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: pilihDokterBackgroundColor,
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
                    Text(
                      "Rp. ${controller.price}/jam",
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
                    color: const Color(0xffEC9F87),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                  ),
                  child: Obx(() {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        50.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Satisfied",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFAF3EB),
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
                                  child: Text(
                                    "${((controller.satisfied.value / controller.totalFeedBack.value) * 100).round()}%",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff5ABA2D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Unsatisfied",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFAF3EB),
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
                                  child: Text(
                                    "${((controller.unsatisfied.value / controller.totalFeedBack.value) * 100).round()}%",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffA70D03),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Umur: ${controller.age.value} Tahun",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFAF3EB),
                                  ),
                                ),
                                Text(
                                  "Spesialisasi: ${controller.specialist.value}",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFAF3EB),
                                  ),
                                ),
                                Text(
                                  "Pengalaman: ${controller.experience.value}",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffFAF3EB),
                                  ),
                                ),
                              ],
                            ),
                            5.horizontalSpace,
                          ],
                        ),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              color: const Color(0xffB6411C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await controller.uploadChat();
                                  Get.toNamed(
                                    Routes.CHAT,
                                    arguments: {
                                      'chatId': controller.chatId.value,
                                      'name': controller.name.value,
                                      'image': controller.image.value,
                                    },
                                  );
                                },
                                child: SizedBox(
                                  width: 246.w,
                                  height: 50.h,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Chat Sekarang",
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
                            IconButton(
                              onPressed: () {
                                Get.toNamed(Routes.BAYAR_CHAT);
                              },
                              icon: Icon(
                                Icons.shopping_cart_rounded,
                                color: Colors.white,
                                size: 30.sp,
                              ),
                            ),
                          ],
                        ),
                        16.verticalSpace,
                      ],
                    );
                  }),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                120.verticalSpace,
                Expanded(
                  child: PageView.builder(
                    itemCount: controller.data.length,
                    controller: PageController(viewportFraction: 0.7),
                    onPageChanged: (int index) {
                      // Update current data psikolog
                      controller.focusItemCard(index);
                      controller.price.value = controller.data[index].price;
                      controller.specialist.value =
                          controller.data[index].specialist;
                      controller.age.value = controller.data[index].age;
                      controller.satisfied.value =
                          controller.data[index].satisfied;
                      controller.unsatisfied.value =
                          controller.data[index].unsatisfied;
                      controller.totalFeedBack.value =
                          controller.data[index].totalFeedBack;
                      controller.image.value = controller.data[index].image;
                      controller.experience.value =
                          controller.data[index].experience;
                    },
                    itemBuilder: (_, index) {
                      // Change the selected card background color
                      if (index % 3 == 1) {
                        controller.color.value = firstColor;
                      } else if (index % 3 == 2) {
                        controller.color.value = secondColor;
                      } else if (index % 3 == 0) {
                        controller.color.value = thirdColor;
                      }

                      return Obx(
                        () => Transform.scale(
                          scale:
                              controller.focusItemCard.value == index ? 1 : 0.7,
                          child: _buildItemList(
                              controller.data.value[index], index),
                        ),
                      );
                    },
                  ),
                ),
                320.verticalSpace
              ],
            )
          ],
        ),
      ),
    );
  }
}
