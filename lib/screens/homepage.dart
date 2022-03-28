import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:measure_me/screens/select_gender_screen.dart';
import 'package:measure_me/util/constants.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppConstants.mainColor,
        enableFeedback: true,
        onPressed: () {
          Get.to(() => const SelectGenderScreen());
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'No Measurement yet',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
