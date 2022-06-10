import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Backgroundreal.png"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 500,
                  height: 250,
                  child: Wrap(
                    children: [
                      Text(
                        '  Olá tudo bom? Meu nome é Eduardo tenho 21 anos, sou um Desenvolvedor de Software. \n  Minha na área de desenvolvimento começou com um curso técnico de Desenvolvimento de jogos, com isso percebi que tenho meio que "Um Talento", no geral tive uma facilidade muito grande com a logica progamacional com isso participei em algumas Hackathon e todas que eu entrei eu acabei ganhando em primeiro lugar',
                        style: GoogleFonts.montserrat(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 500,
                  height: 300,
                  child: Wrap(
                    children: [
                      Image.network(
                          "https://scontent.fpoj7-1.fna.fbcdn.net/v/t1.6435-9/64501815_634171233727022_4138785843982630912_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=9267fe&_nc_ohc=RU0Y7Yu1KAUAX9NMlTe&_nc_ht=scontent.fpoj7-1.fna&oh=00_AT97EdpzH4X3AlNHq6G2zQ-b33TfyBYtw3tdcgIWq9HGpA&oe=62C84CF9"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "HACKATHON 2019 - UniCatólica - Primeiro Lugar"),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 500,
                  height: 150,
                  child: Wrap(
                    children: [
                      Text(
                        'Agora tenho um objetivo diferente de quando eu estava no colegial, busco a parte profissional. \nEntrei em um Estágio, e venho trazendo melhorias para o sistema do primeiro mês. Com 4 meses ja fiquei responsável pelo Front dos 3 portais e do site novo',
                        style: GoogleFonts.montserrat(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 500,
                  height: 300,
                  child: Wrap(
                    children: [
                      Image.asset("imagemAbout.png"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Paginação de Tabela - (Resolução de uma issue que a tabela estava trazendo instabilidade) -  Desenhada e integrada por mim"),
                      )
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
}
