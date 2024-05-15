import 'package:flutter/cupertino.dart';
import 'package:portfolio_webapp/constants/aboutme.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/responsive_size.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key, required this.keys});
  final Key keys;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    final screenheight = screensize.height;
    return Container(
      key: keys,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      color: CustomColors.black80,
      height: screenheight / 1.3,
      width: screenWidth,
      constraints: BoxConstraints(minHeight: 650.0),
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
                  if (screenWidth > kaboutmeDesktopwidth1)
                    Text(
                      "Hi, I'm Pailla Navya Preetham Reddy, a pre-final year student at IIIT Bhubaneswar. I'm passionate about\ntechnology and thrive in the dynamic environment of computer science and engineering. Beyond\nacademics, I enjoy engaging in extracurricular activities and collaborating with peers. I'm determined to\nmake meaningful contributions in the field of technology and beyond. ",
                      style: TextStyle(
                          color: CustomColors.white80, fontSize: 16.0),
                    )
                  else if (screenWidth <= kaboutmeDesktopwidth1 &&
                      screenWidth > kaboutmeDesktopwidth2)
                    Text(
                      "Hi, I'm Pailla Navya Preetham Reddy, a pre-final year student at IIIT\nBhubaneswar. I'm passionate about technology and thrive in the dynamic\nenvironment of computer science and engineering. Beyond academics\nI enjoy engaging in extracurricular activities and collaborating\nwith peers. I'm determined to make meaningful contributions in the field of\ntechnology and beyond. ",
                      style: TextStyle(
                          color: CustomColors.white80, fontSize: 16.0),
                    )
                  else if (screenWidth <= kaboutmeDesktopwidth2 &&
                      screenWidth > kaboutmeDesktopwidth3)
                    Text(
                      "Hi, I'm Pailla Navya Preetham Reddy, a pre-final year student\nat IIIT Bhubaneswar. I'm passionate about technology and thrive\nin the dynamic environment of computer science and engineering.\nBeyond academics, I enjoy engaging in extracurricular activities and\ncollaborating with peers. I'm determined to make meaningful\ncontributions in the field of technology and beyond. ",
                      style: TextStyle(
                          color: CustomColors.white80, fontSize: 16.0),
                    )
                  else if (screenWidth <= kaboutmeDesktopwidth3 &&
                      screenWidth > kmediumDesktopWidth)
                    Text(
                      "Hi, I'm Pailla Navya Preetham Reddy, a pre-final year\nstudentat IIIT Bhubaneswar. I'm passionate about\ntechnology and thrive in the dynamic environment of\ncomputer science and engineering.Beyond academics, I\nenjoy engaging in extracurricular activities and collaborating\nwith peers. I'm determined to make meaningful contributions\nin the field of technology and beyond. ",
                      style: TextStyle(
                          color: CustomColors.white80, fontSize: 16.0),
                    )
                  else if (screenWidth <= kmediumDesktopWidth)
                    Text(
                      "Hi, I'm Pailla Navya Preetham Reddy, a pre-final year\nstudent at IIIT Bhubaneswar. I'm passionate about\ntechnology and thrive in the dynamic environment\nof computer science and engineering.Beyond\nacademics,I enjoy engaging in extracurricular activities and\ncollaborating with peers. I'm determined to make meaningful\ncontributions in the field of\ntechnology and beyond. ",
                      style: TextStyle(
                          color: CustomColors.white80, fontSize: 16.0),
                    ),

                  const SizedBox(
                    height: 20.0,
                  ),
                  //some list info
                  for (int i = 0; i < aboutmetitle.length; i++)
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Text(
                              aboutmetitle[i] + ":",
                              style: TextStyle(
                                  color: CustomColors.white90,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.0),
                            ),
                            Text(
                              "  " + aboutmeans[i],
                              style: TextStyle(
                                  color: CustomColors.white80, fontSize: 16.0),
                            )
                          ],
                        ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
