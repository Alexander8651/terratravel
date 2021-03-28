import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:terratravelapp/travels/repository/cloud_firestore_api.dart';
import 'package:terratravelapp/travels/repository/cloud_firestore_repository.dart';
import 'package:terratravelapp/travels/ui/widgets/cardtravel.dart';

class TravelsBloc implements Bloc{

  final _cloudFirestoreRepository = CloudFirestoreRepository();

  //obtiene los viajes regionales
  Stream<QuerySnapshot> travelRegionalesListStream =  FirebaseFirestore.instance.collection(CloudFirestoreApi().REGIONALES).snapshots();
  Stream<QuerySnapshot> get regionalesStream => travelRegionalesListStream;

  //Obtines los viaje nacionales
  Stream<QuerySnapshot> travelNacionalesListStream =  FirebaseFirestore.instance.collection(CloudFirestoreApi().NACIONALES).snapshots();
  Stream<QuerySnapshot> get nacionalesStream => travelNacionalesListStream;


  //Obtines los viaje internacionales
  Stream<QuerySnapshot> travelInternacionalesListStream =  FirebaseFirestore.instance.collection(CloudFirestoreApi().INTERNACIONALES).snapshots();
  Stream<QuerySnapshot> get internacionalesStream => travelInternacionalesListStream;

  //Obtines los viaje internacionales
  Stream<QuerySnapshot> travelQuineaneraListStream =  FirebaseFirestore.instance.collection(CloudFirestoreApi().QUINCEANERAS).snapshots();
  Stream<QuerySnapshot> get quinceaneraStream => travelQuineaneraListStream;

  //Obtiene los travels construidos
  List<CardTravel> buildTravel(List<DocumentSnapshot> travelsListSnapshot) => _cloudFirestoreRepository.buildTravel(travelsListSnapshot);

  @override
  void dispose() {
    // TODO: implement dispose
  }


}