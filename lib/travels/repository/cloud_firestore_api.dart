import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:terratravelapp/travels/model/travel.dart';
import 'package:terratravelapp/travels/ui/widgets/cardtravel.dart';

class CloudFirestoreApi {

  final String REGIONALES = "regionales";
  final String NACIONALES = "nacionales";
  final String INTERNACIONALES = "internacionales";
  final String QUINCEANERAS = "quinceaneras";

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //procesa los datos de firesbase
  List<CardTravel> buildTravel(List<DocumentSnapshot> travelsListSnapshot) {

    List<CardTravel> travels = List<CardTravel>();

    travelsListSnapshot.forEach((element) {
      travels.add(CardTravel(travel: Travel(photo: element.data()['photo'],
          descripcion: element.data()['descripcion'],
        fotos: element.data()['fotos'],
        titulo: element.data()['titulo']
      )
      ));
    });
    return travels;
  }


}