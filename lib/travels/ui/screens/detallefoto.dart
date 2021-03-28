import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/widgets/carrucelfotos.dart';
import 'package:terratravelapp/travels/ui/widgets/header.dart';
import 'package:terratravelapp/widgets/backgrown_all_screens.dart';

class DetalleFoto extends StatelessWidget {

  final foto;



  DetalleFoto({Key key, @required this.foto});

  @override
  Widget build(BuildContext context) {

    double _tamano = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          BackgrowndAllScreens(),
          Container(
            alignment: Alignment.center,
            child: CarrucelFotos(fotos: foto, altura: 650, tipo: 2,margin: 0,),
          ),
          Header(title: 'Fotos', )
        ],
      )
    );
  }
}
