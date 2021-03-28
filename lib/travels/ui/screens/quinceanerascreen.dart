import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/widgets/travel_list.dart';
import 'package:terratravelapp/widgets/backgrown_all_screens.dart';

class QuinceaneraScreen extends StatefulWidget {

  @override
  _QuinceaneraScreenState createState() => _QuinceaneraScreenState();
}

class _QuinceaneraScreenState extends State<QuinceaneraScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        QuinceanerasList()
      ],
    );
  }
}
