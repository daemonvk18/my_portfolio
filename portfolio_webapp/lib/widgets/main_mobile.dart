import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      height: screenheight / 1.3,
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
              height: screenheight / 2.8,
              width: screenWidth / 1.2,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),

          //intro text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //hi i'm preetham text
              Text(
                "Hi, I'm",
                style: GoogleFonts.notoSans(
                    textStyle: TextStyle(
                        height: 1.5,
                        fontSize: 30.0,
                        color: CustomColors.white90,
                        fontWeight: FontWeight.bold)),
              ),
              Text(
                " Preetham",
                style: GoogleFonts.notoSans(
                    textStyle: TextStyle(
                        height: 1.5,
                        fontSize: 30.0,
                        color: CustomColors.red,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Text("I develop Flutter Applications",
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      height: 1.5,
                      fontSize: 18.0,
                      color: CustomColors.white90,
                      fontWeight: FontWeight.w500))),
          Text(
            "and User Interfaces",
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    height: 1.5,
                    fontSize: 18.0,
                    color: CustomColors.white90,
                    fontWeight: FontWeight.w500)),
          ),
          //download resume button
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            child: GestureDetector(
              onTap: downloadResume,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                decoration: BoxDecoration(
                    color: CustomColors.red,
                    borderRadius: BorderRadius.circular(22)),
                child: Text(
                  "Resume",
                  style: TextStyle(
                      color: CustomColors.white90,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void downloadResume() async {
    const resumeUrl =
        "https://drive.google.com/file/d/1Spm-2ywjc62pJEJBK9kdoTZ-WlVpRbZs/view?usp=drivesdk";
    final Uri uri = Uri.parse(resumeUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
