import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final count = 0.obs;
  var bottomNavIndex = 0.obs;
  late User? user;
  var nama = ''.obs;
  var email = '';
  var username = '';
  var age = 0;

  final docRef = FirebaseFirestore.instance.collection('users');
  final whatsNewList = [
    {
      'title': 'KoLaK',
      'description': 'Konseling Serasa Jajan Ayam Geprek',
      'image': 'assets/images/img_kolak_dashboard.png',
    },
    {
      'title': 'Yuk Volunteer!',
      'description': 'Ingin Ikut Berkontribusi?',
      'image': 'assets/images/img_volunteer_dashboard.png',
    },
    {
      'title': 'PaNaS',
      'description': 'Paket Nanya Sepuasnya',
      'image': 'assets/images/img_panas_dashboard.png',
    },
  ];

  @override
  void onInit() async {
    super.onInit();
    user = FirebaseAuth.instance.currentUser;

    await getUserDetail();
    // nama = user?.displayName?.split(' ')[0] ?? "";
  }

  Future<void> getUserDetail() async {
    await docRef.doc(user!.uid).get().then((value) {
      nama.value = value['name'].split(' ')[0] ?? "";
      email = value['email'];
      username = value['userName'];
      age = value['age'];
    });
  }

  void increment() => count.value++;
}
