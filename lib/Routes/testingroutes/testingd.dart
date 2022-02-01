import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papershub/Routes/paperroutes/paperview.dart';
import 'package:papershub/Routes/paperroutes/selectyear.dart';
import 'package:papershub/Routes/testingroutes/testingpaperview.dart';
import 'package:papershub/Services/auth.dart';

import '../../constants.dart';

class testingd extends StatefulWidget {
  var testingopt;
  var testingopta;
  var testingoptb;
  testingd({this.testingopt, this.testingopta, this.testingoptb});
  @override
  _testingdState createState() => _testingdState(
      testingopt: testingopt,
      testingopta: testingopta,
      testingoptb: testingoptb);
}

constants finalconst = constants();

class _testingdState extends State<testingd> {
  var testingopt;
  var testingopta;
  var testingoptb;
  _testingdState({this.testingopt, this.testingopta, this.testingoptb});
  var Textstyly = TextStyle(color: Colors.white);
  AuthServices authServices = AuthServices();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    print('testing_services $testingopta $testingopt $testingoptb 0 ');
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
              "$testingoptb",
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
                      .doc('$testingoptb')
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
                                          testingPaperview(
                                        url:
                                            'testing_services/$testingopta/$testingopt/$testingoptb/$document/paper.pdf',
                                      ),
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
