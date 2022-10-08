import 'package:get/get.dart';

class TicketingController extends GetxController {
  //TODO: Implement TicketingController

  final count = 0.obs;
  final date = DateTime(2021, 10, 10).obs;

  void increment() => count.value++;
}
