import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/pilih_psikolog_controller.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class PilihPsikologView extends GetView<PilihPsikologController> {
  const PilihPsikologView({Key? key}) : super(key: key);

  // const PilihPsikologC = Get.put(PilihPsikologController());

  static const List<String> data = [
    "data1",
    "data2",
    "data3",
    "data4",
    "data5",
    "data6",
    "data7",
    "data8",
    "data9",
    "data10"
  ];

  Widget _buildItemList(BuildContext context, int index) {
    // if (index == data.length) {
    //   return CircularProgressIndicator();
    // }

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
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
        color: Color(0xffDCE3D9),
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
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(
                      "https://picsum.photos/id/${index + 1000}/200/300"),
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_pilih_psikolog.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
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
                              Icon(Icons.menu),
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
                          color: Color(0xff646060),
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
                                    color: Color(0xffFAF3EB),
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
                            child: Container(
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
                        // Container(
                        //   width: 1.sw,
                        //   height: 50.h,
                        //   alignment: Alignment.center,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(50.r),
                        //     boxShadow: const [
                        //       BoxShadow(
                        //         color: Color(0xff4E524C),
                        //         spreadRadius: 0,
                        //         blurRadius: 1,
                        //         offset:
                        //             Offset(0, 2), // changes position of shadow
                        //       ),
                        //     ],
                        //   ),
                        //   child: Text(
                        //     "Pesan Sekarang",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontFamily: 'Montserrat',
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 14.sp,
                        //     ),
                        //   ),
                        // ).paddingSymmetric(horizontal: 16.w),
                        16.verticalSpace,
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  120.verticalSpace,
                  Expanded(
                    child: ScrollSnapList(
                      itemBuilder: _buildItemList,
                      itemCount: data.length,
                      itemSize: 150,
                      onItemFocus: (index) {
                        print(index);
                      },
                      dynamicItemSize: true,
                    ),
                  ),
                  320.verticalSpace
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class ItemCard extends StatelessWidget {
//   const ItemCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: 40,
//         horizontal: 26,
//       ),
//       width: 266.w,
//       height: 437.h,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.r),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 0,
//             blurRadius: 4,
//             offset: Offset(0, 4), // changes position of shadow
//           ),
//         ],
//         color: Color(0xffDCE3D9),
//       ),
//       child: Column(
//         children: [
//           Text(
//             "Tri Heniyati Subekti, S.Psi",
//             style: TextStyle(
//               fontFamily: 'Montserrat',
//               fontWeight: FontWeight.bold,
//               fontSize: 20.sp,
//             ),
//           ),
//           25.verticalSpace,
//           Expanded(
//             child: Container(
//               width: 212.w,
//               height: 200.h,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20.r),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 0,
//                     blurRadius: 4,
//                     offset: Offset(0, 4), // changes position of shadow
//                   ),
//                 ],
//                 image: DecorationImage(
//                   image: NetworkImage("https://picsum.photos/id/1005/200/300"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
