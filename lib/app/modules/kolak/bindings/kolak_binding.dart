import 'package:get/get.dart';

import '../controllers/kolak_controller.dart';

class KolakBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KolakController>(
      () => KolakController(),
    );
  }
}
