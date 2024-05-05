import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/widgets/header_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.black88,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN(navbar)
            DesktopHeader(),
            //ABOUT ME
            Container(
              color: CustomColors.black88,
              height: 600.0,
              width: double.maxFinite,
            ),

            //SKILLS
            Container(
              color: Color(0xFF333333),
              height: 600.0,
              width: double.maxFinite,
            ),

            //WORK EXPERIENCE
            Container(
              color: Color(0xFF333333),
              height: 600.0,
              width: double.maxFinite,
            ),

            //MY PROJECTS
            Container(
              color: Color(0xFF333333),
              height: 600.0,
              width: double.maxFinite,
            ),

            //CONTACT
            Container(
              color: Color(0xFF333333),
              height: 600.0,
              width: double.maxFinite,
            ),
          ],
        ));
  }
}
