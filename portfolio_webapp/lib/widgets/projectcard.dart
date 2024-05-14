import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/utils/projectutils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.projectuitils});

  final ProjectUtils projectuitils;

  void openURL() async {
    String url = projectuitils.sourcecodelink;
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 400.0,
        width: 300.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: CustomColors.black88,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //project cover photo
            Container(
              width: double.maxFinite,
              height: 160.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(projectuitils.imageurl)),
                  color: CustomColors.white80,
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            //project name
            Text(
              projectuitils.title,
              style: TextStyle(
                  color: CustomColors.red,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),

            const SizedBox(
              height: 10.0,
            ),

            //project description
            Text(
              projectuitils.description,
              style: TextStyle(
                  fontSize: 14.0,
                  color: CustomColors.white80,
                  fontWeight: FontWeight.w600),
            ),
            const Spacer(),

            //tech stack hastags
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //tech stacks
                Padding(
                  padding: const EdgeInsets.only(right: 9.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.white80),
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    height: 30.0,
                    child: Text(
                      projectuitils.techstack1,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 9.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.white80),
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    height: 30.0,
                    child: Text(
                      projectuitils.techstack2,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 9.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.white80),
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    height: 30.0,
                    child: Text(
                      projectuitils.techstack3,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: openURL,
        child: Padding(
          padding: const EdgeInsets.only(left: 240, right: 30.0, top: 18.0),
          child: Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
                color: CustomColors.black88,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(projectuitils.githubimageurl),
                    fit: BoxFit.contain)),
          ),
        ),
      )
    ]);
  }
}
