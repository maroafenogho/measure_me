import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_me/screens/homepage.dart';
import 'package:measure_me/util/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.mainColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: AppConstants.splashScreenColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/measuring.png',
                fit: BoxFit.contain,
                color: AppConstants.whiteColor,
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.height * 0.15,
              ),
            ],
          ),
        ),
        // color: AppConstants.mainColor,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/tailor.jpg'), fit: BoxFit.cover),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, goToWelcomePage);
  }

  void goToWelcomePage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const MyHomePage()));
  }
}
