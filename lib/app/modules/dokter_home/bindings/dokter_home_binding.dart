import 'package:get/get.dart';

import '../controllers/dokter_home_controller.dart';

class DokterHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DokterHomeController>(
      DokterHomeController(),
    );
  }
}
