import 'package:get/get.dart';
import 'package:kaw_all/app/modules/course/controllers/course_controller.dart';
import 'package:kaw_all/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:kaw_all/app/modules/mentimeter/controllers/mentimeter_controller.dart';

import '../controllers/navigation_bar_controller.dart';

class NavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardController>(DashboardController());

    Get.put<NavigationBarController>(
      NavigationBarController(),
    );
    Get.put(MentimeterController());
    Get.put(CourseController());
  }
}
