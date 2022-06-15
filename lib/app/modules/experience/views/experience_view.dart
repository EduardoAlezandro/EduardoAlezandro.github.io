import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/experience_controller.dart';

class ExperienceView extends GetView<ExperienceController> {
  Color font = Color(0xffE6CA76);
  @override
  Widget build(BuildContext context) {
    return WebView(context);
  }

  Scaffold WebView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Experience',
          style: GoogleFonts.montserrat(fontSize: 20, color: font),
        ),
        centerTitle: true,
        elevation: 25,
        actions: [
          buttonsNavegacao("Home", "/home"),
          buttonsNavegacao("About", "/about"),
          buttonsNavegacao("Experience", "/experience"),
          buttonsNavegacao("Projects", "/projects"),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back1.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 800,
                  height: 100,
                  child: Wrap(
                    children: [
                      Text(
                        'Experiencia: Com Flutter, Nestjs, Jest, Firebase, PostgreSQL, GetX como gerenciador de estado, Arquitetura MVC ',
                        style:
                            GoogleFonts.montserrat(fontSize: 20, color: font),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 800,
                  height: 250,
                  child: Wrap(
                    children: [
                      Text(
                        'Como a empresa que trabalhava era uma fintech, Era muito trabalho e poucas pessoas com isso eu aprendi muita coisa, as tarefaz não era divida por área então pra resolver um problema as vezes tinha que mecher no front, back e no relacional do banco de dados, e testes unitarios foram implementado por mim com a supervisão de um senior',
                        style:
                            GoogleFonts.montserrat(fontSize: 20, color: font),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Com isso no meu tempo nessa empresa desenvolvemos um Projeto completo do zero e eu estive em todos os processos, Os telas desse projeto que foi feita por mim, estão disponiveis na aba de "Projetos" ',
                          style:
                              GoogleFonts.montserrat(fontSize: 20, color: font),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buttonsNavegacao(name, route) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          Get.offAndToNamed("$route");
        },
        child: Text("$name", style: GoogleFonts.ptSans(color: font)),
      ),
    );
  }
}
