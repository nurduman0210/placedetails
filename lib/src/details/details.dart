import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'containers/geninfo.dart';
import 'containers/myflexiblespacebar.dart';
import 'containers/socialnetwork.dart';
import 'containers/workhours.dart';

class PlaceDetailsScreen extends StatefulWidget{

  createState() {
    return DetailsScreen();
  } 

}

class DetailsScreen extends State<PlaceDetailsScreen> {
  var description = "was one of the largest Gulag labor camps, located in Karaganda Oblast (now Karaganda Region, Kazakhstan), Kazakh SSR, USSR. It was established in 1931 during the period of settlement of remote areas of greater USSR and its' ethnic republics. Cheap labor was in high demand for these purposes. Hundreds of thousands of inmates were creating wealth for the nation for a mere bowl of soup a day. People were arrested and transported from the West of the Aral Mountains to the gigantic labor camp in Central Kazakhstan spanning from Akmola Region in the North to the Chu River in the South.";
    
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
