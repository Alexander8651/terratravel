import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/widgets/travel_list.dart';
import 'package:terratravelapp/widgets/backgrown_all_screens.dart';

class InternacionalesScreen extends StatefulWidget {
  @override
  _InternacionalesScreenState createState() => _InternacionalesScreenState();
}

class _InternacionalesScreenState extends State<InternacionalesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            child: InternacionalesList(),
          )
        ],
    );
  }
}

