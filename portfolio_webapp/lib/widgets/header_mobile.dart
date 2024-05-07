import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.logoTap, this.menuTap});
  final void Function()? logoTap;
  final void Function()? menuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //we have the logo
          SiteLogo(
            onTap: logoTap,
          ),

          //and the options icons
          IconButton(
              onPressed: menuTap,
              icon: const Icon(
                Icons.menu,
                color: CustomColors.white90,
              ))
        ],
      ),
    );
  }
}
