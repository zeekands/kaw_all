import 'package:get/get.dart';

import '../controllers/ticketing_controller.dart';

class TicketingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketingController>(
      () => TicketingController(),
    );
  }
}
