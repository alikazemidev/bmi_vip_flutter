import 'package:flutter/material.dart';
import 'Screens/home_page_screen.dart';
import 'package:splashscreen/splashscreen.dart';

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
      home: SplashScreen(
        seconds: 14,
        navigateAfterSeconds: HomePage(),
        image: Image.asset('images/splash.png'),
        backgroundColor: Colors.white,
        photoSize: 100.0,
      ),
    );
  }
}
