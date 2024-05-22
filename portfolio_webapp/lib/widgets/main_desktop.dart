import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/responsive_size.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    final screenheight = screensize.height;
    return Container(
      margin: EdgeInsets.only(left: 40.0, right: 20.0),
      height: screenheight,
      //this is for when the height of the screen is being reduced
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //some hi my name text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 200.0,
              ),
              Row(
                children: [
                  // height: 1.5,
                  //       fontSize: 40.0,
                  //       color: CustomColors.white90,
                  //       fontWeight: FontWeight.bold
                  Text("Hi, I'm",
                      style: GoogleFonts.notoSans(
                          textStyle: TextStyle(
                              height: 1.5,
                              fontSize: 40.0,
                              color: CustomColors.white90,
                              fontWeight: FontWeight.bold))),
                  Text(" Preetham",
                      style: GoogleFonts.notoSans(
                          textStyle: TextStyle(
                              height: 1.5,
                              fontSize: 40.0,
                              color: CustomColors.red,
                              fontWeight: FontWeight.bold)))
                ],
              ),
              (screenWidth > kmediumDesktopWidth)
                  ? Text("I develop Flutter Applications and User Interfaces",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              height: 1.5,
                              fontSize: 22.0,
                              color: CustomColors.white90,
                              fontWeight: FontWeight.w500)))
                  : Text("I develop Flutter Applications and\nUser Interfaces",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              height: 1.5,
                              fontSize: 22.0,
                              color: CustomColors.white90,
                              fontWeight: FontWeight.w500))),
              const SizedBox(
                height: 15.0,
              ),
              //download resume button
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
              ))
            ],
          ),
          Flexible(
            child: Image.asset(
              "Assets/homepage_image.png",
              width: screenWidth / 2.8,
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
