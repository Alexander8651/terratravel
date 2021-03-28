
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/model/travel.dart';
import 'package:terratravelapp/travels/ui/widgets/carrucelfotos.dart';
import 'package:terratravelapp/travels/ui/widgets/header.dart';
import 'package:terratravelapp/widgets/backgrown_all_screens.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class TravelDetails extends StatefulWidget {

  final Travel travel;
  TravelDetails({Key key, @required this.travel});

  void whatsAppOpen(
      {@required String phone,
        @required String message,
      }) async {
    String url() {
      if (Platform.isIOS) {
        return "whatsapp://wa.me/$phone/?text=${Uri.parse(message)}";
      } else {
        return "whatsapp://send?phone=$phone&text=${Uri.parse(message)}";
      }
    }
    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }
  @override
  _TravelDetailsState createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgrowndAllScreens(),
          ListView(
            children: [
             CarrucelFotos(fotos: widget.travel.fotos, altura: 450, tipo: 1, margin: 100,),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(widget.travel.descripcion,style: TextStyle(color: Colors.white,fontSize: 30),),
                  )
                ]
              )
            ],
          ),
          Header(title: widget.travel.titulo)
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>widget.whatsAppOpen(
            phone: "+573508530792",
            message: 'Hola, Deseo información del plan a ${widget.travel.titulo}'),
        child: Image(
          image: AssetImage('assets/iconos/whatsapp.png'),
        ),
      ),
    );
  }
}
