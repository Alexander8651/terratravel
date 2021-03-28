import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/widgets/travel_list.dart';
import 'package:terratravelapp/widgets/backgrown_all_screens.dart';

class NacionalesScreen extends StatefulWidget {



  @override
  _NacionalesScreenState createState() => _NacionalesScreenState();
}

class _NacionalesScreenState extends State<NacionalesScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Container(
          child: NacionalesList(),
        )
      ],
    );
  }
}

