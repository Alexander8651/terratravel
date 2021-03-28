
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:terratravelapp/travels/repository/cloud_firestore_api.dart';
import 'package:terratravelapp/travels/ui/widgets/cardtravel.dart';

class CloudFirestoreRepository{

  final _cloudFirestoreAPI = CloudFirestoreApi();


  List<CardTravel> buildTravel(List<DocumentSnapshot> travelsListSnapshot) => _cloudFirestoreAPI.buildTravel(travelsListSnapshot);
}