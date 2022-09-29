import 'package:get/get.dart';

class PilihPsikologController extends GetxController {
  //TODO: Implement PilihPsikologController

  final count = 0.obs;
  var focusItemCard = 0.obs;

  List<String> data = [
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

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
