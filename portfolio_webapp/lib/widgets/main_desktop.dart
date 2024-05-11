import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/responsive_size.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    final screenheight = screensize.height;
    return Container(
      margin: EdgeInsets.only(left: 40.0, right: 20.0),
      height: screenheight / 1.2,
      //this is for when the height of the screen is being reduced
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //some hi my name text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hi, I'm",
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 40.0,
                        color: CustomColors.white90,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Preetham",
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.red),
                  )
                ],
              ),
              (screenWidth > kmediumDesktopWidth)
                  ? const Text(
                      "I develop Flutter Applications and User Interfaces",
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.white90),
                    )
                  : const Text(
                      "I develop Flutter Applications and\nUser Interfaces",
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.white90),
                    ),
              const SizedBox(
                height: 15.0,
              ),
              //download resume button
              SizedBox(
                height: 45.0,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Download Resume",
                      style: TextStyle(color: CustomColors.red),
                    )),
              )
            ],
          ),
          Image.asset(
            "Assets/homepage_image.png",
            width: screenWidth / 2.8,
          )
        ],
      ),
    );
  }
}
