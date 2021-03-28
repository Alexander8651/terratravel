import 'package:flutter/material.dart';

class Header extends StatefulWidget {

  final title;

  Header({Key key, @required this.title});

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {



    return   Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 25.0, left: 5.0),
          child: SizedBox(
            height: 60.0,
            width: 60.0,
            child: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
                size: 60,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
              child: Text("${widget.title}",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            )
        )
      ],
    );
  }
}
