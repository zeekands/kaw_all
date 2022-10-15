import 'package:get/get.dart';

import '../controllers/panas_controller.dart';

class PanasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PanasController>(
      () => PanasController(),
    );
  }
}
