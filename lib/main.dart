import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_me/screens/homepage.dart';
import 'package:measure_me/screens/onboarding/splashScreen.dart';
import 'package:measure_me/screens/select_gender_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Measure Me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
