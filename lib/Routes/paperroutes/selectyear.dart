import 'package:flutter/material.dart';
import 'package:papershub/Routes/paperroutes/selectpaper.dart';

import '../../constants.dart';

class SelectYear extends StatefulWidget {
  var subjectt;
  SelectYear({this.subjectt});

  @override
  State<StatefulWidget> createState() {
    return _SelectYearState(this.subjectt);
  }
}

constants finalconst = constants();

class _SelectYearState extends State<SelectYear> {
  var Textstyly = TextStyle(color: Colors.white);
  var subjectt;
  _SelectYearState(this.subjectt);
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
              height: 11,
            ),
            Center(
                child: Text(
              "Select the Year ",
              style: TextStyle(color: finalconst.blue, fontSize: 18),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => SelectPaper(
                            subject: subjectt,
                            year: '2019',
                          ),
                        ),
                      );
                    },
                    color: finalconst.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Text(
                        "2019",
                        style: Textstyly,
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => SelectPaper(
                            subject: subjectt,
                            year: '2018',
                          ),
                        ),
                      );
                    },
                    color: finalconst.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Text(
                        "2018",
                        style: Textstyly,
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => SelectPaper(
                            subject: subjectt,
                            year: '2017',
                          ),
                        ),
                      );
                    },
                    color: finalconst.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Text(
                        "2017",
                        style: Textstyly,
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => SelectPaper(
                            subject: subjectt,
                            year: '2016',
                          ),
                        ),
                      );
                    },
                    color: finalconst.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Text(
                        "2016",
                        style: Textstyly,
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => SelectPaper(
                            subject: subjectt,
                            year: '2015',
                          ),
                        ),
                      );
                    },
                    color: finalconst.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Text(
                        "2015",
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

class subject {
  var subjectt = "";
  subject(this.subjectt);
}
