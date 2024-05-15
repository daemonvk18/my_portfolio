import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/responsive_size.dart';
import 'package:portfolio_webapp/widgets/aboutme_desktop.dart';
import 'package:portfolio_webapp/widgets/aboutme_mobile.dart';
import 'package:portfolio_webapp/widgets/contact.dart';
import 'package:portfolio_webapp/widgets/footer.dart';
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
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenWidth = screensize.width;
    // ignore: unused_local_variable
    final screenheight = screensize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            key: scaffoldKey,
            backgroundColor: CustomColors.black88,
            endDrawer: constraints.maxWidth >= kminDesktopWidth
                ? null
                : HeaderDrawer(
                    onnavitemTap: (int navindex) {
                      scaffoldKey.currentState?.closeEndDrawer();
                      //call the function
                      scrollToSection(navindex);
                    },
                  ),
            body: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  //MAIN(navbar)
                  if (constraints.maxWidth >= kminDesktopWidth)
                    DesktopHeader(
                      navindex: (int navbarindex) {
                        //call the function
                        scrollToSection(navbarindex);
                      },
                    )
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
                    AboutMeDesktop(keys: navbarKeys[0])
                  else
                    AboutMeMobile(
                      keys: navbarKeys[0],
                    ),

                  //SKILLS
                  if (constraints.maxWidth >= kskillsmedwidth)
                    SkillsDesktop(
                      keys: navbarKeys[1],
                    )
                  else
                    SkillsMobile(
                      keys: navbarKeys[1],
                    ),

                  //MY PROJECTS
                  Projects(
                    key: navbarKeys[2],
                  ),

                  //CONTACT
                  Contact(
                    key: navbarKeys[3],
                  ),

                  //FOOTER
                  const Footer()
                ],
              ),
            )),
      );
    });
  }

  //scrolling to particular section
  void scrollToSection(int index) {
    final key = navbarKeys[index];
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
