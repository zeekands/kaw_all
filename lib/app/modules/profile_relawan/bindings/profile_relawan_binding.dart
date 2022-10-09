import 'package:get/get.dart';

import '../controllers/profile_relawan_controller.dart';

class ProfileRelawanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileRelawanController>(
      () => ProfileRelawanController(),
    );
  }
}
