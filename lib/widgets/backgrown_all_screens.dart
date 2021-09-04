import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgrowndAllScreens extends StatelessWidget {

  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    String pathImage = "assets/logo/logoterratravel.png";

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return Container(
      color: Colors.white,
      height: screenHeight,
      width: screenWidth ,
      /*
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF1C529F),
                Color(0xFFE41538)
              ],
              begin: FractionalOffset(0.2, 0.3),
              end: FractionalOffset(1.8,0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),
       */

      //alignment: Alignment(-0.9, -0.6),

        /*
        child: Container(
            height: 260,
            width:350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pathImage)
                )
            ),
          ),

         */


    );
  }
}
