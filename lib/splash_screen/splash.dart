import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:Zerang/select_app/homepage.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.fade,
      backgroundColor: Colors.blue,
      duration: 2000,
      splash: Center(
        child: Container(
          
          child: Image.asset("assets/Icons/star.png"),
        ),
      ),
      nextScreen: MyHomePage(),
    );
  }
}
