import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

const Color font = Color(0xffE6CA76);

const Color RedSoloLeving = Color(0xff710510);

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back2.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome to my portfolio !",
                        style: GoogleFonts.bungee(color: font, fontSize: 25)),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text("Eduardo ",
                          style: GoogleFonts.oswald(color: font, fontSize: 50)),
                    ),
                    Text("D \' Alezandro",
                        style: GoogleFonts.oswald(
                            color: font,
                            fontSize: 60,
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(
                          Icons.adjust_rounded,
                          color: font,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, bottom: 3),
                          child: Text("Flutter Developer",
                              style: GoogleFonts.oswald(
                                  color: font,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          iconsRedeSocialButtons(
                              FontAwesomeIcons.whatsapp, controller.urlWhatapp),
                          iconsRedeSocialButtons(
                              FontAwesomeIcons.linkedin, controller.urlLikedin),
                          iconsRedeSocialButtons(FontAwesomeIcons.instagram,
                              controller.urlInstagram),
                          iconsRedeSocialButtons(
                              FontAwesomeIcons.github, controller.urlGit)
                        ],
                      ),
                    )
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  iconsRedeSocialButtons(icon, url) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          controller.alaunchUrl(url);
        },
        child: FaIcon(
          icon,
          size: 35,
          color: font,
        ),
      ),
    );
  }

  buttonsNavegacao(name, route) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: () {
          Get.offAndToNamed("$route");
        },
        child: Text("$name", style: GoogleFonts.ptSans(color: font)),
      ),
    );
  }

  appbar(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: Material(
        elevation: 10,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Eduardo D\' Alezandro',
                  style: GoogleFonts.arizonia(color: font),
                ),
              ),
              Row(
                children: [
                  buttonsNavegacao("Home", "/home"),
                  buttonsNavegacao("About", "/about"),
                  buttonsNavegacao("Experience", "/experience"),
                  buttonsNavegacao("Projects", "/projects"),
                  SizedBox(
                    height: 10,
                    width: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
