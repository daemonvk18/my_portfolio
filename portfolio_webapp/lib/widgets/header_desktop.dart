import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/nav_items.dart';
import 'package:portfolio_webapp/widgets/site_logo.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color(0xFF1F1F1F),
      height: 60.0,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //logo
            SiteLogo(
              onTap: () {},
            ),
            Spacer(),
            //text buttons
            for (int i = 0; i < navitems.length; i++)
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      navitems[i],
                      style: TextStyle(
                          color: CustomColors.white90,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
