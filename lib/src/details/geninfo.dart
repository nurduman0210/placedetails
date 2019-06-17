import 'package:flutter/material.dart';
import 'package:meta/meta.dart';


class GeneralInfo extends StatefulWidget {
  final String text;

  GeneralInfo({@required this.text});

  @override
  _GeneralInfoState createState() => new _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 50) {
      firstHalf = widget.text.substring(0, 50);
      secondHalf = widget.text.substring(50, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Card(
            margin: EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf)),
                InkWell(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        flag ? "show more" : "show less",
                        style: new TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
          )
    );
  }
}