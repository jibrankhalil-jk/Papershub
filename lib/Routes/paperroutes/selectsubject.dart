import 'package:flutter/material.dart';
import 'package:papershub/Routes/paperroutes/paperview.dart';
import 'package:papershub/Routes/paperroutes/selectyear.dart';

import '../../constants.dart';

class SelectSubject extends StatefulWidget {
  const SelectSubject({Key? key}) : super(key: key);

  @override
  _SelectSubjectState createState() => _SelectSubjectState();
}

constants finalconst = constants();

class _SelectSubjectState extends State<SelectSubject> {
  var Textstyly = TextStyle(color: Colors.white);
  List Subjects = [
    'biology',
    'maths',
    'computer',
    'physics',
    'english',
    'urdu',
    'pst',
    'islamiat'
  ];
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
            SizedBox(
              height: 11,
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
              "Select Your Subject",
              style: TextStyle(color: finalconst.blue, fontSize: 18),
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Subjects.length,
                itemBuilder: (context, index) {
                  String subname = Subjects[index];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => SelectYear(
                                subjectt: '${Subjects[index]}',
                              ),
                            ));
                          },
                          color: finalconst.blue,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${subname.toUpperCase()}",
                                  style: Textstyly,
                                ),
                                Text(
                                  "2015 - 2019",
                                  style: Textstyly,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
