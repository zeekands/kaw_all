import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TicketingController extends GetxController {
  //TODO: Implement TicketingController

  final count = 0.obs;
  final date = DateTime(2021, 10, 10).obs;
  final day = "".obs;
  final dayName = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    day.value = DateFormat('EEEE, d MMM yyyy').format(date.value);
    dayName.value = DateFormat('EEEE').format(date.value);
  }

  void increment() => count.value++;
}
