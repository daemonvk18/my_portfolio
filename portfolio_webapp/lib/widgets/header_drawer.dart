import 'package:flutter/material.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/constants/nav_items.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({super.key, required this.onnavitemTap});
  final Function(int) onnavitemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.black88,
      child: ListView(
        children: [
          //drawer closing button
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),

          //drawer options
          for (int i = 0; i < navicons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
              onTap: () {
                onnavitemTap(i);
              },
              leading: Icon(
                navicons[i],
                color: CustomColors.white90,
              ),
              title: Text(navitems[i]),
              titleTextStyle: const TextStyle(
                  color: CustomColors.white80,
                  inherit: true,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )
        ],
      ),
    );
  }
}
