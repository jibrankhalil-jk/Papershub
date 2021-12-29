import 'package:flutter/material.dart';

class Paperview extends StatefulWidget {
  var year, subject, type;
  Paperview({this.year, this.subject, this.type});
  @override
  _PaperviewState createState() =>
      _PaperviewState(this.year, this.subject, this.type);
}

class _PaperviewState extends State<Paperview> {
  var year, subject, type;
  _PaperviewState(this.year, this.subject, this.type);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                  'Subject :  $subject \n Year : $year \n Paper Type : $type \n'),
            )));
  }
}
