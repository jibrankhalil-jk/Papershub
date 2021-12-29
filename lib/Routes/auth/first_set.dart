import 'package:flutter/material.dart';

import '../../constants.dart';

class FirstSet extends StatefulWidget {
  const FirstSet({Key? key}) : super(key: key);

  @override
  _FirstSetState createState() => _FirstSetState();
}

constants finalconst = constants();

class _FirstSetState extends State<FirstSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset("Assets/Images/firstset.png")),
            SizedBox(
              height: 9,
            ),
            Text(
              "Welcome to PaperHub",
              style: TextStyle(color: finalconst.blue, fontSize: 18),
            ),
            Spacer(
              flex: 1,
            ),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Register');
                        },
                        color: finalconst.blue,
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/LogIn');
                        },
                        color: finalconst.blue,
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    'By login in or registering, You have agreed to The ',
                                style: TextStyle(color: Colors.grey)),
                            TextSpan(
                                text: 'Terms and Condintions',
                                style: TextStyle(color: finalconst.blue)),
                            TextSpan(
                                text: ' And ',
                                style: TextStyle(color: Colors.grey)),
                            TextSpan(
                                text: 'Privacy Policy.',
                                style: TextStyle(color: finalconst.blue)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
