import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      color: CustomColors.black88,
      width: double.maxFinite,
      child: const Text(
        "Made by Preetham with Flutter 3.16",
        style: TextStyle(color: CustomColors.white80),
      ),
    );
  }
}
