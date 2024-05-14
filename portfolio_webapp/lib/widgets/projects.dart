import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/utils/projectutils.dart';
import 'package:portfolio_webapp/widgets/projectcard.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenWidth = screensize.width;
    // ignore: unused_local_variable
    final screenheight = screensize.height;
    return Container(
      padding: const EdgeInsets.only(
          left: 40.0, right: 40.0, top: 20.0, bottom: 40.0),
      color: CustomColors.black80,
      width: screenWidth,
      child: Column(
        children: [
          //my work heading
          const SizedBox(
            height: 10.0,
          ),
          //heading skills
          Text(
            "Projects",
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
            height: 50.0,
          ),
          //project card
          Wrap(spacing: 70.0, runSpacing: 30.0, children: [
            for (int i = 0; i < mainprojects.length; i++)
              ProjectCard(
                projectuitils: mainprojects[i],
              ),
          ])
        ],
      ),
    );
  }
}
