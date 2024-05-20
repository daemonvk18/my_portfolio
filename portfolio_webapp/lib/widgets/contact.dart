import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/constants/colors.dart';
import 'package:portfolio_webapp/utils/contactutils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenWidth = screensize.width;
    // ignore: unused_local_variable
    final screenheight = screensize.height;
    final TextEditingController namecontroller = TextEditingController();
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController messagecontroller = TextEditingController();

    Future<void> sendEmail() async {
      final service_id = "service_ct7ftar";
      final template_id = "template_s5mhnpf";
      final user_id = "eXMs_nCJoIoZna2LZ";
      final body = {
        "service_id": service_id,
        "template_id": template_id,
        "user_id": user_id,
        "template_params": {
          'user_name': namecontroller.text,
          "user_email": emailcontroller.text,
          "user_message": messagecontroller.text
        }
      };

      final url = 'https://api.emailjs.com/api/v1.0/email/send';
      final response = await http.post(Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(body));
      print(response.body);
    }

    return Container(
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
                  height: 730.0,
                  decoration: BoxDecoration(
                      color: CustomColors.black88,
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                  child: Column(
                    children: [
                      //get in touch text
                      Text("Get in touch",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: CustomColors.white90,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w600))),
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
                              controller: namecontroller,
                              style: TextStyle(color: CustomColors.black80),
                              maxLines: 1,
                              decoration: InputDecoration(
                                  fillColor: CustomColors.white80,
                                  filled: true,
                                  hintText: "Your name",
                                  hintStyle:
                                      TextStyle(color: CustomColors.black80),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          //your email text field
                          Expanded(
                            flex: 1,
                            child: TextField(
                              controller: emailcontroller,
                              style: TextStyle(color: CustomColors.black80),
                              maxLines: 1,
                              decoration: InputDecoration(
                                  fillColor: CustomColors.white80,
                                  filled: true,
                                  hintText: "Your email",
                                  hintStyle:
                                      TextStyle(color: CustomColors.black80),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      //your message box
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        height: 300,
                        decoration: BoxDecoration(
                          color: CustomColors.white80,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          controller: messagecontroller,
                          style: TextStyle(color: CustomColors.black80),
                          maxLines: 30,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            border: InputBorder.none,
                            hintText: "Your Message",
                            hintStyle: TextStyle(color: CustomColors.black80),
                          ),
                        ),
                      ),
                      //get in touch button
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: sendEmail,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
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
                        ),
                      ),
                      //divider
                      const SizedBox(
                        height: 40.0,
                      ),
                      Divider(
                        color: CustomColors.white80,
                        indent: 110.0,
                        endIndent: 110.0,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      //socialmedia accounts
                      Wrap(
                        children: [
                          for (int i = 0; i < socialMedia.length; i++)
                            GestureDetector(
                              onTap: () async {
                                String url = socialMedia[i]["weburl"];
                                final Uri uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Image.asset(
                                  socialMedia[i]["imageurl"],
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
