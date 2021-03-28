import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/model/travel.dart';
import 'package:terratravelapp/travels/ui/screens/traveldetails.dart';

class CardTravel extends StatefulWidget {

  final Travel travel;

  CardTravel({Key key, @required this.travel});

  @override
  _CardTravelState createState() => _CardTravelState();
}

class _CardTravelState extends State<CardTravel> {


  @override
  Widget build(BuildContext context) {

    final photoCard = InkWell(
      onTap:(){
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=>TravelDetails(travel: widget.travel,)));

      },
      child: Container(
        child: Container(

          child: Text(widget.travel.titulo,
            style: TextStyle(color: Colors.white,
                fontSize: 23),
            textAlign: TextAlign.center,
          ),
        ),
        width: 300,
        margin: EdgeInsets.only(
            top: 10.0,
            bottom: 70.0
        ),
        height:400,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(widget.travel.photo),

            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),

            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 5.0)
              )
            ]
        ),
      ),
    );
    return photoCard;
  }
}
