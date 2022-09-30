import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:kaw_all/app/modules/pilih_psikolog/models/psikolog_model.dart';

class PilihPsikologController extends GetxController {
  final focusItemCard = 0.obs;
  final color = Color(0xFF000000).obs;

  final name = "".obs;
  final price = 0.obs;
  final image = "".obs;
  final satisfied = 0.obs;
  final unsatisfied = 0.obs;
  final totalFeedBack = 0.obs;
  final age = 0.obs;
  final specialist = "".obs;
  final experience = "".obs;

  @override
  void onInit() {
    super.onInit();
    name.value = data[0].name;
    price.value = data[0].price;
    image.value = data[0].image;
    satisfied.value = data[0].satisfied;
    unsatisfied.value = data[0].unsatisfied;
    totalFeedBack.value = data[0].totalFeedBack;
    age.value = data[0].age;
    specialist.value = data[0].specialist;
    experience.value = data[0].experience;
  }

  final data = [
    Psikolog(
      name: "Dr. Alex",
      price: 200000,
      image: "https://picsum.photos/id/237/200/300",
      satisfied: 95,
      unsatisfied: 10,
      totalFeedBack: 105,
      age: 30,
      specialist: "Psikolog",
      experience: "10 Tahun",
    ),
    Psikolog(
      name: "Dr. Akhes Stauper",
      price: 300000,
      image: "https://picsum.photos/id/100/200/300",
      satisfied: 35,
      unsatisfied: 65,
      totalFeedBack: 100,
      age: 20,
      specialist: "Psikolog",
      experience: "15 Tahun",
    ),
    Psikolog(
      name: "Dr. Ani",
      price: 100000,
      image: "https://picsum.photos/id/507/200/300",
      satisfied: 35,
      unsatisfied: 10,
      totalFeedBack: 45,
      age: 10,
      specialist: "Psikolog",
      experience: "34 Tahun",
    ),
  ].obs;
}
