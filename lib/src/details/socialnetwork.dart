import 'package:flutter/material.dart';

Widget socialNetworks() {

  return Container(
    color: Colors.grey[100],
    padding: const EdgeInsets.all(8.0),
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Icon(Icons.add_circle),
        Icon(Icons.face),
        const Icon(Icons.add_location),
        const Icon(Icons.surround_sound),
        const Icon(Icons.nature_people),

      ],
    ),
  );


}