import 'package:get/get.dart';

import '../controllers/volunteer_hiring_controller.dart';

class VolunteerHiringBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VolunteerHiringController>(
      () => VolunteerHiringController(),
    );
  }
}
