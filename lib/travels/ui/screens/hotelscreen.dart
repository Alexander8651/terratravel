import 'package:flutter/material.dart';
import 'package:terratravelapp/travels/ui/widgets/travel_list.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key key}) : super(key: key);

  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: HotelList(),
        )
      ],
    );
  }
}
