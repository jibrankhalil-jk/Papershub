import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

constants finalconst = constants();
var email = "", password = "", fullname = "", retyppassword = "";
bool passwordvisible = true;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    textinputpadding() {
      return EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      );
    }

    textinputdecoration() {
      return BoxDecoration(
        border: Border(
          bottom: BorderSide(),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Image.asset(
                      'Assets/Images/logo.png',
                      scale: 5,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: Text(
                      'Here you can register yourself',
                      style: TextStyle(fontSize: 12, color: finalconst.blue),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(children: [
                        CupertinoTextField(
                          placeholder: "Full Name",
                          keyboardType: TextInputType.name,
                          onChanged: (value) {
                            fullname = value;
                          },
                          padding: textinputpadding(),
                          decoration: textinputdecoration(),
                        )
                      ])),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(children: [
                        CupertinoTextField(
                          placeholder: "Email",
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            email = value;
                          },
                          padding: textinputpadding(),
                          decoration: textinputdecoration(),
                        )
                      ])),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(children: [
                        CupertinoTextField(
                          placeholder: "Password",
                          obscureText: passwordvisible,
                          keyboardType: TextInputType.visiblePassword,
                          suffix: IconButton(
                            icon: Icon(passwordvisible == true
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passwordvisible = !passwordvisible;
                              });
                            },
                          ),
                          onChanged: (value) {
                            password = value;
                          },
                          padding: textinputpadding(),
                          decoration: textinputdecoration(),
                        )
                      ])),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(children: [
                        CupertinoTextField(
                          placeholder: "Retype Password",
                          obscureText: passwordvisible,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            retyppassword = value;
                          },
                          padding: textinputpadding(),
                          decoration: textinputdecoration(),
                        )
                      ])),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: MaterialButton(
                      onPressed: () {
                        snackbar(var a) {
                          return ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(
                            content: Text(a),
                          ));
                        }

                        print(fullname +
                            " -- " +
                            email +
                            " -- " +
                            password +
                            " -- " +
                            retyppassword);
                        if (fullname.isEmpty ||
                            email.isEmpty ||
                            password.isEmpty ||
                            retyppassword.isEmpty) {
                          snackbar('Fill all the Fields');
                        } else if (fullname.contains('0') ||
                            fullname.contains('0') | fullname.contains('0') ||
                            fullname.contains('1') ||
                            fullname.contains('2') ||
                            fullname.contains('3') ||
                            fullname.contains('4') ||
                            fullname.contains('5') ||
                            fullname.contains('6') ||
                            fullname.contains('7') ||
                            fullname.contains('8') ||
                            fullname.contains('9') ||
                            fullname.contains('#') ||
                            fullname.contains('@') ||
                            fullname.contains('.') ||
                            fullname.contains('%') ||
                            fullname.contains('+') ||
                            fullname.contains('*') ||
                            email.contains(' ')) {
                          snackbar('Your Name is incorret  ');
                        } else if (!email.contains('@') ||
                            !email.contains('.com') ||
                            email.contains(' ')) {
                          snackbar('Check your Email ');
                        } else if (password.length < 8) {
                          snackbar('Password must be greater than 8 digits');
                        } else if (retyppassword != password) {
                          snackbar('Password didn\'t match');
                        } else {
                          showCupertinoDialog(
                              builder: (BuildContext context) {
                                Timer(Duration(seconds: 3), () {
                                  Navigator.pushNamed(context, '/Home');
                                });
                                return CupertinoAlertDialog(
                                  title: Text('Please Wait '),
                                  content: CupertinoActivityIndicator(),
                                );
                              },
                              context: context);
                        }
                      },
                      color: finalconst.blue,
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    child: Divider(),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  ),
                  Center(
                    child: Text("Sign In With"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 11, 4, 0),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "Assets/icons/google.png",
                            scale: 2,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 11, 4, 0),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "Assets/icons/facebook.png",
                            scale: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: CircleAvatar(
                  child: InkWell(
                    child: Icon(Icons.chevron_left_outlined),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  backgroundColor: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
