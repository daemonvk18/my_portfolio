import 'package:flutter/cupertino.dart';
import 'package:portfolio_webapp/constants/aboutme.dart';
import 'package:portfolio_webapp/constants/colors.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenWidth = screensize.width;
    final screenheight = screensize.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      height: screenheight,
      color: CustomColors.black80,
      constraints: BoxConstraints(minHeight: 760.0),
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
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
                border: Border.all(color: CustomColors.white80),
                image: DecorationImage(
                    image: AssetImage("Assets/preetham.jpg"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, I'm Pailla Navya Preetham Reddy, apre-final year student\nat IIIT Bhubaneswar.I'm passionate about technology and\nthrive in the dynamic environment of computer science and\nengineering. Beyond academics,I enjoy engaging in extracurricular\nactivities and collaborating with peers. I'm determined to\nmake meaningful contributions in the field of technology\nand beyond.",
                style: TextStyle(fontSize: 14.0, color: CustomColors.white80),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //some list info
              for (int i = 0; i < aboutmetitle.length; i++)
                Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          aboutmetitle[i] + ":",
                          style: TextStyle(
                              color: CustomColors.white90,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0),
                        ),
                        Text(
                          "  " + aboutmeans[i],
                          style: TextStyle(
                              color: CustomColors.white80, fontSize: 14.0),
                        )
                      ],
                    ))
            ],
          )
        ],
      ),
    );
  }
}
