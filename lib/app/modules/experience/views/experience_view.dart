import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/experience_controller.dart';

class ExperienceView extends GetView<ExperienceController> {
  Color font = Color(0xffE6CA76);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("back1.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Wrap(
                          children: [
                            Text(
                              'Experiencia: Com Flutter, Nestjs, Jest, Firebase, PostgreSQL, GetX como gerenciador de estado, Arquitetura MVC ',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, color: font),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Wrap(
                          children: [
                            Text(
                              'Como a empresa que trabalhava era uma fintech, Era muito trabalho e poucas pessoas com isso eu aprendi muita coisa, as tarefaz não era divida por área então pra resolver um problema as vezes tinha que mecher no front, back e no relacional do banco de dados, e testes unitarios foram implementado por mim com a supervisão de um senior',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, color: font),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Com isso no meu tempo nessa empresa desenvolvemos um Projeto completo do zero e eu estive em todos os processos, Os telas desse projeto que foi feita por mim, estão disponiveis na aba de "Projetos" ',
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, color: font),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buttonsNavegacao(name, route) {
    return TextButton(
      onPressed: () {
        Get.offAndToNamed("$route");
      },
      child: Text("$name", style: GoogleFonts.ptSans(color: Color(0xffE6CA76))),
    );
  }

  appbar(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
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
    );
  }
}
