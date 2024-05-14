import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/responsive_size.dart';
import 'package:portfolio_webapp/widgets/aboutme_desktop.dart';
import 'package:portfolio_webapp/widgets/aboutme_mobile.dart';
import 'package:portfolio_webapp/widgets/contact.dart';
import 'package:portfolio_webapp/widgets/header_desktop.dart';
import 'package:portfolio_webapp/widgets/header_drawer.dart';
import 'package:portfolio_webapp/widgets/header_mobile.dart';
import 'package:portfolio_webapp/widgets/main_desktop.dart';
import 'package:portfolio_webapp/widgets/main_mobile.dart';
import 'package:portfolio_webapp/widgets/projects.dart';
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
              const Projects(),

              //CONTACT
              const Contact(),

              //FOOTER
              Container(
                height: 500.0,
                color: CustomColors.black80,
              )
            ],
          ));
    });
  }
}
