import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/screens/detallefoto.dart';

class CarrucelFotos extends StatelessWidget {

  final List fotos;
  final double altura;
  final int tipo;
  final double margin;

  CarrucelFotos({Key key, @required this.fotos, @required this.altura, @required this.tipo, @required this.margin});

  Widget seleccion(int tipo, String card){

    Widget pantalla;

    // tipo 1 es traveldetail, tipoo 2 detalle foto

    if(tipo == 1){
      pantalla = Container(
        child: FadeInImage(
          image: NetworkImage(card),
          placeholder: AssetImage("assets/logo/logoterratravel.png"),
        ),
      );
    }else if(tipo == 2){

      pantalla = Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(card)
            )
        ),
      );
    }
    return pantalla;
  }

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(items: fotos.map((card){
      return Builder(
          builder:(BuildContext context){
            return InkWell(
              onTap: (){
                if(tipo != 2){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetalleFoto(foto: fotos)));
                }
              },
              child: Container(
                padding: EdgeInsets.all(5),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),

                  margin: EdgeInsets.only(
                      top: margin
                  ),
                  child: seleccion(tipo, card),
                ),
              ),
            );

          }
      );
    }).toList(),
        options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            enableInfiniteScroll: false,
            initialPage: 1,
            height: altura
        )
    );
  }
}
