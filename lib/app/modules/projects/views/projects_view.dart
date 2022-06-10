import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../main.dart';
import '../controllers/projects_controller.dart';

class ProjectsView extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Projetos',
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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/back1.jpg"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.dstATop),
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 500,
                  height: 100,
                  child: Wrap(
                    children: [
                      Text(
                        'Segue a baixo Telas Produzidas por mim',
                        style:
                            GoogleFonts.montserrat(fontSize: 20, color: font),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 2000,
                  child: Wrap(
                    runSpacing: 20,
                    children: [
                      Image(image: AssetImage('assets/pel1.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Tela de login com authenticação,\n e sistema para recuparar a senha",
                          style:
                              GoogleFonts.montserrat(fontSize: 20, color: font),
                        ),
                      ),
                      Image(image: AssetImage('assets/pel2.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Pagina feita para o cadastro\nde novos colaboradores em suas empresas\nrespectivas",
                          style:
                              GoogleFonts.montserrat(fontSize: 20, color: font),
                        ),
                      ),
                      Image(image: AssetImage('assets/pel3.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Pagina para importa o contrato\ndo colaborador, para poder ser \nadicionado no banco\nde dados relacional",
                          style:
                              GoogleFonts.montserrat(fontSize: 20, color: font),
                        ),
                      ),
                      Image(image: AssetImage('assets/pel4.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Pagina para consultar o banco Inter\ne ver informações sobre os boletos emitidos",
                          style:
                              GoogleFonts.montserrat(fontSize: 20, color: font),
                        ),
                      ),
                      Image(image: AssetImage('assets/pel5.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Dashboard inicial, com dados importantes\npara o dono/gerente da empresa com\ngraficos para saber a diferença mensal",
                          style:
                              GoogleFonts.montserrat(fontSize: 20, color: font),
                        ),
                      ),
                      Image(image: AssetImage('assets/pel6.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Pagina que geram relatorios\nexcel para contabilidade e investidores,\ncom um dialog aberto para confirmação",
                          style:
                              GoogleFonts.montserrat(fontSize: 20, color: font),
                        ),
                      ),
                      Image(image: AssetImage('assets/pel6.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Pagina mais importante da aplicação onde\nse controla as contas a receber com emissao\nde boleto, relatorios filtros e tambem onde\nfaz a liuidação",
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
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: () {
          Get.toNamed("$route");
        },
        child: Text("$name", style: GoogleFonts.ptSans(color: font)),
      ),
    );
  }
}
