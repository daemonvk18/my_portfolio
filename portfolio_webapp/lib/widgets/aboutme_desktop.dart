import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/constants/aboutme.dart';
import 'package:portfolio_webapp/constants/colors.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key, required this.keys});
  final Key keys;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    return Container(
      key: keys,
      padding:
          EdgeInsets.only(right: 20.0, left: 20.0, top: 30.0, bottom: 60.0),
      color: CustomColors.black80,
      width: screenWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          //about me
          Text(
            "About Me",
            style: TextStyle(
                fontSize: 30.0,
                color: CustomColors.white90,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10.0,
          ),
          //small red coloured bar
          Container(
            height: 4.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: CustomColors.red,
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            height: 70.0,
          ),
          //photo and about me some information
          Row(
            children: [
              //photo
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomColors.white80),
                      image: DecorationImage(
                          image: AssetImage("Assets/preetham.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                width: 100.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //intro about me
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: screenWidth * 0.5),
                    child: Wrap(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 20.0),
                          child: Text(
                              softWrap: true,
                              "Hi, I'm Pailla Navya Preetham Reddy, a pre-final year student at IIIT Bhubaneswar.I'm passionate about technology and thrive in the dynamic environment of computer science and engineering. Beyond academics,I enjoy engaging in extracurricular activities and collaborating with peers. I'm determined to make meaningful contributions in the field of technology and beyond.",
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                      fontSize: 15.0,
                                      color: CustomColors.white80))),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),
                  //some list info
                  for (int i = 0; i < aboutmetitle.length; i++)
                    Row(
                      children: [
                        Text(aboutmetitle[i] + ":",
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    color: CustomColors.white90))),
                        Text("  " + aboutmeans[i],
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColors.white80)))
                      ],
                    )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
