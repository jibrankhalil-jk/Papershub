import 'dart:async';

import 'package:flutter/material.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/intros', (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 3),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 130),
              child: Image.asset('Assets/Images/logo.png')),
          Spacer(flex: 6),
          Text(
            'From',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          ),
          Text(
            'TechZoid',
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
