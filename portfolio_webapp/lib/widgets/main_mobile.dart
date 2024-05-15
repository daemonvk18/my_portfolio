import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    final screenheight = screensize.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
      height: screenheight,
      constraints: BoxConstraints(minHeight: 540.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //avatar image(faded)
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColors.black80.withOpacity(0.6),
                CustomColors.black88.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "Assets/homepage_image.png",
              height: screenheight / 2,
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),

          //intro text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //hi i'm preetham text
              const Text(
                "Hi, I'm",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 30.0,
                    color: CustomColors.white90,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                " Preetham",
                style: TextStyle(
                    height: 1.5,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.red),
              )
            ],
          ),
          const Text(
            "I develop Flutter Applications",
            style: TextStyle(
                height: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: CustomColors.white90),
          ),
          const Text(
            "and User Interfaces",
            style: TextStyle(
                height: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: CustomColors.white90),
          ),
          //download resume button
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 45.0,
            child: ElevatedButton(
                onPressed: () {
                  downloadResume();
                },
                child: Text(
                  "Download Resume",
                  style: TextStyle(color: CustomColors.red),
                )),
          )
        ],
      ),
    );
  }

  void downloadResume() async {
    const resumeUrl =
        "https://drive.google.com/file/d/1NhZnwXGf_2HzYbN85H_H98sHsYOeZvQI/view?usp=drivesdk";
    final Uri uri = Uri.parse(resumeUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
