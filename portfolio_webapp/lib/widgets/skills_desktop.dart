import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/skillitems.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key, required this.keys});
  final Key keys;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenWidth = screensize.width;
    // ignore: unused_local_variable
    final screenheight = screensize.height;
    return Container(
      key: keys,
      padding: const EdgeInsets.only(
          left: 40.0, right: 40.0, top: 20.0, bottom: 60.0),
      color: CustomColors.black80,
      width: screenWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          //heading skills
          Text(
            "Skills",
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
            width: 40.0,
            decoration: BoxDecoration(
                color: CustomColors.red,
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //platform skills
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 450.0),
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: [
                      for (int i = 0; i < platformicons.length; i++)
                        Container(
                          width: 220.0,
                          decoration: BoxDecoration(
                              color: CustomColors.black88,
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            leading: Image.asset(
                              platformicons[i]["imagepath"].toString(),
                              width: 25.0,
                            ),
                            title: Text(
                              platformicons[i]["name"].toString(),
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: CustomColors.white90)),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 50.0,
              ),

              //skills
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 450.0),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    //a total of 8 skills
                    for (int i = 0; i < skillicons.length; i++)
                      Chip(
                        backgroundColor: Colors.transparent,
                        autofocus: false,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        elevation: 0.0,
                        label: Text(
                          skillicons[i]['name'],
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.white90)),
                        ),
                        avatar: Image.asset(skillicons[i]["imagepath"]),
                      )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
