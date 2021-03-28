import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/screens/Internacionalesscreens.dart';
import 'package:terratravelapp/travels/ui/screens/encuestabioseguridad.dart';
import 'package:terratravelapp/travels/ui/screens/nacionalesscreen.dart';
import 'package:terratravelapp/travels/ui/screens/quinceanerascreen.dart';
import 'package:terratravelapp/travels/ui/screens/quienessomos.dart';
import 'package:terratravelapp/travels/ui/screens/regionalesscreen.dart';
import 'package:terratravelapp/travels/ui/widgets/tapcategoria.dart';
import 'package:terratravelapp/widgets/backgrown_all_screens.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  String _worlPath = 'assets/iconos/mundo.png';
  String _nacionalPath = 'assets/iconos/colombia.png';
  String _regionalPath = "assets/iconos/sombrero.png";
  String _quinceaneraPath = "assets/iconos/princesa.png";

  void handleClick(String value) {
    switch (value) {
      case 'Quienes somos':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => QuienesSomos()));
        break;
      case 'Encuesta Bioseguridad':
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EncuestaBioseguridad()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    var margenTop = MediaQuery.of(context).size.height* 0.18;
    var tamanoLetra = MediaQuery.of(context).size.height* 0.06;
    var margenTopTitulo = MediaQuery.of(context).size.height* 0.05;


    return Scaffold(
        body: Stack(
      children: [
        BackgrowndAllScreens(),
        Container(
          margin: EdgeInsets.only(top: margenTopTitulo, left: 10),
          child: Row(
            children: [
              Text(
                'Bienvenido a \nTerratravel',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: tamanoLetra,
                    fontWeight: FontWeight.bold),
              ),
              PopupMenuButton<String>(
                onSelected: handleClick,
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 50,
                ),
                itemBuilder: (BuildContext context) {
                  return {'Quienes somos', 'Encuesta Bioseguridad'}
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: margenTop),
          child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(isScrollable: true, tabs: [
                    TapCategoria(width: 80.0, image: _regionalPath, categoria: "Regionales",heighIcon: 80,),
                    TapCategoria(width: 80.0, image: _nacionalPath, categoria: "Nacionales", heighIcon: 66,),
                    TapCategoria(width: 105.0, image: _worlPath, categoria: "Internacionales", heighIcon: 66,),
                    TapCategoria(width: 105.0, image: _quinceaneraPath, categoria: "Quinceañeras", heighIcon: 70,),
                  ]),

                  Flexible(
                    child: TabBarView(
                      children: [
                        RegionalesScreen(),
                        NacionalesScreen(),
                        InternacionalesScreen(),
                        QuinceaneraScreen()
                      ],
                    ),
                  )
                ],
              )
          ),
        )
      ],
    ));
  }
}
