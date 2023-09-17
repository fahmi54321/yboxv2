import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static String tag = '/ShophopSplash';
  static const ROUTE = 'splash_page';

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Image.asset(
        'images/splash.jpg',
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }
}
