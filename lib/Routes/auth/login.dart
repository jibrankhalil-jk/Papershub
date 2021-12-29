import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papershub/Services/auth.dart';

import '../../constants.dart';
import 'first_set.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

constants finalconst = constants();
String email = "", password = "";
bool passwordvisible = true;
var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();
IconData iconout() {
  if (passwordvisible = true)
    return Icons.visibility;
  else
    return Icons.visibility_off;
}

class _LogInState extends State<LogIn> {
  AuthServices auth = AuthServices();
  @override
  Widget build(BuildContext context) {
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
                      'Welcome back!',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: Text(
                      'We are so excited to see you again',
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
                          autofocus: false,
                          controller: emailcontroller,
                          placeholder: "Email",
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            email = value;
                          },
                          prefix: Icon(
                            Icons.email_outlined,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 12.0,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(),
                            ),
                          ),
                        )
                      ])),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(children: [
                        CupertinoTextField(
                          autofocus: false,
                          controller: passwordcontroller,
                          placeholder: "Password",
                          obscureText: passwordvisible,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            password = value;
                          },
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
                          prefix: Icon(
                            Icons.lock,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 12.0,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(),
                            ),
                          ),
                        )
                      ])),
                  SizedBox(
                    height: 56,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: MaterialButton(
                      onPressed: () async {
                        snackbar(var a) {
                          return ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(
                            content: Text(a),
                          ));
                        }

                        print(email + password);
                        if (email.isEmpty || password.isEmpty) {
                          if (email.isEmpty && password.isEmpty) {
                            snackbar(' Email and Password is Empty');
                          } else if (password.isEmpty) {
                            snackbar(' Password is Empty');
                          } else if (email.isEmpty) {
                            snackbar('Email is Empty');
                          }
                        } else if (!email.contains('@')) {
                          snackbar('Check your Email ');
                        } else if (!email.contains('.com')) {
                          snackbar('Check your Email ');
                        } else {
                          showCupertinoDialog(
                              builder: (BuildContext context) {
                                // Timer(Duration(seconds: 3), () {
                                //   Navigator.pushNamed(context, '/Home');
                                // });
                                return CupertinoAlertDialog(
                                  title: Text('Please Wait '),
                                  content: CupertinoActivityIndicator(),
                                );
                              },
                              context: context);
                          var res = await auth.signIn(email, password);
                          snackbar(res.toString());
                          if (res.toString() !=
                              "Account Successfully Created") {
                            Navigator.pop(context);
                          } else {}
                        }
                      },
                      color: finalconst.blue,
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 30, 0),
                          child: InkWell(
                            child: Text("Forget Password ?"),
                            onTap: () {},
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 56,
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
                          onTap: () {
                            Navigator.pushNamed(context, '/Home');
                          },
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
