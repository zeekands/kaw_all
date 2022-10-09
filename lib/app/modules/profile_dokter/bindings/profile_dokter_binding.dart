import 'package:get/get.dart';

import '../controllers/profile_dokter_controller.dart';

class ProfileDokterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileDokterController>(
      () => ProfileDokterController(),
    );
  }
}
