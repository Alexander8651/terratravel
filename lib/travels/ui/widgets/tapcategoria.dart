import 'package:flutter/material.dart';

class TapCategoria extends StatelessWidget {

  final double width;
  final String image;
  final String categoria;
  final double heighIcon;

  TapCategoria({Key key, @required this.width, @required this.heighIcon, @required this.image, @required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 80.0,
      child: Tab(
          child: Container(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: heighIcon,
                  child: Image(
                      image:
                      AssetImage(image)),
                ),
               Row(
                 children: [
                   Expanded(
                       child: Container(
                         margin: EdgeInsets.only(
                             top: 62
                         ),
                         child: Text(
                           categoria,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Colors.black,
                               fontSize: 13, fontWeight: FontWeight.bold),
                         ),
                       )
                   )
                 ],
               )
              ],
            ),
          )
      ),
    );
  }
}
