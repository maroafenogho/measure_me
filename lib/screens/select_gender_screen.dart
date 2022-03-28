import 'package:flutter/material.dart';
import 'package:measure_me/util/constants.dart';

class SelectGenderScreen extends StatelessWidget {
  const SelectGenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.mainColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GenderCard(
              image: 'assets/images/woman.png',
              text: 'Female',
              color: AppConstants.whiteColor,
              onPressed: () {},
            ),
            GenderCard(
              image: 'assets/images/man.png',
              text: 'Male',
              color: AppConstants.whiteColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.color,
    required this.text,
    required this.image,
    required this.onPressed,
  }) : super(key: key);
  final Color color;
  final String text;
  final String image;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.all(32),
          // color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                color: color,
              ),
              Text(
                text,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
