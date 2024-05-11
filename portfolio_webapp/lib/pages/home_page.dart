import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/responsive_size.dart';
import 'package:portfolio_webapp/widgets/aboutme_desktop.dart';
import 'package:portfolio_webapp/widgets/aboutme_mobile.dart';
import 'package:portfolio_webapp/widgets/header_desktop.dart';
import 'package:portfolio_webapp/widgets/header_drawer.dart';
import 'package:portfolio_webapp/widgets/header_mobile.dart';
import 'package:portfolio_webapp/widgets/main_desktop.dart';
import 'package:portfolio_webapp/widgets/main_mobile.dart';
import 'package:portfolio_webapp/widgets/skills_desktop.dart';
import 'package:portfolio_webapp/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenWidth = screensize.width;
    // ignore: unused_local_variable
    final screenheight = screensize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.black88,
          endDrawer: constraints.maxWidth >= kminDesktopWidth
              ? null
              : const HeaderDrawer(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN(navbar)
              if (constraints.maxWidth >= kminDesktopWidth)
                const DesktopHeader()
              else
                //for the mobile view
                HeaderMobile(
                  logoTap: () {},
                  menuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              if (constraints.maxWidth >= kminDesktopWidth)
                MainDesktop()
              else
                MainMobile(),

              //ABOUT ME
              if (constraints.maxWidth >= kaboutmemobilewidth)
                AboutMeDesktop()
              else
                AboutMeMobile(),

              //SKILLS
              if (constraints.maxWidth >= kskillsmedwidth)
                SkillsDesktop()
              else
                SkillsMobile(),

              //MY PROJECTS
              Container(
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
                  ],
                ),
              ),

              //CONTACT
              Container(
                color: Color(0xFF333333),
                height: 600.0,
                width: double.maxFinite,
              ),
            ],
          ));
    });
  }
}
