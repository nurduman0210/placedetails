import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget iWorkHours(){
      return SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.all(0.0),
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