import 'package:flutter/material.dart';
import 'details/details.dart';

class App extends StatefulWidget{
  createState() {
    // TODO: implement createState
    return AppState();
  }
}


class AppState extends State<App>{



  Widget build(context){

    return MaterialApp(
      
      home: PlaceDetailsScreen(),
    );
  }

}