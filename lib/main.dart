import 'dart:io';
import 'package:bird_eyes/routes/app_route.dart';
import 'package:bird_eyes/routes/app_screen.dart';
import 'package:bird_eyes/screens/third_screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'helper/dio_integration.dart';
 class MyHttpoverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=>true;
  }
}

Future<void>main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global=  MyHttpoverrides();
  await DioUtilNew.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // home: ThirdScreen(),
        initialRoute: AppRoutes.splashScreen,
        getPages: AppScreens.screens,
      ),
    );
  }
}
