import 'package:get/get.dart';

import '../controllers/bayar_chat_controller.dart';

class BayarChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BayarChatController>(
      () => BayarChatController(),
    );
  }
}
