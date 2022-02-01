import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papershub/Routes/paperroutes/paperview.dart';
import 'package:papershub/Routes/paperroutes/selectyear.dart';
import 'package:papershub/Routes/testingroutes/testingd.dart';
import 'package:papershub/Services/auth.dart';

import '../../constants.dart';

class testingc extends StatefulWidget {
  var testingopt;
  var testingopta;
  testingc({this.testingopt, this.testingopta});
  @override
  _testingcState createState() =>
      _testingcState(testingopt: testingopt, testingopta: testingopta);
}

constants finalconst = constants();

class _testingcState extends State<testingc> {
  var testingopt;
  var testingopta;
  _testingcState({this.testingopt, this.testingopta});
  var Textstyly = TextStyle(color: Colors.white);
  AuthServices authServices = AuthServices();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    print('testing_services $testingopta $testingopt 0');
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
              "$testingopt",
              style: TextStyle(color: finalconst.blue, fontSize: 18),
            )),
            Center(
                child: Text(
              "Select from below",
              style: TextStyle(color: finalconst.blue, fontSize: 18),
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: FutureBuilder(
                  future: _firestore
                      .collection('testing_services')
                      .doc('$testingopta')
                      .collection('$testingopt')
                      .doc('0')
                      .get(),
                  builder: (context, AsyncSnapshot snp) {
                    var data = snp.data;
                    if (snp.hasData) {
                      return ListView.builder(
                        itemCount: int.parse(data['total']),
                        itemBuilder: (context, index) {
                          String document = data['$index'];
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
                            child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          testingd(
                                              testingopt: testingopt,
                                              testingopta: testingopta,
                                              testingoptb: data['$index']),
                                    ));
                                  },
                                  color: finalconst.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 15),
                                    child: Text(
                                      "${document}",
                                      style: Textstyly,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    } else {
                      return CupertinoActivityIndicator();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
