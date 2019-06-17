import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:place_details/src/details/geninfo.dart';
import 'myflexiblespacebar.dart';
import 'socialnetwork.dart';
import 'workhours.dart';

class PlaceDetailsScreen extends StatefulWidget{

  createState() {
    return DetailsScreen();
  } 

}

class DetailsScreen extends State<PlaceDetailsScreen> {
  var description = "Karlag was one of the largest Gulag labor camps, located in Karaganda Oblast (now Karaganda Region, Kazakhstan), Kazakh SSR, USSR. It was established in 1931 during the period of settlement of remote areas of greater USSR and its' ethnic republics. Cheap labor was in high demand for these purposes. Hundreds of thousands of inmates were creating wealth for the nation for a mere bowl of soup a day. People were arrested and transported from the West of the Aral Mountains to the gigantic labor camp in Central Kazakhstan spanning from Akmola Region in the North to the Chu River in the South. Later, after WWII, another wave of \"enemies of the people\" poured in from newly added territories. These were immigrants and Soviet POW's captured by Hitler's army and later liberated by the Soviet Army. An enormous part of Karlag inmates were political prisoners - \"enemies of the people\" who were victims of the Article 58 RSFSR. [1] Over a 1,000,000 inmates served in total in Karlag over its history.";
    
  Widget build(context){
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 200.0,
          floating: true,
          pinned: false,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            background: MyFlexibleSpaceBar(),
              ),
            ),
        details(description),
      ],

    );

  }

  Widget details(String description){
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          nameData(),
          iWorkHours(),
          //priceData(),
          GeneralInfo(text: description,),
          //phoneNumber(),
          socialNetworks()
        ]
      ),
    );

  }

  Widget nameData(){

    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          Text('KARLAG',
            style: TextStyle(
              fontSize: 25.0 
               )),
         Text('museum',
            style: TextStyle(
              fontSize: 20.0
               )),
        ],
      ),
    );

  }

  Widget priceData(){

    return Placeholder(
      color: Colors.red[300],
    );

 }
  Widget phoneNumber(){

    return Placeholder(
      color: Colors.deepPurple[300],
    );

  }

}
