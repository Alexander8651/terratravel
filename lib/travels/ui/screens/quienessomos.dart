import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terratravelapp/widgets/backgrown_all_screens.dart';

class QuienesSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgrowndAllScreens(),
        ListView(children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Nuestra Misión",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                Text(
                  "Promover el bienestar, el descanso y la armonía personal de nuestros viajeros, a través de nuevas experiencias turísticas, potencializando la conservación de nuestro patrimonio cultural y ecológico, dinamizando la economía de las pequeñas y medianas empresas, a través de un desarrollo turístico sostenible. Basados en principios de lealtad, responsabilidad, cumplimiento, dedicación y seriedad en nuestro grupo empresarial Terratravel.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("Nuestra Visión",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  Text(
                    "Visionamos un modelo empresarial de trabajo en equipo, otorgándoles importancia e igualdad a todos nuestros integrantes, dando así facultades a la toma de decisiones importantes a las diferentes personas que componen nuestro equipo directivo de trabajo. Con las bases creadas, nos vemos en el futuro como una empresa recordada y querida en la mente y el corazón de las personas que nos apoyan utilizando nuestros servicios.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              )),
          Container(
              padding: EdgeInsets.all(5),
              child: Image(image: AssetImage('assets/logo/rnt.jpeg'))),
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("Politicas de privacidad",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  Text(
                    """CÓDIGO DE CONDUCTA (LEY 1336 DE 2009)

COMPROMISOS MÍNIMOS QUE DEBEN ASUMIR TODOS LOS PRESTADORES DE SERVICIOS

TURÍSTICOS (Resolución 3840 del 24 de diciembre del 2009)

(En virtud de la Ley 1336 de 2009, la adopción y adhesión a este Código de Conducta, es requisito para
la inscripción en el Registro Nacional de Turismo y para su actualización)
Con el fin de contrarrestar la explotación sexual de niños, niñas y adolescentes en viajes y turismo, los
prestadores de servicios turísticos adoptarán un Código de Conducta que deberán observar sus
representantes legales, directores, administradores, empleados y contratistas vinculados a la prestación
de servicios turísticos, con el fin de hacer efectivas las obligaciones contempladas en los artículos 16 y
17 de la Ley 679 de 2001, así como a prevenir las conductas tipificadas en el artículo 19 de la misma ley
e igualmente que incorpore las siguientes medidas mínimas de control:

Abstenerse de ofrecer en los programas de promoción turística y en los planes turísticos, expresa o
subrepticiamente, planes de explotación sexual de niños, niñas y adolescentes.
Abstenerse de dar información a los turistas, directamente o por interpuesta persona acerca de
lugares desde donde se coordinen o donde practique explotación sexual comercial de niños, niñas y
adolescentes.
Abstenerse de conducir a los turistas, directamente o a través de terceros a establecimientos o
lugares donde se practique la explotación sexual comercial de niños, niñas, así como conducir a estos a
los sitios donde se encuentran hospedados los turistas, incluso si se trata de barcos localizados en
Altamar, con fines de explotación sexual comercial de niños, niñas y adolescentes.
Abstenerse de facilitar vehículos en rutas turísticas con fines de explotación o de abuso sexual con
niños, niñas y adolescentes.
Impedir el ingreso de niños, niñas y adolescentes a los hoteles o lugares de alojamiento y hospedaje,
bares, negocios similares y demás establecimientos en los que se presten servicios turísticos, con fines
de explotación o de abuso sexual.
Adoptar las medidas tendientes a impedir que el personal vinculado a cualquier título con la empresa,
ofrezca servicios turísticos que permitan actividad sexual con niños, niñas y adolescentes.
Denunciar ante el Ministerio de Comercio, Industria y Turismo y demás autoridades competentes, los
hechos de que hubiere tenido conocimiento por cualquier medio, así como la existencia de lugares,
relacionados con explotación sexual de niños, niñas y adolescentes y asegurar que al interior de la
empresa existan canales para la denuncia correspondiente ante las autoridades competentes.
Diseñar y divulgar al interior de la empresa y con sus proveedores de bienes y servicios, una política
en la que el prestador establezca medidas para prevenir y contrarrestar toda forma de explotación
sexual de niños, niñas y adolescentes en viajes y turismo.
Capacitar a todo el personal vinculado a la empresa, frente al tema de prevención de la explotación
sexual comercial de niños, niñas y adolescentes.
Informar a sus usuarios sobre las consecuencias legales en Colombia de la explotación y el abuso
sexual de niños, niñas y adolescentes.
Fijar en lugar visible para los empleados del establecimiento o establecimientos de comercio el
presente Código de Conducta y los demás compromisos y medidas que el prestador desee asumir con
el fin de proteger a los niños y los adolescentes.
“En desarrollo de lo dispuesto en el artículo 17 de la Ley 679 de 2001, la agencia advierte al turista que
la explotación y el abuso sexual de menores de edad en el país son sancionados penal y
administrativamente, conforme a las leyes vigentes.”
Nombre del establecimiento: Agencia de Viajes TERRA TRAVEL.COM S.A.S""",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              )),
        ])
      ],
    ));
  }
}
