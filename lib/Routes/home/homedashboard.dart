import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papershub/Routes/paperroutes/selectsubject.dart';
import 'package:papershub/Routes/testingroutes/testings.dart';

import '../../constants.dart';

class Homedashboard extends StatefulWidget {
  const Homedashboard({Key? key}) : super(key: key);

  @override
  _HomedashboardState createState() => _HomedashboardState();
}

constants finalconst = constants();

class _HomedashboardState extends State<Homedashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(21, 11, 0, 9),
          child: Image.asset(
            "Assets/Images/logo.png",
            scale: 10,
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(11, 0, 11, 11),
            child: Card(
              color: Color.fromRGBO(24, 126, 158, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(11, 18, 11, 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jibran Khalil",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Dev.JibranKhalil@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "AKUEB",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "HSSC-II(12)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Column(
                    children: [
                      // Icon(Icons.edit),
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            )),
        SizedBox(
          height: 22,
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => SelectSubject(),
                  ),
                );
              },
              color: Color.fromRGBO(244, 244, 244, 1),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Board Papers",
                      style: TextStyle(color: finalconst.blue),
                    ),
                    Image.asset(
                      'Assets/intros/images/a.png',
                      scale: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Selecttesting(),
                  ),
                );
              },
              color: Color.fromRGBO(244, 244, 244, 1),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Testing Service",
                      style: TextStyle(color: finalconst.blue),
                    ),
                    // Image.asset(
                    //   'Assets/intros/images/a.png',
                    //   scale: 4,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: MaterialButton(
              onPressed: () {},
              color: Color.fromRGBO(244, 244, 244, 1),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Quizes",
                      style: TextStyle(color: finalconst.blue),
                    ),
                    Image.asset(
                      'Assets/Images/quizicon.png',
                      scale: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
