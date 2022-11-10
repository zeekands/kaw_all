import 'package:get/get.dart';

import '../controllers/order_history_controllers.dart';

class ReceiptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderHistoryController>(
          () => OrderHistoryController(),
    );
  }
}
