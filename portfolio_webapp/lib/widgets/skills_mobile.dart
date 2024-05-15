import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/skillitems.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key, required this.keys});
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
          left: 40.0, top: 20.0, bottom: 40.0, right: 40.0),
      width: screenWidth,
      color: CustomColors.black80,
      child: Column(
        //skills text
        children: [
          const SizedBox(
            height: 10.0,
          ),
          //about me
          Text(
            "Skills",
            style: TextStyle(
                fontSize: 25.0,
                color: CustomColors.white90,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10.0,
          ),

          //container
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
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500.0),
            child: Column(
              children: [
                //platforms
                for (int i = 0; i < platformicons.length; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 5.0),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: CustomColors.black88,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      leading: Image.asset(
                        platformicons[i]["imagepath"],
                        width: 26.0,
                      ),
                      title: Text(platformicons[i]["name"]),
                    ),
                  ),

                const SizedBox(
                  height: 50.0,
                ),

                //skills
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0; i < skillicons.length; i++)
                      Chip(
                        backgroundColor: Colors.transparent,
                        autofocus: false,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        elevation: 0.0,
                        label: Text(skillicons[i]['name']),
                        avatar: Image.asset(skillicons[i]["imagepath"]),
                      )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
