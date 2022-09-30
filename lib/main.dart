import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (_, __) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Monsterrat',
        ),
      ),

      // GetMaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: "Application",
      //   home: const HomePage(),
      //   getPages: AppPages.routes,
      //   theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //     fontFamily: 'Monsterrat',
      //   ),
      // ),
    ),
  );
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SplashScreenView(
//       navigateRoute: AppPages.INITIAL,
//       duration: 5000,
//       imageSize: 130,
//       imageSrc: "assets/images/logo.png",
//       text: "KAw All",
//       textType: TextType.TyperAnimatedText,
//       textStyle: TextStyle(fontSize: 30.0),
//       backgroundColor: Colors.white,
//     );
//   }
// }
