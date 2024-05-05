import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  SiteLogo({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: SizedBox(
            height: 45.0,
            width: 45.0,
            child: Image.asset(
              "Assets/np_logo.png",
            )),
      ),
    );
  }
}
