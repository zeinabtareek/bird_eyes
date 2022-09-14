
 import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constant.dart';
import '../load_screen.dart';

class SplashScreen extends StatelessWidget {
    SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
      Image.asset(
              "assets/images/splash2.jpg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              color: K.mainColor.withOpacity(.2),
              colorBlendMode: BlendMode.softLight,
            ),
        Scaffold(
                backgroundColor: Colors.transparent,
                body: AnimatedSplashScreen(
                  splash:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                            Directionality(
                               textDirection: TextDirection.rtl,
                              child:  Center(child:  Text( ' | Bird Eyes  |',
                                style: TextStyle(  fontSize: 16.sp,),
                          ),
                          ),
                          ),
                          SizedBox(
                            child: Text('hope you find your need Eng Peter',style: TextStyle(color: K.blackColor,fontSize: 14.sp,height: 2),),
                          ),
                          Spacer(),
                        ],
                  ),
                  nextScreen:   LoadingScreen(),
                  backgroundColor: Colors.transparent,
                  splashIconSize: 250,
                  duration: 4000,
                   animationDuration: const Duration(seconds: 1),
                ),
               ),
         ]
      ),
    );
  }
}
