import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:terratravelapp/travels/bloc/travelsblock.dart';
import 'package:terratravelapp/travels/ui/screens/cateroriesscreen.dart';

import 'http.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TerratravelApp',
        //routes: getAplicationRoutes(),
        home: CategoriesScreen(),
      ),
      bloc: TravelsBloc(),
    );
  }
}

