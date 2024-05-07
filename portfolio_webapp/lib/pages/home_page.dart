import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/widgets/header_drawer.dart';
import 'package:portfolio_webapp/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColors.black88,
        endDrawer: const HeaderDrawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN(navbar)
            //DesktopHeader(),
            //for the mobile view
            HeaderMobile(
              logoTap: () {},
              menuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),
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
