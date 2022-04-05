import 'package:flutter/material.dart';
import 'Screens/home_page_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'dana',
      ),
      home: AnimatedSplashScreen(
        backgroundColor: Color(0xff67C1D1),
        splashIconSize: 350,
        splash: 'images/splash.png',
        nextScreen: HomePage(),
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
