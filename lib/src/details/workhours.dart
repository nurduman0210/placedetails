import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WorkHours extends StatefulWidget{
  @override
  createState() => new MyWorkHours();
  
  }


class MyWorkHours extends State<WorkHours>{

  @override
  Widget build(BuildContext context){
    return new ListView.builder(
      itemBuilder: (context, i){
        return new ExpansionTile(
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
        
        );
      }
    );
  }

}