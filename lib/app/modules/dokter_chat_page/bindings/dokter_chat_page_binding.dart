import 'package:get/get.dart';

import '../controllers/dokter_chat_page_controller.dart';

class DokterChatPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DokterChatPageController>(
      () => DokterChatPageController(),
    );
  }
}
