

import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/widgets/travel_list.dart';

class RegionalesScreen extends StatefulWidget {


  @override
  _RegionalesScreenState createState() => _RegionalesScreenState();
}

class _RegionalesScreenState extends State<RegionalesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: RegionalList(),
        )
      ],
    );
  }
}
