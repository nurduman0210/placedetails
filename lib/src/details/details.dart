import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'myflexiblespacebar.dart';
import 'socialnetwork.dart';
import 'workhours.dart';

class PlaceDetailsScreen extends StatefulWidget{

  createState() {
    return DetailsScreen();
  } 

}

class MyTile{
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}




class DetailsScreen extends State<PlaceDetailsScreen> {

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
        details(),
      ],

    );

  }

  Widget details(){
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          nameData(),
          iWorkHours(),
          priceData(),
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
  Widget iWorkHours(){
      return SingleChildScrollView(
          child: Card(
            child: ExpansionTile(
                title: Text('WorkHours', style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      Text('Monday'),
                      Text('Tuesday'),
                      Text('Wednesday'),
                      Text('Thursday'),
                      Text('Friday'),
                    ],
                  )
                ],
              
              )
            )
      );
  }
  Widget phoneNumber(){

    return Placeholder(
      color: Colors.deepPurple[300],
    );

  }

}
