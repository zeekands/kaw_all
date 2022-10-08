import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final count = 0.obs;
  var bottomNavIndex = 0.obs;
  late User user;
  var nama = '';
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
  void onInit() {
    super.onInit();
    user = FirebaseAuth.instance.currentUser!;
    nama = user.displayName!.split(' ')[0];
  }

  void increment() => count.value++;
}
