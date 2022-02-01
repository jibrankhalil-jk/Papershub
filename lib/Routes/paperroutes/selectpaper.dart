import 'package:flutter/material.dart';
import 'package:papershub/Routes/paperroutes/paperview.dart';

import '../../constants.dart';

class SelectPaper extends StatefulWidget {
  var year, subject;
  SelectPaper({this.year, this.subject});
  @override
  State<StatefulWidget> createState() {
    return _SelectPaperState(this.year, this.subject);
  }
}

constants finalconst = constants();

class _SelectPaperState extends State<SelectPaper> {
  var Textstyly = TextStyle(color: Colors.white);
  var year, subject;
  _SelectPaperState(this.year, this.subject);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 11,
            ),
            Row(
              children: [
                SizedBox(
                  width: 11,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "Assets/Images/logo.png",
                scale: 8,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Column(
              children: [
                Text(
                  "Paper of " + subject + " for the year $year",
                  style: TextStyle(color: finalconst.blue, fontSize: 18),
                ),
                Text(
                  "Please select one of them",
                  style: TextStyle(color: finalconst.bluelight, fontSize: 18),
                ),
              ],
            )),
            SizedBox(
              height: 11,
            ),
            Center(
              child: Image.asset(
                "Assets/Images/papersselect.png",
                scale: 4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => Paperview(
                          subject: subject,
                          year: year,
                          type: 'paper1',
                        ),
                      ),
                    ),
                    color: finalconst.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 25),
                      child: Column(
                        children: [
                          Text(
                            "Paper I",
                            style: Textstyly,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => Paperview(
                          subject: subject,
                          year: year,
                          type: 'paper2',
                        ),
                      ),
                    ),
                    color: finalconst.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 25),
                      child: Text(
                        "Paper II",
                        style: Textstyly,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class year {
  var years;

  year(this.years);
}
