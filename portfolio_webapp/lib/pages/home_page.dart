import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/responsive_size.dart';
import 'package:portfolio_webapp/widgets/aboutme_desktop.dart';
import 'package:portfolio_webapp/widgets/aboutme_mobile.dart';
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
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                width: screenWidth,
                color: CustomColors.black80,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    //contact text
                    Text(
                      "Contact",
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
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 750.0),
                      child: Wrap(
                        children: [
                          Container(
                            height: 700.0,
                            decoration: BoxDecoration(
                                color: CustomColors.black88,
                                borderRadius: BorderRadius.circular(15)),
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                            child: Column(
                              children: [
                                //get in touch text
                                Text(
                                  "Get in touch",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: CustomColors.white90,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                //your name and your email textfields
                                Row(
                                  children: [
                                    //your name textfield
                                    Expanded(
                                      flex: 1,
                                      child: TextField(
                                        style: TextStyle(
                                            color: CustomColors.black80),
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                            fillColor: CustomColors.white80,
                                            filled: true,
                                            hintText: "Your name",
                                            hintStyle: TextStyle(
                                                color: CustomColors.black80),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15.0,
                                    ),
                                    //your email text field
                                    Expanded(
                                      flex: 1,
                                      child: TextField(
                                        style: TextStyle(
                                            color: CustomColors.black80),
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                            fillColor: CustomColors.white80,
                                            filled: true,
                                            hintText: "Your email",
                                            hintStyle: TextStyle(
                                                color: CustomColors.black80),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                //your message box
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  height: 300,
                                  decoration: BoxDecoration(
                                      color: CustomColors.white80,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextField(
                                    style:
                                        TextStyle(color: CustomColors.black80),
                                    maxLines: null,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Your Message",
                                      hintStyle: TextStyle(
                                          color: CustomColors.black80),
                                    ),
                                  ),
                                ),
                                //get in touch button
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      color: CustomColors.red,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text(
                                    "Get in touch",
                                    style: TextStyle(
                                        color: CustomColors.white90,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

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
