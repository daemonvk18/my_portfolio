import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/pages/home_page.dart';

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({super.key});

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    loadingData();
  }

  void loadingData() async {
    //wait for some delay
    await Future.delayed(Duration(seconds: 4));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black88,
      body: _isLoading
          ? Center(
              child: LoadingAnimationWidget.dotsTriangle(
                  color: CustomColors.red, size: 120.0),
            )
          : HomePage(),
    );
  }
}
