import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

const Color font = Color.fromARGB(255, 209, 209, 226);

const Color RedSoloLeving = Color(0xff710510);

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eduardo D\' Alezandro',
          style: GoogleFonts.arizonia(),
        ),
        elevation: 25,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {},
              child: Text("Home", style: GoogleFonts.ptSans(color: font)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {},
              child: Text("Contact", style: GoogleFonts.ptSans(color: font)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {},
              child: Text("About", style: GoogleFonts.ptSans(color: font)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {},
              child: Text("Experience", style: GoogleFonts.ptSans(color: font)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {},
              child: Text("Projects", style: GoogleFonts.ptSans(color: font)),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Backgroundreal.png"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(60),
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
                          color: Color(0xffC3D6D6),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                controller.alaunchUrl(controller.urlWhatapp);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                controller.alaunchUrl(controller.urlLikedin);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.linkedin,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                controller.alaunchUrl(controller.urlInstagram);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                controller.alaunchUrl(controller.urlGit);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.github,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
