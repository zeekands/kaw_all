import 'package:get/get.dart';

class CourseController extends GetxController {
  final courseList = [
    {
      'courseBackground': 'assets/images/first_course_card.png',
      'courseTitle': 'Self\nDefense',
      'courseIcon': 'assets/images/first_course_icon.png',
    },
    {
      'courseBackground': 'assets/images/second_course_card.png',
      'courseTitle': 'All about\nsexual abuse',
      'courseIcon': 'assets/images/second_course_icon.png',
    },
    {
      'courseBackground': 'assets/images/third_course_card.png',
      'courseTitle': 'Support\nSystem',
      'courseIcon': 'assets/images/third_course_icon.png',
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
