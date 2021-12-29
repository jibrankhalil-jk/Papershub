import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Routes/auth/first_set.dart';
import 'Routes/auth/login.dart';
import 'Routes/auth/register.dart';
import 'Routes/auth/userset.dart';
import 'Routes/home/home.dart';
import 'Routes/home/settingroutes/editprofile.dart';
import 'Routes/intro_screens/intros.dart';
import 'Routes/paperroutes/paperview.dart';
import 'Routes/paperroutes/selectsubject.dart';
import 'Routes/splash_screen.dart';
import 'constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(18, 178, 229, 1)));
  var constant = constants();
  runApp(MaterialApp(
    theme: constants.thememode == 1 ? constant.light : constant.dark,
    debugShowCheckedModeBanner: false,
    initialRoute: '/FirstSet',
    routes: {
      '/Splashscreen': (context) => SplahScreen(),
      '/intros': (context) => Intros(),
      '/FirstSet': (context) => FirstSet(), // <<
      '/LogIn': (context) => LogIn(),
      '/Register': (context) => Register(),
      '/Home': (context) => Home(),
      '/editingProfiel': (context) => editingProfiel(),
      '/SelectSubject': (context) => SelectSubject(),
      '/UserSet': (context) => UserSet(),
      '/Paperview': (context) => Paperview(),
    },
  ));
}
