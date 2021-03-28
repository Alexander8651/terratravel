import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:terratravelapp/travels/bloc/travelsblock.dart';

class RegionalList extends StatelessWidget{
  TravelsBloc travelBloc;
  @override
  Widget build(BuildContext context) {
    travelBloc = BlocProvider.of<TravelsBloc>(context);
    return Container(
      child: StreamBuilder(
        stream: travelBloc.regionalesStream,
        builder: (context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              print("estoy Done");
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.active:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.none:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            default:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
          }
        },
      ),
    );
  }
}

class NacionalesList extends StatelessWidget{
  TravelsBloc travelBloc;
  @override
  Widget build(BuildContext context) {
    travelBloc = BlocProvider.of<TravelsBloc>(context);
    return Container(
      child: StreamBuilder(
        stream: travelBloc.nacionalesStream,
        builder: (context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.active:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
          }
        },
      ),
    );
  }
}

class InternacionalesList extends StatelessWidget{
  TravelsBloc travelBloc;
  @override
  Widget build(BuildContext context) {
    travelBloc = BlocProvider.of<TravelsBloc>(context);
    return Container(
      child: StreamBuilder(
        stream: travelBloc.internacionalesStream,
        builder: (context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.active:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
          }
        },
      ),
    );
  }
}

class QuinceanerasList extends StatelessWidget{
  TravelsBloc travelBloc;
  @override
  Widget build(BuildContext context) {
    travelBloc = BlocProvider.of<TravelsBloc>(context);
    return Container(
      child: StreamBuilder(
        stream: travelBloc.quinceaneraStream,
        builder: (context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.active:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return Column(
                children:travelBloc.buildTravel(snapshot.data.documents),
              );
          }
        },
      ),
    );
  }
}