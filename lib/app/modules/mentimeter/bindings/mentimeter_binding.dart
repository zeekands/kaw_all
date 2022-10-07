import 'package:get/get.dart';

import '../controllers/mentimeter_controller.dart';

class MentimeterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MentimeterController>(
      () => MentimeterController(),
    );
  }
}
