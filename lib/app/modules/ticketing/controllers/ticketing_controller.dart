import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TicketingController extends GetxController {
  //TODO: Implement TicketingController

  final count = 0.obs;
  final date = DateTime.now().obs;
  final day = "".obs;
  final dayName = "".obs;
  final konselingTime = [
    "16:00 - 17:00",
    "17:30 - 18:30",
    "19:00 - 20:00",
  ];
  final konselingTimeSelected = 0.obs;

  @override
  void onInit() {
    day.value = DateFormat('EEEE, d MMM yyyy').format(date.value);
    dayName.value = DateFormat('EEEE').format(date.value);
  }

  void increment() => count.value++;
}
