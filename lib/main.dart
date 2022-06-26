import 'package:flutter/material.dart';
import 'package:weather/screens/landing_screen.dart';
import 'package:weather/screens/option_menu.dart';
import 'package:weather/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LandingScreen()
    );
  }
}



