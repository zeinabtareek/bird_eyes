import 'package:get/get.dart';

import '../screens/first_screen/first_screen.dart';
import '../screens/load_screen.dart';
import '../screens/sec_screen/sec_screen.dart';
import '../screens/splash_screen/splash_screen.dart';
import '../screens/third_screen/third_screen.dart';
import 'app_route.dart';

class AppScreens {
  static final screens = [

    GetPage(name: AppRoutes.loadingScreen, page: () => LoadingScreen()),
    GetPage(name: AppRoutes.firstScreen, page: () => FirstScreen()),
    GetPage(name: AppRoutes.secScreen, page: () => SecondScreen()),
    // GetPage(name: AppRoutes.thirdScreen, page: () =>  ThirdScreen()),
    GetPage(name: AppRoutes.splashScreen, page: () => SplashScreen()),
  ];
}
