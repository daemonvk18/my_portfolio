import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/constants/aboutme.dart';
import 'package:portfolio_webapp/constants/colors.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key, required this.keys});
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
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: screenWidth,
      color: CustomColors.black80,
      constraints: BoxConstraints(minHeight: 810.0, minWidth: 350.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          //about me
          Text(
            "About Me",
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
            width: 50.0,
            decoration: BoxDecoration(
                color: CustomColors.red,
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            height: 50.0,
          ),

          //photo
          Container(
            height: 280.0,
            width: 280.0,
            decoration: BoxDecoration(
                border: Border.all(color: CustomColors.white80),
                image: DecorationImage(
                    image: AssetImage("Assets/preetham.jpg"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 20.0),
                    child: Text(
                        softWrap: true,
                        "Hi, I'm Pailla Navya Preetham Reddy, a pre-final year student at IIIT Bhubaneswar.I'm passionate about technology and thrive in the dynamic environment of computer science and engineering. Beyond academics,I enjoy engaging in extracurricular activities and collaborating with peers. I'm determined to make meaningful contributions in the field of technology and beyond.",
                        style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                                fontSize: 14.0, color: CustomColors.white80))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              //some list info
              for (int i = 0; i < aboutmetitle.length; i++)
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 300.0),
                  child: Wrap(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(aboutmetitle[i] + ":",
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    color: CustomColors.white90))),
                        Text("  " + aboutmeans[i],
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColors.white80)))
                      ],
                    ),
                  ]),
                )
            ],
          )
        ],
      ),
    );
  }
}
